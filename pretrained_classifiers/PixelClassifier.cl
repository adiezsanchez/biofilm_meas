/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = gaussian_blur=1 difference_of_gaussian=1 laplace_box_of_gaussian_blur=1 sobel_of_gaussian_blur=1
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 4
max_depth = 2
num_trees = 100
feature_importances = 0.542623117840234,0.025341473822048276,0.06465193890721677,0.36738346943050104
apoc_version = 0.12.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_in3_TYPE in3, IMAGE_out_TYPE out) {
 sampler_t sampler = CLK_NORMALIZED_COORDS_FALSE | CLK_ADDRESS_CLAMP_TO_EDGE | CLK_FILTER_NEAREST;
 const int x = get_global_id(0);
 const int y = get_global_id(1);
 const int z = get_global_id(2);
 float i0 = READ_IMAGE(in0, sampler, POS_in0_INSTANCE(x,y,z,0)).x;
 float i1 = READ_IMAGE(in1, sampler, POS_in1_INSTANCE(x,y,z,0)).x;
 float i2 = READ_IMAGE(in2, sampler, POS_in2_INSTANCE(x,y,z,0)).x;
 float i3 = READ_IMAGE(in3, sampler, POS_in3_INSTANCE(x,y,z,0)).x;
 float s0=0;
 float s1=0;
if(i0<24.93598747253418){
 if(i1<-0.3381481170654297){
  s0+=3.0;
  s1+=16.0;
 } else {
  s0+=4975.0;
 }
} else {
 if(i3<1.3528778553009033){
  s0+=1.0;
 } else {
  s1+=2432.0;
 }
}
if(i0<24.93598747253418){
 if(i3<20.53767204284668){
  s0+=4969.0;
  s1+=6.0;
 } else {
  s1+=9.0;
 }
} else {
 if(i3<1.3528778553009033){
  s0+=1.0;
 } else {
  s1+=2442.0;
 }
}
if(i0<24.93598747253418){
 if(i3<21.37688636779785){
  s0+=5016.0;
  s1+=6.0;
 } else {
  s1+=8.0;
 }
} else {
 s1+=2397.0;
}
if(i0<25.930532455444336){
 if(i1<-0.3381481170654297){
  s1+=12.0;
 } else {
  s0+=5065.0;
  s1+=3.0;
 }
} else {
 s1+=2347.0;
}
if(i0<25.313955307006836){
 if(i3<20.53767204284668){
  s0+=5003.0;
  s1+=6.0;
 } else {
  s1+=9.0;
 }
} else {
 s1+=2409.0;
}
if(i3<12.786102294921875){
 if(i2<6.905932426452637){
  s0+=5047.0;
  s1+=63.0;
 } else {
  s0+=3.0;
  s1+=34.0;
 }
} else {
 if(i0<21.368427276611328){
  s0+=8.0;
  s1+=2.0;
 } else {
  s0+=3.0;
  s1+=2267.0;
 }
}
if(i3<12.711708068847656){
 if(i0<25.930557250976562){
  s0+=5023.0;
  s1+=1.0;
 } else {
  s1+=74.0;
 }
} else {
 if(i0<21.368427276611328){
  s0+=5.0;
  s1+=3.0;
 } else {
  s0+=3.0;
  s1+=2318.0;
 }
}
if(i0<25.336063385009766){
 if(i2<-4.554709434509277){
  s0+=1.0;
  s1+=13.0;
 } else {
  s0+=5067.0;
 }
} else {
 s1+=2346.0;
}
if(i3<12.866042137145996){
 if(i0<25.069915771484375){
  s0+=4981.0;
  s1+=2.0;
 } else {
  s1+=83.0;
 }
} else {
 if(i0<23.197006225585938){
  s0+=8.0;
  s1+=7.0;
 } else {
  s0+=1.0;
  s1+=2345.0;
 }
}
if(i0<25.910064697265625){
 if(i1<-0.33594799041748047){
  s1+=14.0;
 } else {
  s0+=5046.0;
 }
} else {
 s1+=2367.0;
}
if(i0<24.93598747253418){
 if(i2<-4.177614212036133){
  s0+=1.0;
  s1+=17.0;
 } else {
  s0+=5026.0;
 }
} else {
 s1+=2383.0;
}
if(i2<5.104936599731445){
 if(i3<13.309358596801758){
  s0+=5000.0;
  s1+=69.0;
 } else {
  s0+=9.0;
  s1+=1198.0;
 }
} else {
 if(i2<5.411101341247559){
  s0+=5.0;
  s1+=15.0;
 } else {
  s0+=6.0;
  s1+=1125.0;
 }
}
if(i0<25.910064697265625){
 if(i1<-0.3914813995361328){
  s1+=14.0;
 } else {
  s0+=5006.0;
 }
} else {
 s1+=2407.0;
}
if(i0<23.147281646728516){
 if(i2<-5.678179740905762){
  s1+=9.0;
 } else {
  s0+=5036.0;
 }
} else {
 if(i0<24.331546783447266){
  s0+=1.0;
  s1+=3.0;
 } else {
  s1+=2378.0;
 }
}
if(i0<23.48940658569336){
 if(i2<-4.572671890258789){
  s1+=12.0;
 } else {
  s0+=4969.0;
 }
} else {
 s1+=2446.0;
}
if(i0<25.910064697265625){
 if(i2<-4.194209098815918){
  s0+=2.0;
  s1+=6.0;
 } else {
  s0+=5077.0;
 }
} else {
 s1+=2342.0;
}
if(i3<12.786102294921875){
 if(i0<25.930557250976562){
  s0+=4968.0;
  s1+=3.0;
 } else {
  s1+=73.0;
 }
} else {
 if(i1<-0.027278900146484375){
  s1+=1050.0;
 } else {
  s0+=10.0;
  s1+=1323.0;
 }
}
if(i0<25.315595626831055){
 if(i1<-0.3914813995361328){
  s1+=8.0;
 } else {
  s0+=4957.0;
  s1+=6.0;
 }
} else {
 s1+=2456.0;
}
if(i0<24.93598747253418){
 if(i2<-5.74191951751709){
  s1+=6.0;
 } else {
  s0+=5042.0;
 }
} else {
 s1+=2379.0;
}
if(i0<25.930532455444336){
 if(i2<-4.572671890258789){
  s1+=18.0;
 } else {
  s0+=5043.0;
  s1+=1.0;
 }
} else {
 s1+=2365.0;
}
if(i3<12.908315658569336){
 if(i0<27.864959716796875){
  s0+=4966.0;
  s1+=4.0;
 } else {
  s1+=99.0;
 }
} else {
 if(i3<16.776145935058594){
  s0+=9.0;
  s1+=75.0;
 } else {
  s0+=1.0;
  s1+=2273.0;
 }
}
if(i2<4.709334373474121){
 if(i3<12.884821891784668){
  s0+=4983.0;
  s1+=47.0;
 } else {
  s0+=15.0;
  s1+=1225.0;
 }
} else {
 if(i0<32.00891876220703){
  s0+=21.0;
 } else {
  s1+=1136.0;
 }
}
if(i2<4.664806365966797){
 if(i0<23.197006225585938){
  s0+=4976.0;
  s1+=11.0;
 } else {
  s1+=1297.0;
 }
} else {
 if(i3<5.938854694366455){
  s0+=14.0;
  s1+=4.0;
 } else {
  s0+=2.0;
  s1+=1123.0;
 }
}
if(i0<25.910064697265625){
 if(i3<20.890823364257812){
  s0+=4966.0;
  s1+=2.0;
 } else {
  s1+=10.0;
 }
} else {
 s1+=2449.0;
}
if(i3<12.49540901184082){
 if(i2<6.789084434509277){
  s0+=4916.0;
  s1+=45.0;
 } else {
  s0+=1.0;
  s1+=35.0;
 }
} else {
 if(i0<21.368427276611328){
  s0+=10.0;
  s1+=1.0;
 } else {
  s1+=2419.0;
 }
}
if(i2<4.628957748413086){
 if(i3<12.786102294921875){
  s0+=5013.0;
  s1+=42.0;
 } else {
  s0+=11.0;
  s1+=1231.0;
 }
} else {
 if(i3<5.724646091461182){
  s0+=15.0;
  s1+=7.0;
 } else {
  s0+=4.0;
  s1+=1104.0;
 }
}
if(i3<12.711708068847656){
 if(i1<0.4570951461791992){
  s0+=4999.0;
  s1+=48.0;
 } else {
  s0+=3.0;
  s1+=34.0;
 }
} else {
 if(i3<14.777231216430664){
  s0+=10.0;
  s1+=35.0;
 } else {
  s0+=4.0;
  s1+=2294.0;
 }
}
if(i0<25.910064697265625){
 if(i2<-4.181668281555176){
  s0+=2.0;
  s1+=11.0;
 } else {
  s0+=4993.0;
 }
} else {
 s1+=2421.0;
}
if(i3<12.510262489318848){
 if(i1<0.5297155380249023){
  s0+=4975.0;
  s1+=50.0;
 } else {
  s0+=2.0;
  s1+=27.0;
 }
} else {
 if(i3<13.309358596801758){
  s0+=11.0;
  s1+=20.0;
 } else {
  s0+=2.0;
  s1+=2340.0;
 }
}
if(i2<4.66384220123291){
 if(i1<-0.2558441162109375){
  s0+=18.0;
  s1+=984.0;
 } else {
  s0+=4936.0;
  s1+=328.0;
 }
} else {
 if(i0<27.828556060791016){
  s0+=25.0;
 } else {
  s1+=1136.0;
 }
}
if(i2<5.139554023742676){
 if(i0<23.439682006835938){
  s0+=5037.0;
  s1+=9.0;
 } else {
  s1+=1244.0;
 }
} else {
 if(i3<1.6879091262817383){
  s0+=3.0;
 } else {
  s0+=4.0;
  s1+=1130.0;
 }
}
if(i2<5.042670249938965){
 if(i0<23.197006225585938){
  s0+=5104.0;
  s1+=4.0;
 } else {
  s1+=1246.0;
 }
} else {
 if(i2<5.595868110656738){
  s0+=8.0;
  s1+=20.0;
 } else {
  s0+=2.0;
  s1+=1043.0;
 }
}
if(i0<25.910064697265625){
 if(i3<20.890823364257812){
  s0+=5013.0;
  s1+=6.0;
 } else {
  s1+=11.0;
 }
} else {
 s1+=2397.0;
}
if(i0<24.331546783447266){
 if(i1<-0.39095497131347656){
  s1+=9.0;
 } else {
  s0+=4964.0;
  s1+=1.0;
 }
} else {
 if(i0<24.93434715270996){
  s0+=2.0;
  s1+=3.0;
 } else {
  s1+=2448.0;
 }
}
if(i0<26.01366424560547){
 if(i1<-0.3914813995361328){
  s1+=12.0;
 } else {
  s0+=5084.0;
  s1+=1.0;
 }
} else {
 s1+=2330.0;
}
if(i0<23.197006225585938){
 if(i2<-4.554709434509277){
  s1+=12.0;
 } else {
  s0+=5071.0;
 }
} else {
 if(i3<12.39482307434082){
  s0+=2.0;
  s1+=67.0;
 } else {
  s1+=2275.0;
 }
}
if(i0<25.910064697265625){
 if(i1<-0.4862480163574219){
  s1+=9.0;
 } else {
  s0+=4953.0;
  s1+=3.0;
 }
} else {
 s1+=2462.0;
}
if(i0<25.930532455444336){
 if(i1<-0.3914813995361328){
  s1+=9.0;
 } else {
  s0+=5037.0;
  s1+=1.0;
 }
} else {
 s1+=2380.0;
}
if(i3<12.897409439086914){
 if(i2<6.1190996170043945){
  s0+=4978.0;
  s1+=55.0;
 } else {
  s0+=1.0;
  s1+=36.0;
 }
} else {
 if(i0<20.190776824951172){
  s0+=9.0;
 } else {
  s1+=2348.0;
 }
}
if(i3<12.4027099609375){
 if(i2<5.139554023742676){
  s0+=4976.0;
  s1+=49.0;
 } else {
  s0+=8.0;
  s1+=45.0;
 }
} else {
 if(i0<21.69636344909668){
  s0+=16.0;
  s1+=5.0;
 } else {
  s0+=4.0;
  s1+=2324.0;
 }
}
if(i3<12.884821891784668){
 if(i0<26.52666473388672){
  s0+=5065.0;
  s1+=4.0;
 } else {
  s1+=94.0;
 }
} else {
 if(i3<13.309358596801758){
  s0+=7.0;
  s1+=8.0;
 } else {
  s0+=11.0;
  s1+=2238.0;
 }
}
if(i1<0.3849363327026367){
 if(i3<13.259223937988281){
  s0+=5036.0;
  s1+=61.0;
 } else {
  s0+=4.0;
  s1+=1218.0;
 }
} else {
 if(i1<0.4105663299560547){
  s0+=7.0;
  s1+=19.0;
 } else {
  s0+=6.0;
  s1+=1076.0;
 }
}
if(i3<13.188667297363281){
 if(i1<0.4890890121459961){
  s0+=4984.0;
  s1+=55.0;
 } else {
  s0+=2.0;
  s1+=35.0;
 }
} else {
 if(i3<18.320362091064453){
  s0+=11.0;
  s1+=98.0;
 } else {
  s1+=2242.0;
 }
}
if(i3<12.711708068847656){
 if(i0<26.52666473388672){
  s0+=4991.0;
  s1+=3.0;
 } else {
  s1+=73.0;
 }
} else {
 if(i3<14.556623458862305){
  s0+=11.0;
  s1+=32.0;
 } else {
  s0+=4.0;
  s1+=2313.0;
 }
}
if(i0<23.197006225585938){
 if(i2<-4.708410263061523){
  s1+=6.0;
 } else {
  s0+=5017.0;
 }
} else {
 if(i3<1.3528778553009033){
  s0+=1.0;
 } else {
  s0+=3.0;
  s1+=2400.0;
 }
}
if(i2<4.664806365966797){
 if(i0<23.748825073242188){
  s0+=5053.0;
  s1+=7.0;
 } else {
  s1+=1245.0;
 }
} else {
 if(i2<5.042670249938965){
  s0+=8.0;
  s1+=19.0;
 } else {
  s0+=11.0;
  s1+=1084.0;
 }
}
if(i0<24.93598747253418){
 if(i2<-4.194209098815918){
  s0+=2.0;
  s1+=15.0;
 } else {
  s0+=4976.0;
 }
} else {
 s1+=2434.0;
}
if(i3<12.992178916931152){
 if(i2<6.140847206115723){
  s0+=4978.0;
  s1+=45.0;
 } else {
  s0+=3.0;
  s1+=24.0;
 }
} else {
 if(i0<22.296560287475586){
  s0+=11.0;
  s1+=3.0;
 } else {
  s0+=2.0;
  s1+=2361.0;
 }
}
if(i0<25.910064697265625){
 if(i3<20.890823364257812){
  s0+=4996.0;
  s1+=7.0;
 } else {
  s1+=13.0;
 }
} else {
 s1+=2411.0;
}
if(i3<12.992178916931152){
 if(i0<25.7297420501709){
  s0+=5040.0;
  s1+=2.0;
 } else {
  s1+=85.0;
 }
} else {
 if(i3<14.629098892211914){
  s0+=9.0;
  s1+=26.0;
 } else {
  s0+=3.0;
  s1+=2262.0;
 }
}
if(i2<5.2667694091796875){
 if(i0<23.147281646728516){
  s0+=5112.0;
  s1+=7.0;
 } else {
  s0+=2.0;
  s1+=1268.0;
 }
} else {
 if(i0<27.234088897705078){
  s0+=10.0;
 } else {
  s1+=1028.0;
 }
}
if(i3<12.866042137145996){
 if(i0<29.787757873535156){
  s0+=5034.0;
  s1+=3.0;
 } else {
  s1+=89.0;
 }
} else {
 if(i0<21.44922637939453){
  s0+=10.0;
  s1+=1.0;
 } else {
  s0+=5.0;
  s1+=2285.0;
 }
}
if(i2<5.0063676834106445){
 if(i1<-0.25450992584228516){
  s0+=15.0;
  s1+=936.0;
 } else {
  s0+=5031.0;
  s1+=327.0;
 }
} else {
 if(i2<5.634221076965332){
  s0+=11.0;
  s1+=22.0;
 } else {
  s0+=5.0;
  s1+=1080.0;
 }
}
if(i3<12.897409439086914){
 if(i0<25.842853546142578){
  s0+=5071.0;
  s1+=1.0;
 } else {
  s1+=78.0;
 }
} else {
 if(i3<14.6311674118042){
  s0+=13.0;
  s1+=30.0;
 } else {
  s0+=1.0;
  s1+=2233.0;
 }
}
if(i3<12.711708068847656){
 if(i2<6.430109977722168){
  s0+=4992.0;
  s1+=51.0;
 } else {
  s0+=1.0;
  s1+=36.0;
 }
} else {
 if(i0<23.197006225585938){
  s0+=10.0;
  s1+=7.0;
 } else {
  s0+=1.0;
  s1+=2329.0;
 }
}
if(i3<12.510262489318848){
 if(i0<25.930557250976562){
  s0+=4934.0;
 } else {
  s1+=99.0;
 }
} else {
 if(i3<13.294429779052734){
  s0+=11.0;
  s1+=14.0;
 } else {
  s0+=9.0;
  s1+=2360.0;
 }
}
if(i3<12.786102294921875){
 if(i1<0.5283689498901367){
  s0+=5043.0;
  s1+=53.0;
 } else {
  s0+=1.0;
  s1+=29.0;
 }
} else {
 if(i0<23.197006225585938){
  s0+=9.0;
  s1+=4.0;
 } else {
  s0+=1.0;
  s1+=2287.0;
 }
}
if(i0<23.48940658569336){
 if(i1<-0.3914813995361328){
  s1+=7.0;
 } else {
  s0+=4953.0;
  s1+=2.0;
 }
} else {
 if(i3<10.24464225769043){
  s0+=4.0;
  s1+=72.0;
 } else {
  s1+=2389.0;
 }
}
if(i3<12.510262489318848){
 if(i2<6.905932426452637){
  s0+=4967.0;
  s1+=65.0;
 } else {
  s0+=1.0;
  s1+=32.0;
 }
} else {
 if(i0<23.748825073242188){
  s0+=10.0;
  s1+=2.0;
 } else {
  s1+=2350.0;
 }
}
if(i3<12.707380294799805){
 if(i0<25.7297420501709){
  s0+=4972.0;
  s1+=4.0;
 } else {
  s1+=80.0;
 }
} else {
 if(i0<21.368427276611328){
  s0+=11.0;
  s1+=2.0;
 } else {
  s0+=4.0;
  s1+=2354.0;
 }
}
if(i3<12.884821891784668){
 if(i1<0.5361738204956055){
  s0+=4908.0;
  s1+=58.0;
 } else {
  s1+=40.0;
 }
} else {
 if(i0<21.69636344909668){
  s0+=8.0;
  s1+=1.0;
 } else {
  s0+=2.0;
  s1+=2410.0;
 }
}
if(i2<4.664806365966797){
 if(i0<23.197006225585938){
  s0+=4994.0;
  s1+=9.0;
 } else {
  s1+=1273.0;
 }
} else {
 if(i3<6.753345489501953){
  s0+=22.0;
  s1+=11.0;
 } else {
  s0+=4.0;
  s1+=1114.0;
 }
}
if(i0<24.93598747253418){
 if(i2<-4.194209098815918){
  s0+=1.0;
  s1+=14.0;
 } else {
  s0+=5078.0;
 }
} else {
 if(i1<1.1272897720336914){
  s1+=1609.0;
 } else {
  s0+=1.0;
  s1+=724.0;
 }
}
if(i0<25.910064697265625){
 if(i2<-4.194209098815918){
  s0+=2.0;
  s1+=24.0;
 } else {
  s0+=4998.0;
 }
} else {
 s1+=2403.0;
}
if(i0<25.910064697265625){
 if(i1<-0.39095497131347656){
  s1+=10.0;
 } else {
  s0+=5013.0;
  s1+=1.0;
 }
} else {
 s1+=2403.0;
}
if(i0<23.197006225585938){
 if(i1<-0.3914813995361328){
  s1+=9.0;
 } else {
  s0+=5017.0;
  s1+=1.0;
 }
} else {
 if(i3<1.3528778553009033){
  s0+=3.0;
  s1+=1.0;
 } else {
  s0+=2.0;
  s1+=2394.0;
 }
}
if(i0<24.331546783447266){
 if(i2<-4.572671890258789){
  s0+=3.0;
  s1+=12.0;
 } else {
  s0+=5005.0;
 }
} else {
 if(i2<6.299459457397461){
  s1+=1344.0;
 } else {
  s0+=3.0;
  s1+=1060.0;
 }
}
if(i0<24.331546783447266){
 if(i2<-4.708410263061523){
  s1+=11.0;
 } else {
  s0+=5031.0;
 }
} else {
 if(i0<25.4191951751709){
  s0+=4.0;
  s1+=7.0;
 } else {
  s1+=2374.0;
 }
}
if(i0<24.331546783447266){
 if(i3<21.02373504638672){
  s0+=4992.0;
  s1+=5.0;
 } else {
  s1+=5.0;
 }
} else {
 if(i0<25.313955307006836){
  s0+=2.0;
  s1+=6.0;
 } else {
  s1+=2417.0;
 }
}
if(i0<23.197006225585938){
 if(i1<-0.3914813995361328){
  s1+=12.0;
 } else {
  s0+=5027.0;
 }
} else {
 if(i3<13.270316123962402){
  s0+=4.0;
  s1+=104.0;
 } else {
  s1+=2280.0;
 }
}
if(i0<24.36221694946289){
 if(i1<-0.39095497131347656){
  s1+=5.0;
 } else {
  s0+=5011.0;
  s1+=2.0;
 }
} else {
 if(i0<25.910064697265625){
  s0+=3.0;
  s1+=4.0;
 } else {
  s1+=2402.0;
 }
}
if(i3<12.4027099609375){
 if(i0<26.52666473388672){
  s0+=4961.0;
 } else {
  s1+=87.0;
 }
} else {
 if(i0<23.48940658569336){
  s0+=9.0;
  s1+=6.0;
 } else {
  s0+=1.0;
  s1+=2363.0;
 }
}
if(i2<5.042670249938965){
 if(i0<23.147281646728516){
  s0+=5041.0;
  s1+=12.0;
 } else {
  s1+=1312.0;
 }
} else {
 if(i3<12.572049140930176){
  s0+=10.0;
  s1+=35.0;
 } else {
  s1+=1017.0;
 }
}
if(i3<12.866042137145996){
 if(i2<5.39835262298584){
  s0+=4989.0;
  s1+=52.0;
 } else {
  s0+=5.0;
  s1+=37.0;
 }
} else {
 if(i3<14.556623458862305){
  s0+=8.0;
  s1+=24.0;
 } else {
  s0+=5.0;
  s1+=2307.0;
 }
}
if(i3<13.294429779052734){
 if(i2<-4.572671890258789){
  s1+=27.0;
 } else {
  s0+=4905.0;
  s1+=59.0;
 }
} else {
 if(i0<21.29837417602539){
  s0+=6.0;
 } else {
  s0+=2.0;
  s1+=2428.0;
 }
}
if(i0<23.147281646728516){
 if(i3<20.890823364257812){
  s0+=4930.0;
  s1+=6.0;
 } else {
  s1+=4.0;
 }
} else {
 if(i0<25.910064697265625){
  s0+=3.0;
  s1+=5.0;
 } else {
  s1+=2479.0;
 }
}
if(i3<12.4027099609375){
 if(i0<26.52666473388672){
  s0+=4962.0;
  s1+=1.0;
 } else {
  s1+=95.0;
 }
} else {
 if(i0<23.48940658569336){
  s0+=15.0;
  s1+=4.0;
 } else {
  s0+=1.0;
  s1+=2349.0;
 }
}
if(i0<23.197006225585938){
 if(i1<-0.4857215881347656){
  s1+=1.0;
 } else {
  s0+=4982.0;
 }
} else {
 if(i0<25.910064697265625){
  s0+=7.0;
  s1+=8.0;
 } else {
  s1+=2429.0;
 }
}
if(i0<25.336063385009766){
 if(i2<-4.708410263061523){
  s1+=13.0;
 } else {
  s0+=4964.0;
 }
} else {
 s1+=2450.0;
}
if(i0<25.315595626831055){
 if(i2<-4.572671890258789){
  s0+=1.0;
  s1+=12.0;
 } else {
  s0+=5019.0;
 }
} else {
 s1+=2395.0;
}
if(i0<23.197006225585938){
 if(i2<-4.572671890258789){
  s1+=12.0;
 } else {
  s0+=5006.0;
 }
} else {
 if(i0<25.930532455444336){
  s0+=6.0;
  s1+=10.0;
 } else {
  s1+=2393.0;
 }
}
if(i3<12.866042137145996){
 if(i0<26.52666473388672){
  s0+=5092.0;
 } else {
  s1+=82.0;
 }
} else {
 if(i2<8.876035690307617){
  s0+=11.0;
  s1+=1321.0;
 } else {
  s1+=921.0;
 }
}
if(i2<4.61962890625){
 if(i0<23.197006225585938){
  s0+=5018.0;
  s1+=4.0;
 } else {
  s1+=1277.0;
 }
} else {
 if(i3<10.861795425415039){
  s0+=22.0;
  s1+=29.0;
 } else {
  s0+=1.0;
  s1+=1076.0;
 }
}
if(i3<12.992178916931152){
 if(i0<26.187410354614258){
  s0+=4954.0;
  s1+=2.0;
 } else {
  s1+=91.0;
 }
} else {
 if(i1<0.17844486236572266){
  s0+=10.0;
  s1+=1159.0;
 } else {
  s0+=1.0;
  s1+=1210.0;
 }
}
if(i3<12.992178916931152){
 if(i0<26.52666473388672){
  s0+=5070.0;
  s1+=2.0;
 } else {
  s1+=96.0;
 }
} else {
 if(i0<21.411420822143555){
  s0+=4.0;
  s1+=3.0;
 } else {
  s1+=2252.0;
 }
}
if(i0<24.331546783447266){
 if(i1<-0.5514125823974609){
  s1+=6.0;
 } else {
  s0+=5006.0;
  s1+=3.0;
 }
} else {
 if(i0<25.315595626831055){
  s0+=3.0;
  s1+=4.0;
 } else {
  s1+=2405.0;
 }
}
if(i3<12.786102294921875){
 if(i0<27.864959716796875){
  s0+=5033.0;
  s1+=2.0;
 } else {
  s1+=88.0;
 }
} else {
 if(i0<23.197006225585938){
  s0+=17.0;
  s1+=6.0;
 } else {
  s1+=2281.0;
 }
}
if(i2<4.709334373474121){
 if(i1<-0.27532386779785156){
  s0+=15.0;
  s1+=923.0;
 } else {
  s0+=4985.0;
  s1+=358.0;
 }
} else {
 if(i0<27.234088897705078){
  s0+=20.0;
 } else {
  s1+=1126.0;
 }
}
if(i0<23.08595848083496){
 if(i2<-4.644670486450195){
  s1+=7.0;
 } else {
  s0+=5013.0;
 }
} else {
 if(i0<26.01366424560547){
  s0+=6.0;
  s1+=7.0;
 } else {
  s1+=2394.0;
 }
}
if(i2<4.666098594665527){
 if(i3<12.993043899536133){
  s0+=4988.0;
  s1+=73.0;
 } else {
  s0+=13.0;
  s1+=1244.0;
 }
} else {
 if(i0<31.512767791748047){
  s0+=28.0;
 } else {
  s1+=1081.0;
 }
}
if(i0<23.197006225585938){
 if(i3<21.534835815429688){
  s0+=5023.0;
  s1+=4.0;
 } else {
  s1+=4.0;
 }
} else {
 if(i0<25.910064697265625){
  s0+=2.0;
  s1+=8.0;
 } else {
  s1+=2386.0;
 }
}
if(i3<13.270316123962402){
 if(i2<6.616669654846191){
  s0+=5028.0;
  s1+=41.0;
 } else {
  s0+=4.0;
  s1+=45.0;
 }
} else {
 if(i0<21.33062171936035){
  s0+=5.0;
 } else {
  s1+=2304.0;
 }
}
if(i3<13.188667297363281){
 if(i0<26.074298858642578){
  s0+=4983.0;
  s1+=3.0;
 } else {
  s1+=87.0;
 }
} else {
 if(i2<3.5899858474731445){
  s0+=8.0;
  s1+=1182.0;
 } else {
  s1+=1164.0;
 }
}
if(i3<12.718697547912598){
 if(i0<26.52666473388672){
  s0+=4946.0;
  s1+=1.0;
 } else {
  s1+=84.0;
 }
} else {
 if(i0<20.190776824951172){
  s0+=2.0;
 } else {
  s0+=1.0;
  s1+=2393.0;
 }
}
if(i1<0.36011791229248047){
 if(i0<24.331546783447266){
  s0+=5017.0;
  s1+=12.0;
 } else {
  s1+=1296.0;
 }
} else {
 if(i3<5.682621002197266){
  s0+=13.0;
  s1+=8.0;
 } else {
  s0+=3.0;
  s1+=1078.0;
 }
}
if(i3<12.786102294921875){
 if(i0<25.842853546142578){
  s0+=5035.0;
  s1+=2.0;
 } else {
  s1+=86.0;
 }
} else {
 if(i0<21.33062171936035){
  s0+=5.0;
  s1+=2.0;
 } else {
  s0+=1.0;
  s1+=2296.0;
 }
}
if(i0<23.197006225585938){
 if(i2<-4.572671890258789){
  s0+=1.0;
  s1+=11.0;
 } else {
  s0+=5014.0;
 }
} else {
 if(i0<25.930532455444336){
  s0+=5.0;
  s1+=9.0;
 } else {
  s1+=2387.0;
 }
}
if(i0<23.197006225585938){
 if(i3<21.37688636779785){
  s0+=5000.0;
  s1+=3.0;
 } else {
  s1+=4.0;
 }
} else {
 if(i2<5.223087310791016){
  s1+=1298.0;
 } else {
  s0+=5.0;
  s1+=1117.0;
 }
}
if(i0<23.119903564453125){
 if(i1<-0.3914813995361328){
  s1+=9.0;
 } else {
  s0+=5084.0;
  s1+=1.0;
 }
} else {
 if(i0<25.930532455444336){
  s0+=3.0;
  s1+=9.0;
 } else {
  s1+=2321.0;
 }
}
if(i2<4.232826232910156){
 if(i0<23.699098587036133){
  s0+=4976.0;
  s1+=7.0;
 } else {
  s1+=1281.0;
 }
} else {
 if(i3<9.636178970336914){
  s0+=35.0;
  s1+=28.0;
 } else {
  s0+=6.0;
  s1+=1094.0;
 }
}
 float max_s=s0;
 int cls=1;
 if (max_s < s1) {
  max_s = s1;
  cls=2;
 }
 WRITE_IMAGE (out, POS_out_INSTANCE(x,y,z,0), cls);
}
