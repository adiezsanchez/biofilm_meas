import tifffile
import napari
from apoc import PixelClassifier
from skimage import measure
from skimage import io
import pandas as pd
import os
from pathlib import Path


# Define a function to get a list of filepaths for each image contained in a folder
def get_image_paths(folder_path):
    return [str(file_path) for file_path in folder_path.glob("*.tiff")]


def measure_biofilm(image_paths, save_directory):

    # Create an empty dictionary to store filename:biofilm_area pairs and later convert it into a pandas df
    biofilm_areas = {}

    # Initialize Napari viewer instance
    viewer = napari.Viewer(ndisplay=2)

    for filepath in image_paths:
        # Get the filename without the extension
        filename = Path(filepath).stem

        # Load one RGB image and extract the green channel for APOC
        rgb_img = tifffile.imread(filepath, is_ome=False)

        # Extract green channel [1]
        img = rgb_img[:, :, 1]

        # Visualize greyscale green channel in napari
        viewer.add_image(img, name=f"Biofilm_{filename}")

        # Apply pretrained semantic segmenter from APOC
        semantic_segmenter = PixelClassifier(
            opencl_filename="./pretrained_classifiers/semantic_segmenter.cl"
        )
        sem_seg_result = semantic_segmenter.predict(image=img)
        viewer.add_labels(sem_seg_result, name=f"Biofilm_layer_{filename}")

        # Store the resulting predictions
        tifffile.imwrite(
            os.path.join(save_directory, f"{filename}.tiff"), sem_seg_result
        )

        # Calculate the area covered by the biofilm
        props = measure.regionprops(
            sem_seg_result
        )  # Calculate the background, biofilm and background crop area

        # Extract area values
        area_values = {
            "background": props[0].area,
            "biofilm": props[1].area,
            "crop_residue": props[2].area,
        }

        # Testing purposes
        print(
            f"Filename: {filename}, Background: {props[0].area} pixels, Biofilm: {props[1].area} pixels, Plate: {(props[0].area + props[1].area)}"
        )

        # Add new filename:biofilm_area pair to biofilm_areas
        biofilm_areas[filename] = [area_values]

    return biofilm_areas


def extract_stats(biofilm_areas_before, biofilm_areas_after):

    output_folder = "./output/"

    # Extract the data and create a DataFrame
    data = []
    for filename, values_list in biofilm_areas_before.items():
        values_dict = values_list[0]
        data.append({"filename": filename, **values_dict})

    before_df = pd.DataFrame(data)

    # Save the DataFrame to a CSV file in the output folder
    before_df.to_csv(
        os.path.join(output_folder, "biofilm_areas_before.csv"), index=False
    )

    # Extract the data and create a DataFrame
    data = []
    for filename, values_list in biofilm_areas_after.items():
        values_dict = values_list[0]
        data.append({"filename": filename, **values_dict})

    after_df = pd.DataFrame(data)

    # Save the DataFrame to a CSV file in the output folder
    after_df.to_csv(os.path.join(output_folder, "biofilm_areas_after.csv"), index=False)

    # Concatenate the DataFrames vertically
    merged_df = pd.concat([before_df, after_df], ignore_index=True)

    # Calculate plate area by adding background and biofilm
    merged_df["plate_area"] = merged_df["background"] + merged_df["biofilm"]

    # Calculate the percentage of plate covered in biofilm
    merged_df["biofilm_perc"] = (merged_df["biofilm"] * 100) / merged_df["plate_area"]

    # Reorder columns
    merged_df = merged_df[
        [
            "filename",
            "background",
            "biofilm",
            "plate_area",
            "biofilm_perc",
            "crop_residue",
        ]
    ]

    # Extracting 'before' or 'after' and plate number
    merged_df["condition"] = merged_df["filename"].str.extract(r"_(before|after)")
    merged_df["plate_nr"] = merged_df["filename"].str.extract(r"plate(\d+)").astype(int)

    # Save the DataFrame to a CSV file in the output folder
    merged_df.to_csv(
        os.path.join(output_folder, "biofilm_areas_final.csv"), index=False
    )

    # Display the resulting DataFrame
    return merged_df
