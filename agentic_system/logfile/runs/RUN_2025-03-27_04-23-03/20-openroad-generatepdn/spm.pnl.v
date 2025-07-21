module spm (clk,
    rst,
    x,
    y,
    a,
    vccd1,
    vssd1);
 input clk;
 input rst;
 input x;
 output y;
 input [31:0] a;
 inout vccd1;
 inout vssd1;

 wire _0_;
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

 sky130_fd_sc_hd__conb_1 _1_ (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .LO(_0_));
 sky130_fd_sc_hd__nand3_2 \dsa[0]._3_  (.A(\dsa[0].last_carry ),
    .B(a[31]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[0]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[0]._4_  (.A1(a[31]),
    .A2(x),
    .B1(\dsa[0].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[0]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[0]._5_  (.A(\dsa[0]._0_ ),
    .B(\dsa[0]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[0]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[0]._6_  (.A(_0_),
    .B(\dsa[0]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[0].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[0]._7_  (.A1(_0_),
    .A2(\dsa[0]._1_ ),
    .B1_N(\dsa[0]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[0].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[0]._8_  (.CLK(clk),
    .D(\dsa[0].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[0].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[0]._9_  (.CLK(clk),
    .D(\dsa[0].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[0].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[10]._3_  (.A(\dsa[10].last_carry ),
    .B(a[21]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[10]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[10]._4_  (.A1(a[21]),
    .A2(x),
    .B1(\dsa[10].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[10]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[10]._5_  (.A(\dsa[10]._0_ ),
    .B(\dsa[10]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[10]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[10]._6_  (.A(\dsa[10].y_in ),
    .B(\dsa[10]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[10].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[10]._7_  (.A1(\dsa[10].y_in ),
    .A2(\dsa[10]._1_ ),
    .B1_N(\dsa[10]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[10].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[10]._8_  (.CLK(clk),
    .D(\dsa[10].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[10].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[10]._9_  (.CLK(clk),
    .D(\dsa[10].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[10].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[11]._3_  (.A(\dsa[11].last_carry ),
    .B(a[20]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[11]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[11]._4_  (.A1(a[20]),
    .A2(x),
    .B1(\dsa[11].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[11]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[11]._5_  (.A(\dsa[11]._0_ ),
    .B(\dsa[11]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[11]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[11]._6_  (.A(\dsa[10].y_out ),
    .B(\dsa[11]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[11].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[11]._7_  (.A1(\dsa[10].y_out ),
    .A2(\dsa[11]._1_ ),
    .B1_N(\dsa[11]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[11].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[11]._8_  (.CLK(clk),
    .D(\dsa[11].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[11].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[11]._9_  (.CLK(clk),
    .D(\dsa[11].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[11].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[12]._3_  (.A(\dsa[12].last_carry ),
    .B(a[19]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[12]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[12]._4_  (.A1(a[19]),
    .A2(x),
    .B1(\dsa[12].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[12]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[12]._5_  (.A(\dsa[12]._0_ ),
    .B(\dsa[12]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[12]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[12]._6_  (.A(\dsa[11].y_out ),
    .B(\dsa[12]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[12].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[12]._7_  (.A1(\dsa[11].y_out ),
    .A2(\dsa[12]._1_ ),
    .B1_N(\dsa[12]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[12].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[12]._8_  (.CLK(clk),
    .D(\dsa[12].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[12].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[12]._9_  (.CLK(clk),
    .D(\dsa[12].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[12].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[13]._3_  (.A(\dsa[13].last_carry ),
    .B(a[18]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[13]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[13]._4_  (.A1(a[18]),
    .A2(x),
    .B1(\dsa[13].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[13]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[13]._5_  (.A(\dsa[13]._0_ ),
    .B(\dsa[13]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[13]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[13]._6_  (.A(\dsa[12].y_out ),
    .B(\dsa[13]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[13].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[13]._7_  (.A1(\dsa[12].y_out ),
    .A2(\dsa[13]._1_ ),
    .B1_N(\dsa[13]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[13].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[13]._8_  (.CLK(clk),
    .D(\dsa[13].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[13].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[13]._9_  (.CLK(clk),
    .D(\dsa[13].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[13].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[14]._3_  (.A(\dsa[14].last_carry ),
    .B(a[17]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[14]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[14]._4_  (.A1(a[17]),
    .A2(x),
    .B1(\dsa[14].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[14]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[14]._5_  (.A(\dsa[14]._0_ ),
    .B(\dsa[14]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[14]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[14]._6_  (.A(\dsa[13].y_out ),
    .B(\dsa[14]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[14].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[14]._7_  (.A1(\dsa[13].y_out ),
    .A2(\dsa[14]._1_ ),
    .B1_N(\dsa[14]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[14].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[14]._8_  (.CLK(clk),
    .D(\dsa[14].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[14].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[14]._9_  (.CLK(clk),
    .D(\dsa[14].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[14].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[15]._3_  (.A(\dsa[15].last_carry ),
    .B(a[16]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[15]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[15]._4_  (.A1(a[16]),
    .A2(x),
    .B1(\dsa[15].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[15]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[15]._5_  (.A(\dsa[15]._0_ ),
    .B(\dsa[15]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[15]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[15]._6_  (.A(\dsa[14].y_out ),
    .B(\dsa[15]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[15].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[15]._7_  (.A1(\dsa[14].y_out ),
    .A2(\dsa[15]._1_ ),
    .B1_N(\dsa[15]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[15].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[15]._8_  (.CLK(clk),
    .D(\dsa[15].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[15].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[15]._9_  (.CLK(clk),
    .D(\dsa[15].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[15].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[16]._3_  (.A(\dsa[16].last_carry ),
    .B(a[15]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[16]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[16]._4_  (.A1(a[15]),
    .A2(x),
    .B1(\dsa[16].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[16]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[16]._5_  (.A(\dsa[16]._0_ ),
    .B(\dsa[16]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[16]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[16]._6_  (.A(\dsa[15].y_out ),
    .B(\dsa[16]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[16].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[16]._7_  (.A1(\dsa[15].y_out ),
    .A2(\dsa[16]._1_ ),
    .B1_N(\dsa[16]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[16].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[16]._8_  (.CLK(clk),
    .D(\dsa[16].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[16].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[16]._9_  (.CLK(clk),
    .D(\dsa[16].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[16].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[17]._3_  (.A(\dsa[17].last_carry ),
    .B(a[14]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[17]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[17]._4_  (.A1(a[14]),
    .A2(x),
    .B1(\dsa[17].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[17]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[17]._5_  (.A(\dsa[17]._0_ ),
    .B(\dsa[17]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[17]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[17]._6_  (.A(\dsa[16].y_out ),
    .B(\dsa[17]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[17].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[17]._7_  (.A1(\dsa[16].y_out ),
    .A2(\dsa[17]._1_ ),
    .B1_N(\dsa[17]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[17].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[17]._8_  (.CLK(clk),
    .D(\dsa[17].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[17].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[17]._9_  (.CLK(clk),
    .D(\dsa[17].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[17].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[18]._3_  (.A(\dsa[18].last_carry ),
    .B(a[13]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[18]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[18]._4_  (.A1(a[13]),
    .A2(x),
    .B1(\dsa[18].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[18]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[18]._5_  (.A(\dsa[18]._0_ ),
    .B(\dsa[18]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[18]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[18]._6_  (.A(\dsa[17].y_out ),
    .B(\dsa[18]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[18].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[18]._7_  (.A1(\dsa[17].y_out ),
    .A2(\dsa[18]._1_ ),
    .B1_N(\dsa[18]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[18].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[18]._8_  (.CLK(clk),
    .D(\dsa[18].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[18].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[18]._9_  (.CLK(clk),
    .D(\dsa[18].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[18].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[19]._3_  (.A(\dsa[19].last_carry ),
    .B(a[12]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[19]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[19]._4_  (.A1(a[12]),
    .A2(x),
    .B1(\dsa[19].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[19]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[19]._5_  (.A(\dsa[19]._0_ ),
    .B(\dsa[19]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[19]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[19]._6_  (.A(\dsa[18].y_out ),
    .B(\dsa[19]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[19].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[19]._7_  (.A1(\dsa[18].y_out ),
    .A2(\dsa[19]._1_ ),
    .B1_N(\dsa[19]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[19].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[19]._8_  (.CLK(clk),
    .D(\dsa[19].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[19].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[19]._9_  (.CLK(clk),
    .D(\dsa[19].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[19].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[1]._3_  (.A(\dsa[1].last_carry ),
    .B(a[30]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[1]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[1]._4_  (.A1(a[30]),
    .A2(x),
    .B1(\dsa[1].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[1]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[1]._5_  (.A(\dsa[1]._0_ ),
    .B(\dsa[1]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[1]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[1]._6_  (.A(\dsa[0].y_out ),
    .B(\dsa[1]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[1].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[1]._7_  (.A1(\dsa[0].y_out ),
    .A2(\dsa[1]._1_ ),
    .B1_N(\dsa[1]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[1].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[1]._8_  (.CLK(clk),
    .D(\dsa[1].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[1].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[1]._9_  (.CLK(clk),
    .D(\dsa[1].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[1].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[20]._3_  (.A(\dsa[20].last_carry ),
    .B(a[11]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[20]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[20]._4_  (.A1(a[11]),
    .A2(x),
    .B1(\dsa[20].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[20]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[20]._5_  (.A(\dsa[20]._0_ ),
    .B(\dsa[20]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[20]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[20]._6_  (.A(\dsa[19].y_out ),
    .B(\dsa[20]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[20].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[20]._7_  (.A1(\dsa[19].y_out ),
    .A2(\dsa[20]._1_ ),
    .B1_N(\dsa[20]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[20].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[20]._8_  (.CLK(clk),
    .D(\dsa[20].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[20].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[20]._9_  (.CLK(clk),
    .D(\dsa[20].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[20].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[21]._3_  (.A(\dsa[21].last_carry ),
    .B(a[10]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[21]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[21]._4_  (.A1(a[10]),
    .A2(x),
    .B1(\dsa[21].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[21]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[21]._5_  (.A(\dsa[21]._0_ ),
    .B(\dsa[21]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[21]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[21]._6_  (.A(\dsa[20].y_out ),
    .B(\dsa[21]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[21].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[21]._7_  (.A1(\dsa[20].y_out ),
    .A2(\dsa[21]._1_ ),
    .B1_N(\dsa[21]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[21].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[21]._8_  (.CLK(clk),
    .D(\dsa[21].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[21].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[21]._9_  (.CLK(clk),
    .D(\dsa[21].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[21].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[22]._3_  (.A(\dsa[22].last_carry ),
    .B(a[9]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[22]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[22]._4_  (.A1(a[9]),
    .A2(x),
    .B1(\dsa[22].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[22]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[22]._5_  (.A(\dsa[22]._0_ ),
    .B(\dsa[22]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[22]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[22]._6_  (.A(\dsa[21].y_out ),
    .B(\dsa[22]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[22].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[22]._7_  (.A1(\dsa[21].y_out ),
    .A2(\dsa[22]._1_ ),
    .B1_N(\dsa[22]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[22].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[22]._8_  (.CLK(clk),
    .D(\dsa[22].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[22].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[22]._9_  (.CLK(clk),
    .D(\dsa[22].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[22].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[23]._3_  (.A(\dsa[23].last_carry ),
    .B(a[8]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[23]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[23]._4_  (.A1(a[8]),
    .A2(x),
    .B1(\dsa[23].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[23]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[23]._5_  (.A(\dsa[23]._0_ ),
    .B(\dsa[23]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[23]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[23]._6_  (.A(\dsa[22].y_out ),
    .B(\dsa[23]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[23].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[23]._7_  (.A1(\dsa[22].y_out ),
    .A2(\dsa[23]._1_ ),
    .B1_N(\dsa[23]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[23].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[23]._8_  (.CLK(clk),
    .D(\dsa[23].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[23].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[23]._9_  (.CLK(clk),
    .D(\dsa[23].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[23].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[24]._3_  (.A(\dsa[24].last_carry ),
    .B(a[7]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[24]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[24]._4_  (.A1(a[7]),
    .A2(x),
    .B1(\dsa[24].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[24]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[24]._5_  (.A(\dsa[24]._0_ ),
    .B(\dsa[24]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[24]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[24]._6_  (.A(\dsa[23].y_out ),
    .B(\dsa[24]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[24].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[24]._7_  (.A1(\dsa[23].y_out ),
    .A2(\dsa[24]._1_ ),
    .B1_N(\dsa[24]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[24].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[24]._8_  (.CLK(clk),
    .D(\dsa[24].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[24].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[24]._9_  (.CLK(clk),
    .D(\dsa[24].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[24].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[25]._3_  (.A(\dsa[25].last_carry ),
    .B(a[6]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[25]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[25]._4_  (.A1(a[6]),
    .A2(x),
    .B1(\dsa[25].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[25]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[25]._5_  (.A(\dsa[25]._0_ ),
    .B(\dsa[25]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[25]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[25]._6_  (.A(\dsa[24].y_out ),
    .B(\dsa[25]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[25].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[25]._7_  (.A1(\dsa[24].y_out ),
    .A2(\dsa[25]._1_ ),
    .B1_N(\dsa[25]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[25].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[25]._8_  (.CLK(clk),
    .D(\dsa[25].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[25].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[25]._9_  (.CLK(clk),
    .D(\dsa[25].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[25].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[26]._3_  (.A(\dsa[26].last_carry ),
    .B(a[5]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[26]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[26]._4_  (.A1(a[5]),
    .A2(x),
    .B1(\dsa[26].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[26]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[26]._5_  (.A(\dsa[26]._0_ ),
    .B(\dsa[26]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[26]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[26]._6_  (.A(\dsa[25].y_out ),
    .B(\dsa[26]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[26].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[26]._7_  (.A1(\dsa[25].y_out ),
    .A2(\dsa[26]._1_ ),
    .B1_N(\dsa[26]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[26].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[26]._8_  (.CLK(clk),
    .D(\dsa[26].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[26].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[26]._9_  (.CLK(clk),
    .D(\dsa[26].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[26].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[27]._3_  (.A(\dsa[27].last_carry ),
    .B(a[4]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[27]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[27]._4_  (.A1(a[4]),
    .A2(x),
    .B1(\dsa[27].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[27]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[27]._5_  (.A(\dsa[27]._0_ ),
    .B(\dsa[27]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[27]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[27]._6_  (.A(\dsa[26].y_out ),
    .B(\dsa[27]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[27].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[27]._7_  (.A1(\dsa[26].y_out ),
    .A2(\dsa[27]._1_ ),
    .B1_N(\dsa[27]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[27].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[27]._8_  (.CLK(clk),
    .D(\dsa[27].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[27].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[27]._9_  (.CLK(clk),
    .D(\dsa[27].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[27].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[28]._3_  (.A(\dsa[28].last_carry ),
    .B(a[3]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[28]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[28]._4_  (.A1(a[3]),
    .A2(x),
    .B1(\dsa[28].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[28]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[28]._5_  (.A(\dsa[28]._0_ ),
    .B(\dsa[28]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[28]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[28]._6_  (.A(\dsa[27].y_out ),
    .B(\dsa[28]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[28].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[28]._7_  (.A1(\dsa[27].y_out ),
    .A2(\dsa[28]._1_ ),
    .B1_N(\dsa[28]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[28].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[28]._8_  (.CLK(clk),
    .D(\dsa[28].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[28].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[28]._9_  (.CLK(clk),
    .D(\dsa[28].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[28].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[29]._3_  (.A(\dsa[29].last_carry ),
    .B(a[2]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[29]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[29]._4_  (.A1(a[2]),
    .A2(x),
    .B1(\dsa[29].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[29]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[29]._5_  (.A(\dsa[29]._0_ ),
    .B(\dsa[29]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[29]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[29]._6_  (.A(\dsa[28].y_out ),
    .B(\dsa[29]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[29].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[29]._7_  (.A1(\dsa[28].y_out ),
    .A2(\dsa[29]._1_ ),
    .B1_N(\dsa[29]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[29].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[29]._8_  (.CLK(clk),
    .D(\dsa[29].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[29].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[29]._9_  (.CLK(clk),
    .D(\dsa[29].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[29].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[2]._3_  (.A(\dsa[2].last_carry ),
    .B(a[29]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[2]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[2]._4_  (.A1(a[29]),
    .A2(x),
    .B1(\dsa[2].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[2]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[2]._5_  (.A(\dsa[2]._0_ ),
    .B(\dsa[2]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[2]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[2]._6_  (.A(\dsa[1].y_out ),
    .B(\dsa[2]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[2].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[2]._7_  (.A1(\dsa[1].y_out ),
    .A2(\dsa[2]._1_ ),
    .B1_N(\dsa[2]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[2].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[2]._8_  (.CLK(clk),
    .D(\dsa[2].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[2].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[2]._9_  (.CLK(clk),
    .D(\dsa[2].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[2].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[30]._3_  (.A(\dsa[30].last_carry ),
    .B(a[1]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[30]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[30]._4_  (.A1(a[1]),
    .A2(x),
    .B1(\dsa[30].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[30]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[30]._5_  (.A(\dsa[30]._0_ ),
    .B(\dsa[30]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[30]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[30]._6_  (.A(\dsa[29].y_out ),
    .B(\dsa[30]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[30].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[30]._7_  (.A1(\dsa[29].y_out ),
    .A2(\dsa[30]._1_ ),
    .B1_N(\dsa[30]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[30].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[30]._8_  (.CLK(clk),
    .D(\dsa[30].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[30].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[30]._9_  (.CLK(clk),
    .D(\dsa[30].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[30].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[31]._3_  (.A(\dsa[31].last_carry ),
    .B(a[0]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[31]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[31]._4_  (.A1(a[0]),
    .A2(x),
    .B1(\dsa[31].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[31]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[31]._5_  (.A(\dsa[31]._0_ ),
    .B(\dsa[31]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[31]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[31]._6_  (.A(\dsa[30].y_out ),
    .B(\dsa[31]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[31].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[31]._7_  (.A1(\dsa[30].y_out ),
    .A2(\dsa[31]._1_ ),
    .B1_N(\dsa[31]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[31].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[31]._8_  (.CLK(clk),
    .D(\dsa[31].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[31].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[31]._9_  (.CLK(clk),
    .D(\dsa[31].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(y));
 sky130_fd_sc_hd__nand3_2 \dsa[3]._3_  (.A(\dsa[3].last_carry ),
    .B(a[28]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[3]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[3]._4_  (.A1(a[28]),
    .A2(x),
    .B1(\dsa[3].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[3]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[3]._5_  (.A(\dsa[3]._0_ ),
    .B(\dsa[3]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[3]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[3]._6_  (.A(\dsa[2].y_out ),
    .B(\dsa[3]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[3].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[3]._7_  (.A1(\dsa[2].y_out ),
    .A2(\dsa[3]._1_ ),
    .B1_N(\dsa[3]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[3].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[3]._8_  (.CLK(clk),
    .D(\dsa[3].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[3].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[3]._9_  (.CLK(clk),
    .D(\dsa[3].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[3].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[4]._3_  (.A(\dsa[4].last_carry ),
    .B(a[27]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[4]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[4]._4_  (.A1(a[27]),
    .A2(x),
    .B1(\dsa[4].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[4]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[4]._5_  (.A(\dsa[4]._0_ ),
    .B(\dsa[4]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[4]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[4]._6_  (.A(\dsa[3].y_out ),
    .B(\dsa[4]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[4].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[4]._7_  (.A1(\dsa[3].y_out ),
    .A2(\dsa[4]._1_ ),
    .B1_N(\dsa[4]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[4].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[4]._8_  (.CLK(clk),
    .D(\dsa[4].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[4].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[4]._9_  (.CLK(clk),
    .D(\dsa[4].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[4].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[5]._3_  (.A(\dsa[5].last_carry ),
    .B(a[26]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[5]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[5]._4_  (.A1(a[26]),
    .A2(x),
    .B1(\dsa[5].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[5]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[5]._5_  (.A(\dsa[5]._0_ ),
    .B(\dsa[5]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[5]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[5]._6_  (.A(\dsa[4].y_out ),
    .B(\dsa[5]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[5].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[5]._7_  (.A1(\dsa[4].y_out ),
    .A2(\dsa[5]._1_ ),
    .B1_N(\dsa[5]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[5].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[5]._8_  (.CLK(clk),
    .D(\dsa[5].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[5].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[5]._9_  (.CLK(clk),
    .D(\dsa[5].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[5].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[6]._3_  (.A(\dsa[6].last_carry ),
    .B(a[25]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[6]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[6]._4_  (.A1(a[25]),
    .A2(x),
    .B1(\dsa[6].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[6]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[6]._5_  (.A(\dsa[6]._0_ ),
    .B(\dsa[6]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[6]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[6]._6_  (.A(\dsa[5].y_out ),
    .B(\dsa[6]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[6].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[6]._7_  (.A1(\dsa[5].y_out ),
    .A2(\dsa[6]._1_ ),
    .B1_N(\dsa[6]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[6].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[6]._8_  (.CLK(clk),
    .D(\dsa[6].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[6].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[6]._9_  (.CLK(clk),
    .D(\dsa[6].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[6].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[7]._3_  (.A(\dsa[7].last_carry ),
    .B(a[24]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[7]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[7]._4_  (.A1(a[24]),
    .A2(x),
    .B1(\dsa[7].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[7]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[7]._5_  (.A(\dsa[7]._0_ ),
    .B(\dsa[7]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[7]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[7]._6_  (.A(\dsa[6].y_out ),
    .B(\dsa[7]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[7].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[7]._7_  (.A1(\dsa[6].y_out ),
    .A2(\dsa[7]._1_ ),
    .B1_N(\dsa[7]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[7].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[7]._8_  (.CLK(clk),
    .D(\dsa[7].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[7].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[7]._9_  (.CLK(clk),
    .D(\dsa[7].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[7].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[8]._3_  (.A(\dsa[8].last_carry ),
    .B(a[23]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[8]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[8]._4_  (.A1(a[23]),
    .A2(x),
    .B1(\dsa[8].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[8]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[8]._5_  (.A(\dsa[8]._0_ ),
    .B(\dsa[8]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[8]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[8]._6_  (.A(\dsa[7].y_out ),
    .B(\dsa[8]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[8].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[8]._7_  (.A1(\dsa[7].y_out ),
    .A2(\dsa[8]._1_ ),
    .B1_N(\dsa[8]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[8].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[8]._8_  (.CLK(clk),
    .D(\dsa[8].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[8].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[8]._9_  (.CLK(clk),
    .D(\dsa[8].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[8].y_out ));
 sky130_fd_sc_hd__nand3_2 \dsa[9]._3_  (.A(\dsa[9].last_carry ),
    .B(a[22]),
    .C(x),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[9]._0_ ));
 sky130_fd_sc_hd__a21o_2 \dsa[9]._4_  (.A1(a[22]),
    .A2(x),
    .B1(\dsa[9].last_carry ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[9]._1_ ));
 sky130_fd_sc_hd__nand2_2 \dsa[9]._5_  (.A(\dsa[9]._0_ ),
    .B(\dsa[9]._1_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[9]._2_ ));
 sky130_fd_sc_hd__xnor2_2 \dsa[9]._6_  (.A(\dsa[8].y_out ),
    .B(\dsa[9]._2_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\dsa[9].y_out_next ));
 sky130_fd_sc_hd__a21bo_2 \dsa[9]._7_  (.A1(\dsa[8].y_out ),
    .A2(\dsa[9]._1_ ),
    .B1_N(\dsa[9]._0_ ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\dsa[9].last_carry_next ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[9]._8_  (.CLK(clk),
    .D(\dsa[9].last_carry_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[9].last_carry ));
 sky130_fd_sc_hd__dfrtp_2 \dsa[9]._9_  (.CLK(clk),
    .D(\dsa[9].y_out_next ),
    .RESET_B(rst),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\dsa[10].y_in ));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_31 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_32 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_33 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_34 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_35 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_36 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_37 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_38 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_39 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_40 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_41 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_42 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_43 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_44 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_45 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_46 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_47 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_48 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_49 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_50 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_51 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_53 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_54 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_55 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_56 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_57 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_58 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_59 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_60 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_61 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_62 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_63 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_64 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_65 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_66 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_67 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_68 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_69 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_70 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_71 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_72 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_73 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_74 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_75 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_76 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_77 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_78 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_79 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_80 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_81 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_82 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_83 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_84 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_85 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_86 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_87 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_88 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_89 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_90 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_91 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_92 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_93 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_94 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_95 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_96 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_97 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_98 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_99 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_100 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_101 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_102 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_103 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_104 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_105 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_106 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_107 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_108 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_109 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_110 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_111 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_112 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_113 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_114 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_115 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_116 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_117 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_118 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_119 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_120 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_121 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_122 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_123 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_124 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_125 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_126 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_127 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_128 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_129 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_130 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_131 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_132 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_133 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_134 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_135 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_136 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_137 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_138 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_139 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_140 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_141 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_142 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_143 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_144 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_145 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_146 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_147 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_148 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_149 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_150 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_151 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_152 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_153 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_154 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_155 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_156 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_157 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_158 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_159 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_160 (.VGND(vssd1),
    .VPWR(vccd1));
endmodule
