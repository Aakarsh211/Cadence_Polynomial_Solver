
module polynomial_a3_b2_c9_d1_in_bits6_out_bits24_DW02_mult_2 ( \A<5> , \A<4> , 
        \A<3> , \A<2> , \A<1> , \A<0> , \B<5> , \B<4> , \B<3> , \B<2> , \B<1> , 
        \B<0> , TC, \PRODUCT<11> , \PRODUCT<10> , \PRODUCT<9> , \PRODUCT<8> , 
        \PRODUCT<7> , \PRODUCT<6> , \PRODUCT<5> , \PRODUCT<4> , \PRODUCT<3> , 
        \PRODUCT<2> , \PRODUCT<1> , \PRODUCT<0>  );
  input \A<5> , \A<4> , \A<3> , \A<2> , \A<1> , \A<0> , \B<5> , \B<4> , \B<3> ,
         \B<2> , \B<1> , \B<0> , TC;
  output \PRODUCT<11> , \PRODUCT<10> , \PRODUCT<9> , \PRODUCT<8> ,
         \PRODUCT<7> , \PRODUCT<6> , \PRODUCT<5> , \PRODUCT<4> , \PRODUCT<3> ,
         \PRODUCT<2> , \PRODUCT<1> , \PRODUCT<0> ;
  wire   \B<0> , \ab<5][4> , \ab<5][3> , \ab<5][2> , \ab<5][1> , \ab<5][0> ,
         \ab<4][5> , \ab<4][3> , \ab<4][2> , \ab<4][1> , \ab<4][0> ,
         \ab<3][5> , \ab<3][4> , \ab<3][2> , \ab<3][1> , \ab<3][0> ,
         \ab<2][5> , \ab<2][4> , \ab<2][3> , \ab<2][1> , \ab<2][0> ,
         \ab<1][5> , \ab<1][4> , \ab<1][3> , \ab<1][2> , \ab<1][0> ,
         \ab<0][5> , \ab<0][4> , \ab<0][3> , \ab<0][2> , \ab<0][1> ,
         \CARRYB<5][4> , \CARRYB<5][3> , \CARRYB<5][2> , \CARRYB<5][1> ,
         \CARRYB<5][0> , \CARRYB<4][4> , \CARRYB<4][3> , \CARRYB<4][2> ,
         \CARRYB<4][1> , \CARRYB<4][0> , \CARRYB<3][4> , \CARRYB<3][3> ,
         \CARRYB<3][2> , \CARRYB<3][1> , \CARRYB<3][0> , \CARRYB<2][4> ,
         \CARRYB<2][3> , \CARRYB<2][2> , \CARRYB<2][1> , \CARRYB<2][0> ,
         \CARRYB<1][4> , \CARRYB<1][3> , \CARRYB<1][2> , \CARRYB<1][1> ,
         \CARRYB<1][0> , \SUMB<5][4> , \SUMB<5][3> , \SUMB<5][2> ,
         \SUMB<5][1> , \SUMB<4][4> , \SUMB<4][3> , \SUMB<4][2> , \SUMB<4][1> ,
         \SUMB<3][4> , \SUMB<3][3> , \SUMB<3][2> , \SUMB<3][1> , \SUMB<2][4> ,
         \SUMB<2][3> , \SUMB<2][2> , \SUMB<2][1> , \SUMB<1][4> , \SUMB<1][3> ,
         \SUMB<1][2> , \SUMB<1][1> , \A1<8> , \A1<7> , \A1<6> , \A1<5> ,
         \A2<9> , \A2<8> , \A2<7> , \A2<6> , \A2<5> , n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33;
  assign \PRODUCT<0>  = \B<0> ;

  ADDFX1 S2_2_2 ( .A(\B<2> ), .B(\CARRYB<1][2> ), .CI(\SUMB<1][3> ), 
        .CO(\CARRYB<2][2> ), .S(\SUMB<2][2> ) );
  ADDFX1 S2_3_3 ( .A(\B<3> ), .B(\CARRYB<2][3> ), .CI(\SUMB<2][4> ), 
        .CO(\CARRYB<3][3> ), .S(\SUMB<3][3> ) );
  ADDFX1 S3_4_4 ( .A(\B<4> ), .B(\CARRYB<3][4> ), .CI(\ab<3][5> ), 
        .CO(\CARRYB<4][4> ), .S(\SUMB<4][4> ) );
  ADDFX1 S1_2_0 ( .A(\ab<2][0> ), .B(\CARRYB<1][0> ), .CI(\SUMB<1][1> ), 
        .CO(\CARRYB<2][0> ), .S(\PRODUCT<2> ) );
  ADDFX1 S5_4 ( .A(\ab<5][4> ), .B(\CARRYB<4][4> ), .CI(\ab<4][5> ), 
        .CO(\CARRYB<5][4> ), .S(\SUMB<5][4> ) );
  ADDFX1 S2_2_1 ( .A(\ab<2][1> ), .B(\CARRYB<1][1> ), .CI(\SUMB<1][2> ), 
        .CO(\CARRYB<2][1> ), .S(\SUMB<2][1> ) );
  ADDFX1 S2_4_3 ( .A(\ab<4][3> ), .B(\CARRYB<3][3> ), .CI(\SUMB<3][4> ), 
        .CO(\CARRYB<4][3> ), .S(\SUMB<4][3> ) );
  ADDFX1 S2_4_2 ( .A(\ab<4][2> ), .B(\CARRYB<3][2> ), .CI(\SUMB<3][3> ), 
        .CO(\CARRYB<4][2> ), .S(\SUMB<4][2> ) );
  ADDFX1 S2_4_1 ( .A(\ab<4][1> ), .B(\CARRYB<3][1> ), .CI(\SUMB<3][2> ), 
        .CO(\CARRYB<4][1> ), .S(\SUMB<4][1> ) );
  ADDFX1 S2_3_2 ( .A(\ab<3][2> ), .B(\CARRYB<2][2> ), .CI(\SUMB<2][3> ), 
        .CO(\CARRYB<3][2> ), .S(\SUMB<3][2> ) );
  ADDFX1 S3_3_4 ( .A(\ab<3][4> ), .B(\CARRYB<2][4> ), .CI(\ab<2][5> ), 
        .CO(\CARRYB<3][4> ), .S(\SUMB<3][4> ) );
  ADDFX1 S3_2_4 ( .A(\ab<2][4> ), .B(\CARRYB<1][4> ), .CI(\ab<1][5> ), 
        .CO(\CARRYB<2][4> ), .S(\SUMB<2][4> ) );
  ADDFX1 S2_2_3 ( .A(\ab<2][3> ), .B(\CARRYB<1][3> ), .CI(\SUMB<1][4> ), 
        .CO(\CARRYB<2][3> ), .S(\SUMB<2][3> ) );
  ADDFX1 S1_3_0 ( .A(\ab<3][0> ), .B(\CARRYB<2][0> ), .CI(\SUMB<2][1> ), 
        .CO(\CARRYB<3][0> ), .S(\PRODUCT<3> ) );
  ADDFX1 S2_3_1 ( .A(\ab<3][1> ), .B(\CARRYB<2][1> ), .CI(\SUMB<2][2> ), 
        .CO(\CARRYB<3][1> ), .S(\SUMB<3][1> ) );
  ADDFX1 S4_1 ( .A(\ab<5][1> ), .B(\CARRYB<4][1> ), .CI(\SUMB<4][2> ), 
        .CO(\CARRYB<5][1> ), .S(\SUMB<5][1> ) );
  ADDFX1 S4_3 ( .A(\ab<5][3> ), .B(\CARRYB<4][3> ), .CI(\SUMB<4][4> ), 
        .CO(\CARRYB<5][3> ), .S(\SUMB<5][3> ) );
  ADDFX1 S4_2 ( .A(\ab<5][2> ), .B(\CARRYB<4][2> ), .CI(\SUMB<4][3> ), 
        .CO(\CARRYB<5][2> ), .S(\SUMB<5][2> ) );
  ADDFX1 S4_0 ( .A(\ab<5][0> ), .B(\CARRYB<4][0> ), .CI(\SUMB<4][1> ), 
        .CO(\CARRYB<5][0> ), .S(\PRODUCT<5> ) );
  ADDFX1 S1_4_0 ( .A(\ab<4][0> ), .B(\CARRYB<3][0> ), .CI(\SUMB<3][1> ), 
        .CO(\CARRYB<4][0> ), .S(\PRODUCT<4> ) );
  INVX1 U2 ( .A(n15), .Y(n27) );
  INVX1 U3 ( .A(n12), .Y(n26) );
  CLKXOR2X1 U4 ( .A(\ab<1][0> ), .B(\ab<0][1> ), .Y(\PRODUCT<1> ) );
  CLKXOR2X1 U5 ( .A(\CARRYB<5][0> ), .B(\SUMB<5][1> ), .Y(\PRODUCT<6> ) );
  INVX1 U6 ( .A(\ab<0][4> ), .Y(n9) );
  INVX1 U7 ( .A(\ab<0][3> ), .Y(n7) );
  INVX1 U8 ( .A(\ab<0][2> ), .Y(n5) );
  INVX1 U9 ( .A(\ab<0][1> ), .Y(n4) );
  INVX1 U10 ( .A(\ab<0][5> ), .Y(n11) );
  INVX1 U11 ( .A(\ab<1][3> ), .Y(n8) );
  INVX1 U12 ( .A(\ab<1][0> ), .Y(n3) );
  INVX1 U13 ( .A(\ab<1][4> ), .Y(n10) );
  CLKXOR2X1 U14 ( .A(\CARRYB<5][1> ), .B(\SUMB<5][2> ), .Y(\A1<5> ) );
  CLKXOR2X1 U15 ( .A(\CARRYB<5][3> ), .B(\SUMB<5][4> ), .Y(\A1<7> ) );
  CLKXOR2X1 U16 ( .A(\CARRYB<5][2> ), .B(\SUMB<5][3> ), .Y(\A1<6> ) );
  AND2X1 U17 ( .A(\SUMB<5][3> ), .B(\CARRYB<5][2> ), .Y(\A2<7> ) );
  AND2X1 U18 ( .A(\CARRYB<5][0> ), .B(\SUMB<5][1> ), .Y(\A2<5> ) );
  AND2X1 U19 ( .A(\SUMB<5][2> ), .B(\CARRYB<5][1> ), .Y(\A2<6> ) );
  INVX1 U20 ( .A(\CARRYB<5][4> ), .Y(n2) );
  AND2X1 U21 ( .A(\SUMB<5][4> ), .B(\CARRYB<5][3> ), .Y(\A2<8> ) );
  CLKXOR2X1 U22 ( .A(n25), .B(\A2<9> ), .Y(\PRODUCT<11> ) );
  NOR2X1 U23 ( .A(n28), .B(n2), .Y(\A2<9> ) );
  NOR2X1 U24 ( .A(n8), .B(n9), .Y(\CARRYB<1][3> ) );
  CLKXOR2X1 U25 ( .A(\ab<1][4> ), .B(\ab<0][5> ), .Y(\SUMB<1][4> ) );
  NOR2X1 U26 ( .A(n10), .B(n11), .Y(\CARRYB<1][4> ) );
  NOR2X1 U27 ( .A(n32), .B(n5), .Y(\CARRYB<1][1> ) );
  CLKXOR2X1 U28 ( .A(\ab<1][2> ), .B(\ab<0][3> ), .Y(\SUMB<1][2> ) );
  NOR2X1 U29 ( .A(n3), .B(n4), .Y(\CARRYB<1][0> ) );
  CLKXOR2X1 U30 ( .A(\B<1> ), .B(\ab<0][2> ), .Y(\SUMB<1][1> ) );
  NOR2X1 U31 ( .A(n6), .B(n7), .Y(\CARRYB<1][2> ) );
  CLKXOR2X1 U32 ( .A(\ab<1][3> ), .B(\ab<0][4> ), .Y(\SUMB<1][3> ) );
  INVX1 U33 ( .A(\ab<1][2> ), .Y(n6) );
  INVX1 U34 ( .A(\B<0> ), .Y(n33) );
  INVX1 U35 ( .A(\B<5> ), .Y(n28) );
  INVX1 U36 ( .A(\B<1> ), .Y(n32) );
  INVX1 U37 ( .A(\B<2> ), .Y(n31) );
  INVX1 U38 ( .A(\B<4> ), .Y(n29) );
  INVX1 U39 ( .A(\B<3> ), .Y(n30) );
  CLKXOR2X1 U40 ( .A(\CARRYB<5][4> ), .B(\B<5> ), .Y(\A1<8> ) );
  NAND2X1 U41 ( .A(\A2<5> ), .B(\A1<5> ), .Y(n12) );
  NOR2X1 U42 ( .A(\A2<5> ), .B(\A1<5> ), .Y(n13) );
  NOR2BX1 U43 ( .AN(n12), .B(n13), .Y(\PRODUCT<7> ) );
  OR2X1 U44 ( .A(\A2<6> ), .B(\A1<6> ), .Y(n16) );
  NAND2X1 U45 ( .A(\A2<6> ), .B(\A1<6> ), .Y(n15) );
  NAND2X1 U46 ( .A(n16), .B(n15), .Y(n14) );
  XNOR2X1 U47 ( .A(n26), .B(n14), .Y(\PRODUCT<8> ) );
  AOI21X1 U48 ( .A0(n16), .A1(n26), .B0(n27), .Y(n19) );
  NAND2X1 U49 ( .A(\A2<7> ), .B(\A1<7> ), .Y(n18) );
  NOR2X1 U50 ( .A(\A2<7> ), .B(\A1<7> ), .Y(n20) );
  NOR2BX1 U51 ( .AN(n18), .B(n20), .Y(n17) );
  XNOR2X1 U52 ( .A(n19), .B(n17), .Y(\PRODUCT<9> ) );
  OAI21X1 U53 ( .A0(n20), .A1(n19), .B0(n18), .Y(n23) );
  OR2X1 U54 ( .A(\A2<8> ), .B(\A1<8> ), .Y(n24) );
  NAND2X1 U55 ( .A(\A2<8> ), .B(\A1<8> ), .Y(n22) );
  NAND2X1 U56 ( .A(n24), .B(n22), .Y(n21) );
  XNOR2X1 U57 ( .A(n23), .B(n21), .Y(\PRODUCT<10> ) );
  OAI2BB1X1 U58 ( .A0N(n24), .A1N(n23), .B0(n22), .Y(n25) );
  NOR2X1 U59 ( .A(n28), .B(n29), .Y(\ab<5][4> ) );
  NOR2X1 U60 ( .A(n28), .B(n30), .Y(\ab<5][3> ) );
  NOR2X1 U61 ( .A(n28), .B(n31), .Y(\ab<5][2> ) );
  NOR2X1 U62 ( .A(n28), .B(n32), .Y(\ab<5][1> ) );
  NOR2X1 U63 ( .A(n28), .B(n33), .Y(\ab<5][0> ) );
  NOR2X1 U64 ( .A(n28), .B(n29), .Y(\ab<4][5> ) );
  NOR2X1 U65 ( .A(n30), .B(n29), .Y(\ab<4][3> ) );
  NOR2X1 U66 ( .A(n31), .B(n29), .Y(\ab<4][2> ) );
  NOR2X1 U67 ( .A(n32), .B(n29), .Y(\ab<4][1> ) );
  NOR2X1 U68 ( .A(n33), .B(n29), .Y(\ab<4][0> ) );
  NOR2X1 U69 ( .A(n28), .B(n30), .Y(\ab<3][5> ) );
  NOR2X1 U70 ( .A(n29), .B(n30), .Y(\ab<3][4> ) );
  NOR2X1 U71 ( .A(n31), .B(n30), .Y(\ab<3][2> ) );
  NOR2X1 U72 ( .A(n32), .B(n30), .Y(\ab<3][1> ) );
  NOR2X1 U73 ( .A(n33), .B(n30), .Y(\ab<3][0> ) );
  NOR2X1 U74 ( .A(n28), .B(n31), .Y(\ab<2][5> ) );
  NOR2X1 U75 ( .A(n29), .B(n31), .Y(\ab<2][4> ) );
  NOR2X1 U76 ( .A(n30), .B(n31), .Y(\ab<2][3> ) );
  NOR2X1 U77 ( .A(n32), .B(n31), .Y(\ab<2][1> ) );
  NOR2X1 U78 ( .A(n33), .B(n31), .Y(\ab<2][0> ) );
  NOR2X1 U79 ( .A(n28), .B(n32), .Y(\ab<1][5> ) );
  NOR2X1 U80 ( .A(n29), .B(n32), .Y(\ab<1][4> ) );
  NOR2X1 U81 ( .A(n30), .B(n32), .Y(\ab<1][3> ) );
  NOR2X1 U82 ( .A(n31), .B(n32), .Y(\ab<1][2> ) );
  NOR2X1 U83 ( .A(n33), .B(n32), .Y(\ab<1][0> ) );
  NOR2X1 U84 ( .A(n28), .B(n33), .Y(\ab<0][5> ) );
  NOR2X1 U85 ( .A(n29), .B(n33), .Y(\ab<0][4> ) );
  NOR2X1 U86 ( .A(n30), .B(n33), .Y(\ab<0][3> ) );
  NOR2X1 U87 ( .A(n31), .B(n33), .Y(\ab<0][2> ) );
  NOR2X1 U88 ( .A(n32), .B(n33), .Y(\ab<0][1> ) );
endmodule


module polynomial_a3_b2_c9_d1_in_bits6_out_bits24_DW02_mult_0 ( \A<11> , 
        \A<10> , \A<9> , \A<8> , \A<7> , \A<6> , \A<5> , \A<4> , \A<3> , 
        \A<2> , \A<1> , \A<0> , \B<5> , \B<4> , \B<3> , \B<2> , \B<1> , \B<0> , 
        TC, \PRODUCT<17> , \PRODUCT<16> , \PRODUCT<15> , \PRODUCT<14> , 
        \PRODUCT<13> , \PRODUCT<12> , \PRODUCT<11> , \PRODUCT<10> , 
        \PRODUCT<9> , \PRODUCT<8> , \PRODUCT<7> , \PRODUCT<6> , \PRODUCT<5> , 
        \PRODUCT<4> , \PRODUCT<3> , \PRODUCT<2> , \PRODUCT<1> , \PRODUCT<0> 
 );
  input \A<11> , \A<10> , \A<9> , \A<8> , \A<7> , \A<6> , \A<5> , \A<4> ,
         \A<3> , \A<2> , \A<1> , \A<0> , \B<5> , \B<4> , \B<3> , \B<2> ,
         \B<1> , \B<0> , TC;
  output \PRODUCT<17> , \PRODUCT<16> , \PRODUCT<15> , \PRODUCT<14> ,
         \PRODUCT<13> , \PRODUCT<12> , \PRODUCT<11> , \PRODUCT<10> ,
         \PRODUCT<9> , \PRODUCT<8> , \PRODUCT<7> , \PRODUCT<6> , \PRODUCT<5> ,
         \PRODUCT<4> , \PRODUCT<3> , \PRODUCT<2> , \PRODUCT<1> , \PRODUCT<0> ;
  wire   \A<0> , \ab<11][5> , \ab<11][4> , \ab<11][3> , \ab<11][2> ,
         \ab<11][1> , \ab<11][0> , \ab<10][5> , \ab<10][4> , \ab<10][3> ,
         \ab<10][2> , \ab<10][1> , \ab<10][0> , \ab<9][5> , \ab<9][4> ,
         \ab<9][3> , \ab<9][2> , \ab<9][1> , \ab<9][0> , \ab<8][5> ,
         \ab<8][4> , \ab<8][3> , \ab<8][2> , \ab<8][1> , \ab<8][0> ,
         \ab<7][5> , \ab<7][4> , \ab<7][3> , \ab<7][2> , \ab<7][1> ,
         \ab<7][0> , \ab<6][5> , \ab<6][4> , \ab<6][3> , \ab<6][2> ,
         \ab<6][1> , \ab<6][0> , \ab<5][5> , \ab<5][4> , \ab<5][3> ,
         \ab<5][2> , \ab<5][1> , \ab<5][0> , \ab<4][5> , \ab<4][4> ,
         \ab<4][3> , \ab<4][2> , \ab<4][1> , \ab<4][0> , \ab<3][5> ,
         \ab<3][4> , \ab<3][3> , \ab<3][2> , \ab<3][1> , \ab<3][0> ,
         \ab<2][5> , \ab<2][4> , \ab<2][3> , \ab<2][2> , \ab<2][1> ,
         \ab<2][0> , \ab<1][5> , \ab<1][4> , \ab<1][3> , \ab<1][2> ,
         \ab<1][1> , \ab<1][0> , \ab<0][5> , \ab<0][4> , \ab<0][3> ,
         \ab<0][2> , \ab<0][1> , \CARRYB<11][4> , \CARRYB<11][3> ,
         \CARRYB<11][2> , \CARRYB<11][1> , \CARRYB<11][0> , \CARRYB<10][4> ,
         \CARRYB<10][3> , \CARRYB<10][2> , \CARRYB<10][1> , \CARRYB<10][0> ,
         \CARRYB<9][4> , \CARRYB<9][3> , \CARRYB<9][2> , \CARRYB<9][1> ,
         \CARRYB<9][0> , \CARRYB<8][4> , \CARRYB<8][3> , \CARRYB<8][2> ,
         \CARRYB<8][1> , \CARRYB<8][0> , \CARRYB<7][4> , \CARRYB<7][3> ,
         \CARRYB<7][2> , \CARRYB<7][1> , \CARRYB<7][0> , \CARRYB<6][4> ,
         \CARRYB<6][3> , \CARRYB<6][2> , \CARRYB<6][1> , \CARRYB<6][0> ,
         \CARRYB<5][4> , \CARRYB<5][3> , \CARRYB<5][2> , \CARRYB<5][1> ,
         \CARRYB<5][0> , \CARRYB<4][4> , \CARRYB<4][3> , \CARRYB<4][2> ,
         \CARRYB<4][1> , \CARRYB<4][0> , \CARRYB<3][4> , \CARRYB<3][3> ,
         \CARRYB<3][2> , \CARRYB<3][1> , \CARRYB<3][0> , \CARRYB<2][4> ,
         \CARRYB<2][3> , \CARRYB<2][2> , \CARRYB<2][1> , \CARRYB<2][0> ,
         \CARRYB<1][4> , \CARRYB<1][3> , \CARRYB<1][2> , \CARRYB<1][1> ,
         \CARRYB<1][0> , \SUMB<11][4> , \SUMB<11][3> , \SUMB<11][2> ,
         \SUMB<11][1> , \SUMB<10][4> , \SUMB<10][3> , \SUMB<10][2> ,
         \SUMB<10][1> , \SUMB<9][4> , \SUMB<9][3> , \SUMB<9][2> , \SUMB<9][1> ,
         \SUMB<8][4> , \SUMB<8][3> , \SUMB<8][2> , \SUMB<8][1> , \SUMB<7][4> ,
         \SUMB<7][3> , \SUMB<7][2> , \SUMB<7][1> , \SUMB<6][4> , \SUMB<6][3> ,
         \SUMB<6][2> , \SUMB<6][1> , \SUMB<5][4> , \SUMB<5][3> , \SUMB<5][2> ,
         \SUMB<5][1> , \SUMB<4][4> , \SUMB<4][3> , \SUMB<4][2> , \SUMB<4][1> ,
         \SUMB<3][4> , \SUMB<3][3> , \SUMB<3][2> , \SUMB<3][1> , \SUMB<2][4> ,
         \SUMB<2][3> , \SUMB<2][2> , \SUMB<2][1> , \SUMB<1][4> , \SUMB<1][3> ,
         \SUMB<1][2> , \SUMB<1][1> , \A1<14> , \A1<13> , \A1<12> , \A1<11> ,
         \A2<15> , \A2<14> , \A2<13> , \A2<12> , \A2<11> , n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42;
  assign \PRODUCT<0>  = \A<0> ;

  ADDFX1 S2_9_3 ( .A(\ab<9][3> ), .B(\CARRYB<8][3> ), .CI(\SUMB<8][4> ), 
        .CO(\CARRYB<9][3> ), .S(\SUMB<9][3> ) );
  ADDFX1 S2_9_2 ( .A(\ab<9][2> ), .B(\CARRYB<8][2> ), .CI(\SUMB<8][3> ), 
        .CO(\CARRYB<9][2> ), .S(\SUMB<9][2> ) );
  ADDFX1 S2_6_2 ( .A(\ab<6][2> ), .B(\CARRYB<5][2> ), .CI(\SUMB<5][3> ), 
        .CO(\CARRYB<6][2> ), .S(\SUMB<6][2> ) );
  ADDFX1 S2_6_3 ( .A(\ab<6][3> ), .B(\CARRYB<5][3> ), .CI(\SUMB<5][4> ), 
        .CO(\CARRYB<6][3> ), .S(\SUMB<6][3> ) );
  ADDFX1 S2_5_2 ( .A(\ab<5][2> ), .B(\CARRYB<4][2> ), .CI(\SUMB<4][3> ), 
        .CO(\CARRYB<5][2> ), .S(\SUMB<5][2> ) );
  ADDFX1 S2_5_3 ( .A(\ab<5][3> ), .B(\CARRYB<4][3> ), .CI(\SUMB<4][4> ), 
        .CO(\CARRYB<5][3> ), .S(\SUMB<5][3> ) );
  ADDFX1 S2_4_2 ( .A(\ab<4][2> ), .B(\CARRYB<3][2> ), .CI(\SUMB<3][3> ), 
        .CO(\CARRYB<4][2> ), .S(\SUMB<4][2> ) );
  ADDFX1 S2_4_3 ( .A(\ab<4][3> ), .B(\CARRYB<3][3> ), .CI(\SUMB<3][4> ), 
        .CO(\CARRYB<4][3> ), .S(\SUMB<4][3> ) );
  ADDFX1 S2_3_2 ( .A(\ab<3][2> ), .B(\CARRYB<2][2> ), .CI(\SUMB<2][3> ), 
        .CO(\CARRYB<3][2> ), .S(\SUMB<3][2> ) );
  ADDFX1 S2_3_3 ( .A(\ab<3][3> ), .B(\CARRYB<2][3> ), .CI(\SUMB<2][4> ), 
        .CO(\CARRYB<3][3> ), .S(\SUMB<3][3> ) );
  ADDFX1 S2_2_2 ( .A(\ab<2][2> ), .B(\CARRYB<1][2> ), .CI(\SUMB<1][3> ), 
        .CO(\CARRYB<2][2> ), .S(\SUMB<2][2> ) );
  ADDFX1 S2_10_3 ( .A(\ab<10][3> ), .B(\CARRYB<9][3> ), .CI(\SUMB<9][4> ), 
        .CO(\CARRYB<10][3> ), .S(\SUMB<10][3> ) );
  ADDFX1 S2_10_2 ( .A(\ab<10][2> ), .B(\CARRYB<9][2> ), .CI(\SUMB<9][3> ), 
        .CO(\CARRYB<10][2> ), .S(\SUMB<10][2> ) );
  ADDFX1 S2_10_1 ( .A(\ab<10][1> ), .B(\CARRYB<9][1> ), .CI(\SUMB<9][2> ), 
        .CO(\CARRYB<10][1> ), .S(\SUMB<10][1> ) );
  ADDFX1 S2_8_3 ( .A(\ab<8][3> ), .B(\CARRYB<7][3> ), .CI(\SUMB<7][4> ), 
        .CO(\CARRYB<8][3> ), .S(\SUMB<8][3> ) );
  ADDFX1 S3_10_4 ( .A(\ab<10][4> ), .B(\CARRYB<9][4> ), .CI(\ab<9][5> ), 
        .CO(\CARRYB<10][4> ), .S(\SUMB<10][4> ) );
  ADDFX1 S3_6_4 ( .A(\ab<6][4> ), .B(\CARRYB<5][4> ), .CI(\ab<5][5> ), 
        .CO(\CARRYB<6][4> ), .S(\SUMB<6][4> ) );
  ADDFX1 S3_5_4 ( .A(\ab<5][4> ), .B(\CARRYB<4][4> ), .CI(\ab<4][5> ), 
        .CO(\CARRYB<5][4> ), .S(\SUMB<5][4> ) );
  ADDFX1 S3_4_4 ( .A(\ab<4][4> ), .B(\CARRYB<3][4> ), .CI(\ab<3][5> ), 
        .CO(\CARRYB<4][4> ), .S(\SUMB<4][4> ) );
  ADDFX1 S3_3_4 ( .A(\ab<3][4> ), .B(\CARRYB<2][4> ), .CI(\ab<2][5> ), 
        .CO(\CARRYB<3][4> ), .S(\SUMB<3][4> ) );
  ADDFX1 S3_9_4 ( .A(\ab<9][4> ), .B(\CARRYB<8][4> ), .CI(\ab<8][5> ), 
        .CO(\CARRYB<9][4> ), .S(\SUMB<9][4> ) );
  ADDFX1 S3_2_4 ( .A(\ab<2][4> ), .B(\CARRYB<1][4> ), .CI(\ab<1][5> ), 
        .CO(\CARRYB<2][4> ), .S(\SUMB<2][4> ) );
  ADDFX1 S2_7_3 ( .A(\ab<7][3> ), .B(\CARRYB<6][3> ), .CI(\SUMB<6][4> ), 
        .CO(\CARRYB<7][3> ), .S(\SUMB<7][3> ) );
  ADDFX1 S3_7_4 ( .A(\ab<7][4> ), .B(\CARRYB<6][4> ), .CI(\ab<6][5> ), 
        .CO(\CARRYB<7][4> ), .S(\SUMB<7][4> ) );
  ADDFX1 S3_8_4 ( .A(\ab<8][4> ), .B(\CARRYB<7][4> ), .CI(\ab<7][5> ), 
        .CO(\CARRYB<8][4> ), .S(\SUMB<8][4> ) );
  ADDFX1 S1_2_0 ( .A(\ab<2][0> ), .B(\CARRYB<1][0> ), .CI(\SUMB<1][1> ), 
        .CO(\CARRYB<2][0> ), .S(\PRODUCT<2> ) );
  ADDFX1 S2_2_1 ( .A(\ab<2][1> ), .B(\CARRYB<1][1> ), .CI(\SUMB<1][2> ), 
        .CO(\CARRYB<2][1> ), .S(\SUMB<2][1> ) );
  ADDFX1 S2_2_3 ( .A(\ab<2][3> ), .B(\CARRYB<1][3> ), .CI(\SUMB<1][4> ), 
        .CO(\CARRYB<2][3> ), .S(\SUMB<2][3> ) );
  ADDFX1 S1_3_0 ( .A(\ab<3][0> ), .B(\CARRYB<2][0> ), .CI(\SUMB<2][1> ), 
        .CO(\CARRYB<3][0> ), .S(\PRODUCT<3> ) );
  ADDFX1 S2_3_1 ( .A(\ab<3][1> ), .B(\CARRYB<2][1> ), .CI(\SUMB<2][2> ), 
        .CO(\CARRYB<3][1> ), .S(\SUMB<3][1> ) );
  ADDFX1 S1_10_0 ( .A(\ab<10][0> ), .B(\CARRYB<9][0> ), .CI(\SUMB<9][1> ), 
        .CO(\CARRYB<10][0> ), .S(\PRODUCT<10> ) );
  ADDFX1 S1_9_0 ( .A(\ab<9][0> ), .B(\CARRYB<8][0> ), .CI(\SUMB<8][1> ), 
        .CO(\CARRYB<9][0> ), .S(\PRODUCT<9> ) );
  ADDFX1 S2_9_1 ( .A(\ab<9][1> ), .B(\CARRYB<8][1> ), .CI(\SUMB<8][2> ), 
        .CO(\CARRYB<9][1> ), .S(\SUMB<9][1> ) );
  ADDFX1 S1_8_0 ( .A(\ab<8][0> ), .B(\CARRYB<7][0> ), .CI(\SUMB<7][1> ), 
        .CO(\CARRYB<8][0> ), .S(\PRODUCT<8> ) );
  ADDFX1 S2_8_1 ( .A(\ab<8][1> ), .B(\CARRYB<7][1> ), .CI(\SUMB<7][2> ), 
        .CO(\CARRYB<8][1> ), .S(\SUMB<8][1> ) );
  ADDFX1 S2_8_2 ( .A(\ab<8][2> ), .B(\CARRYB<7][2> ), .CI(\SUMB<7][3> ), 
        .CO(\CARRYB<8][2> ), .S(\SUMB<8][2> ) );
  ADDFX1 S1_7_0 ( .A(\ab<7][0> ), .B(\CARRYB<6][0> ), .CI(\SUMB<6][1> ), 
        .CO(\CARRYB<7][0> ), .S(\PRODUCT<7> ) );
  ADDFX1 S2_7_1 ( .A(\ab<7][1> ), .B(\CARRYB<6][1> ), .CI(\SUMB<6][2> ), 
        .CO(\CARRYB<7][1> ), .S(\SUMB<7][1> ) );
  ADDFX1 S2_7_2 ( .A(\ab<7][2> ), .B(\CARRYB<6][2> ), .CI(\SUMB<6][3> ), 
        .CO(\CARRYB<7][2> ), .S(\SUMB<7][2> ) );
  ADDFX1 S1_6_0 ( .A(\ab<6][0> ), .B(\CARRYB<5][0> ), .CI(\SUMB<5][1> ), 
        .CO(\CARRYB<6][0> ), .S(\PRODUCT<6> ) );
  ADDFX1 S2_6_1 ( .A(\ab<6][1> ), .B(\CARRYB<5][1> ), .CI(\SUMB<5][2> ), 
        .CO(\CARRYB<6][1> ), .S(\SUMB<6][1> ) );
  ADDFX1 S1_5_0 ( .A(\ab<5][0> ), .B(\CARRYB<4][0> ), .CI(\SUMB<4][1> ), 
        .CO(\CARRYB<5][0> ), .S(\PRODUCT<5> ) );
  ADDFX1 S2_5_1 ( .A(\ab<5][1> ), .B(\CARRYB<4][1> ), .CI(\SUMB<4][2> ), 
        .CO(\CARRYB<5][1> ), .S(\SUMB<5][1> ) );
  ADDFX1 S1_4_0 ( .A(\ab<4][0> ), .B(\CARRYB<3][0> ), .CI(\SUMB<3][1> ), 
        .CO(\CARRYB<4][0> ), .S(\PRODUCT<4> ) );
  ADDFX1 S2_4_1 ( .A(\ab<4][1> ), .B(\CARRYB<3][1> ), .CI(\SUMB<3][2> ), 
        .CO(\CARRYB<4][1> ), .S(\SUMB<4][1> ) );
  ADDFX1 S4_0 ( .A(\ab<11][0> ), .B(\CARRYB<10][0> ), .CI(\SUMB<10][1> ), 
        .CO(\CARRYB<11][0> ), .S(\PRODUCT<11> ) );
  ADDFX1 S4_1 ( .A(\ab<11][1> ), .B(\CARRYB<10][1> ), .CI(\SUMB<10][2> ), 
        .CO(\CARRYB<11][1> ), .S(\SUMB<11][1> ) );
  ADDFX1 S5_4 ( .A(\ab<11][4> ), .B(\CARRYB<10][4> ), .CI(\ab<10][5> ), 
        .CO(\CARRYB<11][4> ), .S(\SUMB<11][4> ) );
  ADDFX1 S4_3 ( .A(\ab<11][3> ), .B(\CARRYB<10][3> ), .CI(\SUMB<10][4> ), 
        .CO(\CARRYB<11][3> ), .S(\SUMB<11][3> ) );
  ADDFX1 S4_2 ( .A(\ab<11][2> ), .B(\CARRYB<10][2> ), .CI(\SUMB<10][3> ), 
        .CO(\CARRYB<11][2> ), .S(\SUMB<11][2> ) );
  INVX1 U2 ( .A(\A<8> ), .Y(n29) );
  INVX1 U3 ( .A(\A<9> ), .Y(n28) );
  INVX1 U4 ( .A(\A<7> ), .Y(n30) );
  INVX1 U5 ( .A(n14), .Y(n25) );
  XNOR2X1 U6 ( .A(n24), .B(\A2<15> ), .Y(\PRODUCT<17> ) );
  NOR2X1 U7 ( .A(n2), .B(n3), .Y(\A2<15> ) );
  INVX1 U8 ( .A(\A<10> ), .Y(n27) );
  INVX1 U9 ( .A(\A<1> ), .Y(n36) );
  INVX1 U10 ( .A(\A<6> ), .Y(n31) );
  INVX1 U11 ( .A(\A<11> ), .Y(n26) );
  INVX1 U12 ( .A(\ab<1][4> ), .Y(n12) );
  INVX1 U13 ( .A(\ab<1][3> ), .Y(n10) );
  INVX1 U14 ( .A(\ab<1][2> ), .Y(n8) );
  INVX1 U15 ( .A(\ab<1][1> ), .Y(n6) );
  CLKXOR2X1 U16 ( .A(\CARRYB<11][0> ), .B(\SUMB<11][1> ), .Y(\PRODUCT<12> ) );
  CLKXOR2X1 U17 ( .A(\CARRYB<11][2> ), .B(\SUMB<11][3> ), .Y(\A1<12> ) );
  CLKXOR2X1 U18 ( .A(\CARRYB<11][3> ), .B(\SUMB<11][4> ), .Y(\A1<13> ) );
  CLKXOR2X1 U19 ( .A(\CARRYB<11][1> ), .B(\SUMB<11][2> ), .Y(\A1<11> ) );
  INVX1 U20 ( .A(\A<4> ), .Y(n33) );
  INVX1 U21 ( .A(\A<5> ), .Y(n32) );
  INVX1 U22 ( .A(\A<3> ), .Y(n34) );
  AND2X1 U23 ( .A(\CARRYB<11][0> ), .B(\SUMB<11][1> ), .Y(\A2<11> ) );
  AND2X1 U24 ( .A(\SUMB<11][2> ), .B(\CARRYB<11][1> ), .Y(\A2<12> ) );
  AND2X1 U25 ( .A(\SUMB<11][3> ), .B(\CARRYB<11][2> ), .Y(\A2<13> ) );
  CLKXOR2X1 U26 ( .A(\ab<1][0> ), .B(\ab<0][1> ), .Y(\PRODUCT<1> ) );
  INVX1 U27 ( .A(\ab<0][5> ), .Y(n13) );
  INVX1 U28 ( .A(\ab<0][4> ), .Y(n11) );
  INVX1 U29 ( .A(\ab<0][3> ), .Y(n9) );
  INVX1 U30 ( .A(\ab<0][2> ), .Y(n7) );
  INVX1 U31 ( .A(\ab<0][1> ), .Y(n5) );
  INVX1 U32 ( .A(\ab<1][0> ), .Y(n4) );
  CLKXOR2X1 U33 ( .A(\CARRYB<11][4> ), .B(\ab<11][5> ), .Y(\A1<14> ) );
  INVX1 U34 ( .A(\CARRYB<11][4> ), .Y(n3) );
  AND2X1 U35 ( .A(\SUMB<11][4> ), .B(\CARRYB<11][3> ), .Y(\A2<14> ) );
  INVX1 U36 ( .A(\ab<11][5> ), .Y(n2) );
  NOR2X1 U37 ( .A(n10), .B(n11), .Y(\CARRYB<1][3> ) );
  CLKXOR2X1 U38 ( .A(\ab<1][4> ), .B(\ab<0][5> ), .Y(\SUMB<1][4> ) );
  NOR2X1 U39 ( .A(n6), .B(n7), .Y(\CARRYB<1][1> ) );
  CLKXOR2X1 U40 ( .A(\ab<1][2> ), .B(\ab<0][3> ), .Y(\SUMB<1][2> ) );
  NOR2X1 U41 ( .A(n4), .B(n5), .Y(\CARRYB<1][0> ) );
  CLKXOR2X1 U42 ( .A(\ab<1][1> ), .B(\ab<0][2> ), .Y(\SUMB<1][1> ) );
  NOR2X1 U43 ( .A(n12), .B(n13), .Y(\CARRYB<1][4> ) );
  NOR2X1 U44 ( .A(n8), .B(n9), .Y(\CARRYB<1][2> ) );
  CLKXOR2X1 U45 ( .A(\ab<1][3> ), .B(\ab<0][4> ), .Y(\SUMB<1][3> ) );
  INVX1 U46 ( .A(\A<2> ), .Y(n35) );
  INVX1 U47 ( .A(\A<0> ), .Y(n42) );
  INVX1 U48 ( .A(\B<5> ), .Y(n37) );
  INVX1 U49 ( .A(\B<1> ), .Y(n41) );
  INVX1 U50 ( .A(\B<3> ), .Y(n39) );
  INVX1 U51 ( .A(\B<2> ), .Y(n40) );
  INVX1 U52 ( .A(\B<4> ), .Y(n38) );
  NAND2X1 U53 ( .A(\A2<11> ), .B(\A1<11> ), .Y(n14) );
  NOR2X1 U54 ( .A(\A2<11> ), .B(\A1<11> ), .Y(n15) );
  NOR2BX1 U55 ( .AN(n14), .B(n15), .Y(\PRODUCT<13> ) );
  XNOR2X1 U56 ( .A(\A2<12> ), .B(\A1<12> ), .Y(n16) );
  XNOR2X1 U57 ( .A(n25), .B(n16), .Y(\PRODUCT<14> ) );
  OR2X1 U58 ( .A(\A1<12> ), .B(n25), .Y(n17) );
  AO22X1 U59 ( .A0(n25), .A1(\A1<12> ), .B0(n17), .B1(\A2<12> ), .Y(n20) );
  XNOR2X1 U60 ( .A(\A2<13> ), .B(\A1<13> ), .Y(n18) );
  XNOR2X1 U61 ( .A(n20), .B(n18), .Y(\PRODUCT<15> ) );
  OR2X1 U62 ( .A(\A1<13> ), .B(n20), .Y(n19) );
  AO22X1 U63 ( .A0(n20), .A1(\A1<13> ), .B0(n19), .B1(\A2<13> ), .Y(n23) );
  XNOR2X1 U64 ( .A(\A2<14> ), .B(\A1<14> ), .Y(n21) );
  XNOR2X1 U65 ( .A(n23), .B(n21), .Y(\PRODUCT<16> ) );
  OR2X1 U66 ( .A(\A1<14> ), .B(n23), .Y(n22) );
  AOI22X1 U67 ( .A0(n23), .A1(\A1<14> ), .B0(n22), .B1(\A2<14> ), .Y(n24) );
  NOR2X1 U68 ( .A(n28), .B(n37), .Y(\ab<9][5> ) );
  NOR2X1 U69 ( .A(n28), .B(n38), .Y(\ab<9][4> ) );
  NOR2X1 U70 ( .A(n28), .B(n39), .Y(\ab<9][3> ) );
  NOR2X1 U71 ( .A(n28), .B(n40), .Y(\ab<9][2> ) );
  NOR2X1 U72 ( .A(n28), .B(n41), .Y(\ab<9][1> ) );
  NOR2X1 U73 ( .A(n28), .B(n42), .Y(\ab<9][0> ) );
  NOR2X1 U74 ( .A(n37), .B(n29), .Y(\ab<8][5> ) );
  NOR2X1 U75 ( .A(n38), .B(n29), .Y(\ab<8][4> ) );
  NOR2X1 U76 ( .A(n39), .B(n29), .Y(\ab<8][3> ) );
  NOR2X1 U77 ( .A(n40), .B(n29), .Y(\ab<8][2> ) );
  NOR2X1 U78 ( .A(n41), .B(n29), .Y(\ab<8][1> ) );
  NOR2X1 U79 ( .A(n42), .B(n29), .Y(\ab<8][0> ) );
  NOR2X1 U80 ( .A(n37), .B(n30), .Y(\ab<7][5> ) );
  NOR2X1 U81 ( .A(n38), .B(n30), .Y(\ab<7][4> ) );
  NOR2X1 U82 ( .A(n39), .B(n30), .Y(\ab<7][3> ) );
  NOR2X1 U83 ( .A(n40), .B(n30), .Y(\ab<7][2> ) );
  NOR2X1 U84 ( .A(n41), .B(n30), .Y(\ab<7][1> ) );
  NOR2X1 U85 ( .A(n42), .B(n30), .Y(\ab<7][0> ) );
  NOR2X1 U86 ( .A(n37), .B(n31), .Y(\ab<6][5> ) );
  NOR2X1 U87 ( .A(n38), .B(n31), .Y(\ab<6][4> ) );
  NOR2X1 U88 ( .A(n39), .B(n31), .Y(\ab<6][3> ) );
  NOR2X1 U89 ( .A(n40), .B(n31), .Y(\ab<6][2> ) );
  NOR2X1 U90 ( .A(n41), .B(n31), .Y(\ab<6][1> ) );
  NOR2X1 U91 ( .A(n42), .B(n31), .Y(\ab<6][0> ) );
  NOR2X1 U92 ( .A(n37), .B(n32), .Y(\ab<5][5> ) );
  NOR2X1 U93 ( .A(n38), .B(n32), .Y(\ab<5][4> ) );
  NOR2X1 U94 ( .A(n39), .B(n32), .Y(\ab<5][3> ) );
  NOR2X1 U95 ( .A(n40), .B(n32), .Y(\ab<5][2> ) );
  NOR2X1 U96 ( .A(n41), .B(n32), .Y(\ab<5][1> ) );
  NOR2X1 U97 ( .A(n42), .B(n32), .Y(\ab<5][0> ) );
  NOR2X1 U98 ( .A(n37), .B(n33), .Y(\ab<4][5> ) );
  NOR2X1 U99 ( .A(n38), .B(n33), .Y(\ab<4][4> ) );
  NOR2X1 U100 ( .A(n39), .B(n33), .Y(\ab<4][3> ) );
  NOR2X1 U101 ( .A(n40), .B(n33), .Y(\ab<4][2> ) );
  NOR2X1 U102 ( .A(n41), .B(n33), .Y(\ab<4][1> ) );
  NOR2X1 U103 ( .A(n42), .B(n33), .Y(\ab<4][0> ) );
  NOR2X1 U104 ( .A(n37), .B(n34), .Y(\ab<3][5> ) );
  NOR2X1 U105 ( .A(n38), .B(n34), .Y(\ab<3][4> ) );
  NOR2X1 U106 ( .A(n39), .B(n34), .Y(\ab<3][3> ) );
  NOR2X1 U107 ( .A(n40), .B(n34), .Y(\ab<3][2> ) );
  NOR2X1 U108 ( .A(n41), .B(n34), .Y(\ab<3][1> ) );
  NOR2X1 U109 ( .A(n42), .B(n34), .Y(\ab<3][0> ) );
  NOR2X1 U110 ( .A(n37), .B(n35), .Y(\ab<2][5> ) );
  NOR2X1 U111 ( .A(n38), .B(n35), .Y(\ab<2][4> ) );
  NOR2X1 U112 ( .A(n39), .B(n35), .Y(\ab<2][3> ) );
  NOR2X1 U113 ( .A(n40), .B(n35), .Y(\ab<2][2> ) );
  NOR2X1 U114 ( .A(n41), .B(n35), .Y(\ab<2][1> ) );
  NOR2X1 U115 ( .A(n42), .B(n35), .Y(\ab<2][0> ) );
  NOR2X1 U116 ( .A(n37), .B(n36), .Y(\ab<1][5> ) );
  NOR2X1 U117 ( .A(n38), .B(n36), .Y(\ab<1][4> ) );
  NOR2X1 U118 ( .A(n39), .B(n36), .Y(\ab<1][3> ) );
  NOR2X1 U119 ( .A(n40), .B(n36), .Y(\ab<1][2> ) );
  NOR2X1 U120 ( .A(n41), .B(n36), .Y(\ab<1][1> ) );
  NOR2X1 U121 ( .A(n42), .B(n36), .Y(\ab<1][0> ) );
  NOR2X1 U122 ( .A(n37), .B(n26), .Y(\ab<11][5> ) );
  NOR2X1 U123 ( .A(n38), .B(n26), .Y(\ab<11][4> ) );
  NOR2X1 U124 ( .A(n39), .B(n26), .Y(\ab<11][3> ) );
  NOR2X1 U125 ( .A(n40), .B(n26), .Y(\ab<11][2> ) );
  NOR2X1 U126 ( .A(n41), .B(n26), .Y(\ab<11][1> ) );
  NOR2X1 U127 ( .A(n42), .B(n26), .Y(\ab<11][0> ) );
  NOR2X1 U128 ( .A(n37), .B(n27), .Y(\ab<10][5> ) );
  NOR2X1 U129 ( .A(n38), .B(n27), .Y(\ab<10][4> ) );
  NOR2X1 U130 ( .A(n39), .B(n27), .Y(\ab<10][3> ) );
  NOR2X1 U131 ( .A(n40), .B(n27), .Y(\ab<10][2> ) );
  NOR2X1 U132 ( .A(n41), .B(n27), .Y(\ab<10][1> ) );
  NOR2X1 U133 ( .A(n42), .B(n27), .Y(\ab<10][0> ) );
  NOR2X1 U134 ( .A(n37), .B(n42), .Y(\ab<0][5> ) );
  NOR2X1 U135 ( .A(n38), .B(n42), .Y(\ab<0][4> ) );
  NOR2X1 U136 ( .A(n39), .B(n42), .Y(\ab<0][3> ) );
  NOR2X1 U137 ( .A(n40), .B(n42), .Y(\ab<0][2> ) );
  NOR2X1 U138 ( .A(n41), .B(n42), .Y(\ab<0][1> ) );
endmodule


module polynomial_a3_b2_c9_d1_in_bits6_out_bits24_DW01_add_0 ( \A<20> , 
        \A<19> , \A<18> , \A<17> , \A<16> , \A<15> , \A<14> , \A<13> , \A<12> , 
        \A<11> , \A<10> , \A<9> , \A<8> , \A<7> , \A<6> , \A<5> , \A<4> , 
        \A<3> , \A<2> , \A<1> , \A<0> , \B<20> , \B<19> , \B<18> , \B<17> , 
        \B<16> , \B<15> , \B<14> , \B<13> , \B<12> , \B<11> , \B<10> , \B<9> , 
        \B<8> , \B<7> , \B<6> , \B<5> , \B<4> , \B<3> , \B<2> , \B<1> , \B<0> , 
        CI, \SUM<20> , \SUM<19> , \SUM<18> , \SUM<17> , \SUM<16> , \SUM<15> , 
        \SUM<14> , \SUM<13> , \SUM<12> , \SUM<11> , \SUM<10> , \SUM<9> , 
        \SUM<8> , \SUM<7> , \SUM<6> , \SUM<5> , \SUM<4> , \SUM<3> , \SUM<2> , 
        \SUM<1> , \SUM<0> , CO );
  input \A<20> , \A<19> , \A<18> , \A<17> , \A<16> , \A<15> , \A<14> , \A<13> ,
         \A<12> , \A<11> , \A<10> , \A<9> , \A<8> , \A<7> , \A<6> , \A<5> ,
         \A<4> , \A<3> , \A<2> , \A<1> , \A<0> , \B<20> , \B<19> , \B<18> ,
         \B<17> , \B<16> , \B<15> , \B<14> , \B<13> , \B<12> , \B<11> ,
         \B<10> , \B<9> , \B<8> , \B<7> , \B<6> , \B<5> , \B<4> , \B<3> ,
         \B<2> , \B<1> , \B<0> , CI;
  output \SUM<20> , \SUM<19> , \SUM<18> , \SUM<17> , \SUM<16> , \SUM<15> ,
         \SUM<14> , \SUM<13> , \SUM<12> , \SUM<11> , \SUM<10> , \SUM<9> ,
         \SUM<8> , \SUM<7> , \SUM<6> , \SUM<5> , \SUM<4> , \SUM<3> , \SUM<2> ,
         \SUM<1> , \SUM<0> , CO;
  wire   \carry<18> , \carry<17> , \carry<16> , \carry<15> , \carry<14> ,
         \carry<13> , \carry<12> , \carry<11> , \carry<10> , \carry<9> ,
         \carry<8> , \carry<7> , \carry<6> , \carry<5> , \carry<4> ,
         \carry<3> , \carry<2> , n1, n2, n3, n4;
  assign \SUM<18>  = \carry<18> ;

  ADDFX1 U1_2 ( .A(\A<2> ), .B(\B<2> ), .CI(\carry<2> ), .CO(\carry<3> ), 
        .S(\SUM<2> ) );
  ADDFX1 U1_3 ( .A(\A<3> ), .B(\B<3> ), .CI(\carry<3> ), .CO(\carry<4> ), 
        .S(\SUM<3> ) );
  ADDFX1 U1_8 ( .A(\A<8> ), .B(\B<8> ), .CI(\carry<8> ), .CO(\carry<9> ), 
        .S(\SUM<8> ) );
  ADDFX1 U1_7 ( .A(\A<7> ), .B(\B<7> ), .CI(\carry<7> ), .CO(\carry<8> ), 
        .S(\SUM<7> ) );
  ADDFX1 U1_6 ( .A(\A<6> ), .B(\B<6> ), .CI(\carry<6> ), .CO(\carry<7> ), 
        .S(\SUM<6> ) );
  ADDFX1 U1_5 ( .A(\A<5> ), .B(\B<5> ), .CI(\carry<5> ), .CO(\carry<6> ), 
        .S(\SUM<5> ) );
  ADDFX1 U1_4 ( .A(\A<4> ), .B(\B<4> ), .CI(\carry<4> ), .CO(\carry<5> ), 
        .S(\SUM<4> ) );
  ADDFX1 U1_12 ( .A(\A<12> ), .B(\B<12> ), .CI(\carry<12> ), .CO(\carry<13> ), 
        .S(\SUM<12> ) );
  ADDFX1 U1_11 ( .A(\A<11> ), .B(\B<11> ), .CI(\carry<11> ), .CO(\carry<12> ), 
        .S(\SUM<11> ) );
  ADDFX1 U1_10 ( .A(\A<10> ), .B(\B<10> ), .CI(\carry<10> ), .CO(\carry<11> ), 
        .S(\SUM<10> ) );
  ADDFX1 U1_9 ( .A(\A<9> ), .B(\B<9> ), .CI(\carry<9> ), .CO(\carry<10> ), 
        .S(\SUM<9> ) );
  ADDFX1 U1_15 ( .A(\A<15> ), .B(\B<15> ), .CI(\carry<15> ), .CO(\carry<16> ), 
        .S(\SUM<15> ) );
  ADDFX1 U1_14 ( .A(\A<14> ), .B(\B<14> ), .CI(\carry<14> ), .CO(\carry<15> ), 
        .S(\SUM<14> ) );
  ADDFX1 U1_13 ( .A(\A<13> ), .B(\B<13> ), .CI(\carry<13> ), .CO(\carry<14> ), 
        .S(\SUM<13> ) );
  ADDFX1 U1_16 ( .A(\A<16> ), .B(\B<16> ), .CI(\carry<16> ), .CO(\carry<17> ), 
        .S(\SUM<16> ) );
  CLKXOR2X1 U1 ( .A(\A<17> ), .B(\carry<17> ), .Y(\SUM<17> ) );
  NOR2X1 U2 ( .A(n3), .B(n4), .Y(\carry<18> ) );
  INVX1 U3 ( .A(\A<17> ), .Y(n4) );
  INVX1 U4 ( .A(\carry<17> ), .Y(n3) );
  CLKXOR2X1 U5 ( .A(\B<1> ), .B(\A<1> ), .Y(\SUM<1> ) );
  NOR2X1 U6 ( .A(n1), .B(n2), .Y(\carry<2> ) );
  INVX1 U7 ( .A(\B<1> ), .Y(n2) );
  INVX1 U8 ( .A(\A<1> ), .Y(n1) );
endmodule


module polynomial_a3_b2_c9_d1_in_bits6_out_bits24 ( clock, valid_in, reset, 
        valid_out, \x<5> , \x<4> , \x<3> , \x<2> , \x<1> , \x<0> , \y<23> , 
        \y<22> , \y<21> , \y<20> , \y<19> , \y<18> , \y<17> , \y<16> , \y<15> , 
        \y<14> , \y<13> , \y<12> , \y<11> , \y<10> , \y<9> , \y<8> , \y<7> , 
        \y<6> , \y<5> , \y<4> , \y<3> , \y<2> , \y<1> , \y<0>  );
  input clock, valid_in, reset, \x<5> , \x<4> , \x<3> , \x<2> , \x<1> , \x<0> ;
  output valid_out, \y<23> , \y<22> , \y<21> , \y<20> , \y<19> , \y<18> ,
         \y<17> , \y<16> , \y<15> , \y<14> , \y<13> , \y<12> , \y<11> ,
         \y<10> , \y<9> , \y<8> , \y<7> , \y<6> , \y<5> , \y<4> , \y<3> ,
         \y<2> , \y<1> , \y<0> ;
  wire   \x1<5> , \x1<4> , \x1<3> , \x1<2> , \x1<1> , \x1<0> , \y1<18> ,
         \y1<17> , \y1<16> , \y1<15> , \y1<14> , \y1<13> , \y1<12> , \y1<11> ,
         \y1<10> , \y1<9> , \y1<8> , \y1<7> , \y1<6> , \y1<5> , \y1<4> ,
         \y1<3> , \y1<2> , \y1<1> , valid1, N58, N60, N61, N62, N63, N64, N65,
         N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80,
         N81, N82, N83, N84, \x_squared<9> , \x_squared<8> , \x_squared<7> ,
         \x_squared<6> , \x_squared<5> , \x_squared<4> , \x_squared<3> ,
         \x_squared<11> , \x_squared<10> , \x_cubed<9> , \x_cubed<8> ,
         \x_cubed<7> , \x_cubed<6> , \x_cubed<5> , \x_cubed<4> , \x_cubed<3> ,
         \x_cubed<2> , \x_cubed<1> , \x_cubed<17> , \x_cubed<16> ,
         \x_cubed<15> , \x_cubed<14> , \x_cubed<13> , \x_cubed<12> ,
         \x_cubed<11> , \x_cubed<10> , \x_cubed<0> , N9, N8, N7, N6, N5, N44,
         N43, N42, N41, N40, N4, N39, N38, N3, N2, N16, N14, N13, N12, N11,
         N10, \add_1_root_add_0_root_add_56_3/carry<2> ,
         \add_1_root_add_0_root_add_56_3/carry<3> ,
         \add_1_root_add_0_root_add_56_3/carry<4> ,
         \add_1_root_add_0_root_add_56_3/carry<5> ,
         \add_1_root_add_0_root_add_56_3/carry<6> ,
         \add_1_root_add_0_root_add_56_3/carry<7> ,
         \add_1_root_add_0_root_add_56_3/carry<8> ,
         \add_1_root_add_0_root_add_56_3/carry<9> ,
         \add_1_root_add_0_root_add_56_3/carry<10> ,
         \add_1_root_add_0_root_add_56_3/carry<11> ,
         \add_1_root_add_0_root_add_56_3/carry<12> ,
         \add_1_root_add_0_root_add_56_3/carry<13> ,
         \add_1_root_add_0_root_add_56_3/carry<14> ,
         \add_1_root_add_0_root_add_56_3/carry<15> ,
         \add_1_root_add_0_root_add_56_3/carry<16> ,
         \add_1_root_add_0_root_add_56_3/SUM<2> ,
         \add_1_root_add_0_root_add_56_3/SUM<3> ,
         \add_1_root_add_0_root_add_56_3/SUM<4> ,
         \add_1_root_add_0_root_add_56_3/SUM<5> ,
         \add_1_root_add_0_root_add_56_3/SUM<6> ,
         \add_1_root_add_0_root_add_56_3/SUM<7> ,
         \add_1_root_add_0_root_add_56_3/SUM<8> ,
         \add_1_root_add_0_root_add_56_3/SUM<9> ,
         \add_1_root_add_0_root_add_56_3/SUM<10> ,
         \add_1_root_add_0_root_add_56_3/SUM<11> ,
         \add_1_root_add_0_root_add_56_3/SUM<12> ,
         \add_1_root_add_0_root_add_56_3/SUM<13> ,
         \add_1_root_add_0_root_add_56_3/SUM<14> ,
         \add_1_root_add_0_root_add_56_3/SUM<15> , \mult_56_2/A2<11> ,
         \mult_56_2/CARRYB<3][0> , \mult_56_2/CARRYB<4][0> ,
         \mult_56_2/CARRYB<5][0> , \mult_56_2/CARRYB<6][0> ,
         \mult_56_2/CARRYB<7][0> , \mult_56_2/CARRYB<8][0> ,
         \mult_56_2/CARRYB<9][0> , \mult_56_2/CARRYB<10][0> ,
         \mult_56_2/CARRYB<11][0> , \add_2_root_add_0_root_add_56_3/carry<6> ,
         \add_2_root_add_0_root_add_56_3/carry<5> ,
         \add_2_root_add_0_root_add_56_3/carry<4> ,
         \add_2_root_add_0_root_add_56_3/carry<3> , n1, n2, n3, n4, n5, n6, n7,
         n8, n9;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  polynomial_a3_b2_c9_d1_in_bits6_out_bits24_DW02_mult_2 mult_54 ( 
        .\A<5> (\x1<5> ), .\A<4> (\x1<4> ), .\A<3> (\x1<3> ), .\A<2> (\x1<2> ), 
        .\A<1> (\x1<1> ), .\A<0> (\x1<0> ), .\B<5> (\x1<5> ), .\B<4> (\x1<4> ), 
        .\B<3> (\x1<3> ), .\B<2> (\x1<2> ), .\B<1> (\x1<1> ), .\B<0> (\x1<0> ), 
        .TC(n1), .\PRODUCT<11> (\x_squared<11> ), 
        .\PRODUCT<10> (\x_squared<10> ), .\PRODUCT<9> (\x_squared<9> ), 
        .\PRODUCT<8> (\x_squared<8> ), .\PRODUCT<7> (\x_squared<7> ), 
        .\PRODUCT<6> (\x_squared<6> ), .\PRODUCT<5> (\x_squared<5> ), 
        .\PRODUCT<4> (\x_squared<4> ), .\PRODUCT<3> (\x_squared<3> ), 
        .\PRODUCT<2> (N4), .\PRODUCT<1> (N3), .\PRODUCT<0> (N2) );
  polynomial_a3_b2_c9_d1_in_bits6_out_bits24_DW02_mult_0 mult_55 ( 
        .\A<11> (\x_squared<11> ), .\A<10> (\x_squared<10> ), 
        .\A<9> (\x_squared<9> ), .\A<8> (\x_squared<8> ), 
        .\A<7> (\x_squared<7> ), .\A<6> (\x_squared<6> ), 
        .\A<5> (\x_squared<5> ), .\A<4> (\x_squared<4> ), 
        .\A<3> (\x_squared<3> ), .\A<2> (N4), .\A<1> (N3), .\A<0> (N2), 
        .\B<5> (\x1<5> ), .\B<4> (\x1<4> ), .\B<3> (\x1<3> ), .\B<2> (\x1<2> ), 
        .\B<1> (\x1<1> ), .\B<0> (\x1<0> ), .TC(n1), 
        .\PRODUCT<17> (\x_cubed<17> ), .\PRODUCT<16> (\x_cubed<16> ), 
        .\PRODUCT<15> (\x_cubed<15> ), .\PRODUCT<14> (\x_cubed<14> ), 
        .\PRODUCT<13> (\x_cubed<13> ), .\PRODUCT<12> (\x_cubed<12> ), 
        .\PRODUCT<11> (\x_cubed<11> ), .\PRODUCT<10> (\x_cubed<10> ), 
        .\PRODUCT<9> (\x_cubed<9> ), .\PRODUCT<8> (\x_cubed<8> ), 
        .\PRODUCT<7> (\x_cubed<7> ), .\PRODUCT<6> (\x_cubed<6> ), 
        .\PRODUCT<5> (\x_cubed<5> ), .\PRODUCT<4> (\x_cubed<4> ), 
        .\PRODUCT<3> (\x_cubed<3> ), .\PRODUCT<2> (\x_cubed<2> ), 
        .\PRODUCT<1> (\x_cubed<1> ), .\PRODUCT<0> (\x_cubed<0> ) );
  polynomial_a3_b2_c9_d1_in_bits6_out_bits24_DW01_add_0 add_0_root_add_0_root_add_56_3 ( 
        .\A<20> (n1), .\A<19> (n1), .\A<18> (n1), .\A<17> (\x_cubed<17> ), 
        .\A<16> (\x_cubed<16> ), .\A<15> (\x_cubed<15> ), 
        .\A<14> (\x_cubed<14> ), .\A<13> (\x_cubed<13> ), 
        .\A<12> (\x_cubed<12> ), .\A<11> (\x_cubed<11> ), 
        .\A<10> (\x_cubed<10> ), .\A<9> (\x_cubed<9> ), .\A<8> (\x_cubed<8> ), 
        .\A<7> (\x_cubed<7> ), .\A<6> (\x_cubed<6> ), .\A<5> (\x_cubed<5> ), 
        .\A<4> (\x_cubed<4> ), .\A<3> (\x_cubed<3> ), .\A<2> (\x_cubed<2> ), 
        .\A<1> (\x_cubed<1> ), .\A<0> (\x_cubed<0> ), .\B<20> (n1), 
        .\B<19> (n1), .\B<18> (n1), .\B<17> (n1), 
        .\B<16> (\add_1_root_add_0_root_add_56_3/carry<16> ), 
        .\B<15> (\add_1_root_add_0_root_add_56_3/SUM<15> ), 
        .\B<14> (\add_1_root_add_0_root_add_56_3/SUM<14> ), 
        .\B<13> (\add_1_root_add_0_root_add_56_3/SUM<13> ), 
        .\B<12> (\add_1_root_add_0_root_add_56_3/SUM<12> ), 
        .\B<11> (\add_1_root_add_0_root_add_56_3/SUM<11> ), 
        .\B<10> (\add_1_root_add_0_root_add_56_3/SUM<10> ), 
        .\B<9> (\add_1_root_add_0_root_add_56_3/SUM<9> ), 
        .\B<8> (\add_1_root_add_0_root_add_56_3/SUM<8> ), 
        .\B<7> (\add_1_root_add_0_root_add_56_3/SUM<7> ), 
        .\B<6> (\add_1_root_add_0_root_add_56_3/SUM<6> ), 
        .\B<5> (\add_1_root_add_0_root_add_56_3/SUM<5> ), 
        .\B<4> (\add_1_root_add_0_root_add_56_3/SUM<4> ), 
        .\B<3> (\add_1_root_add_0_root_add_56_3/SUM<3> ), 
        .\B<2> (\add_1_root_add_0_root_add_56_3/SUM<2> ), .\B<1> (n9), 
        .\B<0> (n8), .CI(n1), .\SUM<20> (SYNOPSYS_UNCONNECTED__0), 
        .\SUM<19> (SYNOPSYS_UNCONNECTED__1), .\SUM<18> (\y1<18> ), 
        .\SUM<17> (\y1<17> ), .\SUM<16> (\y1<16> ), .\SUM<15> (\y1<15> ), 
        .\SUM<14> (\y1<14> ), .\SUM<13> (\y1<13> ), .\SUM<12> (\y1<12> ), 
        .\SUM<11> (\y1<11> ), .\SUM<10> (\y1<10> ), .\SUM<9> (\y1<9> ), 
        .\SUM<8> (\y1<8> ), .\SUM<7> (\y1<7> ), .\SUM<6> (\y1<6> ), 
        .\SUM<5> (\y1<5> ), .\SUM<4> (\y1<4> ), .\SUM<3> (\y1<3> ), 
        .\SUM<2> (\y1<2> ), .\SUM<1> (\y1<1> ), 
        .\SUM<0> (SYNOPSYS_UNCONNECTED__2) );
  DFFHQX1 \y_reg<18>  ( .D(N84), .CK(clock), .Q(\y<18> ) );
  DFFHQX1 \y_reg<17>  ( .D(N83), .CK(clock), .Q(\y<17> ) );
  DFFHQX1 \y_reg<16>  ( .D(N82), .CK(clock), .Q(\y<16> ) );
  DFFHQX1 \y_reg<15>  ( .D(N81), .CK(clock), .Q(\y<15> ) );
  DFFHQX1 \y_reg<14>  ( .D(N80), .CK(clock), .Q(\y<14> ) );
  DFFHQX1 \y_reg<13>  ( .D(N79), .CK(clock), .Q(\y<13> ) );
  DFFHQX1 \y_reg<12>  ( .D(N78), .CK(clock), .Q(\y<12> ) );
  DFFHQX1 \y_reg<11>  ( .D(N77), .CK(clock), .Q(\y<11> ) );
  DFFHQX1 \y_reg<10>  ( .D(N76), .CK(clock), .Q(\y<10> ) );
  DFFHQX1 \y_reg<9>  ( .D(N75), .CK(clock), .Q(\y<9> ) );
  DFFHQX1 \y_reg<8>  ( .D(N74), .CK(clock), .Q(\y<8> ) );
  DFFHQX1 \y_reg<7>  ( .D(N73), .CK(clock), .Q(\y<7> ) );
  DFFHQX1 \y_reg<6>  ( .D(N72), .CK(clock), .Q(\y<6> ) );
  DFFHQX1 \y_reg<5>  ( .D(N71), .CK(clock), .Q(\y<5> ) );
  DFFHQX1 \y_reg<4>  ( .D(N70), .CK(clock), .Q(\y<4> ) );
  DFFHQX1 \y_reg<3>  ( .D(N69), .CK(clock), .Q(\y<3> ) );
  DFFHQX1 \y_reg<2>  ( .D(N68), .CK(clock), .Q(\y<2> ) );
  DFFHQX1 \y_reg<1>  ( .D(N67), .CK(clock), .Q(\y<1> ) );
  DFFHQX1 \y_reg<0>  ( .D(n4), .CK(clock), .Q(\y<0> ) );
  DFFHQX1 valid1_reg ( .D(N58), .CK(clock), .Q(valid1) );
  DFFHQX1 \x1_reg<4>  ( .D(N64), .CK(clock), .Q(\x1<4> ) );
  DFFHQX1 \x1_reg<3>  ( .D(N63), .CK(clock), .Q(\x1<3> ) );
  DFFHQX1 \x1_reg<2>  ( .D(N62), .CK(clock), .Q(\x1<2> ) );
  DFFHQX1 \x1_reg<1>  ( .D(N61), .CK(clock), .Q(\x1<1> ) );
  DFFHQX1 \x1_reg<5>  ( .D(N65), .CK(clock), .Q(\x1<5> ) );
  DFFHQX1 \x1_reg<0>  ( .D(N60), .CK(clock), .Q(\x1<0> ) );
  MDFFHQX1 valid_out_reg ( .D0(n1), .D1(n4), .S0(valid1), .CK(clock), 
        .Q(valid_out) );
  TIELO U3 ( .Y(n1) );
  INVX1 U4 ( .A(N2), .Y(n8) );
  INVX1 U5 ( .A(reset), .Y(n4) );
  INVX1 U6 ( .A(n7), .Y(n5) );
  AND2X1 U7 ( .A(n6), .B(n7), .Y(n2) );
  ADDFX1 U8 ( .A(\x_squared<10> ), .B(\mult_56_2/CARRYB<9][0> ), 
        .CI(\x_squared<7> ), .CO(\mult_56_2/CARRYB<10][0> ), .S(N12) );
  ADDFX1 U9 ( .A(\x_squared<9> ), .B(\mult_56_2/CARRYB<8][0> ), 
        .CI(\x_squared<6> ), .CO(\mult_56_2/CARRYB<9][0> ), .S(N11) );
  INVX1 U10 ( .A(N3), .Y(n9) );
  ADDFX1 U11 ( .A(\x_squared<7> ), .B(\mult_56_2/CARRYB<6][0> ), 
        .CI(\x_squared<4> ), .CO(\mult_56_2/CARRYB<7][0> ), .S(N9) );
  ADDFX1 U12 ( .A(\x_squared<8> ), .B(\mult_56_2/CARRYB<7][0> ), 
        .CI(\x_squared<5> ), .CO(\mult_56_2/CARRYB<8][0> ), .S(N10) );
  ADDFX1 U13 ( .A(\x_squared<6> ), .B(\mult_56_2/CARRYB<5][0> ), 
        .CI(\x_squared<3> ), .CO(\mult_56_2/CARRYB<6][0> ), .S(N8) );
  ADDFX1 U14 ( .A(\x_squared<11> ), .B(\mult_56_2/CARRYB<10][0> ), 
        .CI(\x_squared<8> ), .CO(\mult_56_2/CARRYB<11][0> ), .S(N13) );
  NOR2BX1 U15 ( .AN(\y1<13> ), .B(reset), .Y(N79) );
  NOR2BX1 U16 ( .AN(\y1<14> ), .B(reset), .Y(N80) );
  NOR2BX1 U17 ( .AN(\y1<15> ), .B(reset), .Y(N81) );
  NOR2BX1 U18 ( .AN(\y1<16> ), .B(reset), .Y(N82) );
  NOR2BX1 U19 ( .AN(\y1<17> ), .B(reset), .Y(N83) );
  NOR2BX1 U20 ( .AN(\y1<18> ), .B(reset), .Y(N84) );
  CLKXOR2X1 U21 ( .A(n5), .B(\x_squared<11> ), .Y(N16) );
  NOR2BX1 U22 ( .AN(\y1<9> ), .B(reset), .Y(N75) );
  NOR2BX1 U23 ( .AN(\y1<10> ), .B(reset), .Y(N76) );
  NOR2BX1 U24 ( .AN(\y1<11> ), .B(reset), .Y(N77) );
  NOR2BX1 U25 ( .AN(\y1<12> ), .B(reset), .Y(N78) );
  AND2X1 U26 ( .A(n5), .B(\x_squared<11> ), .Y(n3) );
  NOR2BX1 U27 ( .AN(\y1<5> ), .B(reset), .Y(N71) );
  NOR2BX1 U28 ( .AN(\y1<6> ), .B(reset), .Y(N72) );
  NOR2BX1 U29 ( .AN(\y1<7> ), .B(reset), .Y(N73) );
  NOR2BX1 U30 ( .AN(\y1<8> ), .B(reset), .Y(N74) );
  NOR2BX1 U31 ( .AN(\y1<2> ), .B(reset), .Y(N68) );
  NOR2BX1 U32 ( .AN(\y1<3> ), .B(reset), .Y(N69) );
  NOR2BX1 U33 ( .AN(\y1<4> ), .B(reset), .Y(N70) );
  NOR2BX1 U34 ( .AN(\y1<1> ), .B(reset), .Y(N67) );
  ADDFX1 U35 ( .A(\x_squared<5> ), .B(\mult_56_2/CARRYB<4][0> ), .CI(N4), 
        .CO(\mult_56_2/CARRYB<5][0> ), .S(N7) );
  ADDFX1 U36 ( .A(N5), .B(N40), .CI(\add_1_root_add_0_root_add_56_3/carry<3> ), 
        .CO(\add_1_root_add_0_root_add_56_3/carry<4> ), 
        .S(\add_1_root_add_0_root_add_56_3/SUM<3> ) );
  ADDFX1 U37 ( .A(N6), .B(N41), .CI(\add_1_root_add_0_root_add_56_3/carry<4> ), 
        .CO(\add_1_root_add_0_root_add_56_3/carry<5> ), 
        .S(\add_1_root_add_0_root_add_56_3/SUM<4> ) );
  ADDFX1 U38 ( .A(N7), .B(N42), .CI(\add_1_root_add_0_root_add_56_3/carry<5> ), 
        .CO(\add_1_root_add_0_root_add_56_3/carry<6> ), 
        .S(\add_1_root_add_0_root_add_56_3/SUM<5> ) );
  ADDFX1 U39 ( .A(N8), .B(N43), .CI(\add_1_root_add_0_root_add_56_3/carry<6> ), 
        .CO(\add_1_root_add_0_root_add_56_3/carry<7> ), 
        .S(\add_1_root_add_0_root_add_56_3/SUM<6> ) );
  ADDFX1 U40 ( .A(N9), .B(N44), .CI(\add_1_root_add_0_root_add_56_3/carry<7> ), 
        .CO(\add_1_root_add_0_root_add_56_3/carry<8> ), 
        .S(\add_1_root_add_0_root_add_56_3/SUM<7> ) );
  ADDFX1 U41 ( .A(\x_squared<4> ), .B(\mult_56_2/CARRYB<3][0> ), .CI(N3), 
        .CO(\mult_56_2/CARRYB<4][0> ), .S(N6) );
  ADDFX1 U42 ( .A(N4), .B(N39), .CI(\add_1_root_add_0_root_add_56_3/carry<2> ), 
        .CO(\add_1_root_add_0_root_add_56_3/carry<3> ), 
        .S(\add_1_root_add_0_root_add_56_3/SUM<2> ) );
  ADDFX1 U43 ( .A(N3), .B(N38), .CI(N2), 
        .CO(\add_1_root_add_0_root_add_56_3/carry<2> ) );
  INVX1 U44 ( .A(\x1<0> ), .Y(N38) );
  NOR2BX1 U45 ( .AN(\x<0> ), .B(reset), .Y(N60) );
  NOR2BX1 U46 ( .AN(\x<1> ), .B(reset), .Y(N61) );
  NOR2BX1 U47 ( .AN(\x<2> ), .B(reset), .Y(N62) );
  NOR2BX1 U48 ( .AN(\x<3> ), .B(reset), .Y(N63) );
  NOR2BX1 U49 ( .AN(\x<4> ), .B(reset), .Y(N64) );
  NOR2BX1 U50 ( .AN(\x<5> ), .B(reset), .Y(N65) );
  NOR2BX1 U51 ( .AN(valid_in), .B(reset), .Y(N58) );
  AND2X1 U52 ( .A(\add_1_root_add_0_root_add_56_3/carry<15> ), .B(n3), 
        .Y(\add_1_root_add_0_root_add_56_3/carry<16> ) );
  CLKXOR2X1 U53 ( .A(\add_1_root_add_0_root_add_56_3/carry<15> ), .B(n3), 
        .Y(\add_1_root_add_0_root_add_56_3/SUM<15> ) );
  AND2X1 U54 ( .A(\add_1_root_add_0_root_add_56_3/carry<14> ), .B(N16), 
        .Y(\add_1_root_add_0_root_add_56_3/carry<15> ) );
  CLKXOR2X1 U55 ( .A(\add_1_root_add_0_root_add_56_3/carry<14> ), .B(N16), 
        .Y(\add_1_root_add_0_root_add_56_3/SUM<14> ) );
  AND2X1 U56 ( .A(\add_1_root_add_0_root_add_56_3/carry<13> ), .B(n2), 
        .Y(\add_1_root_add_0_root_add_56_3/carry<14> ) );
  CLKXOR2X1 U57 ( .A(\add_1_root_add_0_root_add_56_3/carry<13> ), .B(n2), 
        .Y(\add_1_root_add_0_root_add_56_3/SUM<13> ) );
  AND2X1 U58 ( .A(\add_1_root_add_0_root_add_56_3/carry<12> ), .B(N14), 
        .Y(\add_1_root_add_0_root_add_56_3/carry<13> ) );
  CLKXOR2X1 U59 ( .A(\add_1_root_add_0_root_add_56_3/carry<12> ), .B(N14), 
        .Y(\add_1_root_add_0_root_add_56_3/SUM<12> ) );
  AND2X1 U60 ( .A(\add_1_root_add_0_root_add_56_3/carry<11> ), .B(N13), 
        .Y(\add_1_root_add_0_root_add_56_3/carry<12> ) );
  CLKXOR2X1 U61 ( .A(\add_1_root_add_0_root_add_56_3/carry<11> ), .B(N13), 
        .Y(\add_1_root_add_0_root_add_56_3/SUM<11> ) );
  AND2X1 U62 ( .A(\add_1_root_add_0_root_add_56_3/carry<10> ), .B(N12), 
        .Y(\add_1_root_add_0_root_add_56_3/carry<11> ) );
  CLKXOR2X1 U63 ( .A(\add_1_root_add_0_root_add_56_3/carry<10> ), .B(N12), 
        .Y(\add_1_root_add_0_root_add_56_3/SUM<10> ) );
  AND2X1 U64 ( .A(\add_1_root_add_0_root_add_56_3/carry<9> ), .B(N11), 
        .Y(\add_1_root_add_0_root_add_56_3/carry<10> ) );
  CLKXOR2X1 U65 ( .A(\add_1_root_add_0_root_add_56_3/carry<9> ), .B(N11), 
        .Y(\add_1_root_add_0_root_add_56_3/SUM<9> ) );
  AND2X1 U66 ( .A(\add_1_root_add_0_root_add_56_3/carry<8> ), .B(N10), 
        .Y(\add_1_root_add_0_root_add_56_3/carry<9> ) );
  CLKXOR2X1 U67 ( .A(\add_1_root_add_0_root_add_56_3/carry<8> ), .B(N10), 
        .Y(\add_1_root_add_0_root_add_56_3/SUM<8> ) );
  AND2X1 U68 ( .A(\add_2_root_add_0_root_add_56_3/carry<6> ), .B(\x1<5> ), 
        .Y(N44) );
  CLKXOR2X1 U69 ( .A(\add_2_root_add_0_root_add_56_3/carry<6> ), .B(\x1<5> ), 
        .Y(N43) );
  AND2X1 U70 ( .A(\add_2_root_add_0_root_add_56_3/carry<5> ), .B(\x1<4> ), 
        .Y(\add_2_root_add_0_root_add_56_3/carry<6> ) );
  CLKXOR2X1 U71 ( .A(\add_2_root_add_0_root_add_56_3/carry<5> ), .B(\x1<4> ), 
        .Y(N42) );
  AND2X1 U72 ( .A(\add_2_root_add_0_root_add_56_3/carry<4> ), .B(\x1<3> ), 
        .Y(\add_2_root_add_0_root_add_56_3/carry<5> ) );
  CLKXOR2X1 U73 ( .A(\add_2_root_add_0_root_add_56_3/carry<4> ), .B(\x1<3> ), 
        .Y(N41) );
  AND2X1 U74 ( .A(\add_2_root_add_0_root_add_56_3/carry<3> ), .B(\x1<2> ), 
        .Y(\add_2_root_add_0_root_add_56_3/carry<4> ) );
  CLKXOR2X1 U75 ( .A(\add_2_root_add_0_root_add_56_3/carry<3> ), .B(\x1<2> ), 
        .Y(N40) );
  AND2X1 U76 ( .A(\x1<0> ), .B(\x1<1> ), 
        .Y(\add_2_root_add_0_root_add_56_3/carry<3> ) );
  CLKXOR2X1 U77 ( .A(\x1<0> ), .B(\x1<1> ), .Y(N39) );
  AND2X1 U78 ( .A(\x_squared<9> ), .B(\mult_56_2/CARRYB<11][0> ), 
        .Y(\mult_56_2/A2<11> ) );
  CLKXOR2X1 U79 ( .A(\x_squared<9> ), .B(\mult_56_2/CARRYB<11][0> ), .Y(N14)
         );
  AND2X1 U80 ( .A(N2), .B(\x_squared<3> ), .Y(\mult_56_2/CARRYB<3][0> ) );
  CLKXOR2X1 U81 ( .A(N2), .B(\x_squared<3> ), .Y(N5) );
  NAND2X1 U82 ( .A(\mult_56_2/A2<11> ), .B(\x_squared<10> ), .Y(n7) );
  OR2X1 U83 ( .A(\mult_56_2/A2<11> ), .B(\x_squared<10> ), .Y(n6) );
endmodule


module polynomial_top ( PAD_clock, PAD_valid_in, PAD_reset, PAD_valid_out, 
        \PAD_x<5> , \PAD_x<4> , \PAD_x<3> , \PAD_x<2> , \PAD_x<1> , \PAD_x<0> , 
        \PAD_y<23> , \PAD_y<22> , \PAD_y<21> , \PAD_y<20> , \PAD_y<19> , 
        \PAD_y<18> , \PAD_y<17> , \PAD_y<16> , \PAD_y<15> , \PAD_y<14> , 
        \PAD_y<13> , \PAD_y<12> , \PAD_y<11> , \PAD_y<10> , \PAD_y<9> , 
        \PAD_y<8> , \PAD_y<7> , \PAD_y<6> , \PAD_y<5> , \PAD_y<4> , \PAD_y<3> , 
        \PAD_y<2> , \PAD_y<1> , \PAD_y<0>  );
  input PAD_clock, PAD_valid_in, PAD_reset, \PAD_x<5> , \PAD_x<4> , \PAD_x<3> ,
         \PAD_x<2> , \PAD_x<1> , \PAD_x<0> ;
  output PAD_valid_out, \PAD_y<23> , \PAD_y<22> , \PAD_y<21> , \PAD_y<20> ,
         \PAD_y<19> , \PAD_y<18> , \PAD_y<17> , \PAD_y<16> , \PAD_y<15> ,
         \PAD_y<14> , \PAD_y<13> , \PAD_y<12> , \PAD_y<11> , \PAD_y<10> ,
         \PAD_y<9> , \PAD_y<8> , \PAD_y<7> , \PAD_y<6> , \PAD_y<5> ,
         \PAD_y<4> , \PAD_y<3> , \PAD_y<2> , \PAD_y<1> , \PAD_y<0> ;
  wire   \x_top<5> , \x_top<4> , \x_top<3> , \x_top<2> , \x_top<1> ,
         \x_top<0> , \y_top<18> , \y_top<17> , \y_top<16> , \y_top<15> ,
         \y_top<14> , \y_top<13> , \y_top<12> , \y_top<11> , \y_top<10> ,
         \y_top<9> , \y_top<8> , \y_top<7> , \y_top<6> , \y_top<5> ,
         \y_top<4> , \y_top<3> , \y_top<2> , \y_top<1> , \y_top<0> , clock_top,
         valid_in_top, reset_top, valid_out_top, n1;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  PADDI inpX_5 ( .PAD(\PAD_x<5> ), .Y(\x_top<5> ) );
  PADDI inpX_4 ( .PAD(\PAD_x<4> ), .Y(\x_top<4> ) );
  PADDI inpX_3 ( .PAD(\PAD_x<3> ), .Y(\x_top<3> ) );
  PADDI inpX_2 ( .PAD(\PAD_x<2> ), .Y(\x_top<2> ) );
  PADDI inpX_1 ( .PAD(\PAD_x<1> ), .Y(\x_top<1> ) );
  PADDI inpX_0 ( .PAD(\PAD_x<0> ), .Y(\x_top<0> ) );
  PADDO outpY_23 ( .A(n1), .PAD(\PAD_y<23> ) );
  PADDO outpY_22 ( .A(n1), .PAD(\PAD_y<22> ) );
  PADDO outpY_21 ( .A(n1), .PAD(\PAD_y<21> ) );
  PADDO outpY_20 ( .A(n1), .PAD(\PAD_y<20> ) );
  PADDO outpY_19 ( .A(n1), .PAD(\PAD_y<19> ) );
  PADDO outpY_18 ( .A(\y_top<18> ), .PAD(\PAD_y<18> ) );
  PADDO outpY_17 ( .A(\y_top<17> ), .PAD(\PAD_y<17> ) );
  PADDO outpY_16 ( .A(\y_top<16> ), .PAD(\PAD_y<16> ) );
  PADDO outpY_15 ( .A(\y_top<15> ), .PAD(\PAD_y<15> ) );
  PADDO outpY_14 ( .A(\y_top<14> ), .PAD(\PAD_y<14> ) );
  PADDO outpY_13 ( .A(\y_top<13> ), .PAD(\PAD_y<13> ) );
  PADDO outpY_12 ( .A(\y_top<12> ), .PAD(\PAD_y<12> ) );
  PADDO outpY_11 ( .A(\y_top<11> ), .PAD(\PAD_y<11> ) );
  PADDO outpY_10 ( .A(\y_top<10> ), .PAD(\PAD_y<10> ) );
  PADDO outpY_9 ( .A(\y_top<9> ), .PAD(\PAD_y<9> ) );
  PADDO outpY_8 ( .A(\y_top<8> ), .PAD(\PAD_y<8> ) );
  PADDO outpY_7 ( .A(\y_top<7> ), .PAD(\PAD_y<7> ) );
  PADDO outpY_6 ( .A(\y_top<6> ), .PAD(\PAD_y<6> ) );
  PADDO outpY_5 ( .A(\y_top<5> ), .PAD(\PAD_y<5> ) );
  PADDO outpY_4 ( .A(\y_top<4> ), .PAD(\PAD_y<4> ) );
  PADDO outpY_3 ( .A(\y_top<3> ), .PAD(\PAD_y<3> ) );
  PADDO outpY_2 ( .A(\y_top<2> ), .PAD(\PAD_y<2> ) );
  PADDO outpY_1 ( .A(\y_top<1> ), .PAD(\PAD_y<1> ) );
  PADDO outpY_0 ( .A(\y_top<0> ), .PAD(\PAD_y<0> ) );
  PADDI padClock ( .PAD(PAD_clock), .Y(clock_top) );
  PADDI padValidIn ( .PAD(PAD_valid_in), .Y(valid_in_top) );
  PADDI padReset ( .PAD(PAD_reset), .Y(reset_top) );
  PADDO padValidOut ( .A(valid_out_top), .PAD(PAD_valid_out) );
  polynomial_a3_b2_c9_d1_in_bits6_out_bits24 polynomialCore ( 
        .clock(clock_top), .valid_in(valid_in_top), .reset(reset_top), 
        .valid_out(valid_out_top), .\x<5> (\x_top<5> ), .\x<4> (\x_top<4> ), 
        .\x<3> (\x_top<3> ), .\x<2> (\x_top<2> ), .\x<1> (\x_top<1> ), 
        .\x<0> (\x_top<0> ), .\y<23> (SYNOPSYS_UNCONNECTED__0), 
        .\y<22> (SYNOPSYS_UNCONNECTED__1), .\y<21> (SYNOPSYS_UNCONNECTED__2), 
        .\y<20> (SYNOPSYS_UNCONNECTED__3), .\y<19> (SYNOPSYS_UNCONNECTED__4), 
        .\y<18> (\y_top<18> ), .\y<17> (\y_top<17> ), .\y<16> (\y_top<16> ), 
        .\y<15> (\y_top<15> ), .\y<14> (\y_top<14> ), .\y<13> (\y_top<13> ), 
        .\y<12> (\y_top<12> ), .\y<11> (\y_top<11> ), .\y<10> (\y_top<10> ), 
        .\y<9> (\y_top<9> ), .\y<8> (\y_top<8> ), .\y<7> (\y_top<7> ), 
        .\y<6> (\y_top<6> ), .\y<5> (\y_top<5> ), .\y<4> (\y_top<4> ), 
        .\y<3> (\y_top<3> ), .\y<2> (\y_top<2> ), .\y<1> (\y_top<1> ), 
        .\y<0> (\y_top<0> ) );
  TIELO U1 ( .Y(n1) );
endmodule

