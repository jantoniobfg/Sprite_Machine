`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2022 14:40:46
// Design Name: 
// Module Name: write_enable
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module write_enable( input [511:0] sprite_in, output [63:0] we

    );
    assign we[0]=sprite_in[0]&sprite_in[1]&sprite_in[2]&sprite_in[3]&sprite_in[4]&sprite_in[5]&sprite_in[6]&sprite_in[7];
    assign we[1]=sprite_in[8]&sprite_in[9]&sprite_in[10]&sprite_in[11]&sprite_in[12]&sprite_in[13]&sprite_in[14]&sprite_in[15];
    assign we[2]=sprite_in[16]&sprite_in[17]&sprite_in[18]&sprite_in[19]&sprite_in[20]&sprite_in[21]&sprite_in[22]&sprite_in[23];
    assign we[3]=sprite_in[24]&sprite_in[25]&sprite_in[26]&sprite_in[27]&sprite_in[28]&sprite_in[29]&sprite_in[30]&sprite_in[31];
    assign we[4]=sprite_in[32]&sprite_in[33]&sprite_in[34]&sprite_in[35]&sprite_in[36]&sprite_in[37]&sprite_in[38]&sprite_in[39];
    assign we[5]=sprite_in[40]&sprite_in[41]&sprite_in[42]&sprite_in[43]&sprite_in[44]&sprite_in[45]&sprite_in[46]&sprite_in[47];
    assign we[6]=sprite_in[48]&sprite_in[49]&sprite_in[50]&sprite_in[51]&sprite_in[52]&sprite_in[53]&sprite_in[54]&sprite_in[55];
    assign we[7]=sprite_in[56]&sprite_in[57]&sprite_in[58]&sprite_in[59]&sprite_in[60]&sprite_in[61]&sprite_in[62]&sprite_in[63];
    assign we[8]=sprite_in[64]&sprite_in[65]&sprite_in[66]&sprite_in[67]&sprite_in[68]&sprite_in[69]&sprite_in[70]&sprite_in[71];
    assign we[9]=sprite_in[72]&sprite_in[73]&sprite_in[74]&sprite_in[75]&sprite_in[76]&sprite_in[77]&sprite_in[78]&sprite_in[79];
    assign we[10]=sprite_in[80]&sprite_in[81]&sprite_in[82]&sprite_in[83]&sprite_in[84]&sprite_in[85]&sprite_in[86]&sprite_in[87];
    assign we[11]=sprite_in[88]&sprite_in[89]&sprite_in[90]&sprite_in[91]&sprite_in[92]&sprite_in[93]&sprite_in[94]&sprite_in[95];
    assign we[12]=sprite_in[96]&sprite_in[97]&sprite_in[98]&sprite_in[99]&sprite_in[100]&sprite_in[101]&sprite_in[102]&sprite_in[103];
    assign we[13]=sprite_in[104]&sprite_in[105]&sprite_in[106]&sprite_in[107]&sprite_in[108]&sprite_in[109]&sprite_in[110]&sprite_in[111];
    assign we[14]=sprite_in[112]&sprite_in[113]&sprite_in[114]&sprite_in[115]&sprite_in[116]&sprite_in[117]&sprite_in[118]&sprite_in[119];
    assign we[15]=sprite_in[120]&sprite_in[121]&sprite_in[122]&sprite_in[123]&sprite_in[124]&sprite_in[125]&sprite_in[126]&sprite_in[127];
    assign we[16]=sprite_in[128]&sprite_in[129]&sprite_in[130]&sprite_in[131]&sprite_in[132]&sprite_in[133]&sprite_in[134]&sprite_in[135];
    assign we[17]=sprite_in[136]&sprite_in[137]&sprite_in[138]&sprite_in[139]&sprite_in[140]&sprite_in[141]&sprite_in[142]&sprite_in[143];
    assign we[18]=sprite_in[144]&sprite_in[145]&sprite_in[146]&sprite_in[147]&sprite_in[148]&sprite_in[149]&sprite_in[150]&sprite_in[151];
    assign we[19]=sprite_in[152]&sprite_in[153]&sprite_in[154]&sprite_in[155]&sprite_in[156]&sprite_in[157]&sprite_in[158]&sprite_in[159];
    assign we[20]=sprite_in[160]&sprite_in[161]&sprite_in[162]&sprite_in[163]&sprite_in[164]&sprite_in[165]&sprite_in[166]&sprite_in[167];
    assign we[21]=sprite_in[168]&sprite_in[169]&sprite_in[170]&sprite_in[171]&sprite_in[172]&sprite_in[173]&sprite_in[174]&sprite_in[175];
    assign we[22]=sprite_in[176]&sprite_in[177]&sprite_in[178]&sprite_in[179]&sprite_in[180]&sprite_in[181]&sprite_in[182]&sprite_in[183];
    assign we[23]=sprite_in[184]&sprite_in[185]&sprite_in[186]&sprite_in[187]&sprite_in[188]&sprite_in[189]&sprite_in[190]&sprite_in[191];
    assign we[24]=sprite_in[192]&sprite_in[193]&sprite_in[194]&sprite_in[195]&sprite_in[196]&sprite_in[197]&sprite_in[198]&sprite_in[199];
    assign we[25]=sprite_in[200]&sprite_in[201]&sprite_in[202]&sprite_in[203]&sprite_in[204]&sprite_in[205]&sprite_in[206]&sprite_in[207];
    assign we[26]=sprite_in[208]&sprite_in[209]&sprite_in[210]&sprite_in[211]&sprite_in[212]&sprite_in[213]&sprite_in[214]&sprite_in[215];
    assign we[27]=sprite_in[216]&sprite_in[217]&sprite_in[218]&sprite_in[219]&sprite_in[220]&sprite_in[221]&sprite_in[222]&sprite_in[223];
    assign we[28]=sprite_in[224]&sprite_in[225]&sprite_in[226]&sprite_in[227]&sprite_in[228]&sprite_in[229]&sprite_in[230]&sprite_in[231];
    assign we[29]=sprite_in[232]&sprite_in[233]&sprite_in[234]&sprite_in[235]&sprite_in[236]&sprite_in[237]&sprite_in[238]&sprite_in[239];
    assign we[30]=sprite_in[240]&sprite_in[241]&sprite_in[242]&sprite_in[243]&sprite_in[244]&sprite_in[245]&sprite_in[246]&sprite_in[247];
    assign we[31]=sprite_in[248]&sprite_in[249]&sprite_in[250]&sprite_in[251]&sprite_in[252]&sprite_in[253]&sprite_in[254]&sprite_in[255];
    assign we[32]=sprite_in[256]&sprite_in[257]&sprite_in[258]&sprite_in[259]&sprite_in[260]&sprite_in[261]&sprite_in[262]&sprite_in[263];
    assign we[33]=sprite_in[264]&sprite_in[265]&sprite_in[266]&sprite_in[267]&sprite_in[268]&sprite_in[269]&sprite_in[270]&sprite_in[271];
    assign we[34]=sprite_in[272]&sprite_in[273]&sprite_in[274]&sprite_in[275]&sprite_in[276]&sprite_in[277]&sprite_in[278]&sprite_in[279];
    assign we[35]=sprite_in[280]&sprite_in[281]&sprite_in[282]&sprite_in[283]&sprite_in[284]&sprite_in[285]&sprite_in[286]&sprite_in[287];
    assign we[36]=sprite_in[288]&sprite_in[289]&sprite_in[290]&sprite_in[291]&sprite_in[292]&sprite_in[293]&sprite_in[294]&sprite_in[295];
    assign we[37]=sprite_in[296]&sprite_in[297]&sprite_in[298]&sprite_in[299]&sprite_in[300]&sprite_in[301]&sprite_in[302]&sprite_in[303];
    assign we[38]=sprite_in[304]&sprite_in[305]&sprite_in[306]&sprite_in[307]&sprite_in[308]&sprite_in[309]&sprite_in[310]&sprite_in[311];
    assign we[39]=sprite_in[312]&sprite_in[313]&sprite_in[314]&sprite_in[315]&sprite_in[316]&sprite_in[317]&sprite_in[318]&sprite_in[319];
    assign we[40]=sprite_in[320]&sprite_in[321]&sprite_in[322]&sprite_in[323]&sprite_in[324]&sprite_in[325]&sprite_in[326]&sprite_in[327];
    assign we[41]=sprite_in[328]&sprite_in[329]&sprite_in[330]&sprite_in[331]&sprite_in[332]&sprite_in[333]&sprite_in[334]&sprite_in[335];
    assign we[42]=sprite_in[336]&sprite_in[337]&sprite_in[338]&sprite_in[339]&sprite_in[340]&sprite_in[341]&sprite_in[342]&sprite_in[343];
    assign we[43]=sprite_in[344]&sprite_in[345]&sprite_in[346]&sprite_in[347]&sprite_in[348]&sprite_in[349]&sprite_in[350]&sprite_in[351];
    assign we[44]=sprite_in[352]&sprite_in[353]&sprite_in[354]&sprite_in[355]&sprite_in[356]&sprite_in[357]&sprite_in[358]&sprite_in[359];
    assign we[45]=sprite_in[360]&sprite_in[361]&sprite_in[362]&sprite_in[363]&sprite_in[364]&sprite_in[365]&sprite_in[366]&sprite_in[367];
    assign we[46]=sprite_in[368]&sprite_in[369]&sprite_in[370]&sprite_in[371]&sprite_in[372]&sprite_in[373]&sprite_in[374]&sprite_in[375];
    assign we[47]=sprite_in[376]&sprite_in[377]&sprite_in[378]&sprite_in[379]&sprite_in[380]&sprite_in[381]&sprite_in[382]&sprite_in[383];
    assign we[48]=sprite_in[384]&sprite_in[385]&sprite_in[386]&sprite_in[387]&sprite_in[388]&sprite_in[389]&sprite_in[390]&sprite_in[391];
    assign we[49]=sprite_in[392]&sprite_in[393]&sprite_in[394]&sprite_in[395]&sprite_in[396]&sprite_in[397]&sprite_in[398]&sprite_in[399];
    assign we[50]=sprite_in[400]&sprite_in[401]&sprite_in[402]&sprite_in[403]&sprite_in[404]&sprite_in[405]&sprite_in[406]&sprite_in[407];
    assign we[51]=sprite_in[408]&sprite_in[409]&sprite_in[410]&sprite_in[411]&sprite_in[412]&sprite_in[413]&sprite_in[414]&sprite_in[415];
    assign we[52]=sprite_in[416]&sprite_in[417]&sprite_in[418]&sprite_in[419]&sprite_in[420]&sprite_in[421]&sprite_in[422]&sprite_in[423];
    assign we[53]=sprite_in[424]&sprite_in[425]&sprite_in[426]&sprite_in[427]&sprite_in[428]&sprite_in[429]&sprite_in[430]&sprite_in[431];
    assign we[54]=sprite_in[432]&sprite_in[433]&sprite_in[434]&sprite_in[435]&sprite_in[436]&sprite_in[437]&sprite_in[438]&sprite_in[439];
    assign we[55]=sprite_in[440]&sprite_in[441]&sprite_in[442]&sprite_in[443]&sprite_in[444]&sprite_in[445]&sprite_in[446]&sprite_in[447];
    assign we[56]=sprite_in[448]&sprite_in[449]&sprite_in[450]&sprite_in[451]&sprite_in[452]&sprite_in[453]&sprite_in[454]&sprite_in[455];
    assign we[57]=sprite_in[456]&sprite_in[457]&sprite_in[458]&sprite_in[459]&sprite_in[460]&sprite_in[461]&sprite_in[462]&sprite_in[463];
    assign we[58]=sprite_in[464]&sprite_in[465]&sprite_in[466]&sprite_in[467]&sprite_in[468]&sprite_in[469]&sprite_in[470]&sprite_in[471];
    assign we[59]=sprite_in[472]&sprite_in[473]&sprite_in[474]&sprite_in[475]&sprite_in[476]&sprite_in[477]&sprite_in[478]&sprite_in[479];
    assign we[60]=sprite_in[480]&sprite_in[481]&sprite_in[482]&sprite_in[483]&sprite_in[484]&sprite_in[485]&sprite_in[486]&sprite_in[487];
    assign we[61]=sprite_in[488]&sprite_in[489]&sprite_in[490]&sprite_in[491]&sprite_in[492]&sprite_in[493]&sprite_in[494]&sprite_in[495];
    assign we[62]=sprite_in[496]&sprite_in[497]&sprite_in[498]&sprite_in[499]&sprite_in[500]&sprite_in[501]&sprite_in[502]&sprite_in[503];
    assign we[63]=sprite_in[504]&sprite_in[505]&sprite_in[506]&sprite_in[507]&sprite_in[508]&sprite_in[509]&sprite_in[510]&sprite_in[511];

    
endmodule
