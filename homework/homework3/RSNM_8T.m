%%1v

clc
clear


v1_1 = [        % v2從0掃到1
999.9634*10^-3
999.9585*10^-3
999.9522*10^-3
999.9441*10^-3
999.9336*10^-3
999.9201*10^-3
999.9027*10^-3
999.8804*10^-3
999.8518*10^-3
999.8152*10^-3
999.7684*10^-3
999.7087*10^-3
999.6329*10^-3
999.5368*10^-3
999.4153*10^-3
999.2622*10^-3
999.0699*10^-3
998.8292*10^-3
998.5289*10^-3
998.1556*10^-3
997.6934*10^-3
997.1233*10^-3
996.4231*10^-3
995.5666*10^-3
994.5238*10^-3
993.2604*10^-3
991.7374*10^-3
989.9110*10^-3
987.7328*10^-3
985.1494*10^-3
982.1018*10^-3
978.5255*10^-3
974.3489*10^-3
969.4916*10^-3
963.8616*10^-3
957.3535*10^-3
949.8413*10^-3
941.1646*10^-3
931.1153*10^-3
919.4135*10^-3
905.6632*10^-3
889.2860*10^-3
869.3686*10^-3
844.3910*10^-3
811.8042*10^-3
768.5731*10^-3
715.2071*10^-3
656.0461*10^-3
594.1924*10^-3
531.0622*10^-3
467.3630*10^-3
403.5637*10^-3
340.1303*10^-3
277.7855*10^-3
218.1115*10^-3
165.0890*10^-3
125.3558*10^-3
 99.6471*10^-3
 82.3676*10^-3
 69.6403*10^-3
 59.6440*10^-3
 51.4685*10^-3
 44.6032*10^-3
 38.7336*10^-3
 33.6525*10^-3
 29.2162*10^-3
 25.3209*10^-3
 21.8892*10^-3
 18.8616*10^-3
 16.1910*10^-3
 13.8391*10^-3
 11.7737*10^-3
  9.9669*10^-3
  8.3938*10^-3
  7.0317*10^-3
  5.8596*10^-3
  4.8574*10^-3
  4.0062*10^-3
  3.2883*10^-3
  2.6868*10^-3
  2.1861*10^-3
  1.7718*10^-3
  1.4310*10^-3
  1.1520*10^-3
924.6996*10^-6
740.2273*10^-6
591.0605*10^-6
470.8288*10^-6
374.2025*10^-6
296.7592*10^-6
234.8533*10^-6
185.4957*10^-6
146.2453*10^-6
115.1150*10^-6
 90.4919*10^-6
 71.0699*10^-6
 55.7941*10^-6
 43.8146*10^-6
 34.4488*10^-6
 27.1497*10^-6
 21.4804*10^-6
];
v2_1 =[    0           
   10.00000*0.001
   20.00000*0.001
   30.00000*0.001
   40.00000*0.001
   50.00000*0.001
   60.00000*0.001
   70.00000*0.001
   80.00000*0.001
   90.00000*0.001
  100.00000*0.001
  110.00000*0.001
  120.00000*0.001
  130.00000*0.001
  140.00000*0.001
  150.00000*0.001
  160.00000*0.001
  170.00000*0.001
  180.00000*0.001
  190.00000*0.001
  200.00000*0.001
  210.00000*0.001
  220.00000*0.001
  230.00000*0.001
  240.00000*0.001
  250.00000*0.001
  260.00000*0.001
  270.00000*0.001
  280.00000*0.001
  290.00000*0.001
  300.00000*0.001
  310.00000*0.001
  320.00000*0.001
  330.00000*0.001
  340.00000*0.001
  350.00000*0.001
  360.00000*0.001
  370.00000*0.001
  380.00000*0.001
  390.00000*0.001
  400.00000*0.001
  410.00000*0.001
  420.00000*0.001
  430.00000*0.001
  440.00000*0.001
  450.00000*0.001
  460.00000*0.001
  470.00000*0.001
  480.00000*0.001
  490.00000*0.001
  500.00000*0.001
  510.00000*0.001
  520.00000*0.001
  530.00000*0.001
  540.00000*0.001
  550.00000*0.001
  560.00000*0.001
  570.00000*0.001
  580.00000*0.001
  590.00000*0.001
  600.00000*0.001
  610.00000*0.001
  620.00000*0.001
  630.00000*0.001
  640.00000*0.001
  650.00000*0.001
  660.00000*0.001
  670.00000*0.001
  680.00000*0.001
  690.00000*0.001
  700.00000*0.001
  710.00000*0.001
  720.00000*0.001
  730.00000*0.001
  740.00000*0.001
  750.00000*0.001
  760.00000*0.001
  770.00000*0.001
  780.00000*0.001
  790.00000*0.001
  800.00000*0.001
  810.00000*0.001
  820.00000*0.001
  830.00000*0.001
  840.00000*0.001
  850.00000*0.001
  860.00000*0.001
  870.00000*0.001
  880.00000*0.001
  890.00000*0.001
  900.00000*0.001
  910.00000*0.001
  920.00000*0.001
  930.00000*0.001
  940.00000*0.001
  950.00000*0.001
  960.00000*0.001
  970.00000*0.001
  980.00000*0.001
  990.00000*0.001
    1.00000      
];

v1_2 = v2_1; %v1從0掃到1
v2_2 = v1_1; % 從1掉到0

x1 = v1_1; y1 = v1_2;
x2 = v2_1; y2 = v2_2;

plot_squar2(x1,y1,x2,y2);





%% 0.8v

clc
clear


v1_1 = [        % v2從0掃到1
799.9761*10^-3
799.9725*10^-3
799.9678*10^-3
799.9616*10^-3
799.9537*10^-3
799.9433*10^-3
799.9297*10^-3
799.9121*10^-3
799.8891*10^-3
799.8591*10^-3
799.8202*10^-3
799.7695*10^-3
799.7038*10^-3
799.6185*10^-3
799.5081*10^-3
799.3652*10^-3
799.1808*10^-3
798.9429*10^-3
798.6367*10^-3
798.2431*10^-3
797.7381*10^-3
797.0907*10^-3
796.2623*10^-3
795.2032*10^-3
793.8507*10^-3
792.1247*10^-3
789.9229*10^-3
787.1136*10^-3
783.5260*10^-3
778.9342*10^-3
773.0322*10^-3
765.3875*10^-3
755.3637*10^-3
741.9273*10^-3
723.2059*10^-3
695.3363*10^-3
651.6184*10^-3
592.6342*10^-3
527.5358*10^-3
460.4210*10^-3
392.5422*10^-3
324.4800*10^-3
256.7422*10^-3
190.2511*10^-3
127.9976*10^-3
 80.1986*10^-3
 53.8284*10^-3
 39.0416*10^-3
 29.4463*10^-3
 22.6696*10^-3
 17.6562*10^-3
 13.8445*10^-3
 10.8973*10^-3
  8.5943*10^-3
  6.7831*10^-3
  5.3536*10^-3
  4.2233*10^-3
  3.3292*10^-3
  2.6220*10^-3
  2.0631*10^-3
  1.6219*10^-3
  1.2738*10^-3
999.5377*10^-6
783.5818*10^-6
613.6848*10^-6
480.1269*10^-6
375.2187*10^-6
292.8858*10^-6
228.3334*10^-6
177.7784*10^-6
138.2360*10^-6
107.3513*10^-6
 83.2663*10^-6
 64.5153*10^-6
 49.9428*10^-6
 38.6383*10^-6
 29.8854*10^-6
 23.1211*10^-6
 17.9039*10^-6
 13.8882*10^-6
 10.8039*10^-6
];
v2_1 =[    0      
 10.0000*0.001
 20.0000*0.001
 30.0000*0.001
 40.0000*0.001
 50.0000*0.001
 60.0000*0.001
 70.0000*0.001
 80.0000*0.001
 90.0000*0.001
100.0000*0.001
110.0000*0.001
120.0000*0.001
130.0000*0.001
140.0000*0.001
150.0000*0.001
160.0000*0.001
170.0000*0.001
180.0000*0.001
190.0000*0.001
200.0000*0.001
210.0000*0.001
220.0000*0.001
230.0000*0.001
240.0000*0.001
250.0000*0.001
260.0000*0.001
270.0000*0.001
280.0000*0.001
290.0000*0.001
300.0000*0.001
310.0000*0.001
320.0000*0.001
330.0000*0.001
340.0000*0.001
350.0000*0.001
360.0000*0.001
370.0000*0.001
380.0000*0.001
390.0000*0.001
400.0000*0.001
410.0000*0.001
420.0000*0.001
430.0000*0.001
440.0000*0.001
450.0000*0.001
460.0000*0.001
470.0000*0.001
480.0000*0.001
490.0000*0.001
500.0000*0.001
510.0000*0.001
520.0000*0.001
530.0000*0.001
540.0000*0.001
550.0000*0.001
560.0000*0.001
570.0000*0.001
580.0000*0.001
590.0000*0.001
600.0000*0.001
610.0000*0.001
620.0000*0.001
630.0000*0.001
640.0000*0.001
650.0000*0.001
660.0000*0.001
670.0000*0.001
680.0000*0.001
690.0000*0.001
700.0000*0.001
710.0000*0.001
720.0000*0.001
730.0000*0.001
740.0000*0.001
750.0000*0.001
760.0000*0.001
770.0000*0.001
780.0000*0.001
790.0000*0.001
800.0000*0.001
  
];

v1_2 = v2_1; %v1從0掃到1
v2_2 = v1_1; % 從1掉到0


x1 = v1_1; y1 = v1_2;
x2 = v2_1; y2 = v2_2;

plot_squar2(x1,y1,x2,y2);


%% 0.6v

clc
clear


v1_1 = [        % v2從0掃到1
599.9797*10^-3
599.9760*10^-3
599.9710*10^-3
599.9644*10^-3
599.9556*10^-3
599.9437*10^-3
599.9277*10^-3
599.9060*10^-3
599.8765*10^-3
599.8363*10^-3
599.7813*10^-3
599.7057*10^-3
599.6015*10^-3
599.4574*10^-3
599.2572*10^-3
598.9781*10^-3
598.5874*10^-3
598.0382*10^-3
597.2625*10^-3
596.1606*10^-3
594.5854*10^-3
592.3144*10^-3
589.0026*10^-3
584.0841*10^-3
576.5714*10^-3
564.4393*10^-3
542.4335*10^-3
498.1418*10^-3
434.8961*10^-3
366.9234*10^-3
297.7380*10^-3
228.3161*10^-3
159.5426*10^-3
 94.3695*10^-3
 47.4042*10^-3
 26.7195*10^-3
 16.7379*10^-3
 10.9944*10^-3
  7.4094*10^-3
  5.0757*10^-3
  3.5182*10^-3
  2.4612*10^-3
  1.7352*10^-3
  1.2315*10^-3
879.3120*10^-6
631.2269*10^-6
455.3887*10^-6
330.0130*10^-6
240.1395*10^-6
175.3986*10^-6
128.5524*10^-6
 94.5156*10^-6
 69.6931*10^-6
 51.5293*10^-6
 38.1972*10^-6
 28.3847*10^-6
 21.1448*10^-6
 15.7914*10^-6
 11.8253*10^-6
  8.8822*10^-6
  6.6953*10^-6
];
v2_1 =[    0 
 10.0000*0.001
 20.0000*0.001
 30.0000*0.001
 40.0000*0.001
 50.0000*0.001
 60.0000*0.001
 70.0000*0.001
 80.0000*0.001
 90.0000*0.001
100.0000*0.001
110.0000*0.001
120.0000*0.001
130.0000*0.001
140.0000*0.001
150.0000*0.001
160.0000*0.001
170.0000*0.001
180.0000*0.001
190.0000*0.001
200.0000*0.001
210.0000*0.001
220.0000*0.001
230.0000*0.001
240.0000*0.001
250.0000*0.001
260.0000*0.001
270.0000*0.001
280.0000*0.001
290.0000*0.001
300.0000*0.001
310.0000*0.001
320.0000*0.001
330.0000*0.001
340.0000*0.001
350.0000*0.001
360.0000*0.001
370.0000*0.001
380.0000*0.001
390.0000*0.001
400.0000*0.001
410.0000*0.001
420.0000*0.001
430.0000*0.001
440.0000*0.001
450.0000*0.001
460.0000*0.001
470.0000*0.001
480.0000*0.001
490.0000*0.001
500.0000*0.001
510.0000*0.001
520.0000*0.001
530.0000*0.001
540.0000*0.001
550.0000*0.001
560.0000*0.001
570.0000*0.001
580.0000*0.001
590.0000*0.001
600.0000*0.001

  
];

v1_2 = v2_1; %v1從0掃到1
v2_2 = v1_1; % 從1掉到0


x1 = v1_1; y1 = v1_2;
x2 = v2_1; y2 = v2_2;

plot_squar2(x1,y1,x2,y2);


%% 0.4v

clc
clear


v1_1 = [        % v2從0掃到1
399.9569*10^-3
399.9442*10^-3
399.9261*10^-3
399.9000*10^-3
399.8616*10^-3
399.8048*10^-3
399.7198*10^-3
399.5913*10^-3
399.3952*10^-3
399.0936*10^-3
398.6258*10^-3
397.8941*10^-3
396.7391*10^-3
394.8951*10^-3
391.8996*10^-3
386.9081*10^-3
378.1364*10^-3
360.7143*10^-3
320.1529*10^-3
257.0973*10^-3
189.3153*10^-3
121.6307*10^-3
 61.2206*10^-3
 28.7962*10^-3
 15.7985*10^-3
  9.3042*10^-3
  5.6546*10^-3
  3.4947*10^-3
  2.1823*10^-3
  1.3728*10^-3
868.6247*10^-6
552.4855*10^-6
353.1557*10^-6
226.9303*10^-6
146.6060*10^-6
 95.2621*10^-6
 62.2876*10^-6
 40.9982*10^-6
 27.1754*10^-6
 18.1475*10^-6
 12.2146*10^-6


];
v2_1 =[    0 
  10.0000*0.001
 20.0000*0.001
 30.0000*0.001
 40.0000*0.001
 50.0000*0.001
 60.0000*0.001
 70.0000*0.001
 80.0000*0.001
 90.0000*0.001
100.0000*0.001
110.0000*0.001
120.0000*0.001
130.0000*0.001
140.0000*0.001
150.0000*0.001
160.0000*0.001
170.0000*0.001
180.0000*0.001
190.0000*0.001
200.0000*0.001
210.0000*0.001
220.0000*0.001
230.0000*0.001
240.0000*0.001
250.0000*0.001
260.0000*0.001
270.0000*0.001
280.0000*0.001
290.0000*0.001
300.0000*0.001
310.0000*0.001
320.0000*0.001
330.0000*0.001
340.0000*0.001
350.0000*0.001
360.0000*0.001
370.0000*0.001
380.0000*0.001
390.0000*0.001
400.0000*0.001
 
];

v1_2 = v2_1; %v1從0掃到1
v2_2 = v1_1; % 從1掉到0


x1 = v1_1; y1 = v1_2;
x2 = v2_1; y2 = v2_2;

plot_squar2(x1,y1,x2,y2);


% axis equal