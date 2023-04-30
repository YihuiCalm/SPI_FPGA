// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Apr 25 14:30:11 2023
// Host        : LAPTOP-U9EM5UJ6 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Github/SPI_FPGA/SPI_FPGA.sim/sim_1/synth/func/xsim/SPI_Flash_read_tb_func_synth.v
// Design      : SPI_Master
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* idle = "3'b001" *) (* receive = "3'b100" *) (* transmit = "3'b010" *) 
(* NotValidForBitStream *)
module SPI_Master
   (clk,
    reset,
    enable_rx,
    enable_tx,
    data_tx,
    data_rx,
    tx_done,
    rx_done,
    miso,
    sclk,
    mosi,
    ss);
  input clk;
  input reset;
  input enable_rx;
  input enable_tx;
  input [7:0]data_tx;
  output [7:0]data_rx;
  output tx_done;
  output rx_done;
  input miso;
  output sclk;
  output mosi;
  output ss;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [4:1]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire [7:0]data_rx;
  wire [7:0]data_rx_OBUF;
  wire \data_rx_reg[7]_i_1_n_0 ;
  wire [7:0]data_tx;
  wire [7:0]data_tx_IBUF;
  wire enable_rx;
  wire enable_rx_IBUF;
  wire enable_tx;
  wire enable_tx_IBUF;
  wire [7:0]in6;
  wire miso;
  wire miso_IBUF;
  wire mosi;
  wire mosi_OBUF;
  wire mosi_OBUF_inst_i_2_n_0;
  wire mosi_OBUF_inst_i_3_n_0;
  wire [2:0]next;
  wire [2:0]next__0;
  wire \next_reg[2]_i_2_n_0 ;
  wire reset;
  wire reset_IBUF;
  wire \rx_data_reg[0]_i_1_n_0 ;
  wire \rx_data_reg[1]_i_1_n_0 ;
  wire \rx_data_reg[2]_i_1_n_0 ;
  wire \rx_data_reg[3]_i_1_n_0 ;
  wire \rx_data_reg[4]_i_1_n_0 ;
  wire \rx_data_reg[5]_i_1_n_0 ;
  wire \rx_data_reg[6]_i_1_n_0 ;
  wire \rx_data_reg[6]_i_2_n_0 ;
  wire \rx_data_reg[6]_i_4_n_0 ;
  wire \rx_data_reg[7]_i_1_n_0 ;
  wire \rx_data_reg_reg_n_0_[0] ;
  wire \rx_data_reg_reg_n_0_[1] ;
  wire \rx_data_reg_reg_n_0_[2] ;
  wire \rx_data_reg_reg_n_0_[3] ;
  wire \rx_data_reg_reg_n_0_[4] ;
  wire \rx_data_reg_reg_n_0_[5] ;
  wire \rx_data_reg_reg_n_0_[6] ;
  wire \rx_data_reg_reg_n_0_[7] ;
  wire rx_done;
  wire rx_done0;
  wire rx_done_OBUF;
  wire sclk;
  wire sclk_OBUF;
  wire ss;
  wire ss_OBUF;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire tx_done;
  wire tx_done_OBUF;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_1 
       (.I0(\counter[4]_i_2_n_0 ),
        .I1(sclk_OBUF),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \counter[1]_i_1 
       (.I0(\counter[4]_i_2_n_0 ),
        .I1(counter[1]),
        .I2(sclk_OBUF),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \counter[2]_i_1 
       (.I0(\counter[4]_i_2_n_0 ),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(sclk_OBUF),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h2A80AA00)) 
    \counter[3]_i_1 
       (.I0(\counter[4]_i_2_n_0 ),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[3]),
        .I4(sclk_OBUF),
        .O(\counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888888888888)) 
    \counter[4]_i_1 
       (.I0(\counter[4]_i_2_n_0 ),
        .I1(counter[4]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(counter[3]),
        .I5(sclk_OBUF),
        .O(\counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \counter[4]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .O(\counter[4]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[0]_i_1_n_0 ),
        .Q(sclk_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter[4]));
  OBUF \data_rx_OBUF[0]_inst 
       (.I(data_rx_OBUF[0]),
        .O(data_rx[0]));
  OBUF \data_rx_OBUF[1]_inst 
       (.I(data_rx_OBUF[1]),
        .O(data_rx[1]));
  OBUF \data_rx_OBUF[2]_inst 
       (.I(data_rx_OBUF[2]),
        .O(data_rx[2]));
  OBUF \data_rx_OBUF[3]_inst 
       (.I(data_rx_OBUF[3]),
        .O(data_rx[3]));
  OBUF \data_rx_OBUF[4]_inst 
       (.I(data_rx_OBUF[4]),
        .O(data_rx[4]));
  OBUF \data_rx_OBUF[5]_inst 
       (.I(data_rx_OBUF[5]),
        .O(data_rx[5]));
  OBUF \data_rx_OBUF[6]_inst 
       (.I(data_rx_OBUF[6]),
        .O(data_rx[6]));
  OBUF \data_rx_OBUF[7]_inst 
       (.I(data_rx_OBUF[7]),
        .O(data_rx[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_rx_reg[0] 
       (.CLR(1'b0),
        .D(\rx_data_reg_reg_n_0_[0] ),
        .G(\data_rx_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(data_rx_OBUF[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_rx_reg[1] 
       (.CLR(1'b0),
        .D(\rx_data_reg_reg_n_0_[1] ),
        .G(\data_rx_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(data_rx_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_rx_reg[2] 
       (.CLR(1'b0),
        .D(\rx_data_reg_reg_n_0_[2] ),
        .G(\data_rx_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(data_rx_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_rx_reg[3] 
       (.CLR(1'b0),
        .D(\rx_data_reg_reg_n_0_[3] ),
        .G(\data_rx_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(data_rx_OBUF[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_rx_reg[4] 
       (.CLR(1'b0),
        .D(\rx_data_reg_reg_n_0_[4] ),
        .G(\data_rx_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(data_rx_OBUF[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_rx_reg[5] 
       (.CLR(1'b0),
        .D(\rx_data_reg_reg_n_0_[5] ),
        .G(\data_rx_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(data_rx_OBUF[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_rx_reg[6] 
       (.CLR(1'b0),
        .D(\rx_data_reg_reg_n_0_[6] ),
        .G(\data_rx_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(data_rx_OBUF[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_rx_reg[7] 
       (.CLR(1'b0),
        .D(\rx_data_reg_reg_n_0_[7] ),
        .G(\data_rx_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(data_rx_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \data_rx_reg[7]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\data_rx_reg[7]_i_1_n_0 ));
  IBUF \data_tx_IBUF[0]_inst 
       (.I(data_tx[0]),
        .O(data_tx_IBUF[0]));
  IBUF \data_tx_IBUF[1]_inst 
       (.I(data_tx[1]),
        .O(data_tx_IBUF[1]));
  IBUF \data_tx_IBUF[2]_inst 
       (.I(data_tx[2]),
        .O(data_tx_IBUF[2]));
  IBUF \data_tx_IBUF[3]_inst 
       (.I(data_tx[3]),
        .O(data_tx_IBUF[3]));
  IBUF \data_tx_IBUF[4]_inst 
       (.I(data_tx[4]),
        .O(data_tx_IBUF[4]));
  IBUF \data_tx_IBUF[5]_inst 
       (.I(data_tx[5]),
        .O(data_tx_IBUF[5]));
  IBUF \data_tx_IBUF[6]_inst 
       (.I(data_tx[6]),
        .O(data_tx_IBUF[6]));
  IBUF \data_tx_IBUF[7]_inst 
       (.I(data_tx[7]),
        .O(data_tx_IBUF[7]));
  IBUF enable_rx_IBUF_inst
       (.I(enable_rx),
        .O(enable_rx_IBUF));
  IBUF enable_tx_IBUF_inst
       (.I(enable_tx),
        .O(enable_tx_IBUF));
  IBUF miso_IBUF_inst
       (.I(miso),
        .O(miso_IBUF));
  OBUF mosi_OBUF_inst
       (.I(mosi_OBUF),
        .O(mosi));
  LUT5 #(
    .INIT(32'hABFEA802)) 
    mosi_OBUF_inst_i_1
       (.I0(mosi_OBUF_inst_i_2_n_0),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[3]),
        .I4(mosi_OBUF_inst_i_3_n_0),
        .O(mosi_OBUF));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    mosi_OBUF_inst_i_2
       (.I0(data_tx_IBUF[0]),
        .I1(data_tx_IBUF[7]),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(data_tx_IBUF[2]),
        .I5(data_tx_IBUF[1]),
        .O(mosi_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    mosi_OBUF_inst_i_3
       (.I0(data_tx_IBUF[4]),
        .I1(data_tx_IBUF[3]),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(data_tx_IBUF[6]),
        .I5(data_tx_IBUF[5]),
        .O(mosi_OBUF_inst_i_3_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b1)) 
    \next_reg[0] 
       (.CLR(1'b0),
        .D(next__0[0]),
        .G(\next_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next[0]));
  LUT6 #(
    .INIT(64'h0202030203020202)) 
    \next_reg[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(enable_tx_IBUF),
        .I2(enable_rx_IBUF),
        .I3(rx_done0),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(next__0[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg[1] 
       (.CLR(1'b0),
        .D(next__0[1]),
        .G(\next_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next[1]));
  LUT6 #(
    .INIT(64'hFFFF7020BAFF2020)) 
    \next_reg[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(enable_rx_IBUF),
        .I2(enable_tx_IBUF),
        .I3(rx_done0),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(next__0[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg[2] 
       (.CLR(1'b0),
        .D(next__0[2]),
        .G(\next_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next[2]));
  LUT6 #(
    .INIT(64'hFFAFC888FFEFC888)) 
    \next_reg[2]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(enable_rx_IBUF),
        .I2(rx_done0),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(enable_tx_IBUF),
        .O(next__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h16)) 
    \next_reg[2]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .O(\next_reg[2]_i_2_n_0 ));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  LUT5 #(
    .INIT(32'h4F004000)) 
    \rx_data_reg[0]_i_1 
       (.I0(\rx_data_reg[6]_i_2_n_0 ),
        .I1(miso_IBUF),
        .I2(in6[0]),
        .I3(\rx_data_reg[6]_i_4_n_0 ),
        .I4(\rx_data_reg_reg_n_0_[0] ),
        .O(\rx_data_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h04000001)) 
    \rx_data_reg[0]_i_2 
       (.I0(sclk_OBUF),
        .I1(counter[3]),
        .I2(counter[4]),
        .I3(counter[1]),
        .I4(counter[2]),
        .O(in6[0]));
  LUT5 #(
    .INIT(32'h4F004000)) 
    \rx_data_reg[1]_i_1 
       (.I0(\rx_data_reg[6]_i_2_n_0 ),
        .I1(miso_IBUF),
        .I2(in6[1]),
        .I3(\rx_data_reg[6]_i_4_n_0 ),
        .I4(\rx_data_reg_reg_n_0_[1] ),
        .O(\rx_data_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000401)) 
    \rx_data_reg[1]_i_2 
       (.I0(sclk_OBUF),
        .I1(counter[3]),
        .I2(counter[4]),
        .I3(counter[2]),
        .I4(counter[1]),
        .O(in6[1]));
  LUT5 #(
    .INIT(32'h4F004000)) 
    \rx_data_reg[2]_i_1 
       (.I0(\rx_data_reg[6]_i_2_n_0 ),
        .I1(miso_IBUF),
        .I2(in6[2]),
        .I3(\rx_data_reg[6]_i_4_n_0 ),
        .I4(\rx_data_reg_reg_n_0_[2] ),
        .O(\rx_data_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000401)) 
    \rx_data_reg[2]_i_2 
       (.I0(sclk_OBUF),
        .I1(counter[3]),
        .I2(counter[4]),
        .I3(counter[1]),
        .I4(counter[2]),
        .O(in6[2]));
  LUT5 #(
    .INIT(32'h4F004000)) 
    \rx_data_reg[3]_i_1 
       (.I0(\rx_data_reg[6]_i_2_n_0 ),
        .I1(miso_IBUF),
        .I2(in6[3]),
        .I3(\rx_data_reg[6]_i_4_n_0 ),
        .I4(\rx_data_reg_reg_n_0_[3] ),
        .O(\rx_data_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_data_reg[3]_i_2 
       (.I0(sclk_OBUF),
        .I1(counter[4]),
        .I2(counter[1]),
        .I3(counter[2]),
        .O(in6[3]));
  LUT5 #(
    .INIT(32'h4F004000)) 
    \rx_data_reg[4]_i_1 
       (.I0(\rx_data_reg[6]_i_2_n_0 ),
        .I1(miso_IBUF),
        .I2(in6[4]),
        .I3(\rx_data_reg[6]_i_4_n_0 ),
        .I4(\rx_data_reg_reg_n_0_[4] ),
        .O(\rx_data_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01000001)) 
    \rx_data_reg[4]_i_2 
       (.I0(sclk_OBUF),
        .I1(counter[3]),
        .I2(counter[4]),
        .I3(counter[1]),
        .I4(counter[2]),
        .O(in6[4]));
  LUT5 #(
    .INIT(32'h4F004000)) 
    \rx_data_reg[5]_i_1 
       (.I0(\rx_data_reg[6]_i_2_n_0 ),
        .I1(miso_IBUF),
        .I2(in6[5]),
        .I3(\rx_data_reg[6]_i_4_n_0 ),
        .I4(\rx_data_reg_reg_n_0_[5] ),
        .O(\rx_data_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_data_reg[5]_i_2 
       (.I0(sclk_OBUF),
        .I1(counter[3]),
        .I2(counter[4]),
        .I3(counter[1]),
        .O(in6[5]));
  LUT5 #(
    .INIT(32'h4F004000)) 
    \rx_data_reg[6]_i_1 
       (.I0(\rx_data_reg[6]_i_2_n_0 ),
        .I1(miso_IBUF),
        .I2(in6[6]),
        .I3(\rx_data_reg[6]_i_4_n_0 ),
        .I4(\rx_data_reg_reg_n_0_[6] ),
        .O(\rx_data_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \rx_data_reg[6]_i_2 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(sclk_OBUF),
        .I3(counter[1]),
        .I4(counter[2]),
        .O(\rx_data_reg[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_data_reg[6]_i_3 
       (.I0(sclk_OBUF),
        .I1(counter[3]),
        .I2(counter[4]),
        .I3(counter[2]),
        .O(in6[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \rx_data_reg[6]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\rx_data_reg[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000B0000000800)) 
    \rx_data_reg[7]_i_1 
       (.I0(miso_IBUF),
        .I1(in6[7]),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\rx_data_reg_reg_n_0_[7] ),
        .O(\rx_data_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \rx_data_reg[7]_i_2 
       (.I0(sclk_OBUF),
        .I1(counter[3]),
        .I2(counter[4]),
        .I3(counter[1]),
        .I4(counter[2]),
        .O(in6[7]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\rx_data_reg[0]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\rx_data_reg[1]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\rx_data_reg[2]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\rx_data_reg[3]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\rx_data_reg[4]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\rx_data_reg[5]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\rx_data_reg[6]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\rx_data_reg[7]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[7] ));
  OBUF rx_done_OBUF_inst
       (.I(rx_done_OBUF),
        .O(rx_done));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    rx_done_OBUF_inst_i_1
       (.I0(counter[1]),
        .I1(sclk_OBUF),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .I5(\data_rx_reg[7]_i_1_n_0 ),
        .O(rx_done_OBUF));
  OBUF sclk_OBUF_inst
       (.I(sclk_OBUF),
        .O(sclk));
  OBUF ss_OBUF_inst
       (.I(ss_OBUF),
        .O(ss));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hED)) 
    ss_OBUF_inst_i_1
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(ss_OBUF));
  (* FSM_ENCODED_STATES = "receive:100,idle:001,transmit:010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next[0]),
        .PRE(reset_IBUF),
        .Q(\state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "receive:100,idle:001,transmit:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next[1]),
        .Q(\state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "receive:100,idle:001,transmit:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next[2]),
        .Q(\state_reg_n_0_[2] ));
  OBUF tx_done_OBUF_inst
       (.I(tx_done_OBUF),
        .O(tx_done));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    tx_done_OBUF_inst_i_1
       (.I0(rx_done0),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(tx_done_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    tx_done_OBUF_inst_i_2
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(sclk_OBUF),
        .I4(counter[1]),
        .O(rx_done0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
