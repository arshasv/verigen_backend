module spm (clk,
    rst,
    x,
    y,
    a);
 input clk;
 input rst;
 input x;
 output y;
 input [31:0] a;

 wire \dsa[0]._0_ ;
 wire \dsa[0]._1_ ;
 wire \dsa[0]._2_ ;
 wire \dsa[0].last_carry ;
 wire \dsa[0].last_carry_next ;
 wire \dsa[0].y_out ;
 wire \dsa[0].y_out_next ;
 wire \dsa[10]._0_ ;
 wire \dsa[10]._1_ ;
 wire \dsa[10]._2_ ;
 wire \dsa[10].last_carry ;
 wire \dsa[10].last_carry_next ;
 wire \dsa[10].y_in ;
 wire \dsa[10].y_out ;
 wire \dsa[10].y_out_next ;
 wire \dsa[11]._0_ ;
 wire \dsa[11]._1_ ;
 wire \dsa[11]._2_ ;
 wire \dsa[11].last_carry ;
 wire \dsa[11].last_carry_next ;
 wire \dsa[11].y_out ;
 wire \dsa[11].y_out_next ;
 wire \dsa[12]._0_ ;
 wire \dsa[12]._1_ ;
 wire \dsa[12]._2_ ;
 wire \dsa[12].last_carry ;
 wire \dsa[12].last_carry_next ;
 wire \dsa[12].y_out ;
 wire \dsa[12].y_out_next ;
 wire \dsa[13]._0_ ;
 wire \dsa[13]._1_ ;
 wire \dsa[13]._2_ ;
 wire \dsa[13].last_carry ;
 wire \dsa[13].last_carry_next ;
 wire \dsa[13].y_out ;
 wire \dsa[13].y_out_next ;
 wire \dsa[14]._0_ ;
 wire \dsa[14]._1_ ;
 wire \dsa[14]._2_ ;
 wire \dsa[14].last_carry ;
 wire \dsa[14].last_carry_next ;
 wire \dsa[14].y_out ;
 wire \dsa[14].y_out_next ;
 wire \dsa[15]._0_ ;
 wire \dsa[15]._1_ ;
 wire \dsa[15]._2_ ;
 wire \dsa[15].last_carry ;
 wire \dsa[15].last_carry_next ;
 wire \dsa[15].y_out ;
 wire \dsa[15].y_out_next ;
 wire \dsa[16]._0_ ;
 wire \dsa[16]._1_ ;
 wire \dsa[16]._2_ ;
 wire \dsa[16].last_carry ;
 wire \dsa[16].last_carry_next ;
 wire \dsa[16].y_out ;
 wire \dsa[16].y_out_next ;
 wire \dsa[17]._0_ ;
 wire \dsa[17]._1_ ;
 wire \dsa[17]._2_ ;
 wire \dsa[17].last_carry ;
 wire \dsa[17].last_carry_next ;
 wire \dsa[17].y_out ;
 wire \dsa[17].y_out_next ;
 wire \dsa[18]._0_ ;
 wire \dsa[18]._1_ ;
 wire \dsa[18]._2_ ;
 wire \dsa[18].last_carry ;
 wire \dsa[18].last_carry_next ;
 wire \dsa[18].y_out ;
 wire \dsa[18].y_out_next ;
 wire \dsa[19]._0_ ;
 wire \dsa[19]._1_ ;
 wire \dsa[19]._2_ ;
 wire \dsa[19].last_carry ;
 wire \dsa[19].last_carry_next ;
 wire \dsa[19].y_out ;
 wire \dsa[19].y_out_next ;
 wire \dsa[1]._0_ ;
 wire \dsa[1]._1_ ;
 wire \dsa[1]._2_ ;
 wire \dsa[1].last_carry ;
 wire \dsa[1].last_carry_next ;
 wire \dsa[1].y_out ;
 wire \dsa[1].y_out_next ;
 wire \dsa[20]._0_ ;
 wire \dsa[20]._1_ ;
 wire \dsa[20]._2_ ;
 wire \dsa[20].last_carry ;
 wire \dsa[20].last_carry_next ;
 wire \dsa[20].y_out ;
 wire \dsa[20].y_out_next ;
 wire \dsa[21]._0_ ;
 wire \dsa[21]._1_ ;
 wire \dsa[21]._2_ ;
 wire \dsa[21].last_carry ;
 wire \dsa[21].last_carry_next ;
 wire \dsa[21].y_out ;
 wire \dsa[21].y_out_next ;
 wire \dsa[22]._0_ ;
 wire \dsa[22]._1_ ;
 wire \dsa[22]._2_ ;
 wire \dsa[22].last_carry ;
 wire \dsa[22].last_carry_next ;
 wire \dsa[22].y_out ;
 wire \dsa[22].y_out_next ;
 wire \dsa[23]._0_ ;
 wire \dsa[23]._1_ ;
 wire \dsa[23]._2_ ;
 wire \dsa[23].last_carry ;
 wire \dsa[23].last_carry_next ;
 wire \dsa[23].y_out ;
 wire \dsa[23].y_out_next ;
 wire \dsa[24]._0_ ;
 wire \dsa[24]._1_ ;
 wire \dsa[24]._2_ ;
 wire \dsa[24].last_carry ;
 wire \dsa[24].last_carry_next ;
 wire \dsa[24].y_out ;
 wire \dsa[24].y_out_next ;
 wire \dsa[25]._0_ ;
 wire \dsa[25]._1_ ;
 wire \dsa[25]._2_ ;
 wire \dsa[25].last_carry ;
 wire \dsa[25].last_carry_next ;
 wire \dsa[25].y_out ;
 wire \dsa[25].y_out_next ;
 wire \dsa[26]._0_ ;
 wire \dsa[26]._1_ ;
 wire \dsa[26]._2_ ;
 wire \dsa[26].last_carry ;
 wire \dsa[26].last_carry_next ;
 wire \dsa[26].y_out ;
 wire \dsa[26].y_out_next ;
 wire \dsa[27]._0_ ;
 wire \dsa[27]._1_ ;
 wire \dsa[27]._2_ ;
 wire \dsa[27].last_carry ;
 wire \dsa[27].last_carry_next ;
 wire \dsa[27].y_out ;
 wire \dsa[27].y_out_next ;
 wire \dsa[28]._0_ ;
 wire \dsa[28]._1_ ;
 wire \dsa[28]._2_ ;
 wire \dsa[28].last_carry ;
 wire \dsa[28].last_carry_next ;
 wire \dsa[28].y_out ;
 wire \dsa[28].y_out_next ;
 wire \dsa[29]._0_ ;
 wire \dsa[29]._1_ ;
 wire \dsa[29]._2_ ;
 wire \dsa[29].last_carry ;
 wire \dsa[29].last_carry_next ;
 wire \dsa[29].y_out ;
 wire \dsa[29].y_out_next ;
 wire \dsa[2]._0_ ;
 wire \dsa[2]._1_ ;
 wire \dsa[2]._2_ ;
 wire \dsa[2].last_carry ;
 wire \dsa[2].last_carry_next ;
 wire \dsa[2].y_out ;
 wire \dsa[2].y_out_next ;
 wire \dsa[30]._0_ ;
 wire \dsa[30]._1_ ;
 wire \dsa[30]._2_ ;
 wire \dsa[30].last_carry ;
 wire \dsa[30].last_carry_next ;
 wire \dsa[30].y_out ;
 wire \dsa[30].y_out_next ;
 wire \dsa[31]._0_ ;
 wire \dsa[31]._1_ ;
 wire \dsa[31]._2_ ;
 wire \dsa[31].last_carry ;
 wire \dsa[31].last_carry_next ;
 wire \dsa[31].y_out_next ;
 wire \dsa[3]._0_ ;
 wire \dsa[3]._1_ ;
 wire \dsa[3]._2_ ;
 wire \dsa[3].last_carry ;
 wire \dsa[3].last_carry_next ;
 wire \dsa[3].y_out ;
 wire \dsa[3].y_out_next ;
 wire \dsa[4]._0_ ;
 wire \dsa[4]._1_ ;
 wire \dsa[4]._2_ ;
 wire \dsa[4].last_carry ;
 wire \dsa[4].last_carry_next ;
 wire \dsa[4].y_out ;
 wire \dsa[4].y_out_next ;
 wire \dsa[5]._0_ ;
 wire \dsa[5]._1_ ;
 wire \dsa[5]._2_ ;
 wire \dsa[5].last_carry ;
 wire \dsa[5].last_carry_next ;
 wire \dsa[5].y_out ;
 wire \dsa[5].y_out_next ;
 wire \dsa[6]._0_ ;
 wire \dsa[6]._1_ ;
 wire \dsa[6]._2_ ;
 wire \dsa[6].last_carry ;
 wire \dsa[6].last_carry_next ;
 wire \dsa[6].y_out ;
 wire \dsa[6].y_out_next ;
 wire \dsa[7]._0_ ;
 wire \dsa[7]._1_ ;
 wire \dsa[7]._2_ ;
 wire \dsa[7].last_carry ;
 wire \dsa[7].last_carry_next ;
 wire \dsa[7].y_out ;
 wire \dsa[7].y_out_next ;
 wire \dsa[8]._0_ ;
 wire \dsa[8]._1_ ;
 wire \dsa[8]._2_ ;
 wire \dsa[8].last_carry ;
 wire \dsa[8].last_carry_next ;
 wire \dsa[8].y_out ;
 wire \dsa[8].y_out_next ;
 wire \dsa[9]._0_ ;
 wire \dsa[9]._1_ ;
 wire \dsa[9]._2_ ;
 wire \dsa[9].last_carry ;
 wire \dsa[9].last_carry_next ;
 wire \dsa[9].y_out_next ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;

 sky130_fd_sc_hd__nand3_1 \dsa[0]._3_  (.A(\dsa[0].last_carry ),
    .B(net25),
    .C(net34),
    .Y(\dsa[0]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[0]._4_  (.A1(net25),
    .A2(net34),
    .B1(\dsa[0].last_carry ),
    .X(\dsa[0]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[0]._5_  (.A(\dsa[0]._0_ ),
    .B(\dsa[0]._1_ ),
    .Y(\dsa[0]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[0]._6_  (.A(net36),
    .B(\dsa[0]._2_ ),
    .Y(\dsa[0].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[0]._7_  (.A1(net37),
    .A2(\dsa[0]._1_ ),
    .B1_N(\dsa[0]._0_ ),
    .X(\dsa[0].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[0]._8_  (.CLK(clk),
    .D(\dsa[0].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[0].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[0]._9_  (.CLK(clk),
    .D(\dsa[0].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[0].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[10]._3_  (.A(\dsa[10].last_carry ),
    .B(net14),
    .C(net34),
    .Y(\dsa[10]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[10]._4_  (.A1(net14),
    .A2(net34),
    .B1(\dsa[10].last_carry ),
    .X(\dsa[10]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[10]._5_  (.A(\dsa[10]._0_ ),
    .B(\dsa[10]._1_ ),
    .Y(\dsa[10]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[10]._6_  (.A(\dsa[10].y_in ),
    .B(\dsa[10]._2_ ),
    .Y(\dsa[10].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[10]._7_  (.A1(\dsa[10].y_in ),
    .A2(\dsa[10]._1_ ),
    .B1_N(\dsa[10]._0_ ),
    .X(\dsa[10].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[10]._8_  (.CLK(clk),
    .D(\dsa[10].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[10].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[10]._9_  (.CLK(clk),
    .D(\dsa[10].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[10].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[11]._3_  (.A(\dsa[11].last_carry ),
    .B(net13),
    .C(net34),
    .Y(\dsa[11]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[11]._4_  (.A1(net13),
    .A2(net34),
    .B1(\dsa[11].last_carry ),
    .X(\dsa[11]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[11]._5_  (.A(\dsa[11]._0_ ),
    .B(\dsa[11]._1_ ),
    .Y(\dsa[11]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[11]._6_  (.A(\dsa[10].y_out ),
    .B(\dsa[11]._2_ ),
    .Y(\dsa[11].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[11]._7_  (.A1(\dsa[10].y_out ),
    .A2(\dsa[11]._1_ ),
    .B1_N(\dsa[11]._0_ ),
    .X(\dsa[11].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[11]._8_  (.CLK(clk),
    .D(\dsa[11].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[11].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[11]._9_  (.CLK(clk),
    .D(\dsa[11].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[11].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[12]._3_  (.A(\dsa[12].last_carry ),
    .B(net11),
    .C(net34),
    .Y(\dsa[12]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[12]._4_  (.A1(net11),
    .A2(net34),
    .B1(\dsa[12].last_carry ),
    .X(\dsa[12]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[12]._5_  (.A(\dsa[12]._0_ ),
    .B(\dsa[12]._1_ ),
    .Y(\dsa[12]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[12]._6_  (.A(\dsa[11].y_out ),
    .B(\dsa[12]._2_ ),
    .Y(\dsa[12].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[12]._7_  (.A1(\dsa[11].y_out ),
    .A2(\dsa[12]._1_ ),
    .B1_N(\dsa[12]._0_ ),
    .X(\dsa[12].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[12]._8_  (.CLK(clk),
    .D(\dsa[12].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[12].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[12]._9_  (.CLK(clk),
    .D(\dsa[12].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[12].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[13]._3_  (.A(\dsa[13].last_carry ),
    .B(net10),
    .C(net34),
    .Y(\dsa[13]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[13]._4_  (.A1(net10),
    .A2(net34),
    .B1(\dsa[13].last_carry ),
    .X(\dsa[13]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[13]._5_  (.A(\dsa[13]._0_ ),
    .B(\dsa[13]._1_ ),
    .Y(\dsa[13]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[13]._6_  (.A(\dsa[12].y_out ),
    .B(\dsa[13]._2_ ),
    .Y(\dsa[13].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[13]._7_  (.A1(\dsa[12].y_out ),
    .A2(\dsa[13]._1_ ),
    .B1_N(\dsa[13]._0_ ),
    .X(\dsa[13].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[13]._8_  (.CLK(clk),
    .D(\dsa[13].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[13].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[13]._9_  (.CLK(clk),
    .D(\dsa[13].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[13].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[14]._3_  (.A(\dsa[14].last_carry ),
    .B(net9),
    .C(net34),
    .Y(\dsa[14]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[14]._4_  (.A1(net9),
    .A2(net34),
    .B1(\dsa[14].last_carry ),
    .X(\dsa[14]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[14]._5_  (.A(\dsa[14]._0_ ),
    .B(\dsa[14]._1_ ),
    .Y(\dsa[14]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[14]._6_  (.A(\dsa[13].y_out ),
    .B(\dsa[14]._2_ ),
    .Y(\dsa[14].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[14]._7_  (.A1(\dsa[13].y_out ),
    .A2(\dsa[14]._1_ ),
    .B1_N(\dsa[14]._0_ ),
    .X(\dsa[14].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[14]._8_  (.CLK(clk),
    .D(\dsa[14].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[14].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[14]._9_  (.CLK(clk),
    .D(\dsa[14].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[14].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[15]._3_  (.A(\dsa[15].last_carry ),
    .B(net8),
    .C(net34),
    .Y(\dsa[15]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[15]._4_  (.A1(net8),
    .A2(net34),
    .B1(\dsa[15].last_carry ),
    .X(\dsa[15]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[15]._5_  (.A(\dsa[15]._0_ ),
    .B(\dsa[15]._1_ ),
    .Y(\dsa[15]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[15]._6_  (.A(\dsa[14].y_out ),
    .B(\dsa[15]._2_ ),
    .Y(\dsa[15].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[15]._7_  (.A1(\dsa[14].y_out ),
    .A2(\dsa[15]._1_ ),
    .B1_N(\dsa[15]._0_ ),
    .X(\dsa[15].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[15]._8_  (.CLK(clk),
    .D(\dsa[15].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[15].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[15]._9_  (.CLK(clk),
    .D(\dsa[15].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[15].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[16]._3_  (.A(\dsa[16].last_carry ),
    .B(net7),
    .C(net34),
    .Y(\dsa[16]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[16]._4_  (.A1(net7),
    .A2(net34),
    .B1(\dsa[16].last_carry ),
    .X(\dsa[16]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[16]._5_  (.A(\dsa[16]._0_ ),
    .B(\dsa[16]._1_ ),
    .Y(\dsa[16]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[16]._6_  (.A(\dsa[15].y_out ),
    .B(\dsa[16]._2_ ),
    .Y(\dsa[16].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[16]._7_  (.A1(\dsa[15].y_out ),
    .A2(\dsa[16]._1_ ),
    .B1_N(\dsa[16]._0_ ),
    .X(\dsa[16].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[16]._8_  (.CLK(clk),
    .D(\dsa[16].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[16].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[16]._9_  (.CLK(clk),
    .D(\dsa[16].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[16].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[17]._3_  (.A(\dsa[17].last_carry ),
    .B(net6),
    .C(net34),
    .Y(\dsa[17]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[17]._4_  (.A1(net6),
    .A2(net34),
    .B1(\dsa[17].last_carry ),
    .X(\dsa[17]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[17]._5_  (.A(\dsa[17]._0_ ),
    .B(\dsa[17]._1_ ),
    .Y(\dsa[17]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[17]._6_  (.A(\dsa[16].y_out ),
    .B(\dsa[17]._2_ ),
    .Y(\dsa[17].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[17]._7_  (.A1(\dsa[16].y_out ),
    .A2(\dsa[17]._1_ ),
    .B1_N(\dsa[17]._0_ ),
    .X(\dsa[17].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[17]._8_  (.CLK(clk),
    .D(\dsa[17].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[17].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[17]._9_  (.CLK(clk),
    .D(\dsa[17].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[17].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[18]._3_  (.A(\dsa[18].last_carry ),
    .B(net5),
    .C(net34),
    .Y(\dsa[18]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[18]._4_  (.A1(net5),
    .A2(net34),
    .B1(\dsa[18].last_carry ),
    .X(\dsa[18]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[18]._5_  (.A(\dsa[18]._0_ ),
    .B(\dsa[18]._1_ ),
    .Y(\dsa[18]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[18]._6_  (.A(\dsa[17].y_out ),
    .B(\dsa[18]._2_ ),
    .Y(\dsa[18].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[18]._7_  (.A1(\dsa[17].y_out ),
    .A2(\dsa[18]._1_ ),
    .B1_N(\dsa[18]._0_ ),
    .X(\dsa[18].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[18]._8_  (.CLK(clk),
    .D(\dsa[18].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[18].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[18]._9_  (.CLK(clk),
    .D(\dsa[18].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[18].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[19]._3_  (.A(\dsa[19].last_carry ),
    .B(net4),
    .C(net34),
    .Y(\dsa[19]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[19]._4_  (.A1(net4),
    .A2(net34),
    .B1(\dsa[19].last_carry ),
    .X(\dsa[19]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[19]._5_  (.A(\dsa[19]._0_ ),
    .B(\dsa[19]._1_ ),
    .Y(\dsa[19]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[19]._6_  (.A(\dsa[18].y_out ),
    .B(\dsa[19]._2_ ),
    .Y(\dsa[19].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[19]._7_  (.A1(\dsa[18].y_out ),
    .A2(\dsa[19]._1_ ),
    .B1_N(\dsa[19]._0_ ),
    .X(\dsa[19].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[19]._8_  (.CLK(clk),
    .D(\dsa[19].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[19].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[19]._9_  (.CLK(clk),
    .D(\dsa[19].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[19].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[1]._3_  (.A(\dsa[1].last_carry ),
    .B(net24),
    .C(net34),
    .Y(\dsa[1]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[1]._4_  (.A1(net24),
    .A2(net34),
    .B1(\dsa[1].last_carry ),
    .X(\dsa[1]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[1]._5_  (.A(\dsa[1]._0_ ),
    .B(\dsa[1]._1_ ),
    .Y(\dsa[1]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[1]._6_  (.A(\dsa[0].y_out ),
    .B(\dsa[1]._2_ ),
    .Y(\dsa[1].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[1]._7_  (.A1(\dsa[0].y_out ),
    .A2(\dsa[1]._1_ ),
    .B1_N(\dsa[1]._0_ ),
    .X(\dsa[1].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[1]._8_  (.CLK(clk),
    .D(\dsa[1].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[1].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[1]._9_  (.CLK(clk),
    .D(\dsa[1].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[1].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[20]._3_  (.A(\dsa[20].last_carry ),
    .B(net3),
    .C(net34),
    .Y(\dsa[20]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[20]._4_  (.A1(net3),
    .A2(net34),
    .B1(\dsa[20].last_carry ),
    .X(\dsa[20]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[20]._5_  (.A(\dsa[20]._0_ ),
    .B(\dsa[20]._1_ ),
    .Y(\dsa[20]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[20]._6_  (.A(\dsa[19].y_out ),
    .B(\dsa[20]._2_ ),
    .Y(\dsa[20].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[20]._7_  (.A1(\dsa[19].y_out ),
    .A2(\dsa[20]._1_ ),
    .B1_N(\dsa[20]._0_ ),
    .X(\dsa[20].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[20]._8_  (.CLK(clk),
    .D(\dsa[20].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[20].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[20]._9_  (.CLK(clk),
    .D(\dsa[20].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[20].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[21]._3_  (.A(\dsa[21].last_carry ),
    .B(net2),
    .C(net34),
    .Y(\dsa[21]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[21]._4_  (.A1(net2),
    .A2(net34),
    .B1(\dsa[21].last_carry ),
    .X(\dsa[21]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[21]._5_  (.A(\dsa[21]._0_ ),
    .B(\dsa[21]._1_ ),
    .Y(\dsa[21]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[21]._6_  (.A(\dsa[20].y_out ),
    .B(\dsa[21]._2_ ),
    .Y(\dsa[21].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[21]._7_  (.A1(\dsa[20].y_out ),
    .A2(\dsa[21]._1_ ),
    .B1_N(\dsa[21]._0_ ),
    .X(\dsa[21].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[21]._8_  (.CLK(clk),
    .D(\dsa[21].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[21].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[21]._9_  (.CLK(clk),
    .D(\dsa[21].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[21].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[22]._3_  (.A(\dsa[22].last_carry ),
    .B(net32),
    .C(net34),
    .Y(\dsa[22]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[22]._4_  (.A1(net32),
    .A2(net34),
    .B1(\dsa[22].last_carry ),
    .X(\dsa[22]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[22]._5_  (.A(\dsa[22]._0_ ),
    .B(\dsa[22]._1_ ),
    .Y(\dsa[22]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[22]._6_  (.A(\dsa[21].y_out ),
    .B(\dsa[22]._2_ ),
    .Y(\dsa[22].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[22]._7_  (.A1(\dsa[21].y_out ),
    .A2(\dsa[22]._1_ ),
    .B1_N(\dsa[22]._0_ ),
    .X(\dsa[22].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[22]._8_  (.CLK(clk),
    .D(\dsa[22].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[22].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[22]._9_  (.CLK(clk),
    .D(\dsa[22].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[22].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[23]._3_  (.A(\dsa[23].last_carry ),
    .B(net31),
    .C(net34),
    .Y(\dsa[23]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[23]._4_  (.A1(net31),
    .A2(net34),
    .B1(\dsa[23].last_carry ),
    .X(\dsa[23]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[23]._5_  (.A(\dsa[23]._0_ ),
    .B(\dsa[23]._1_ ),
    .Y(\dsa[23]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[23]._6_  (.A(\dsa[22].y_out ),
    .B(\dsa[23]._2_ ),
    .Y(\dsa[23].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[23]._7_  (.A1(\dsa[22].y_out ),
    .A2(\dsa[23]._1_ ),
    .B1_N(\dsa[23]._0_ ),
    .X(\dsa[23].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[23]._8_  (.CLK(clk),
    .D(\dsa[23].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[23].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[23]._9_  (.CLK(clk),
    .D(\dsa[23].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[23].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[24]._3_  (.A(\dsa[24].last_carry ),
    .B(net30),
    .C(net34),
    .Y(\dsa[24]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[24]._4_  (.A1(net30),
    .A2(net34),
    .B1(\dsa[24].last_carry ),
    .X(\dsa[24]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[24]._5_  (.A(\dsa[24]._0_ ),
    .B(\dsa[24]._1_ ),
    .Y(\dsa[24]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[24]._6_  (.A(\dsa[23].y_out ),
    .B(\dsa[24]._2_ ),
    .Y(\dsa[24].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[24]._7_  (.A1(\dsa[23].y_out ),
    .A2(\dsa[24]._1_ ),
    .B1_N(\dsa[24]._0_ ),
    .X(\dsa[24].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[24]._8_  (.CLK(clk),
    .D(\dsa[24].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[24].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[24]._9_  (.CLK(clk),
    .D(\dsa[24].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[24].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[25]._3_  (.A(\dsa[25].last_carry ),
    .B(net29),
    .C(net34),
    .Y(\dsa[25]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[25]._4_  (.A1(net29),
    .A2(net34),
    .B1(\dsa[25].last_carry ),
    .X(\dsa[25]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[25]._5_  (.A(\dsa[25]._0_ ),
    .B(\dsa[25]._1_ ),
    .Y(\dsa[25]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[25]._6_  (.A(\dsa[24].y_out ),
    .B(\dsa[25]._2_ ),
    .Y(\dsa[25].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[25]._7_  (.A1(\dsa[24].y_out ),
    .A2(\dsa[25]._1_ ),
    .B1_N(\dsa[25]._0_ ),
    .X(\dsa[25].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[25]._8_  (.CLK(clk),
    .D(\dsa[25].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[25].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[25]._9_  (.CLK(clk),
    .D(\dsa[25].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[25].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[26]._3_  (.A(\dsa[26].last_carry ),
    .B(net28),
    .C(net34),
    .Y(\dsa[26]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[26]._4_  (.A1(net28),
    .A2(net34),
    .B1(\dsa[26].last_carry ),
    .X(\dsa[26]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[26]._5_  (.A(\dsa[26]._0_ ),
    .B(\dsa[26]._1_ ),
    .Y(\dsa[26]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[26]._6_  (.A(\dsa[25].y_out ),
    .B(\dsa[26]._2_ ),
    .Y(\dsa[26].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[26]._7_  (.A1(\dsa[25].y_out ),
    .A2(\dsa[26]._1_ ),
    .B1_N(\dsa[26]._0_ ),
    .X(\dsa[26].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[26]._8_  (.CLK(clk),
    .D(\dsa[26].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[26].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[26]._9_  (.CLK(clk),
    .D(\dsa[26].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[26].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[27]._3_  (.A(\dsa[27].last_carry ),
    .B(net27),
    .C(net34),
    .Y(\dsa[27]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[27]._4_  (.A1(net27),
    .A2(net34),
    .B1(\dsa[27].last_carry ),
    .X(\dsa[27]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[27]._5_  (.A(\dsa[27]._0_ ),
    .B(\dsa[27]._1_ ),
    .Y(\dsa[27]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[27]._6_  (.A(\dsa[26].y_out ),
    .B(\dsa[27]._2_ ),
    .Y(\dsa[27].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[27]._7_  (.A1(\dsa[26].y_out ),
    .A2(\dsa[27]._1_ ),
    .B1_N(\dsa[27]._0_ ),
    .X(\dsa[27].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[27]._8_  (.CLK(clk),
    .D(\dsa[27].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[27].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[27]._9_  (.CLK(clk),
    .D(\dsa[27].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[27].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[28]._3_  (.A(\dsa[28].last_carry ),
    .B(net26),
    .C(net34),
    .Y(\dsa[28]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[28]._4_  (.A1(net26),
    .A2(net34),
    .B1(\dsa[28].last_carry ),
    .X(\dsa[28]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[28]._5_  (.A(\dsa[28]._0_ ),
    .B(\dsa[28]._1_ ),
    .Y(\dsa[28]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[28]._6_  (.A(\dsa[27].y_out ),
    .B(\dsa[28]._2_ ),
    .Y(\dsa[28].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[28]._7_  (.A1(\dsa[27].y_out ),
    .A2(\dsa[28]._1_ ),
    .B1_N(\dsa[28]._0_ ),
    .X(\dsa[28].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[28]._8_  (.CLK(clk),
    .D(\dsa[28].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[28].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[28]._9_  (.CLK(clk),
    .D(\dsa[28].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[28].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[29]._3_  (.A(\dsa[29].last_carry ),
    .B(net23),
    .C(net34),
    .Y(\dsa[29]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[29]._4_  (.A1(net23),
    .A2(net34),
    .B1(\dsa[29].last_carry ),
    .X(\dsa[29]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[29]._5_  (.A(\dsa[29]._0_ ),
    .B(\dsa[29]._1_ ),
    .Y(\dsa[29]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[29]._6_  (.A(\dsa[28].y_out ),
    .B(\dsa[29]._2_ ),
    .Y(\dsa[29].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[29]._7_  (.A1(\dsa[28].y_out ),
    .A2(\dsa[29]._1_ ),
    .B1_N(\dsa[29]._0_ ),
    .X(\dsa[29].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[29]._8_  (.CLK(clk),
    .D(\dsa[29].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[29].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[29]._9_  (.CLK(clk),
    .D(\dsa[29].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[29].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[2]._3_  (.A(\dsa[2].last_carry ),
    .B(net22),
    .C(net34),
    .Y(\dsa[2]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[2]._4_  (.A1(net22),
    .A2(net34),
    .B1(\dsa[2].last_carry ),
    .X(\dsa[2]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[2]._5_  (.A(\dsa[2]._0_ ),
    .B(\dsa[2]._1_ ),
    .Y(\dsa[2]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[2]._6_  (.A(\dsa[1].y_out ),
    .B(\dsa[2]._2_ ),
    .Y(\dsa[2].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[2]._7_  (.A1(\dsa[1].y_out ),
    .A2(\dsa[2]._1_ ),
    .B1_N(\dsa[2]._0_ ),
    .X(\dsa[2].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[2]._8_  (.CLK(clk),
    .D(\dsa[2].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[2].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[2]._9_  (.CLK(clk),
    .D(\dsa[2].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[2].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[30]._3_  (.A(\dsa[30].last_carry ),
    .B(net12),
    .C(net34),
    .Y(\dsa[30]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[30]._4_  (.A1(net12),
    .A2(net34),
    .B1(\dsa[30].last_carry ),
    .X(\dsa[30]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[30]._5_  (.A(\dsa[30]._0_ ),
    .B(\dsa[30]._1_ ),
    .Y(\dsa[30]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[30]._6_  (.A(\dsa[29].y_out ),
    .B(\dsa[30]._2_ ),
    .Y(\dsa[30].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[30]._7_  (.A1(\dsa[29].y_out ),
    .A2(\dsa[30]._1_ ),
    .B1_N(\dsa[30]._0_ ),
    .X(\dsa[30].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[30]._8_  (.CLK(clk),
    .D(\dsa[30].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[30].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[30]._9_  (.CLK(clk),
    .D(\dsa[30].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[30].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[31]._3_  (.A(\dsa[31].last_carry ),
    .B(net1),
    .C(net34),
    .Y(\dsa[31]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[31]._4_  (.A1(net1),
    .A2(net34),
    .B1(\dsa[31].last_carry ),
    .X(\dsa[31]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[31]._5_  (.A(\dsa[31]._0_ ),
    .B(\dsa[31]._1_ ),
    .Y(\dsa[31]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[31]._6_  (.A(\dsa[30].y_out ),
    .B(\dsa[31]._2_ ),
    .Y(\dsa[31].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[31]._7_  (.A1(\dsa[30].y_out ),
    .A2(\dsa[31]._1_ ),
    .B1_N(\dsa[31]._0_ ),
    .X(\dsa[31].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[31]._8_  (.CLK(clk),
    .D(\dsa[31].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[31].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[31]._9_  (.CLK(clk),
    .D(\dsa[31].y_out_next ),
    .RESET_B(net33),
    .Q(net35));
 sky130_fd_sc_hd__nand3_1 \dsa[3]._3_  (.A(\dsa[3].last_carry ),
    .B(net21),
    .C(net34),
    .Y(\dsa[3]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[3]._4_  (.A1(net21),
    .A2(net34),
    .B1(\dsa[3].last_carry ),
    .X(\dsa[3]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[3]._5_  (.A(\dsa[3]._0_ ),
    .B(\dsa[3]._1_ ),
    .Y(\dsa[3]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[3]._6_  (.A(\dsa[2].y_out ),
    .B(\dsa[3]._2_ ),
    .Y(\dsa[3].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[3]._7_  (.A1(\dsa[2].y_out ),
    .A2(\dsa[3]._1_ ),
    .B1_N(\dsa[3]._0_ ),
    .X(\dsa[3].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[3]._8_  (.CLK(clk),
    .D(\dsa[3].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[3].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[3]._9_  (.CLK(clk),
    .D(\dsa[3].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[3].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[4]._3_  (.A(\dsa[4].last_carry ),
    .B(net20),
    .C(net34),
    .Y(\dsa[4]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[4]._4_  (.A1(net20),
    .A2(net34),
    .B1(\dsa[4].last_carry ),
    .X(\dsa[4]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[4]._5_  (.A(\dsa[4]._0_ ),
    .B(\dsa[4]._1_ ),
    .Y(\dsa[4]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[4]._6_  (.A(\dsa[3].y_out ),
    .B(\dsa[4]._2_ ),
    .Y(\dsa[4].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[4]._7_  (.A1(\dsa[3].y_out ),
    .A2(\dsa[4]._1_ ),
    .B1_N(\dsa[4]._0_ ),
    .X(\dsa[4].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[4]._8_  (.CLK(clk),
    .D(\dsa[4].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[4].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[4]._9_  (.CLK(clk),
    .D(\dsa[4].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[4].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[5]._3_  (.A(\dsa[5].last_carry ),
    .B(net19),
    .C(net34),
    .Y(\dsa[5]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[5]._4_  (.A1(net19),
    .A2(net34),
    .B1(\dsa[5].last_carry ),
    .X(\dsa[5]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[5]._5_  (.A(\dsa[5]._0_ ),
    .B(\dsa[5]._1_ ),
    .Y(\dsa[5]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[5]._6_  (.A(\dsa[4].y_out ),
    .B(\dsa[5]._2_ ),
    .Y(\dsa[5].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[5]._7_  (.A1(\dsa[4].y_out ),
    .A2(\dsa[5]._1_ ),
    .B1_N(\dsa[5]._0_ ),
    .X(\dsa[5].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[5]._8_  (.CLK(clk),
    .D(\dsa[5].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[5].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[5]._9_  (.CLK(clk),
    .D(\dsa[5].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[5].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[6]._3_  (.A(\dsa[6].last_carry ),
    .B(net18),
    .C(net34),
    .Y(\dsa[6]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[6]._4_  (.A1(net18),
    .A2(net34),
    .B1(\dsa[6].last_carry ),
    .X(\dsa[6]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[6]._5_  (.A(\dsa[6]._0_ ),
    .B(\dsa[6]._1_ ),
    .Y(\dsa[6]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[6]._6_  (.A(\dsa[5].y_out ),
    .B(\dsa[6]._2_ ),
    .Y(\dsa[6].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[6]._7_  (.A1(\dsa[5].y_out ),
    .A2(\dsa[6]._1_ ),
    .B1_N(\dsa[6]._0_ ),
    .X(\dsa[6].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[6]._8_  (.CLK(clk),
    .D(\dsa[6].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[6].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[6]._9_  (.CLK(clk),
    .D(\dsa[6].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[6].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[7]._3_  (.A(\dsa[7].last_carry ),
    .B(net17),
    .C(net34),
    .Y(\dsa[7]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[7]._4_  (.A1(net17),
    .A2(net34),
    .B1(\dsa[7].last_carry ),
    .X(\dsa[7]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[7]._5_  (.A(\dsa[7]._0_ ),
    .B(\dsa[7]._1_ ),
    .Y(\dsa[7]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[7]._6_  (.A(\dsa[6].y_out ),
    .B(\dsa[7]._2_ ),
    .Y(\dsa[7].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[7]._7_  (.A1(\dsa[6].y_out ),
    .A2(\dsa[7]._1_ ),
    .B1_N(\dsa[7]._0_ ),
    .X(\dsa[7].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[7]._8_  (.CLK(clk),
    .D(\dsa[7].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[7].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[7]._9_  (.CLK(clk),
    .D(\dsa[7].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[7].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[8]._3_  (.A(\dsa[8].last_carry ),
    .B(net16),
    .C(net34),
    .Y(\dsa[8]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[8]._4_  (.A1(net16),
    .A2(net34),
    .B1(\dsa[8].last_carry ),
    .X(\dsa[8]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[8]._5_  (.A(\dsa[8]._0_ ),
    .B(\dsa[8]._1_ ),
    .Y(\dsa[8]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[8]._6_  (.A(\dsa[7].y_out ),
    .B(\dsa[8]._2_ ),
    .Y(\dsa[8].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[8]._7_  (.A1(\dsa[7].y_out ),
    .A2(\dsa[8]._1_ ),
    .B1_N(\dsa[8]._0_ ),
    .X(\dsa[8].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[8]._8_  (.CLK(clk),
    .D(\dsa[8].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[8].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[8]._9_  (.CLK(clk),
    .D(\dsa[8].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[8].y_out ));
 sky130_fd_sc_hd__nand3_1 \dsa[9]._3_  (.A(\dsa[9].last_carry ),
    .B(net15),
    .C(net34),
    .Y(\dsa[9]._0_ ));
 sky130_fd_sc_hd__a21o_1 \dsa[9]._4_  (.A1(net15),
    .A2(net34),
    .B1(\dsa[9].last_carry ),
    .X(\dsa[9]._1_ ));
 sky130_fd_sc_hd__nand2_1 \dsa[9]._5_  (.A(\dsa[9]._0_ ),
    .B(\dsa[9]._1_ ),
    .Y(\dsa[9]._2_ ));
 sky130_fd_sc_hd__xnor2_1 \dsa[9]._6_  (.A(\dsa[8].y_out ),
    .B(\dsa[9]._2_ ),
    .Y(\dsa[9].y_out_next ));
 sky130_fd_sc_hd__a21bo_1 \dsa[9]._7_  (.A1(\dsa[8].y_out ),
    .A2(\dsa[9]._1_ ),
    .B1_N(\dsa[9]._0_ ),
    .X(\dsa[9].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[9]._8_  (.CLK(clk),
    .D(\dsa[9].last_carry_next ),
    .RESET_B(net33),
    .Q(\dsa[9].last_carry ));
 sky130_fd_sc_hd__dfrtp_1 \dsa[9]._9_  (.CLK(clk),
    .D(\dsa[9].y_out_next ),
    .RESET_B(net33),
    .Q(\dsa[10].y_in ));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_55 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_56 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_58 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_59 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_60 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_160 ();
 sky130_fd_sc_hd__buf_1 input1 (.A(a[0]),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(a[10]),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(a[11]),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(a[12]),
    .X(net4));
 sky130_fd_sc_hd__buf_1 input5 (.A(a[13]),
    .X(net5));
 sky130_fd_sc_hd__buf_1 input6 (.A(a[14]),
    .X(net6));
 sky130_fd_sc_hd__buf_1 input7 (.A(a[15]),
    .X(net7));
 sky130_fd_sc_hd__buf_1 input8 (.A(a[16]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(a[17]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(a[18]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(a[19]),
    .X(net11));
 sky130_fd_sc_hd__buf_1 input12 (.A(a[1]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_1 input13 (.A(a[20]),
    .X(net13));
 sky130_fd_sc_hd__buf_1 input14 (.A(a[21]),
    .X(net14));
 sky130_fd_sc_hd__buf_1 input15 (.A(a[22]),
    .X(net15));
 sky130_fd_sc_hd__buf_1 input16 (.A(a[23]),
    .X(net16));
 sky130_fd_sc_hd__buf_1 input17 (.A(a[24]),
    .X(net17));
 sky130_fd_sc_hd__buf_1 input18 (.A(a[25]),
    .X(net18));
 sky130_fd_sc_hd__buf_1 input19 (.A(a[26]),
    .X(net19));
 sky130_fd_sc_hd__buf_1 input20 (.A(a[27]),
    .X(net20));
 sky130_fd_sc_hd__buf_1 input21 (.A(a[28]),
    .X(net21));
 sky130_fd_sc_hd__buf_1 input22 (.A(a[29]),
    .X(net22));
 sky130_fd_sc_hd__buf_1 input23 (.A(a[2]),
    .X(net23));
 sky130_fd_sc_hd__clkbuf_1 input24 (.A(a[30]),
    .X(net24));
 sky130_fd_sc_hd__clkbuf_1 input25 (.A(a[31]),
    .X(net25));
 sky130_fd_sc_hd__buf_1 input26 (.A(a[3]),
    .X(net26));
 sky130_fd_sc_hd__buf_1 input27 (.A(a[4]),
    .X(net27));
 sky130_fd_sc_hd__clkbuf_1 input28 (.A(a[5]),
    .X(net28));
 sky130_fd_sc_hd__clkbuf_1 input29 (.A(a[6]),
    .X(net29));
 sky130_fd_sc_hd__clkbuf_1 input30 (.A(a[7]),
    .X(net30));
 sky130_fd_sc_hd__clkbuf_1 input31 (.A(a[8]),
    .X(net31));
 sky130_fd_sc_hd__buf_1 input32 (.A(a[9]),
    .X(net32));
 sky130_fd_sc_hd__buf_12 input33 (.A(rst),
    .X(net33));
 sky130_fd_sc_hd__buf_12 input34 (.A(x),
    .X(net34));
 sky130_fd_sc_hd__buf_1 output35 (.A(net35),
    .X(y));
 sky130_fd_sc_hd__conb_1 \dsa[0]._6__36  (.LO(net36));
 sky130_fd_sc_hd__conb_1 \dsa[0]._7__37  (.LO(net37));
endmodule
