// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sat Apr 29 22:01:37 2023
// Host        : LAPTOP-U9EM5UJ6 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Github/SPI_FPGA/SPI_FPGA.sim/sim_1/impl/timing/xsim/SPI_tb_time_impl.v
// Design      : SPI_Master
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "dec62e9b" *) (* idle = "3'b001" *) (* receive = "3'b100" *) 
(* transmit = "3'b010" *) 
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
  wire [3:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire [7:0]data_rx;
  wire [7:0]data_rx_OBUF;
  wire [7:0]data_tx;
  wire [7:0]data_tx_IBUF;
  wire enable_rx;
  wire enable_rx_IBUF;
  wire enable_tx;
  wire enable_tx_IBUF;
  wire miso;
  wire miso_IBUF;
  wire mosi;
  wire mosi_OBUF;
  wire mosi_i_1_n_0;
  wire mosi_i_2_n_0;
  wire mosi_i_3_n_0;
  wire mosi_i_4_n_0;
  wire mosi_i_5_n_0;
  wire mosi_i_6_n_0;
  wire [2:0]next;
  wire [2:0]next__0;
  wire \next_reg[1]_i_2_n_0 ;
  wire \next_reg[2]_i_2_n_0 ;
  wire \next_reg[2]_i_3_n_0 ;
  wire p_0_in;
  wire reset;
  wire reset_IBUF;
  wire [7:0]rx_data_reg;
  wire [7:6]rx_data_reg0_in;
  wire \rx_data_reg[6]_i_3_n_0 ;
  wire \rx_data_reg[7]_i_3_n_0 ;
  wire rx_done;
  wire rx_done_OBUF;
  wire rx_done_reg_lopt_replica_1;
  wire sclk;
  wire sclk_OBUF;
  wire sclk_i_1_n_0;
  wire ss;
  wire ss_OBUF;
  wire ss_i_1_n_0;
  wire [2:1]state_reg;
  wire \state_reg_n_0_[0] ;
  wire tx_done;
  wire tx_done_OBUF;
  wire tx_done_i_1_n_0;
  wire tx_done_reg_lopt_replica_1;

initial begin
 $sdf_annotate("SPI_tb_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0012)) 
    \counter[0]_i_1 
       (.I0(state_reg[1]),
        .I1(\state_reg_n_0_[0] ),
        .I2(state_reg[2]),
        .I3(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00121200)) 
    \counter[1]_i_1 
       (.I0(state_reg[1]),
        .I1(\state_reg_n_0_[0] ),
        .I2(state_reg[2]),
        .I3(counter[1]),
        .I4(counter[0]),
        .O(\counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0012120012001200)) 
    \counter[2]_i_1 
       (.I0(state_reg[1]),
        .I1(\state_reg_n_0_[0] ),
        .I2(state_reg[2]),
        .I3(counter[2]),
        .I4(counter[1]),
        .I5(counter[0]),
        .O(\counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1200001212120000)) 
    \counter[3]_i_1 
       (.I0(state_reg[1]),
        .I1(\state_reg_n_0_[0] ),
        .I2(state_reg[2]),
        .I3(\counter[3]_i_2_n_0 ),
        .I4(counter[3]),
        .I5(counter[0]),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \counter[3]_i_2 
       (.I0(counter[2]),
        .I1(counter[1]),
        .O(\counter[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]));
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
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    mosi_i_1
       (.I0(mosi_i_2_n_0),
        .I1(mosi_i_3_n_0),
        .I2(mosi_i_4_n_0),
        .I3(next[1]),
        .I4(mosi_i_5_n_0),
        .I5(mosi_i_6_n_0),
        .O(mosi_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    mosi_i_2
       (.I0(next[0]),
        .I1(next[2]),
        .O(mosi_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000350003005000)) 
    mosi_i_3
       (.I0(data_tx_IBUF[2]),
        .I1(data_tx_IBUF[1]),
        .I2(counter[0]),
        .I3(counter[3]),
        .I4(counter[2]),
        .I5(counter[1]),
        .O(mosi_i_3_n_0));
  LUT6 #(
    .INIT(64'h0035000000500300)) 
    mosi_i_4
       (.I0(data_tx_IBUF[4]),
        .I1(data_tx_IBUF[3]),
        .I2(counter[0]),
        .I3(counter[3]),
        .I4(counter[2]),
        .I5(counter[1]),
        .O(mosi_i_4_n_0));
  LUT6 #(
    .INIT(64'h3500000050000003)) 
    mosi_i_5
       (.I0(data_tx_IBUF[0]),
        .I1(data_tx_IBUF[7]),
        .I2(counter[0]),
        .I3(counter[3]),
        .I4(counter[2]),
        .I5(counter[1]),
        .O(mosi_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000003500030050)) 
    mosi_i_6
       (.I0(data_tx_IBUF[6]),
        .I1(data_tx_IBUF[5]),
        .I2(counter[0]),
        .I3(counter[3]),
        .I4(counter[2]),
        .I5(counter[1]),
        .O(mosi_i_6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    mosi_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(mosi_i_1_n_0),
        .Q(mosi_OBUF));
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h11101010)) 
    \next_reg[0]_i_1 
       (.I0(enable_rx_IBUF),
        .I1(enable_tx_IBUF),
        .I2(\next_reg[2]_i_3_n_0 ),
        .I3(rx_done_OBUF),
        .I4(state_reg[2]),
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
    .INIT(64'hFFFF22222F2A2222)) 
    \next_reg[1]_i_1 
       (.I0(state_reg[1]),
        .I1(tx_done_OBUF),
        .I2(enable_rx_IBUF),
        .I3(\state_reg_n_0_[0] ),
        .I4(enable_tx_IBUF),
        .I5(\next_reg[1]_i_2_n_0 ),
        .O(next__0[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \next_reg[1]_i_2 
       (.I0(rx_done_OBUF),
        .I1(state_reg[2]),
        .O(\next_reg[1]_i_2_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF222A22)) 
    \next_reg[2]_i_1 
       (.I0(state_reg[2]),
        .I1(rx_done_OBUF),
        .I2(enable_tx_IBUF),
        .I3(enable_rx_IBUF),
        .I4(\next_reg[2]_i_3_n_0 ),
        .O(next__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h16)) 
    \next_reg[2]_i_2 
       (.I0(state_reg[2]),
        .I1(\state_reg_n_0_[0] ),
        .I2(state_reg[1]),
        .O(\next_reg[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \next_reg[2]_i_3 
       (.I0(state_reg[1]),
        .I1(tx_done_OBUF),
        .I2(\state_reg_n_0_[0] ),
        .O(\next_reg[2]_i_3_n_0 ));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  LUT5 #(
    .INIT(32'h55D55557)) 
    \rx_data_reg[0]_i_1 
       (.I0(\rx_data_reg[6]_i_3_n_0 ),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[3]),
        .O(rx_data_reg[0]));
  LUT5 #(
    .INIT(32'h555D5557)) 
    \rx_data_reg[1]_i_1 
       (.I0(\rx_data_reg[6]_i_3_n_0 ),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[3]),
        .O(rx_data_reg[1]));
  LUT5 #(
    .INIT(32'h55755557)) 
    \rx_data_reg[2]_i_1 
       (.I0(\rx_data_reg[6]_i_3_n_0 ),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[3]),
        .O(rx_data_reg[2]));
  LUT4 #(
    .INIT(16'h5557)) 
    \rx_data_reg[3]_i_1 
       (.I0(\rx_data_reg[6]_i_3_n_0 ),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[0]),
        .O(rx_data_reg[3]));
  LUT6 #(
    .INIT(64'hFFFDFDFFFDFDFDFD)) 
    \rx_data_reg[4]_i_1 
       (.I0(state_reg[2]),
        .I1(\state_reg_n_0_[0] ),
        .I2(state_reg[1]),
        .I3(counter[2]),
        .I4(counter[1]),
        .I5(\rx_data_reg[7]_i_3_n_0 ),
        .O(rx_data_reg[4]));
  LUT5 #(
    .INIT(32'hFDFFFDFD)) 
    \rx_data_reg[5]_i_1 
       (.I0(state_reg[2]),
        .I1(\state_reg_n_0_[0] ),
        .I2(state_reg[1]),
        .I3(counter[1]),
        .I4(\rx_data_reg[7]_i_3_n_0 ),
        .O(rx_data_reg[5]));
  LUT5 #(
    .INIT(32'hFDFFFDFD)) 
    \rx_data_reg[6]_i_1 
       (.I0(state_reg[2]),
        .I1(\state_reg_n_0_[0] ),
        .I2(state_reg[1]),
        .I3(counter[2]),
        .I4(\rx_data_reg[7]_i_3_n_0 ),
        .O(rx_data_reg[6]));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \rx_data_reg[6]_i_2 
       (.I0(miso_IBUF),
        .I1(\rx_data_reg[6]_i_3_n_0 ),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(counter[0]),
        .I5(counter[3]),
        .O(rx_data_reg0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rx_data_reg[6]_i_3 
       (.I0(state_reg[2]),
        .I1(\state_reg_n_0_[0] ),
        .I2(state_reg[1]),
        .O(\rx_data_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFDFFFDFDFDFD)) 
    \rx_data_reg[7]_i_1 
       (.I0(state_reg[2]),
        .I1(\state_reg_n_0_[0] ),
        .I2(state_reg[1]),
        .I3(counter[2]),
        .I4(counter[1]),
        .I5(\rx_data_reg[7]_i_3_n_0 ),
        .O(rx_data_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_data_reg[7]_i_2 
       (.I0(state_reg[1]),
        .I1(\state_reg_n_0_[0] ),
        .I2(state_reg[2]),
        .I3(miso_IBUF),
        .O(rx_data_reg0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rx_data_reg[7]_i_3 
       (.I0(counter[3]),
        .I1(counter[0]),
        .O(\rx_data_reg[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_data_reg[0]),
        .CLR(reset_IBUF),
        .D(rx_data_reg0_in[6]),
        .Q(data_rx_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_data_reg[1]),
        .CLR(reset_IBUF),
        .D(rx_data_reg0_in[6]),
        .Q(data_rx_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_data_reg[2]),
        .CLR(reset_IBUF),
        .D(rx_data_reg0_in[6]),
        .Q(data_rx_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_data_reg[3]),
        .CLR(reset_IBUF),
        .D(rx_data_reg0_in[6]),
        .Q(data_rx_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_data_reg[4]),
        .CLR(reset_IBUF),
        .D(rx_data_reg0_in[6]),
        .Q(data_rx_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_data_reg[5]),
        .CLR(reset_IBUF),
        .D(rx_data_reg0_in[6]),
        .Q(data_rx_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_data_reg[6]),
        .CLR(reset_IBUF),
        .D(rx_data_reg0_in[6]),
        .Q(data_rx_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_data_reg[7]),
        .CLR(reset_IBUF),
        .D(rx_data_reg0_in[7]),
        .Q(data_rx_OBUF[7]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF rx_done_OBUF_inst
       (.I(rx_done_reg_lopt_replica_1),
        .O(rx_done));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    rx_done_i_1
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(state_reg[2]),
        .I3(counter[0]),
        .I4(counter[3]),
        .O(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    rx_done_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(p_0_in),
        .Q(rx_done_OBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    rx_done_reg_lopt_replica
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(p_0_in),
        .Q(rx_done_reg_lopt_replica_1));
  OBUF sclk_OBUF_inst
       (.I(sclk_OBUF),
        .O(sclk));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0012)) 
    sclk_i_1
       (.I0(state_reg[2]),
        .I1(\state_reg_n_0_[0] ),
        .I2(state_reg[1]),
        .I3(counter[0]),
        .O(sclk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sclk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(sclk_i_1_n_0),
        .Q(sclk_OBUF));
  OBUF ss_OBUF_inst
       (.I(ss_OBUF),
        .O(ss));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF9)) 
    ss_i_1
       (.I0(next[2]),
        .I1(next[1]),
        .I2(next[0]),
        .O(ss_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    ss_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ss_i_1_n_0),
        .PRE(reset_IBUF),
        .Q(ss_OBUF));
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
        .Q(state_reg[1]));
  (* FSM_ENCODED_STATES = "receive:100,idle:001,transmit:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next[2]),
        .Q(state_reg[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF tx_done_OBUF_inst
       (.I(tx_done_reg_lopt_replica_1),
        .O(tx_done));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    tx_done_i_1
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(state_reg[1]),
        .I3(counter[0]),
        .I4(counter[3]),
        .O(tx_done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tx_done_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(tx_done_i_1_n_0),
        .Q(tx_done_OBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    tx_done_reg_lopt_replica
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(tx_done_i_1_n_0),
        .Q(tx_done_reg_lopt_replica_1));
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
