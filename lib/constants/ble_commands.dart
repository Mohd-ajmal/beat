class BleCommands {
  static List<int> setOptionCommand = [
    0x10,
    0x01,
    0x42,
    0x00,
    0x07,
    0x2A,
    0x84,
    0xB1,
    0x02,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x01,
    0x04,
    0x04,
    0x03,
    0x00,
    0x01,
    0x00,
    0x01,
    0x00,
    0x01,
    0x00,
    0x01,
    0x00,
    0x01,
    0x00,
    0x01,
    0x00,
    0x01,
    0x00,
    0x01,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x82,
    0x00,
    0x01,
    0x00,
    0x76,
    0x0B,
    0xB3,
    0xFE,
    0x8E,
    0x33,
    0xE7,
    0xE5
  ];

  static List<int> measurementBeforeCommand = [
    0x10,
    0x01,
    0x1A,
    0x00,
    0x07,
    0x2A,
    0x5C,
    0xB1,
    0x02,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x02,
    0x01,
    0x00,
    0x00,
    0xC9,
    0x27,
    0x9F,
    0x1C,
    0x0F,
    0x5F,
    0x01,
    0x49
  ];

  static List<int> startEcgMeasurementCommand = [
    0x10,
    0x01,
    0x1E,
    0x00,
    0x07,
    0x2A,
    0x60,
    0xB1,
    0x02,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x03,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xCE,
    0x13,
    0x13,
    0xB2,
    0x50,
    0xCD,
    0xF8,
    0x0B
  ];
}


// 820,
//     775,
//     783,
//     776,
//     770,
//     788,
//     761,
//     746,
//     742,
//     754,
//     803,
//     784,
//     778,
//     706,
//     756,
//     819,
//     827,
//     864,
//     883,
//     865,
//     881,
//     866,
//     862,
//     799,
//     772,
//     748,
//     741,
//     722,
//     654,
//     699,
//     723,
//     671,
//     745,
//     815,
//     733,
//     612,
//     628,
//     701,
//     714,
//     726,
//     715,
//     625,
//     444,
//     418,
//     488,
//     811,
//     1413,
//     1988,
//     2361,
//     2293,
//     1985,
//     1256,
//     958,
//     687,
//     605,
//     828,
//     896,
//     835,
//     667,
//     616,
//     662,
//     620,
//     658,
//     692,
//     661,
//     633,
//     607,
//     630,
//     609,
//     628,
//     680,
//     664,
//     707,
//     746,
//     710,
//     721,
//     751,
//     760,
//     752,
//     759,
//     765,
//     783,
//     799,
//     834,
//     865,
//     827,
//     852,
//     902,
//     908,
//     964,
//     1046,
//     1035,
//     1005,
//     942,
//     966,
//     1018,
//     1037,
//     1043,
//     1038,
//     982,
//     930,
//     949,
//     931,
//     992,
//     968,
//     856,
//     808,
//     794,
//     702,
//     714,
//     725,
//     755,
//     673,
//     618,
//     688,
//     606,
//     617,
//     667,
//     676,
//     619,
//     686,
//     695,
//     621,
//     651,
//     678,
//     637,
//     630,
//     718,
//     730,
//     719,
//     709,
//     664,
//     672,
//     679,
//     685,
//     753,
//     744,
//     720,
//     698,
//     692,
//     674,
//     724,
//     785,
//     777,
//     740,
//     721,
//     752,
//     747,
//     762,
//     784,
//     729,
//     766,
//     760,
//     729,
//     801,
//     851,
//     788,
//     796,
//     848,
//     854,
//     860,
//     822,
//     827,
//     849,
//     837,
//     847,
//     857,
//     811,
//     737,
//     767,
//     776,
//     866,
//     999,
//     1016,
//     935,
//     892,
//     905,
//     941,
//     952,
//     1002,
//     1029,
//     955,
//     885,
//     822,
//     846,
//     809,
//     828,
//     871,
//     898,
//     893,
//     889,
//     860,
//     863,
//     839,
//     885,
//     879,
//     811,
//     802,
//     728,
//     738,
//     729,
//     753,
//     865,
//     1108,
//     1629,
//     2151,
//     2355,
//     2171,
//     1554,
//     1143,
//     920,
//     852,
//     913,
//     1081,
//     1030,
//     892,
//     934,
//     896,
//     862,
//     893,
//     921,
//     895,
//     872,
//     936,
//     917,
//     865,
//     913,
//     927,
//     1019,
//     1007,
//     974,
//     984,
//     957,
//     981,
//     1033,
//     1039,
//     996,
//     980,
//     1056,
//     1089,
//     1119,
//     1110,
//     1086,
//     1004,
//     1015,
//     1145,
//     1233,
//     1281,
//     1354,
//     1393,
//     1284,
//     1241,
//     1280,
//     1316,
//     1305,
//     1335,
//     1326,
//     1285,
//     1233,
//     1187,
//     1131,
//     1109,
//     1090,
//     1034,
//     1041,
//     1008,
//     940,
//     895,
//     838,
//     771,
//     834,
//     891,
//     913,
//     946,
//     928,
//     845,
//     809,
//     820,
//     830,
//     857,
//     865,
//     843,
//     810,
//     779,
//     729,
//     748,
//     816,
//     789,
//     863,
//     913,
//     850,
//     793,
//     786,
//     767,
//     810,
//     882,
//     932,
//     923,
//     899,
//     847,
//     828,
//     810,
//     837,
//     862,
//     831,
//     819,
//     844,
//     847,
//     868,
//     875,
//     868,
//     834,
//     768,
//     777,
//     818,
//     825,
//     858,
//     876,
//     838,
//     823,
//     810,
//     839,
//     857,
//     805,
//     842,
//     875,
//     832,
//     805,
//     861,
//     898,
//     865,
//     871,
//     898,
//     954,
//     917,
//     911,
//     868,
//     873,
//     817,
//     765,
//     798,
//     829,
//     845,
//     820,
//     752,
//     702,
//     729,
//     737,
//     819,
//     896,
//     846,
//     728,
//     712,
//     698,
//     632,
//     668,
//     767,
//     887,
//     1130,
//     1512,
//     1767,
//     1721,
//     1511,
//     1090,
//     698,
//     749,
//     703,
//     829,
//     943,
//     840,
//     683,
//     711,
//     737,
//     855,
//     876,
//     818,
//     766,
//     718,
//     791,
//     857,
//     845,
//     834,
//     824,
//     851,
//     794,
//     787,
//     875,
//     887,
//     854,
//     844,
//     889,
//     930,
//     878,
//     897,
//     866,
//     850,
//     916,
//     979,
//     1036,
//     1118,
//     1151,
//     1101,
//     1038,
//     981,
//     1063,
//     1096,
//     1106,
//     1206,
//     1245,
//     1161,
//     1062,
//     1075,
//     1111,
//     1078,
//     1068,
//     1095,
//     1071,
//     974,
//     961,
//     973,
//     962,
//     892,
//     792,
//     753,
//     765,
//     754,
//     744,
//     753,
//     761,
//     783,
//     722,
//     681,
//     703,
//     791,
//     779,
//     834,
//     904,
//     895,
//     805,
//     745,
//     756,
//     766,
//     811,
//     787,
//     794,
//     800,
//     782,
//     744,
//     749,
//     753,
//     765,
//     821,
//     878,
//     856,
//     902,
//     884,
//     868,
//     863,
//     859,
//     855,
//     852,
//     835,
//     801,
//     779,
//     834,
//     841,
//     847,
//     853,
//     848,
//     772,
//     761,
//     771,
//     816,
//     873,
//     880,
//     913,
//     870,
//     820,
//     826,
//     795,
//     800,
//     856,
//     834,
//     880,
//     936,
//     943,
//     924,
//     942,
//     870,
//     860,
//     851,
//     810,
//     803,
//     836,
//     818,
//     791,
//     786,
//     790,
//     802,
//     746,
//     770,
//     748,
//     742,
//     785,
//     780,
//     755,
//     705,
//     631,
//     581,
//     481,
//     520,
//     701,
//     1092,
//     1709,
//     1955,
//     2178,
//     1974,
//     1419,
//     897,
//     693,
//     632,
//     800,
//     851,
//     805,
//     763,
//     649,
//     615,
//     646,
//     674,
//     596,
//     619,
//     598,
//     656,
//     673,
//     689,
//     762,
//     749,
//     689,
//     634,
//     624,
//     633,
//     641,
//     678,
//     724,
//     742,
//     737,
//     732,
//     745,
//     783,
//     808,
//     777,
//     756,
//     715,
//     720,
//     766,
//     847,
//     880,
//     910,
//     937,
//     978,
//     1000,
//     981,
//     888,
//     901,
//     913,
//     880,
//     890,
//     935,
//     894,
//     827,
//     764,
//     707,
//     640,
//     613,
//     539,
//     509,
//     518,
//     526,
//     474,
//     468,
//     486,
//     459,
//     494,
//     481,
//     435,
//     392,
//     331,
//     405,
//     395,
//     350,
//     407,
//     355,
//     281,
//     291,
//     282,
//     290,
//     372,
//     405,
//     415,
//     406,
//     382,
//     345,
//     271,
//     261,
//     288,
//     329,
//     336,
//     290,
//     296,
//     280,
//     265,
//     215,
//     182,
//     238,
//     260,
//     279,
//     273,
//     246,
//     231,
//     181,
//     175,
//     218,
//     234,
//     168,
//     123,
//     131,
//     153,
//     120,
//     114,
//     98,
//     73,
//     86,
//     98,
//     108,
//     153,
//     159,
//     132,
//     147,
//     160,
//     172,
//     116,
//     42,
//     32,
//     41,
//     0,
//     -22,
//     24,
//     42,
//     -8,
//     -82,
//     -92,
//     -65,
//     -106,
//     -173,
//     -128,
//     -169,
//     -162,
//     -129,
//     -197,
//     -279,
//     -246,
//     -296,
//     -432,
//     -451,
//     -328,
//     -85,
//     436,
//     1108,
//     1379,
//     1461,
//     1088,
//     340,
//     -157,
//     -247,
//     -329,
//     -255,
//     -187,
//     -248,
//     -304,
//     -355,
//     -309,
//     -351,
//     -389,
//     -423,
//     -454,
//     -426,
//     -348,
//     -325,
//     -389,
//     -408,
//     -460,
//     -541,
//     -555,
//     -463,
//     -475,
//     -420,
//     -410,
//     -365,
//     -389,
//     -501,
//     -517,
//     -415,
//     -376,
//     -364,
//     -331,
//     -301,
//     -346,
//     -370,
//     -348,
//     -302,
//     -284,
//     -246,
//     -281,
//     -312,
//     -249,
//     -258,
//     -365,
//     -204,
//     -183,
//     -280,
//     -263,
//     -247,
//     -320,
//     -386,
//     -398,
//     -475,
//     -505,
//     -532,
//     -606,
//     -616,
//     -607,
//     -664,
//     -746,
//     -823,
//     -893,
//     -793,
//     -780,
//     -720,
//     -687,
//     -717,
//     -799,
//     -832
