// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Apr 30 07:25:21 2023
// Host        : LAPTOP-U9EM5UJ6 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Github/SPI_FPGA/SPI_FPGA.sim/sim_1/impl/timing/xsim/SPI_Flash_read_tb_time_impl.v
// Design      : SPI_Read_Flash
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module SPI_Master
   (qspi_sck_OBUF,
    qspi_mosi_OBUF,
    qspi_cs_OBUF,
    D,
    \state_reg[6] ,
    CLK,
    AR,
    Q,
    uart_tx_done,
    start,
    qspi_miso_IBUF,
    enable_tx,
    \state_reg[0]_0 ,
    data0);
  output qspi_sck_OBUF;
  output qspi_mosi_OBUF;
  output qspi_cs_OBUF;
  output [15:0]D;
  output [6:0]\state_reg[6] ;
  input CLK;
  input [0:0]AR;
  input [7:0]Q;
  input uart_tx_done;
  input start;
  input qspi_miso_IBUF;
  input enable_tx;
  input \state_reg[0]_0 ;
  input data0;

  wire [0:0]AR;
  wire CLK;
  wire [15:0]D;
  wire [7:0]Q;
  wire [3:1]counter;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire data0;
  wire enable_tx;
  wire mosi_i_1_n_0;
  wire mosi_i_2_n_0;
  wire [2:0]next;
  wire [2:0]next__0;
  wire \next_reg[2]_i_2_n_0 ;
  wire \next_reg[2]_i_3_n_0 ;
  wire qspi_cs_OBUF;
  wire qspi_miso_IBUF;
  wire qspi_mosi_OBUF;
  wire qspi_sck_OBUF;
  wire [7:7]rx_data_reg;
  wire \rx_data_reg[0]_i_1_n_0 ;
  wire \rx_data_reg[1]_i_1_n_0 ;
  wire \rx_data_reg[2]_i_1_n_0 ;
  wire \rx_data_reg[2]_i_2_n_0 ;
  wire \rx_data_reg[3]_i_1_n_0 ;
  wire \rx_data_reg[4]_i_1_n_0 ;
  wire \rx_data_reg[4]_i_2_n_0 ;
  wire \rx_data_reg[5]_i_1_n_0 ;
  wire \rx_data_reg[6]_i_1_n_0 ;
  wire \rx_data_reg[6]_i_2_n_0 ;
  wire \rx_data_reg[6]_i_3_n_0 ;
  wire \rx_data_reg[7]_i_1_n_0 ;
  wire \rx_data_reg[7]_i_3_n_0 ;
  wire \rx_data_reg_reg_n_0_[0] ;
  wire \rx_data_reg_reg_n_0_[1] ;
  wire \rx_data_reg_reg_n_0_[2] ;
  wire \rx_data_reg_reg_n_0_[3] ;
  wire \rx_data_reg_reg_n_0_[4] ;
  wire \rx_data_reg_reg_n_0_[5] ;
  wire \rx_data_reg_reg_n_0_[6] ;
  wire \rx_data_reg_reg_n_0_[7] ;
  wire rx_done;
  wire rx_done_i_1_n_0;
  wire sclk0_out;
  wire ss_i_1_n_0;
  wire start;
  wire [2:1]state_reg;
  wire \state_reg[0]_0 ;
  wire [6:0]\state_reg[6] ;
  wire \state_reg_n_0_[0] ;
  wire tx_done;
  wire tx_done0;
  wire uart_tx_done;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00141400)) 
    \counter[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(counter[1]),
        .I4(qspi_sck_OBUF),
        .O(\counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0006060606000000)) 
    \counter[2]_i_1 
       (.I0(state_reg[1]),
        .I1(state_reg[2]),
        .I2(\state_reg_n_0_[0] ),
        .I3(counter[1]),
        .I4(qspi_sck_OBUF),
        .I5(counter[2]),
        .O(\counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7F008000)) 
    \counter[3]_i_1 
       (.I0(counter[1]),
        .I1(qspi_sck_OBUF),
        .I2(counter[2]),
        .I3(\counter[3]_i_2_n_0 ),
        .I4(counter[3]),
        .O(\counter[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \counter[3]_i_2 
       (.I0(state_reg[1]),
        .I1(state_reg[2]),
        .I2(\state_reg_n_0_[0] ),
        .O(\counter[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]));
  LUT5 #(
    .INIT(32'h00200000)) 
    mosi_i_1
       (.I0(next[1]),
        .I1(next[2]),
        .I2(data0),
        .I3(next[0]),
        .I4(mosi_i_2_n_0),
        .O(mosi_i_1_n_0));
  LUT4 #(
    .INIT(16'h9401)) 
    mosi_i_2
       (.I0(counter[3]),
        .I1(counter[1]),
        .I2(qspi_sck_OBUF),
        .I3(counter[2]),
        .O(mosi_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    mosi_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(mosi_i_1_n_0),
        .Q(qspi_mosi_OBUF));
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
  LUT4 #(
    .INIT(16'h1101)) 
    \next_reg[0]_i_1 
       (.I0(enable_tx),
        .I1(\state_reg[0]_0 ),
        .I2(\next_reg[2]_i_3_n_0 ),
        .I3(\state_reg_n_0_[0] ),
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
  LUT5 #(
    .INIT(32'hFF40444C)) 
    \next_reg[1]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(enable_tx),
        .I2(\state_reg_n_0_[0] ),
        .I3(state_reg[1]),
        .I4(\next_reg[2]_i_3_n_0 ),
        .O(next__0[1]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \next_reg[1]_i_1__1 
       (.I0(Q[0]),
        .I1(start),
        .I2(tx_done),
        .I3(Q[1]),
        .O(\state_reg[6] [0]));
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
  LUT5 #(
    .INIT(32'h00AFAAA2)) 
    \next_reg[2]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(enable_tx),
        .I2(\state_reg_n_0_[0] ),
        .I3(state_reg[1]),
        .I4(\next_reg[2]_i_3_n_0 ),
        .O(next__0[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \next_reg[2]_i_1__0 
       (.I0(Q[1]),
        .I1(tx_done),
        .I2(Q[2]),
        .O(\state_reg[6] [1]));
  LUT3 #(
    .INIT(8'h16)) 
    \next_reg[2]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .O(\next_reg[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \next_reg[2]_i_3 
       (.I0(counter[2]),
        .I1(qspi_sck_OBUF),
        .I2(counter[1]),
        .I3(counter[3]),
        .O(\next_reg[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \next_reg[3]_i_1 
       (.I0(Q[2]),
        .I1(tx_done),
        .I2(Q[3]),
        .O(\state_reg[6] [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \next_reg[4]_i_1 
       (.I0(Q[3]),
        .I1(tx_done),
        .I2(Q[4]),
        .O(\state_reg[6] [3]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \next_reg[5]_i_1 
       (.I0(Q[4]),
        .I1(tx_done),
        .I2(rx_done),
        .I3(Q[5]),
        .O(\state_reg[6] [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \next_reg[6]_i_1 
       (.I0(Q[5]),
        .I1(rx_done),
        .I2(Q[6]),
        .O(\state_reg[6] [5]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \next_reg[7]_i_1 
       (.I0(Q[6]),
        .I1(rx_done),
        .I2(uart_tx_done),
        .I3(Q[7]),
        .O(\state_reg[6] [6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \respond_data[0]_i_1 
       (.I0(Q[6]),
        .I1(\rx_data_reg_reg_n_0_[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \respond_data[10]_i_1 
       (.I0(Q[5]),
        .I1(\rx_data_reg_reg_n_0_[2] ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \respond_data[11]_i_1 
       (.I0(Q[5]),
        .I1(\rx_data_reg_reg_n_0_[3] ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \respond_data[12]_i_1 
       (.I0(Q[5]),
        .I1(\rx_data_reg_reg_n_0_[4] ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \respond_data[13]_i_1 
       (.I0(Q[5]),
        .I1(\rx_data_reg_reg_n_0_[5] ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \respond_data[14]_i_1 
       (.I0(Q[5]),
        .I1(\rx_data_reg_reg_n_0_[6] ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \respond_data[15]_i_2 
       (.I0(Q[5]),
        .I1(\rx_data_reg_reg_n_0_[7] ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \respond_data[1]_i_1 
       (.I0(Q[6]),
        .I1(\rx_data_reg_reg_n_0_[1] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \respond_data[2]_i_1 
       (.I0(Q[6]),
        .I1(\rx_data_reg_reg_n_0_[2] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \respond_data[3]_i_1 
       (.I0(Q[6]),
        .I1(\rx_data_reg_reg_n_0_[3] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \respond_data[4]_i_1 
       (.I0(Q[6]),
        .I1(\rx_data_reg_reg_n_0_[4] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \respond_data[5]_i_1 
       (.I0(Q[6]),
        .I1(\rx_data_reg_reg_n_0_[5] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \respond_data[6]_i_1 
       (.I0(Q[6]),
        .I1(\rx_data_reg_reg_n_0_[6] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \respond_data[7]_i_2 
       (.I0(Q[6]),
        .I1(\rx_data_reg_reg_n_0_[7] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \respond_data[8]_i_1 
       (.I0(Q[5]),
        .I1(\rx_data_reg_reg_n_0_[0] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \respond_data[9]_i_1 
       (.I0(Q[5]),
        .I1(\rx_data_reg_reg_n_0_[1] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \rx_data_reg[0]_i_1 
       (.I0(\rx_data_reg[6]_i_2_n_0 ),
        .I1(\rx_data_reg[2]_i_2_n_0 ),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(rx_data_reg),
        .I5(\rx_data_reg_reg_n_0_[0] ),
        .O(\rx_data_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \rx_data_reg[1]_i_1 
       (.I0(\rx_data_reg[6]_i_2_n_0 ),
        .I1(\rx_data_reg[2]_i_2_n_0 ),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(rx_data_reg),
        .I5(\rx_data_reg_reg_n_0_[1] ),
        .O(\rx_data_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \rx_data_reg[2]_i_1 
       (.I0(\rx_data_reg[6]_i_2_n_0 ),
        .I1(\rx_data_reg[2]_i_2_n_0 ),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(rx_data_reg),
        .I5(\rx_data_reg_reg_n_0_[2] ),
        .O(\rx_data_reg[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data_reg[2]_i_2 
       (.I0(counter[3]),
        .I1(qspi_sck_OBUF),
        .O(\rx_data_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFEAAAA0002)) 
    \rx_data_reg[3]_i_1 
       (.I0(\rx_data_reg[6]_i_2_n_0 ),
        .I1(qspi_sck_OBUF),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(\rx_data_reg[6]_i_3_n_0 ),
        .I5(\rx_data_reg_reg_n_0_[3] ),
        .O(\rx_data_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \rx_data_reg[4]_i_1 
       (.I0(\rx_data_reg[6]_i_2_n_0 ),
        .I1(\rx_data_reg[4]_i_2_n_0 ),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(rx_data_reg),
        .I5(\rx_data_reg_reg_n_0_[4] ),
        .O(\rx_data_reg[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data_reg[4]_i_2 
       (.I0(qspi_sck_OBUF),
        .I1(counter[3]),
        .O(\rx_data_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFEAAAA0002)) 
    \rx_data_reg[5]_i_1 
       (.I0(\rx_data_reg[6]_i_2_n_0 ),
        .I1(counter[1]),
        .I2(qspi_sck_OBUF),
        .I3(counter[3]),
        .I4(\rx_data_reg[6]_i_3_n_0 ),
        .I5(\rx_data_reg_reg_n_0_[5] ),
        .O(\rx_data_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFEAAAA0002)) 
    \rx_data_reg[6]_i_1 
       (.I0(\rx_data_reg[6]_i_2_n_0 ),
        .I1(counter[2]),
        .I2(qspi_sck_OBUF),
        .I3(counter[3]),
        .I4(\rx_data_reg[6]_i_3_n_0 ),
        .I5(\rx_data_reg_reg_n_0_[6] ),
        .O(\rx_data_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \rx_data_reg[6]_i_2 
       (.I0(\rx_data_reg[6]_i_3_n_0 ),
        .I1(qspi_miso_IBUF),
        .I2(qspi_sck_OBUF),
        .I3(counter[3]),
        .I4(counter[1]),
        .I5(counter[2]),
        .O(\rx_data_reg[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \rx_data_reg[6]_i_3 
       (.I0(state_reg[1]),
        .I1(\state_reg_n_0_[0] ),
        .I2(state_reg[2]),
        .O(\rx_data_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \rx_data_reg[7]_i_1 
       (.I0(qspi_miso_IBUF),
        .I1(state_reg[2]),
        .I2(\state_reg_n_0_[0] ),
        .I3(state_reg[1]),
        .I4(rx_data_reg),
        .I5(\rx_data_reg_reg_n_0_[7] ),
        .O(\rx_data_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555557)) 
    \rx_data_reg[7]_i_2 
       (.I0(state_reg[2]),
        .I1(counter[1]),
        .I2(qspi_sck_OBUF),
        .I3(counter[3]),
        .I4(counter[2]),
        .I5(\rx_data_reg[7]_i_3_n_0 ),
        .O(rx_data_reg));
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data_reg[7]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(state_reg[1]),
        .O(\rx_data_reg[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\rx_data_reg[0]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\rx_data_reg[1]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\rx_data_reg[2]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\rx_data_reg[3]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\rx_data_reg[4]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\rx_data_reg[5]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\rx_data_reg[6]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\rx_data_reg[7]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[7] ));
  LUT5 #(
    .INIT(32'h00800000)) 
    rx_done_i_1
       (.I0(state_reg[2]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(qspi_sck_OBUF),
        .I4(counter[3]),
        .O(rx_done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rx_done_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(rx_done_i_1_n_0),
        .Q(rx_done));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    sclk_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(qspi_sck_OBUF),
        .O(sclk0_out));
  FDCE #(
    .INIT(1'b0)) 
    sclk_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(sclk0_out),
        .Q(qspi_sck_OBUF));
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
       (.C(CLK),
        .CE(1'b1),
        .D(ss_i_1_n_0),
        .PRE(AR),
        .Q(qspi_cs_OBUF));
  (* FSM_ENCODED_STATES = "receive:100,idle:001,transmit:010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(next[0]),
        .PRE(AR),
        .Q(\state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "receive:100,idle:001,transmit:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(next[1]),
        .Q(state_reg[1]));
  (* FSM_ENCODED_STATES = "receive:100,idle:001,transmit:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(next[2]),
        .Q(state_reg[2]));
  LUT5 #(
    .INIT(32'h08000000)) 
    tx_done_i_1
       (.I0(qspi_sck_OBUF),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(state_reg[1]),
        .I4(counter[3]),
        .O(tx_done0));
  FDCE #(
    .INIT(1'b0)) 
    tx_done_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(tx_done0),
        .Q(tx_done));
endmodule

(* ECO_CHECKSUM = "476a5d57" *) (* address = "24'b000000000000000000000000" *) (* dithering_terminate = "10'b1000000000" *) 
(* idle = "10'b0000000001" *) (* instruction = "8'b10010000" *) (* receive_0 = "10'b0000100000" *) 
(* receive_1 = "10'b0001000000" *) (* transmit_0 = "10'b0000000010" *) (* transmit_1 = "10'b0000000100" *) 
(* transmit_2 = "10'b0000001000" *) (* transmit_3 = "10'b0000010000" *) (* uart_0 = "10'b0010000000" *) 
(* uart_1 = "10'b0100000000" *) 
(* NotValidForBitStream *)
module SPI_Read_Flash
   (CLK100MHZ,
    btn,
    qspi_miso,
    qspi_sck,
    qspi_cs,
    qspi_mosi,
    uart_rxd_out);
  input CLK100MHZ;
  input [1:0]btn;
  input qspi_miso;
  output qspi_sck;
  output qspi_cs;
  output qspi_mosi;
  output uart_rxd_out;

  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [1:0]btn;
  wire [1:0]btn_IBUF;
  wire clk;
  wire clk_BUFG;
  wire [3:0]clk_counter;
  wire \clk_counter[0]_i_1_n_0 ;
  wire \clk_counter[1]_i_1_n_0 ;
  wire \clk_counter[2]_i_1_n_0 ;
  wire \clk_counter[3]_i_1_n_0 ;
  wire clk_i_1_n_0;
  wire data0;
  wire enable_rx;
  wire enable_rx_reg_n_0;
  wire enable_tx;
  wire enable_tx_i_1_n_0;
  wire enable_uart;
  wire enable_uart_reg_n_0;
  wire inst_spi_n_10;
  wire inst_spi_n_11;
  wire inst_spi_n_12;
  wire inst_spi_n_13;
  wire inst_spi_n_14;
  wire inst_spi_n_15;
  wire inst_spi_n_16;
  wire inst_spi_n_17;
  wire inst_spi_n_18;
  wire inst_spi_n_3;
  wire inst_spi_n_4;
  wire inst_spi_n_5;
  wire inst_spi_n_6;
  wire inst_spi_n_7;
  wire inst_spi_n_8;
  wire inst_spi_n_9;
  wire [9:0]next;
  wire next2;
  wire [9:0]next__0;
  wire \next_reg[9]_i_10_n_0 ;
  wire \next_reg[9]_i_11_n_0 ;
  wire \next_reg[9]_i_12_n_0 ;
  wire \next_reg[9]_i_13_n_0 ;
  wire \next_reg[9]_i_14_n_0 ;
  wire \next_reg[9]_i_15_n_0 ;
  wire \next_reg[9]_i_16_n_0 ;
  wire \next_reg[9]_i_17_n_0 ;
  wire \next_reg[9]_i_18_n_0 ;
  wire \next_reg[9]_i_19_n_0 ;
  wire \next_reg[9]_i_20_n_0 ;
  wire \next_reg[9]_i_21_n_0 ;
  wire \next_reg[9]_i_22_n_0 ;
  wire \next_reg[9]_i_23_n_0 ;
  wire \next_reg[9]_i_24_n_0 ;
  wire \next_reg[9]_i_25_n_0 ;
  wire \next_reg[9]_i_26_n_0 ;
  wire \next_reg[9]_i_27_n_0 ;
  wire \next_reg[9]_i_28_n_0 ;
  wire \next_reg[9]_i_29_n_0 ;
  wire \next_reg[9]_i_2_n_0 ;
  wire \next_reg[9]_i_30_n_0 ;
  wire \next_reg[9]_i_31_n_0 ;
  wire \next_reg[9]_i_32_n_0 ;
  wire \next_reg[9]_i_33_n_0 ;
  wire \next_reg[9]_i_34_n_0 ;
  wire \next_reg[9]_i_35_n_0 ;
  wire \next_reg[9]_i_36_n_0 ;
  wire \next_reg[9]_i_37_n_0 ;
  wire \next_reg[9]_i_38_n_0 ;
  wire \next_reg[9]_i_39_n_0 ;
  wire \next_reg[9]_i_40_n_0 ;
  wire \next_reg[9]_i_41_n_0 ;
  wire \next_reg[9]_i_42_n_0 ;
  wire \next_reg[9]_i_43_n_0 ;
  wire \next_reg[9]_i_44_n_0 ;
  wire \next_reg[9]_i_45_n_0 ;
  wire \next_reg[9]_i_46_n_0 ;
  wire \next_reg[9]_i_47_n_0 ;
  wire \next_reg[9]_i_48_n_0 ;
  wire \next_reg[9]_i_49_n_0 ;
  wire \next_reg[9]_i_4_n_0 ;
  wire \next_reg[9]_i_50_n_0 ;
  wire \next_reg[9]_i_51_n_0 ;
  wire \next_reg[9]_i_52_n_0 ;
  wire \next_reg[9]_i_53_n_0 ;
  wire \next_reg[9]_i_54_n_0 ;
  wire \next_reg[9]_i_55_n_0 ;
  wire \next_reg[9]_i_56_n_0 ;
  wire \next_reg[9]_i_57_n_0 ;
  wire \next_reg[9]_i_58_n_0 ;
  wire \next_reg[9]_i_59_n_0 ;
  wire \next_reg[9]_i_5_n_0 ;
  wire \next_reg[9]_i_60_n_0 ;
  wire \next_reg[9]_i_6_n_0 ;
  wire \next_reg[9]_i_7_n_0 ;
  wire \next_reg[9]_i_8_n_0 ;
  wire \next_reg[9]_i_9_n_0 ;
  wire p_0_in0;
  wire [7:7]p_1_out;
  wire qspi_cs;
  wire qspi_cs_OBUF;
  wire qspi_miso;
  wire qspi_miso_IBUF;
  wire qspi_mosi;
  wire qspi_mosi_OBUF;
  wire qspi_sck;
  wire qspi_sck_OBUF;
  wire [15:0]respond_data;
  wire \respond_data[15]_i_1_n_0 ;
  wire \respond_data[15]_i_3_n_0 ;
  wire \respond_data[15]_i_4_n_0 ;
  wire \respond_data[7]_i_1_n_0 ;
  wire \respond_data[7]_i_3_n_0 ;
  wire \respond_data[7]_i_4_n_0 ;
  wire \respond_data[7]_i_5_n_0 ;
  wire \respond_data[7]_i_6_n_0 ;
  wire \respond_data[7]_i_7_n_0 ;
  wire start;
  wire start_i_10_n_0;
  wire start_i_11_n_0;
  wire start_i_12_n_0;
  wire start_i_13_n_0;
  wire start_i_14_n_0;
  wire start_i_15_n_0;
  wire start_i_16_n_0;
  wire start_i_17_n_0;
  wire start_i_18_n_0;
  wire start_i_19_n_0;
  wire start_i_1_n_0;
  wire start_i_20_n_0;
  wire start_i_21_n_0;
  wire start_i_22_n_0;
  wire start_i_23_n_0;
  wire start_i_24_n_0;
  wire start_i_25_n_0;
  wire start_i_26_n_0;
  wire start_i_2_n_0;
  wire start_i_3_n_0;
  wire start_i_4_n_0;
  wire start_i_5_n_0;
  wire start_i_6_n_0;
  wire start_i_7_n_0;
  wire start_i_8_n_0;
  wire start_i_9_n_0;
  wire [127:0]start_reg__0;
  wire [8:6]state;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire \state_reg_n_0_[9] ;
  wire \tx_data[7]_i_2_n_0 ;
  wire \tx_data[7]_i_3_n_0 ;
  wire \tx_data[7]_i_4_n_0 ;
  wire [7:0]uart_data;
  wire \uart_data[0]_i_1_n_0 ;
  wire \uart_data[1]_i_1_n_0 ;
  wire \uart_data[2]_i_1_n_0 ;
  wire \uart_data[3]_i_1_n_0 ;
  wire \uart_data[4]_i_1_n_0 ;
  wire \uart_data[5]_i_1_n_0 ;
  wire \uart_data[6]_i_1_n_0 ;
  wire \uart_data[7]_i_1_n_0 ;
  wire uart_rxd_out;
  wire uart_rxd_out_OBUF;
  wire uart_tx_done;
  wire [2:0]\NLW_next_reg[9]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_reg[9]_i_12_O_UNCONNECTED ;
  wire [2:0]\NLW_next_reg[9]_i_17_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_reg[9]_i_17_O_UNCONNECTED ;
  wire [2:0]\NLW_next_reg[9]_i_22_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_reg[9]_i_22_O_UNCONNECTED ;
  wire [2:0]\NLW_next_reg[9]_i_27_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_reg[9]_i_27_O_UNCONNECTED ;
  wire [3:0]\NLW_next_reg[9]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_reg[9]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_next_reg[9]_i_32_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_reg[9]_i_32_O_UNCONNECTED ;
  wire [2:0]\NLW_next_reg[9]_i_37_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_reg[9]_i_37_O_UNCONNECTED ;
  wire [2:0]\NLW_next_reg[9]_i_42_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_reg[9]_i_42_O_UNCONNECTED ;
  wire [2:0]\NLW_next_reg[9]_i_47_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_reg[9]_i_47_O_UNCONNECTED ;
  wire [2:0]\NLW_next_reg[9]_i_52_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_reg[9]_i_52_O_UNCONNECTED ;
  wire [2:0]\NLW_next_reg[9]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_reg[9]_i_7_O_UNCONNECTED ;

initial begin
 $sdf_annotate("SPI_Flash_read_tb_time_impl.sdf",,,,"tool_control");
end
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  IBUF \btn_IBUF[0]_inst 
       (.I(btn[0]),
        .O(btn_IBUF[0]));
  IBUF \btn_IBUF[1]_inst 
       (.I(btn[1]),
        .O(btn_IBUF[1]));
  BUFG clk_BUFG_inst
       (.I(clk),
        .O(clk_BUFG));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_counter[0]_i_1 
       (.I0(clk_counter[0]),
        .O(\clk_counter[0]_i_1_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h3C38)) 
    \clk_counter[1]_i_1 
       (.I0(clk_counter[2]),
        .I1(clk_counter[0]),
        .I2(clk_counter[1]),
        .I3(clk_counter[3]),
        .O(\clk_counter[1]_i_1_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \clk_counter[2]_i_1 
       (.I0(clk_counter[2]),
        .I1(clk_counter[0]),
        .I2(clk_counter[1]),
        .O(\clk_counter[2]_i_1_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_counter[3]_i_1 
       (.I0(clk_counter[2]),
        .I1(clk_counter[0]),
        .I2(clk_counter[1]),
        .I3(clk_counter[3]),
        .O(\clk_counter[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_counter_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(\clk_counter[0]_i_1_n_0 ),
        .Q(clk_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_counter_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(\clk_counter[1]_i_1_n_0 ),
        .Q(clk_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_counter_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(\clk_counter[2]_i_1_n_0 ),
        .Q(clk_counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_counter_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(\clk_counter[3]_i_1_n_0 ),
        .Q(clk_counter[3]));
  (* \PinAttr:I0:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFB0004)) 
    clk_i_1
       (.I0(clk_counter[1]),
        .I1(clk_counter[0]),
        .I2(clk_counter[3]),
        .I3(clk_counter[2]),
        .I4(clk),
        .O(clk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(clk_i_1_n_0),
        .Q(clk));
  LUT4 #(
    .INIT(16'h0054)) 
    enable_rx_i_1
       (.I0(state[6]),
        .I1(next[5]),
        .I2(next[6]),
        .I3(enable_tx_i_1_n_0),
        .O(enable_rx));
  FDCE #(
    .INIT(1'b0)) 
    enable_rx_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(enable_rx),
        .Q(enable_rx_reg_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    enable_tx_i_1
       (.I0(next[2]),
        .I1(next[3]),
        .I2(next[4]),
        .I3(next[1]),
        .O(enable_tx_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    enable_tx_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(enable_tx_i_1_n_0),
        .Q(enable_tx));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    enable_uart_i_1
       (.I0(next[8]),
        .I1(next[7]),
        .I2(state[8]),
        .O(enable_uart));
  FDCE #(
    .INIT(1'b0)) 
    enable_uart_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(enable_uart),
        .Q(enable_uart_reg_n_0));
  SPI_Master inst_spi
       (.AR(btn_IBUF[0]),
        .CLK(clk_BUFG),
        .D({inst_spi_n_3,inst_spi_n_4,inst_spi_n_5,inst_spi_n_6,inst_spi_n_7,inst_spi_n_8,inst_spi_n_9,inst_spi_n_10,inst_spi_n_11,inst_spi_n_12,inst_spi_n_13,inst_spi_n_14,inst_spi_n_15,inst_spi_n_16,inst_spi_n_17,inst_spi_n_18}),
        .Q({p_0_in0,state[6],\state_reg_n_0_[5] ,\state_reg_n_0_[4] ,\state_reg_n_0_[3] ,\state_reg_n_0_[2] ,\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .data0(data0),
        .enable_tx(enable_tx),
        .qspi_cs_OBUF(qspi_cs_OBUF),
        .qspi_miso_IBUF(qspi_miso_IBUF),
        .qspi_mosi_OBUF(qspi_mosi_OBUF),
        .qspi_sck_OBUF(qspi_sck_OBUF),
        .start(start),
        .\state_reg[0]_0 (enable_rx_reg_n_0),
        .\state_reg[6] (next__0[7:1]),
        .uart_tx_done(uart_tx_done));
  uart_tx inst_uart
       (.AR(btn_IBUF[0]),
        .CLK(clk_BUFG),
        .CO(next2),
        .D(next__0[9:8]),
        .Q(uart_data),
        .\state_reg[0]_0 (enable_uart_reg_n_0),
        .\state_reg[9] ({\state_reg_n_0_[9] ,state[8],p_0_in0}),
        .uart_rxd_out_OBUF(uart_rxd_out_OBUF),
        .uart_tx_done(uart_tx_done));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg[0] 
       (.CLR(1'b0),
        .D(next__0[0]),
        .G(\next_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next[0]));
  LUT4 #(
    .INIT(16'hF444)) 
    \next_reg[0]_i_1__1 
       (.I0(start),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[9] ),
        .I3(next2),
        .O(next__0[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg[1] 
       (.CLR(1'b0),
        .D(next__0[1]),
        .G(\next_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg[2] 
       (.CLR(1'b0),
        .D(next__0[2]),
        .G(\next_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg[3] 
       (.CLR(1'b0),
        .D(next__0[3]),
        .G(\next_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg[4] 
       (.CLR(1'b0),
        .D(next__0[4]),
        .G(\next_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg[5] 
       (.CLR(1'b0),
        .D(next__0[5]),
        .G(\next_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg[6] 
       (.CLR(1'b0),
        .D(next__0[6]),
        .G(\next_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg[7] 
       (.CLR(1'b0),
        .D(next__0[7]),
        .G(\next_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg[8] 
       (.CLR(1'b0),
        .D(next__0[8]),
        .G(\next_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg[9] 
       (.CLR(1'b0),
        .D(next__0[9]),
        .G(\next_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next[9]));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_10 
       (.I0(start_reg__0[122]),
        .I1(start_reg__0[121]),
        .I2(start_reg__0[120]),
        .O(\next_reg[9]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_11 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(state[6]),
        .O(\next_reg[9]_i_11_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \next_reg[9]_i_12 
       (.CI(\next_reg[9]_i_17_n_0 ),
        .CO({\next_reg[9]_i_12_n_0 ,\NLW_next_reg[9]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_reg[9]_i_12_O_UNCONNECTED [3:0]),
        .S({\next_reg[9]_i_18_n_0 ,\next_reg[9]_i_19_n_0 ,\next_reg[9]_i_20_n_0 ,\next_reg[9]_i_21_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_13 
       (.I0(start_reg__0[119]),
        .I1(start_reg__0[118]),
        .I2(start_reg__0[117]),
        .O(\next_reg[9]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_14 
       (.I0(start_reg__0[116]),
        .I1(start_reg__0[115]),
        .I2(start_reg__0[114]),
        .O(\next_reg[9]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_15 
       (.I0(start_reg__0[113]),
        .I1(start_reg__0[112]),
        .I2(start_reg__0[111]),
        .O(\next_reg[9]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_16 
       (.I0(start_reg__0[110]),
        .I1(start_reg__0[109]),
        .I2(start_reg__0[108]),
        .O(\next_reg[9]_i_16_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \next_reg[9]_i_17 
       (.CI(\next_reg[9]_i_22_n_0 ),
        .CO({\next_reg[9]_i_17_n_0 ,\NLW_next_reg[9]_i_17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_reg[9]_i_17_O_UNCONNECTED [3:0]),
        .S({\next_reg[9]_i_23_n_0 ,\next_reg[9]_i_24_n_0 ,\next_reg[9]_i_25_n_0 ,\next_reg[9]_i_26_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_18 
       (.I0(start_reg__0[107]),
        .I1(start_reg__0[106]),
        .I2(start_reg__0[105]),
        .O(\next_reg[9]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_19 
       (.I0(start_reg__0[104]),
        .I1(start_reg__0[103]),
        .I2(start_reg__0[102]),
        .O(\next_reg[9]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEFEEEFEFEEE)) 
    \next_reg[9]_i_2 
       (.I0(\next_reg[9]_i_4_n_0 ),
        .I1(\next_reg[9]_i_5_n_0 ),
        .I2(\next_reg[9]_i_6_n_0 ),
        .I3(\state_reg_n_0_[9] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\next_reg[9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_20 
       (.I0(start_reg__0[101]),
        .I1(start_reg__0[100]),
        .I2(start_reg__0[99]),
        .O(\next_reg[9]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_21 
       (.I0(start_reg__0[98]),
        .I1(start_reg__0[97]),
        .I2(start_reg__0[96]),
        .O(\next_reg[9]_i_21_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \next_reg[9]_i_22 
       (.CI(\next_reg[9]_i_27_n_0 ),
        .CO({\next_reg[9]_i_22_n_0 ,\NLW_next_reg[9]_i_22_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_reg[9]_i_22_O_UNCONNECTED [3:0]),
        .S({\next_reg[9]_i_28_n_0 ,\next_reg[9]_i_29_n_0 ,\next_reg[9]_i_30_n_0 ,\next_reg[9]_i_31_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_23 
       (.I0(start_reg__0[95]),
        .I1(start_reg__0[94]),
        .I2(start_reg__0[93]),
        .O(\next_reg[9]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_24 
       (.I0(start_reg__0[92]),
        .I1(start_reg__0[91]),
        .I2(start_reg__0[90]),
        .O(\next_reg[9]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_25 
       (.I0(start_reg__0[89]),
        .I1(start_reg__0[88]),
        .I2(start_reg__0[87]),
        .O(\next_reg[9]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_26 
       (.I0(start_reg__0[86]),
        .I1(start_reg__0[85]),
        .I2(start_reg__0[84]),
        .O(\next_reg[9]_i_26_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \next_reg[9]_i_27 
       (.CI(\next_reg[9]_i_32_n_0 ),
        .CO({\next_reg[9]_i_27_n_0 ,\NLW_next_reg[9]_i_27_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_reg[9]_i_27_O_UNCONNECTED [3:0]),
        .S({\next_reg[9]_i_33_n_0 ,\next_reg[9]_i_34_n_0 ,\next_reg[9]_i_35_n_0 ,\next_reg[9]_i_36_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_28 
       (.I0(start_reg__0[83]),
        .I1(start_reg__0[82]),
        .I2(start_reg__0[81]),
        .O(\next_reg[9]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_29 
       (.I0(start_reg__0[80]),
        .I1(start_reg__0[79]),
        .I2(start_reg__0[78]),
        .O(\next_reg[9]_i_29_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \next_reg[9]_i_3 
       (.CI(\next_reg[9]_i_7_n_0 ),
        .CO({\NLW_next_reg[9]_i_3_CO_UNCONNECTED [3],next2,\NLW_next_reg[9]_i_3_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_reg[9]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\next_reg[9]_i_8_n_0 ,\next_reg[9]_i_9_n_0 ,\next_reg[9]_i_10_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_30 
       (.I0(start_reg__0[77]),
        .I1(start_reg__0[76]),
        .I2(start_reg__0[75]),
        .O(\next_reg[9]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_31 
       (.I0(start_reg__0[74]),
        .I1(start_reg__0[73]),
        .I2(start_reg__0[72]),
        .O(\next_reg[9]_i_31_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \next_reg[9]_i_32 
       (.CI(\next_reg[9]_i_37_n_0 ),
        .CO({\next_reg[9]_i_32_n_0 ,\NLW_next_reg[9]_i_32_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_reg[9]_i_32_O_UNCONNECTED [3:0]),
        .S({\next_reg[9]_i_38_n_0 ,\next_reg[9]_i_39_n_0 ,\next_reg[9]_i_40_n_0 ,\next_reg[9]_i_41_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_33 
       (.I0(start_reg__0[71]),
        .I1(start_reg__0[70]),
        .I2(start_reg__0[69]),
        .O(\next_reg[9]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_34 
       (.I0(start_reg__0[68]),
        .I1(start_reg__0[67]),
        .I2(start_reg__0[66]),
        .O(\next_reg[9]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_35 
       (.I0(start_reg__0[65]),
        .I1(start_reg__0[64]),
        .I2(start_reg__0[63]),
        .O(\next_reg[9]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_36 
       (.I0(start_reg__0[62]),
        .I1(start_reg__0[61]),
        .I2(start_reg__0[60]),
        .O(\next_reg[9]_i_36_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \next_reg[9]_i_37 
       (.CI(\next_reg[9]_i_42_n_0 ),
        .CO({\next_reg[9]_i_37_n_0 ,\NLW_next_reg[9]_i_37_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_reg[9]_i_37_O_UNCONNECTED [3:0]),
        .S({\next_reg[9]_i_43_n_0 ,\next_reg[9]_i_44_n_0 ,\next_reg[9]_i_45_n_0 ,\next_reg[9]_i_46_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_38 
       (.I0(start_reg__0[59]),
        .I1(start_reg__0[58]),
        .I2(start_reg__0[57]),
        .O(\next_reg[9]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_39 
       (.I0(start_reg__0[56]),
        .I1(start_reg__0[55]),
        .I2(start_reg__0[54]),
        .O(\next_reg[9]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0002022800000000)) 
    \next_reg[9]_i_4 
       (.I0(\respond_data[7]_i_5_n_0 ),
        .I1(p_0_in0),
        .I2(state[8]),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\next_reg[9]_i_11_n_0 ),
        .O(\next_reg[9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_40 
       (.I0(start_reg__0[53]),
        .I1(start_reg__0[52]),
        .I2(start_reg__0[51]),
        .O(\next_reg[9]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_41 
       (.I0(start_reg__0[50]),
        .I1(start_reg__0[49]),
        .I2(start_reg__0[48]),
        .O(\next_reg[9]_i_41_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \next_reg[9]_i_42 
       (.CI(\next_reg[9]_i_47_n_0 ),
        .CO({\next_reg[9]_i_42_n_0 ,\NLW_next_reg[9]_i_42_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_reg[9]_i_42_O_UNCONNECTED [3:0]),
        .S({\next_reg[9]_i_48_n_0 ,\next_reg[9]_i_49_n_0 ,\next_reg[9]_i_50_n_0 ,\next_reg[9]_i_51_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_43 
       (.I0(start_reg__0[47]),
        .I1(start_reg__0[46]),
        .I2(start_reg__0[45]),
        .O(\next_reg[9]_i_43_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_44 
       (.I0(start_reg__0[44]),
        .I1(start_reg__0[43]),
        .I2(start_reg__0[42]),
        .O(\next_reg[9]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_45 
       (.I0(start_reg__0[41]),
        .I1(start_reg__0[40]),
        .I2(start_reg__0[39]),
        .O(\next_reg[9]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_46 
       (.I0(start_reg__0[38]),
        .I1(start_reg__0[37]),
        .I2(start_reg__0[36]),
        .O(\next_reg[9]_i_46_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \next_reg[9]_i_47 
       (.CI(\next_reg[9]_i_52_n_0 ),
        .CO({\next_reg[9]_i_47_n_0 ,\NLW_next_reg[9]_i_47_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_reg[9]_i_47_O_UNCONNECTED [3:0]),
        .S({\next_reg[9]_i_53_n_0 ,\next_reg[9]_i_54_n_0 ,\next_reg[9]_i_55_n_0 ,\next_reg[9]_i_56_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_48 
       (.I0(start_reg__0[35]),
        .I1(start_reg__0[34]),
        .I2(start_reg__0[33]),
        .O(\next_reg[9]_i_48_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_49 
       (.I0(start_reg__0[32]),
        .I1(start_reg__0[31]),
        .I2(start_reg__0[30]),
        .O(\next_reg[9]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h00080880)) 
    \next_reg[9]_i_5 
       (.I0(\respond_data[7]_i_4_n_0 ),
        .I1(\respond_data[7]_i_5_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(state[6]),
        .O(\next_reg[9]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_50 
       (.I0(start_reg__0[29]),
        .I1(start_reg__0[28]),
        .I2(start_reg__0[27]),
        .O(\next_reg[9]_i_50_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_51 
       (.I0(start_reg__0[26]),
        .I1(start_reg__0[25]),
        .I2(start_reg__0[24]),
        .O(\next_reg[9]_i_51_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \next_reg[9]_i_52 
       (.CI(1'b0),
        .CO({\next_reg[9]_i_52_n_0 ,\NLW_next_reg[9]_i_52_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_reg[9]_i_52_O_UNCONNECTED [3:0]),
        .S({\next_reg[9]_i_57_n_0 ,\next_reg[9]_i_58_n_0 ,\next_reg[9]_i_59_n_0 ,\next_reg[9]_i_60_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_53 
       (.I0(start_reg__0[23]),
        .I1(start_reg__0[22]),
        .I2(start_reg__0[21]),
        .O(\next_reg[9]_i_53_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_54 
       (.I0(start_reg__0[20]),
        .I1(start_reg__0[19]),
        .I2(start_reg__0[18]),
        .O(\next_reg[9]_i_54_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_55 
       (.I0(start_reg__0[17]),
        .I1(start_reg__0[16]),
        .I2(start_reg__0[15]),
        .O(\next_reg[9]_i_55_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_56 
       (.I0(start_reg__0[14]),
        .I1(start_reg__0[13]),
        .I2(start_reg__0[12]),
        .O(\next_reg[9]_i_56_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_57 
       (.I0(start_reg__0[11]),
        .I1(start_reg__0[10]),
        .I2(start_reg__0[9]),
        .O(\next_reg[9]_i_57_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_58 
       (.I0(start_reg__0[8]),
        .I1(start_reg__0[7]),
        .I2(start_reg__0[6]),
        .O(\next_reg[9]_i_58_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_59 
       (.I0(start_reg__0[5]),
        .I1(start_reg__0[4]),
        .I2(start_reg__0[3]),
        .O(\next_reg[9]_i_59_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \next_reg[9]_i_6 
       (.I0(state[6]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\respond_data[7]_i_4_n_0 ),
        .O(\next_reg[9]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_60 
       (.I0(start_reg__0[2]),
        .I1(start_reg__0[1]),
        .I2(start_reg__0[0]),
        .O(\next_reg[9]_i_60_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \next_reg[9]_i_7 
       (.CI(\next_reg[9]_i_12_n_0 ),
        .CO({\next_reg[9]_i_7_n_0 ,\NLW_next_reg[9]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_reg[9]_i_7_O_UNCONNECTED [3:0]),
        .S({\next_reg[9]_i_13_n_0 ,\next_reg[9]_i_14_n_0 ,\next_reg[9]_i_15_n_0 ,\next_reg[9]_i_16_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \next_reg[9]_i_8 
       (.I0(start_reg__0[126]),
        .I1(start_reg__0[127]),
        .O(\next_reg[9]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \next_reg[9]_i_9 
       (.I0(start_reg__0[125]),
        .I1(start_reg__0[124]),
        .I2(start_reg__0[123]),
        .O(\next_reg[9]_i_9_n_0 ));
  OBUF qspi_cs_OBUF_inst
       (.I(qspi_cs_OBUF),
        .O(qspi_cs));
  IBUF qspi_miso_IBUF_inst
       (.I(qspi_miso),
        .O(qspi_miso_IBUF));
  OBUF qspi_mosi_OBUF_inst
       (.I(qspi_mosi_OBUF),
        .O(qspi_mosi));
  OBUF qspi_sck_OBUF_inst
       (.I(qspi_sck_OBUF),
        .O(qspi_sck));
  LUT6 #(
    .INIT(64'h888B000088880000)) 
    \respond_data[15]_i_1 
       (.I0(\respond_data[15]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\tx_data[7]_i_3_n_0 ),
        .I3(enable_tx_i_1_n_0),
        .I4(\next_reg[9]_i_6_n_0 ),
        .I5(\respond_data[15]_i_4_n_0 ),
        .O(\respond_data[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \respond_data[15]_i_3 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[9] ),
        .O(\respond_data[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \respond_data[15]_i_4 
       (.I0(next[6]),
        .I1(next[9]),
        .I2(next[0]),
        .I3(next[5]),
        .I4(\state_reg_n_0_[9] ),
        .I5(\state_reg_n_0_[5] ),
        .O(\respond_data[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABAAAAAAA)) 
    \respond_data[7]_i_1 
       (.I0(\respond_data[7]_i_3_n_0 ),
        .I1(\tx_data[7]_i_2_n_0 ),
        .I2(\respond_data[7]_i_4_n_0 ),
        .I3(\respond_data[7]_i_5_n_0 ),
        .I4(\respond_data[7]_i_6_n_0 ),
        .I5(enable_tx_i_1_n_0),
        .O(\respond_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \respond_data[7]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[9] ),
        .I3(\respond_data[7]_i_4_n_0 ),
        .I4(\next_reg[9]_i_11_n_0 ),
        .O(\respond_data[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \respond_data[7]_i_4 
       (.I0(state[8]),
        .I1(p_0_in0),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\respond_data[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \respond_data[7]_i_5 
       (.I0(\state_reg_n_0_[9] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\respond_data[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \respond_data[7]_i_6 
       (.I0(state[6]),
        .I1(next[9]),
        .I2(\respond_data[7]_i_7_n_0 ),
        .I3(next[0]),
        .I4(next[7]),
        .I5(next[8]),
        .O(\respond_data[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \respond_data[7]_i_7 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\respond_data[7]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \respond_data_reg[0] 
       (.C(clk_BUFG),
        .CE(\respond_data[7]_i_1_n_0 ),
        .CLR(btn_IBUF[0]),
        .D(inst_spi_n_18),
        .Q(respond_data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \respond_data_reg[10] 
       (.C(clk_BUFG),
        .CE(\respond_data[15]_i_1_n_0 ),
        .CLR(btn_IBUF[0]),
        .D(inst_spi_n_8),
        .Q(respond_data[10]));
  FDCE #(
    .INIT(1'b0)) 
    \respond_data_reg[11] 
       (.C(clk_BUFG),
        .CE(\respond_data[15]_i_1_n_0 ),
        .CLR(btn_IBUF[0]),
        .D(inst_spi_n_7),
        .Q(respond_data[11]));
  FDCE #(
    .INIT(1'b0)) 
    \respond_data_reg[12] 
       (.C(clk_BUFG),
        .CE(\respond_data[15]_i_1_n_0 ),
        .CLR(btn_IBUF[0]),
        .D(inst_spi_n_6),
        .Q(respond_data[12]));
  FDCE #(
    .INIT(1'b0)) 
    \respond_data_reg[13] 
       (.C(clk_BUFG),
        .CE(\respond_data[15]_i_1_n_0 ),
        .CLR(btn_IBUF[0]),
        .D(inst_spi_n_5),
        .Q(respond_data[13]));
  FDCE #(
    .INIT(1'b0)) 
    \respond_data_reg[14] 
       (.C(clk_BUFG),
        .CE(\respond_data[15]_i_1_n_0 ),
        .CLR(btn_IBUF[0]),
        .D(inst_spi_n_4),
        .Q(respond_data[14]));
  FDCE #(
    .INIT(1'b0)) 
    \respond_data_reg[15] 
       (.C(clk_BUFG),
        .CE(\respond_data[15]_i_1_n_0 ),
        .CLR(btn_IBUF[0]),
        .D(inst_spi_n_3),
        .Q(respond_data[15]));
  FDCE #(
    .INIT(1'b0)) 
    \respond_data_reg[1] 
       (.C(clk_BUFG),
        .CE(\respond_data[7]_i_1_n_0 ),
        .CLR(btn_IBUF[0]),
        .D(inst_spi_n_17),
        .Q(respond_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \respond_data_reg[2] 
       (.C(clk_BUFG),
        .CE(\respond_data[7]_i_1_n_0 ),
        .CLR(btn_IBUF[0]),
        .D(inst_spi_n_16),
        .Q(respond_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \respond_data_reg[3] 
       (.C(clk_BUFG),
        .CE(\respond_data[7]_i_1_n_0 ),
        .CLR(btn_IBUF[0]),
        .D(inst_spi_n_15),
        .Q(respond_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \respond_data_reg[4] 
       (.C(clk_BUFG),
        .CE(\respond_data[7]_i_1_n_0 ),
        .CLR(btn_IBUF[0]),
        .D(inst_spi_n_14),
        .Q(respond_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \respond_data_reg[5] 
       (.C(clk_BUFG),
        .CE(\respond_data[7]_i_1_n_0 ),
        .CLR(btn_IBUF[0]),
        .D(inst_spi_n_13),
        .Q(respond_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \respond_data_reg[6] 
       (.C(clk_BUFG),
        .CE(\respond_data[7]_i_1_n_0 ),
        .CLR(btn_IBUF[0]),
        .D(inst_spi_n_12),
        .Q(respond_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \respond_data_reg[7] 
       (.C(clk_BUFG),
        .CE(\respond_data[7]_i_1_n_0 ),
        .CLR(btn_IBUF[0]),
        .D(inst_spi_n_11),
        .Q(respond_data[7]));
  FDCE #(
    .INIT(1'b0)) 
    \respond_data_reg[8] 
       (.C(clk_BUFG),
        .CE(\respond_data[15]_i_1_n_0 ),
        .CLR(btn_IBUF[0]),
        .D(inst_spi_n_10),
        .Q(respond_data[8]));
  FDCE #(
    .INIT(1'b0)) 
    \respond_data_reg[9] 
       (.C(clk_BUFG),
        .CE(\respond_data[15]_i_1_n_0 ),
        .CLR(btn_IBUF[0]),
        .D(inst_spi_n_9),
        .Q(respond_data[9]));
  LUT4 #(
    .INIT(16'h8000)) 
    start_i_1
       (.I0(start_i_2_n_0),
        .I1(start_i_3_n_0),
        .I2(start_i_4_n_0),
        .I3(start_i_5_n_0),
        .O(start_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_10
       (.I0(start_reg__0[28]),
        .I1(start_reg__0[29]),
        .I2(start_reg__0[26]),
        .I3(start_reg__0[27]),
        .I4(start_reg__0[31]),
        .I5(start_reg__0[30]),
        .O(start_i_10_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_11
       (.I0(start_reg__0[34]),
        .I1(start_reg__0[35]),
        .I2(start_reg__0[32]),
        .I3(start_reg__0[33]),
        .I4(start_reg__0[37]),
        .I5(start_reg__0[36]),
        .O(start_i_11_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_12
       (.I0(start_reg__0[22]),
        .I1(start_reg__0[23]),
        .I2(start_reg__0[20]),
        .I3(start_reg__0[21]),
        .I4(start_reg__0[25]),
        .I5(start_reg__0[24]),
        .O(start_i_12_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_13
       (.I0(start_reg__0[16]),
        .I1(start_reg__0[17]),
        .I2(start_reg__0[14]),
        .I3(start_reg__0[15]),
        .I4(start_reg__0[19]),
        .I5(start_reg__0[18]),
        .O(start_i_13_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_14
       (.I0(start_reg__0[10]),
        .I1(start_reg__0[11]),
        .I2(start_reg__0[8]),
        .I3(start_reg__0[9]),
        .I4(start_reg__0[13]),
        .I5(start_reg__0[12]),
        .O(start_i_14_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_15
       (.I0(start_reg__0[4]),
        .I1(start_reg__0[5]),
        .I2(start_reg__0[2]),
        .I3(start_reg__0[3]),
        .I4(start_reg__0[7]),
        .I5(start_reg__0[6]),
        .O(start_i_15_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_16
       (.I0(start_reg__0[82]),
        .I1(start_reg__0[83]),
        .I2(start_reg__0[80]),
        .I3(start_reg__0[81]),
        .I4(start_reg__0[85]),
        .I5(start_reg__0[84]),
        .O(start_i_16_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_17
       (.I0(start_reg__0[76]),
        .I1(start_reg__0[77]),
        .I2(start_reg__0[74]),
        .I3(start_reg__0[75]),
        .I4(start_reg__0[79]),
        .I5(start_reg__0[78]),
        .O(start_i_17_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_18
       (.I0(start_reg__0[94]),
        .I1(start_reg__0[95]),
        .I2(start_reg__0[92]),
        .I3(start_reg__0[93]),
        .I4(start_reg__0[97]),
        .I5(start_reg__0[96]),
        .O(start_i_18_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_19
       (.I0(start_reg__0[88]),
        .I1(start_reg__0[89]),
        .I2(start_reg__0[86]),
        .I3(start_reg__0[87]),
        .I4(start_reg__0[91]),
        .I5(start_reg__0[90]),
        .O(start_i_19_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_2
       (.I0(start_i_6_n_0),
        .I1(start_i_7_n_0),
        .I2(start_i_8_n_0),
        .I3(start_i_9_n_0),
        .I4(start_i_10_n_0),
        .I5(start_i_11_n_0),
        .O(start_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_20
       (.I0(start_reg__0[64]),
        .I1(start_reg__0[65]),
        .I2(start_reg__0[62]),
        .I3(start_reg__0[63]),
        .I4(start_reg__0[67]),
        .I5(start_reg__0[66]),
        .O(start_i_20_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_21
       (.I0(start_reg__0[70]),
        .I1(start_reg__0[71]),
        .I2(start_reg__0[68]),
        .I3(start_reg__0[69]),
        .I4(start_reg__0[73]),
        .I5(start_reg__0[72]),
        .O(start_i_21_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_22
       (.I0(start_reg__0[124]),
        .I1(start_reg__0[125]),
        .I2(start_reg__0[122]),
        .I3(start_reg__0[123]),
        .I4(start_reg__0[127]),
        .I5(start_reg__0[126]),
        .O(start_i_22_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_23
       (.I0(start_reg__0[118]),
        .I1(start_reg__0[119]),
        .I2(start_reg__0[116]),
        .I3(start_reg__0[117]),
        .I4(start_reg__0[121]),
        .I5(start_reg__0[120]),
        .O(start_i_23_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_24
       (.I0(start_reg__0[112]),
        .I1(start_reg__0[113]),
        .I2(start_reg__0[110]),
        .I3(start_reg__0[111]),
        .I4(start_reg__0[115]),
        .I5(start_reg__0[114]),
        .O(start_i_24_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_25
       (.I0(start_reg__0[100]),
        .I1(start_reg__0[101]),
        .I2(start_reg__0[98]),
        .I3(start_reg__0[99]),
        .I4(start_reg__0[103]),
        .I5(start_reg__0[102]),
        .O(start_i_25_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_26
       (.I0(start_reg__0[106]),
        .I1(start_reg__0[107]),
        .I2(start_reg__0[104]),
        .I3(start_reg__0[105]),
        .I4(start_reg__0[109]),
        .I5(start_reg__0[108]),
        .O(start_i_26_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_3
       (.I0(start_i_12_n_0),
        .I1(start_i_13_n_0),
        .I2(start_i_14_n_0),
        .I3(start_i_15_n_0),
        .I4(start_reg__0[0]),
        .I5(start_reg__0[1]),
        .O(start_i_3_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_4
       (.I0(start_i_16_n_0),
        .I1(start_i_17_n_0),
        .I2(start_i_18_n_0),
        .I3(start_i_19_n_0),
        .I4(start_i_20_n_0),
        .I5(start_i_21_n_0),
        .O(start_i_4_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    start_i_5
       (.I0(start_i_22_n_0),
        .I1(start_i_23_n_0),
        .I2(start_i_24_n_0),
        .I3(start_i_25_n_0),
        .I4(start_i_26_n_0),
        .O(start_i_5_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_6
       (.I0(start_reg__0[46]),
        .I1(start_reg__0[47]),
        .I2(start_reg__0[44]),
        .I3(start_reg__0[45]),
        .I4(start_reg__0[49]),
        .I5(start_reg__0[48]),
        .O(start_i_6_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_7
       (.I0(start_reg__0[40]),
        .I1(start_reg__0[41]),
        .I2(start_reg__0[38]),
        .I3(start_reg__0[39]),
        .I4(start_reg__0[43]),
        .I5(start_reg__0[42]),
        .O(start_i_7_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_8
       (.I0(start_reg__0[58]),
        .I1(start_reg__0[59]),
        .I2(start_reg__0[56]),
        .I3(start_reg__0[57]),
        .I4(start_reg__0[61]),
        .I5(start_reg__0[60]),
        .O(start_i_8_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    start_i_9
       (.I0(start_reg__0[52]),
        .I1(start_reg__0[53]),
        .I2(start_reg__0[50]),
        .I3(start_reg__0[51]),
        .I4(start_reg__0[55]),
        .I5(start_reg__0[54]),
        .O(start_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    start_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_i_1_n_0),
        .Q(start));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[0] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(btn_IBUF[1]),
        .Q(start_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[100] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[99]),
        .Q(start_reg__0[100]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[101] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[100]),
        .Q(start_reg__0[101]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[102] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[101]),
        .Q(start_reg__0[102]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[103] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[102]),
        .Q(start_reg__0[103]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[104] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[103]),
        .Q(start_reg__0[104]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[105] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[104]),
        .Q(start_reg__0[105]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[106] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[105]),
        .Q(start_reg__0[106]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[107] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[106]),
        .Q(start_reg__0[107]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[108] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[107]),
        .Q(start_reg__0[108]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[109] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[108]),
        .Q(start_reg__0[109]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[10] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[9]),
        .Q(start_reg__0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[110] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[109]),
        .Q(start_reg__0[110]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[111] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[110]),
        .Q(start_reg__0[111]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[112] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[111]),
        .Q(start_reg__0[112]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[113] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[112]),
        .Q(start_reg__0[113]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[114] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[113]),
        .Q(start_reg__0[114]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[115] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[114]),
        .Q(start_reg__0[115]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[116] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[115]),
        .Q(start_reg__0[116]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[117] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[116]),
        .Q(start_reg__0[117]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[118] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[117]),
        .Q(start_reg__0[118]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[119] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[118]),
        .Q(start_reg__0[119]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[11] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[10]),
        .Q(start_reg__0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[120] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[119]),
        .Q(start_reg__0[120]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[121] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[120]),
        .Q(start_reg__0[121]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[122] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[121]),
        .Q(start_reg__0[122]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[123] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[122]),
        .Q(start_reg__0[123]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[124] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[123]),
        .Q(start_reg__0[124]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[125] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[124]),
        .Q(start_reg__0[125]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[126] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[125]),
        .Q(start_reg__0[126]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[127] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[126]),
        .Q(start_reg__0[127]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[12] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[11]),
        .Q(start_reg__0[12]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[13] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[12]),
        .Q(start_reg__0[13]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[14] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[13]),
        .Q(start_reg__0[14]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[15] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[14]),
        .Q(start_reg__0[15]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[16] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[15]),
        .Q(start_reg__0[16]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[17] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[16]),
        .Q(start_reg__0[17]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[18] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[17]),
        .Q(start_reg__0[18]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[19] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[18]),
        .Q(start_reg__0[19]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[1] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[0]),
        .Q(start_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[20] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[19]),
        .Q(start_reg__0[20]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[21] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[20]),
        .Q(start_reg__0[21]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[22] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[21]),
        .Q(start_reg__0[22]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[23] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[22]),
        .Q(start_reg__0[23]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[24] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[23]),
        .Q(start_reg__0[24]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[25] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[24]),
        .Q(start_reg__0[25]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[26] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[25]),
        .Q(start_reg__0[26]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[27] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[26]),
        .Q(start_reg__0[27]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[28] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[27]),
        .Q(start_reg__0[28]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[29] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[28]),
        .Q(start_reg__0[29]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[2] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[1]),
        .Q(start_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[30] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[29]),
        .Q(start_reg__0[30]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[31] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[30]),
        .Q(start_reg__0[31]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[32] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[31]),
        .Q(start_reg__0[32]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[33] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[32]),
        .Q(start_reg__0[33]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[34] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[33]),
        .Q(start_reg__0[34]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[35] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[34]),
        .Q(start_reg__0[35]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[36] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[35]),
        .Q(start_reg__0[36]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[37] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[36]),
        .Q(start_reg__0[37]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[38] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[37]),
        .Q(start_reg__0[38]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[39] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[38]),
        .Q(start_reg__0[39]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[3] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[2]),
        .Q(start_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[40] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[39]),
        .Q(start_reg__0[40]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[41] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[40]),
        .Q(start_reg__0[41]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[42] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[41]),
        .Q(start_reg__0[42]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[43] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[42]),
        .Q(start_reg__0[43]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[44] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[43]),
        .Q(start_reg__0[44]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[45] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[44]),
        .Q(start_reg__0[45]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[46] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[45]),
        .Q(start_reg__0[46]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[47] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[46]),
        .Q(start_reg__0[47]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[48] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[47]),
        .Q(start_reg__0[48]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[49] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[48]),
        .Q(start_reg__0[49]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[4] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[3]),
        .Q(start_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[50] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[49]),
        .Q(start_reg__0[50]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[51] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[50]),
        .Q(start_reg__0[51]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[52] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[51]),
        .Q(start_reg__0[52]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[53] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[52]),
        .Q(start_reg__0[53]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[54] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[53]),
        .Q(start_reg__0[54]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[55] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[54]),
        .Q(start_reg__0[55]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[56] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[55]),
        .Q(start_reg__0[56]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[57] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[56]),
        .Q(start_reg__0[57]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[58] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[57]),
        .Q(start_reg__0[58]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[59] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[58]),
        .Q(start_reg__0[59]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[5] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[4]),
        .Q(start_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[60] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[59]),
        .Q(start_reg__0[60]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[61] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[60]),
        .Q(start_reg__0[61]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[62] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[61]),
        .Q(start_reg__0[62]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[63] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[62]),
        .Q(start_reg__0[63]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[64] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[63]),
        .Q(start_reg__0[64]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[65] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[64]),
        .Q(start_reg__0[65]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[66] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[65]),
        .Q(start_reg__0[66]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[67] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[66]),
        .Q(start_reg__0[67]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[68] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[67]),
        .Q(start_reg__0[68]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[69] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[68]),
        .Q(start_reg__0[69]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[6] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[5]),
        .Q(start_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[70] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[69]),
        .Q(start_reg__0[70]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[71] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[70]),
        .Q(start_reg__0[71]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[72] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[71]),
        .Q(start_reg__0[72]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[73] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[72]),
        .Q(start_reg__0[73]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[74] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[73]),
        .Q(start_reg__0[74]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[75] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[74]),
        .Q(start_reg__0[75]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[76] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[75]),
        .Q(start_reg__0[76]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[77] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[76]),
        .Q(start_reg__0[77]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[78] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[77]),
        .Q(start_reg__0[78]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[79] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[78]),
        .Q(start_reg__0[79]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[7] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[6]),
        .Q(start_reg__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[80] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[79]),
        .Q(start_reg__0[80]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[81] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[80]),
        .Q(start_reg__0[81]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[82] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[81]),
        .Q(start_reg__0[82]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[83] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[82]),
        .Q(start_reg__0[83]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[84] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[83]),
        .Q(start_reg__0[84]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[85] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[84]),
        .Q(start_reg__0[85]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[86] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[85]),
        .Q(start_reg__0[86]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[87] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[86]),
        .Q(start_reg__0[87]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[88] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[87]),
        .Q(start_reg__0[88]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[89] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[88]),
        .Q(start_reg__0[89]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[8] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[7]),
        .Q(start_reg__0[8]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[90] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[89]),
        .Q(start_reg__0[90]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[91] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[90]),
        .Q(start_reg__0[91]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[92] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[91]),
        .Q(start_reg__0[92]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[93] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[92]),
        .Q(start_reg__0[93]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[94] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[93]),
        .Q(start_reg__0[94]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[95] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[94]),
        .Q(start_reg__0[95]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[96] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[95]),
        .Q(start_reg__0[96]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[97] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[96]),
        .Q(start_reg__0[97]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[98] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[97]),
        .Q(start_reg__0[98]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[99] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[98]),
        .Q(start_reg__0[99]));
  FDCE #(
    .INIT(1'b0)) 
    \start_reg_reg[9] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(start_reg__0[8]),
        .Q(start_reg__0[9]));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(next[0]),
        .PRE(btn_IBUF[0]),
        .Q(\state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(next[1]),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(next[2]),
        .Q(\state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(next[3]),
        .Q(\state_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(next[4]),
        .Q(\state_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(next[5]),
        .Q(\state_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[6] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(next[6]),
        .Q(state[6]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[7] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(next[7]),
        .Q(p_0_in0));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[8] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(next[8]),
        .Q(state[8]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[9] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(next[9]),
        .Q(\state_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \tx_data[7]_i_1__0 
       (.I0(next[9]),
        .I1(next[1]),
        .I2(next[0]),
        .I3(\tx_data[7]_i_2_n_0 ),
        .I4(\tx_data[7]_i_3_n_0 ),
        .I5(\tx_data[7]_i_4_n_0 ),
        .O(p_1_out));
  LUT2 #(
    .INIT(4'hE)) 
    \tx_data[7]_i_2 
       (.I0(next[5]),
        .I1(next[6]),
        .O(\tx_data[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \tx_data[7]_i_3 
       (.I0(next[7]),
        .I1(next[8]),
        .O(\tx_data[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \tx_data[7]_i_4 
       (.I0(next[4]),
        .I1(next[3]),
        .I2(next[2]),
        .O(\tx_data[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[7] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(p_1_out),
        .Q(data0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \uart_data[0]_i_1 
       (.I0(respond_data[8]),
        .I1(respond_data[0]),
        .I2(next[8]),
        .I3(next[7]),
        .O(\uart_data[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \uart_data[1]_i_1 
       (.I0(respond_data[9]),
        .I1(respond_data[1]),
        .I2(next[8]),
        .I3(next[7]),
        .O(\uart_data[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \uart_data[2]_i_1 
       (.I0(respond_data[10]),
        .I1(respond_data[2]),
        .I2(next[8]),
        .I3(next[7]),
        .O(\uart_data[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \uart_data[3]_i_1 
       (.I0(respond_data[11]),
        .I1(respond_data[3]),
        .I2(next[8]),
        .I3(next[7]),
        .O(\uart_data[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \uart_data[4]_i_1 
       (.I0(respond_data[12]),
        .I1(respond_data[4]),
        .I2(next[8]),
        .I3(next[7]),
        .O(\uart_data[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \uart_data[5]_i_1 
       (.I0(respond_data[13]),
        .I1(respond_data[5]),
        .I2(next[8]),
        .I3(next[7]),
        .O(\uart_data[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \uart_data[6]_i_1 
       (.I0(respond_data[14]),
        .I1(respond_data[6]),
        .I2(next[8]),
        .I3(next[7]),
        .O(\uart_data[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \uart_data[7]_i_1 
       (.I0(respond_data[15]),
        .I1(respond_data[7]),
        .I2(next[8]),
        .I3(next[7]),
        .O(\uart_data[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[0] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(\uart_data[0]_i_1_n_0 ),
        .Q(uart_data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[1] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(\uart_data[1]_i_1_n_0 ),
        .Q(uart_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[2] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(\uart_data[2]_i_1_n_0 ),
        .Q(uart_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[3] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(\uart_data[3]_i_1_n_0 ),
        .Q(uart_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[4] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(\uart_data[4]_i_1_n_0 ),
        .Q(uart_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[5] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(\uart_data[5]_i_1_n_0 ),
        .Q(uart_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[6] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(\uart_data[6]_i_1_n_0 ),
        .Q(uart_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \uart_data_reg[7] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF[0]),
        .D(\uart_data[7]_i_1_n_0 ),
        .Q(uart_data[7]));
  OBUF uart_rxd_out_OBUF_inst
       (.I(uart_rxd_out_OBUF),
        .O(uart_rxd_out));
endmodule

module uart_tx
   (uart_tx_done,
    D,
    uart_rxd_out_OBUF,
    CLK,
    AR,
    Q,
    \state_reg[0]_0 ,
    \state_reg[9] ,
    CO);
  output uart_tx_done;
  output [1:0]D;
  output uart_rxd_out_OBUF;
  input CLK;
  input [0:0]AR;
  input [7:0]Q;
  input \state_reg[0]_0 ;
  input [2:0]\state_reg[9] ;
  input [0:0]CO;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [1:0]D;
  wire [7:0]Q;
  wire baudrate_pulse;
  wire baudrate_pulse_i_2_n_0;
  wire baudrate_pulse_i_3_n_0;
  wire baudrate_pulse_i_4_n_0;
  wire baudrate_pulse_i_5_n_0;
  wire baudrate_pulse_i_6_n_0;
  wire baudrate_pulse_i_7_n_0;
  wire baudrate_pulse_i_8_n_0;
  wire baudrate_pulse_i_9_n_0;
  wire baudrate_pulse_reg_n_0;
  wire counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1__0_n_0 ;
  wire \counter[2]_i_1__0_n_0 ;
  wire \counter[3]_i_2__0_n_0 ;
  wire [31:0]counter_bps;
  wire counter_bps0_carry__0_n_0;
  wire counter_bps0_carry__0_n_4;
  wire counter_bps0_carry__0_n_5;
  wire counter_bps0_carry__0_n_6;
  wire counter_bps0_carry__0_n_7;
  wire counter_bps0_carry__1_n_0;
  wire counter_bps0_carry__1_n_4;
  wire counter_bps0_carry__1_n_5;
  wire counter_bps0_carry__1_n_6;
  wire counter_bps0_carry__1_n_7;
  wire counter_bps0_carry__2_n_0;
  wire counter_bps0_carry__2_n_4;
  wire counter_bps0_carry__2_n_5;
  wire counter_bps0_carry__2_n_6;
  wire counter_bps0_carry__2_n_7;
  wire counter_bps0_carry__3_n_0;
  wire counter_bps0_carry__3_n_4;
  wire counter_bps0_carry__3_n_5;
  wire counter_bps0_carry__3_n_6;
  wire counter_bps0_carry__3_n_7;
  wire counter_bps0_carry__4_n_0;
  wire counter_bps0_carry__4_n_4;
  wire counter_bps0_carry__4_n_5;
  wire counter_bps0_carry__4_n_6;
  wire counter_bps0_carry__4_n_7;
  wire counter_bps0_carry__5_n_0;
  wire counter_bps0_carry__5_n_4;
  wire counter_bps0_carry__5_n_5;
  wire counter_bps0_carry__5_n_6;
  wire counter_bps0_carry__5_n_7;
  wire counter_bps0_carry__6_n_5;
  wire counter_bps0_carry__6_n_6;
  wire counter_bps0_carry__6_n_7;
  wire counter_bps0_carry_n_0;
  wire counter_bps0_carry_n_4;
  wire counter_bps0_carry_n_5;
  wire counter_bps0_carry_n_6;
  wire counter_bps0_carry_n_7;
  wire \counter_bps[31]_i_2_n_0 ;
  wire \counter_bps_reg_n_0_[0] ;
  wire \counter_bps_reg_n_0_[10] ;
  wire \counter_bps_reg_n_0_[11] ;
  wire \counter_bps_reg_n_0_[12] ;
  wire \counter_bps_reg_n_0_[13] ;
  wire \counter_bps_reg_n_0_[14] ;
  wire \counter_bps_reg_n_0_[15] ;
  wire \counter_bps_reg_n_0_[16] ;
  wire \counter_bps_reg_n_0_[17] ;
  wire \counter_bps_reg_n_0_[18] ;
  wire \counter_bps_reg_n_0_[19] ;
  wire \counter_bps_reg_n_0_[1] ;
  wire \counter_bps_reg_n_0_[20] ;
  wire \counter_bps_reg_n_0_[21] ;
  wire \counter_bps_reg_n_0_[22] ;
  wire \counter_bps_reg_n_0_[23] ;
  wire \counter_bps_reg_n_0_[24] ;
  wire \counter_bps_reg_n_0_[25] ;
  wire \counter_bps_reg_n_0_[26] ;
  wire \counter_bps_reg_n_0_[27] ;
  wire \counter_bps_reg_n_0_[28] ;
  wire \counter_bps_reg_n_0_[29] ;
  wire \counter_bps_reg_n_0_[2] ;
  wire \counter_bps_reg_n_0_[30] ;
  wire \counter_bps_reg_n_0_[31] ;
  wire \counter_bps_reg_n_0_[3] ;
  wire \counter_bps_reg_n_0_[4] ;
  wire \counter_bps_reg_n_0_[5] ;
  wire \counter_bps_reg_n_0_[6] ;
  wire \counter_bps_reg_n_0_[7] ;
  wire \counter_bps_reg_n_0_[8] ;
  wire \counter_bps_reg_n_0_[9] ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire [1:0]next;
  wire [1:0]next__0;
  wire \next_reg[1]_i_2_n_0 ;
  wire [8:0]p_1_in;
  wire [1:1]state_reg;
  wire \state_reg[0]_0 ;
  wire [2:0]\state_reg[9] ;
  wire \state_reg_n_0_[0] ;
  wire stop;
  wire [9:1]tx_data;
  wire tx_data12_out;
  wire \tx_data[9]_i_1_n_0 ;
  wire [0:0]tx_data_0;
  wire uart_rxd_out_OBUF;
  wire uart_tx_done;
  wire [2:0]NLW_counter_bps0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_counter_bps0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_counter_bps0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_counter_bps0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_counter_bps0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_counter_bps0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_counter_bps0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_counter_bps0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_counter_bps0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000000000004)) 
    baudrate_pulse_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(state_reg),
        .I2(\counter_bps_reg_n_0_[0] ),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(baudrate_pulse_i_3_n_0),
        .I5(baudrate_pulse_i_4_n_0),
        .O(baudrate_pulse));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    baudrate_pulse_i_2
       (.I0(\counter_bps_reg_n_0_[12] ),
        .I1(\counter_bps_reg_n_0_[13] ),
        .I2(\counter_bps_reg_n_0_[10] ),
        .I3(\counter_bps_reg_n_0_[11] ),
        .I4(baudrate_pulse_i_5_n_0),
        .O(baudrate_pulse_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    baudrate_pulse_i_3
       (.I0(\counter_bps_reg_n_0_[4] ),
        .I1(\counter_bps_reg_n_0_[5] ),
        .I2(\counter_bps_reg_n_0_[3] ),
        .I3(\counter_bps_reg_n_0_[2] ),
        .I4(baudrate_pulse_i_6_n_0),
        .O(baudrate_pulse_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    baudrate_pulse_i_4
       (.I0(baudrate_pulse_i_7_n_0),
        .I1(baudrate_pulse_i_8_n_0),
        .I2(\counter_bps_reg_n_0_[31] ),
        .I3(\counter_bps_reg_n_0_[30] ),
        .I4(\counter_bps_reg_n_0_[1] ),
        .I5(baudrate_pulse_i_9_n_0),
        .O(baudrate_pulse_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    baudrate_pulse_i_5
       (.I0(\counter_bps_reg_n_0_[15] ),
        .I1(\counter_bps_reg_n_0_[14] ),
        .I2(\counter_bps_reg_n_0_[17] ),
        .I3(\counter_bps_reg_n_0_[16] ),
        .O(baudrate_pulse_i_5_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    baudrate_pulse_i_6
       (.I0(\counter_bps_reg_n_0_[6] ),
        .I1(\counter_bps_reg_n_0_[7] ),
        .I2(\counter_bps_reg_n_0_[9] ),
        .I3(\counter_bps_reg_n_0_[8] ),
        .O(baudrate_pulse_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    baudrate_pulse_i_7
       (.I0(\counter_bps_reg_n_0_[23] ),
        .I1(\counter_bps_reg_n_0_[22] ),
        .I2(\counter_bps_reg_n_0_[25] ),
        .I3(\counter_bps_reg_n_0_[24] ),
        .O(baudrate_pulse_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    baudrate_pulse_i_8
       (.I0(\counter_bps_reg_n_0_[19] ),
        .I1(\counter_bps_reg_n_0_[18] ),
        .I2(\counter_bps_reg_n_0_[21] ),
        .I3(\counter_bps_reg_n_0_[20] ),
        .O(baudrate_pulse_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    baudrate_pulse_i_9
       (.I0(\counter_bps_reg_n_0_[27] ),
        .I1(\counter_bps_reg_n_0_[26] ),
        .I2(\counter_bps_reg_n_0_[29] ),
        .I3(\counter_bps_reg_n_0_[28] ),
        .O(baudrate_pulse_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    baudrate_pulse_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baudrate_pulse),
        .Q(baudrate_pulse_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h3233)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__0 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .O(\counter[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1__0 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .O(\counter[2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \counter[3]_i_1__0 
       (.I0(\state_reg_n_0_[0] ),
        .I1(state_reg),
        .I2(baudrate_pulse_reg_n_0),
        .O(counter));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6CC8)) 
    \counter[3]_i_2__0 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[2] ),
        .O(\counter[3]_i_2__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter_bps0_carry
       (.CI(1'b0),
        .CO({counter_bps0_carry_n_0,NLW_counter_bps0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\counter_bps_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter_bps0_carry_n_4,counter_bps0_carry_n_5,counter_bps0_carry_n_6,counter_bps0_carry_n_7}),
        .S({\counter_bps_reg_n_0_[4] ,\counter_bps_reg_n_0_[3] ,\counter_bps_reg_n_0_[2] ,\counter_bps_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter_bps0_carry__0
       (.CI(counter_bps0_carry_n_0),
        .CO({counter_bps0_carry__0_n_0,NLW_counter_bps0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter_bps0_carry__0_n_4,counter_bps0_carry__0_n_5,counter_bps0_carry__0_n_6,counter_bps0_carry__0_n_7}),
        .S({\counter_bps_reg_n_0_[8] ,\counter_bps_reg_n_0_[7] ,\counter_bps_reg_n_0_[6] ,\counter_bps_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter_bps0_carry__1
       (.CI(counter_bps0_carry__0_n_0),
        .CO({counter_bps0_carry__1_n_0,NLW_counter_bps0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter_bps0_carry__1_n_4,counter_bps0_carry__1_n_5,counter_bps0_carry__1_n_6,counter_bps0_carry__1_n_7}),
        .S({\counter_bps_reg_n_0_[12] ,\counter_bps_reg_n_0_[11] ,\counter_bps_reg_n_0_[10] ,\counter_bps_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter_bps0_carry__2
       (.CI(counter_bps0_carry__1_n_0),
        .CO({counter_bps0_carry__2_n_0,NLW_counter_bps0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter_bps0_carry__2_n_4,counter_bps0_carry__2_n_5,counter_bps0_carry__2_n_6,counter_bps0_carry__2_n_7}),
        .S({\counter_bps_reg_n_0_[16] ,\counter_bps_reg_n_0_[15] ,\counter_bps_reg_n_0_[14] ,\counter_bps_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter_bps0_carry__3
       (.CI(counter_bps0_carry__2_n_0),
        .CO({counter_bps0_carry__3_n_0,NLW_counter_bps0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter_bps0_carry__3_n_4,counter_bps0_carry__3_n_5,counter_bps0_carry__3_n_6,counter_bps0_carry__3_n_7}),
        .S({\counter_bps_reg_n_0_[20] ,\counter_bps_reg_n_0_[19] ,\counter_bps_reg_n_0_[18] ,\counter_bps_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter_bps0_carry__4
       (.CI(counter_bps0_carry__3_n_0),
        .CO({counter_bps0_carry__4_n_0,NLW_counter_bps0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter_bps0_carry__4_n_4,counter_bps0_carry__4_n_5,counter_bps0_carry__4_n_6,counter_bps0_carry__4_n_7}),
        .S({\counter_bps_reg_n_0_[24] ,\counter_bps_reg_n_0_[23] ,\counter_bps_reg_n_0_[22] ,\counter_bps_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter_bps0_carry__5
       (.CI(counter_bps0_carry__4_n_0),
        .CO({counter_bps0_carry__5_n_0,NLW_counter_bps0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter_bps0_carry__5_n_4,counter_bps0_carry__5_n_5,counter_bps0_carry__5_n_6,counter_bps0_carry__5_n_7}),
        .S({\counter_bps_reg_n_0_[28] ,\counter_bps_reg_n_0_[27] ,\counter_bps_reg_n_0_[26] ,\counter_bps_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter_bps0_carry__6
       (.CI(counter_bps0_carry__5_n_0),
        .CO(NLW_counter_bps0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter_bps0_carry__6_O_UNCONNECTED[3],counter_bps0_carry__6_n_5,counter_bps0_carry__6_n_6,counter_bps0_carry__6_n_7}),
        .S({1'b0,\counter_bps_reg_n_0_[31] ,\counter_bps_reg_n_0_[30] ,\counter_bps_reg_n_0_[29] }));
  LUT6 #(
    .INIT(64'h0404040404040400)) 
    \counter_bps[0]_i_1 
       (.I0(\counter_bps_reg_n_0_[0] ),
        .I1(state_reg),
        .I2(\state_reg_n_0_[0] ),
        .I3(baudrate_pulse_i_4_n_0),
        .I4(baudrate_pulse_i_3_n_0),
        .I5(baudrate_pulse_i_2_n_0),
        .O(counter_bps[0]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[10]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__1_n_6),
        .O(counter_bps[10]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[11]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__1_n_5),
        .O(counter_bps[11]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[12]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__1_n_4),
        .O(counter_bps[12]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[13]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__2_n_7),
        .O(counter_bps[13]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[14]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__2_n_6),
        .O(counter_bps[14]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[15]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__2_n_5),
        .O(counter_bps[15]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[16]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__2_n_4),
        .O(counter_bps[16]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[17]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__3_n_7),
        .O(counter_bps[17]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[18]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__3_n_6),
        .O(counter_bps[18]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[19]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__3_n_5),
        .O(counter_bps[19]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[1]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry_n_7),
        .O(counter_bps[1]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[20]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__3_n_4),
        .O(counter_bps[20]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[21]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__4_n_7),
        .O(counter_bps[21]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[22]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__4_n_6),
        .O(counter_bps[22]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[23]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__4_n_5),
        .O(counter_bps[23]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[24]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__4_n_4),
        .O(counter_bps[24]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[25]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__5_n_7),
        .O(counter_bps[25]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[26]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__5_n_6),
        .O(counter_bps[26]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[27]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__5_n_5),
        .O(counter_bps[27]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[28]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__5_n_4),
        .O(counter_bps[28]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[29]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__6_n_7),
        .O(counter_bps[29]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[2]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry_n_6),
        .O(counter_bps[2]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[30]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__6_n_6),
        .O(counter_bps[30]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[31]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__6_n_5),
        .O(counter_bps[31]));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_bps[31]_i_2 
       (.I0(state_reg),
        .I1(\state_reg_n_0_[0] ),
        .O(\counter_bps[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[3]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry_n_5),
        .O(counter_bps[3]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[4]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry_n_4),
        .O(counter_bps[4]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[5]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__0_n_7),
        .O(counter_bps[5]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[6]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__0_n_6),
        .O(counter_bps[6]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[7]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__0_n_5),
        .O(counter_bps[7]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[8]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__0_n_4),
        .O(counter_bps[8]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \counter_bps[9]_i_1 
       (.I0(\counter_bps[31]_i_2_n_0 ),
        .I1(baudrate_pulse_i_4_n_0),
        .I2(baudrate_pulse_i_3_n_0),
        .I3(baudrate_pulse_i_2_n_0),
        .I4(\counter_bps_reg_n_0_[0] ),
        .I5(counter_bps0_carry__1_n_7),
        .O(counter_bps[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[0]),
        .Q(\counter_bps_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[10]),
        .Q(\counter_bps_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[11]),
        .Q(\counter_bps_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[12]),
        .Q(\counter_bps_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[13]),
        .Q(\counter_bps_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[14]),
        .Q(\counter_bps_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[15]),
        .Q(\counter_bps_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[16]),
        .Q(\counter_bps_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[17]),
        .Q(\counter_bps_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[18]),
        .Q(\counter_bps_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[19]),
        .Q(\counter_bps_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[1]),
        .Q(\counter_bps_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[20]),
        .Q(\counter_bps_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[21]),
        .Q(\counter_bps_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[22]),
        .Q(\counter_bps_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[23]),
        .Q(\counter_bps_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[24]),
        .Q(\counter_bps_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[25]),
        .Q(\counter_bps_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[26]),
        .Q(\counter_bps_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[27]),
        .Q(\counter_bps_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[28]),
        .Q(\counter_bps_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[29]),
        .Q(\counter_bps_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[2]),
        .Q(\counter_bps_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[30]),
        .Q(\counter_bps_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[31]),
        .Q(\counter_bps_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[3]),
        .Q(\counter_bps_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[4]),
        .Q(\counter_bps_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[5]),
        .Q(\counter_bps_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[6]),
        .Q(\counter_bps_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[7]),
        .Q(\counter_bps_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[8]),
        .Q(\counter_bps_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_bps_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_bps[9]),
        .Q(\counter_bps_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(counter),
        .CLR(AR),
        .D(\counter[0]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(counter),
        .CLR(AR),
        .D(\counter[1]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(counter),
        .CLR(AR),
        .D(\counter[2]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(counter),
        .CLR(AR),
        .D(\counter[3]_i_2__0_n_0 ),
        .Q(\counter_reg_n_0_[3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b1)) 
    \next_reg[0] 
       (.CLR(1'b0),
        .D(next__0[0]),
        .G(\next_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next[0]));
  LUT3 #(
    .INIT(8'hD1)) 
    \next_reg[0]_i_1__0 
       (.I0(\state_reg[0]_0 ),
        .I1(state_reg),
        .I2(uart_tx_done),
        .O(next__0[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg[1] 
       (.CLR(1'b0),
        .D(next__0[1]),
        .G(\next_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next[1]));
  LUT3 #(
    .INIT(8'h74)) 
    \next_reg[1]_i_1__0 
       (.I0(uart_tx_done),
        .I1(state_reg),
        .I2(\state_reg[0]_0 ),
        .O(next__0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \next_reg[1]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(state_reg),
        .O(\next_reg[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \next_reg[8]_i_1 
       (.I0(\state_reg[9] [0]),
        .I1(uart_tx_done),
        .I2(\state_reg[9] [1]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \next_reg[9]_i_1 
       (.I0(\state_reg[9] [1]),
        .I1(uart_tx_done),
        .I2(CO),
        .I3(\state_reg[9] [2]),
        .O(D[1]));
  (* FSM_ENCODED_STATES = "transmit:10,idle:01" *) 
  FDPE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(next[0]),
        .PRE(AR),
        .Q(\state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "transmit:10,idle:01" *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(next[1]),
        .Q(state_reg));
  LUT5 #(
    .INIT(32'h00040000)) 
    stop_i_1
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(counter),
        .O(stop));
  FDCE #(
    .INIT(1'b0)) 
    stop_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(stop),
        .Q(uart_tx_done));
  LUT5 #(
    .INIT(32'hFBFF0000)) 
    \tx_data[0]_i_1 
       (.I0(state_reg),
        .I1(\state_reg_n_0_[0] ),
        .I2(next[0]),
        .I3(next[1]),
        .I4(tx_data[1]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \tx_data[1]_i_1 
       (.I0(tx_data[2]),
        .I1(next[1]),
        .I2(next[0]),
        .I3(\state_reg_n_0_[0] ),
        .I4(state_reg),
        .I5(Q[0]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \tx_data[2]_i_1 
       (.I0(tx_data[3]),
        .I1(next[1]),
        .I2(next[0]),
        .I3(\state_reg_n_0_[0] ),
        .I4(state_reg),
        .I5(Q[1]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \tx_data[3]_i_1 
       (.I0(tx_data[4]),
        .I1(next[1]),
        .I2(next[0]),
        .I3(\state_reg_n_0_[0] ),
        .I4(state_reg),
        .I5(Q[2]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \tx_data[4]_i_1 
       (.I0(tx_data[5]),
        .I1(next[1]),
        .I2(next[0]),
        .I3(\state_reg_n_0_[0] ),
        .I4(state_reg),
        .I5(Q[3]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \tx_data[5]_i_1 
       (.I0(tx_data[6]),
        .I1(next[1]),
        .I2(next[0]),
        .I3(\state_reg_n_0_[0] ),
        .I4(state_reg),
        .I5(Q[4]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \tx_data[6]_i_1 
       (.I0(tx_data[7]),
        .I1(next[1]),
        .I2(next[0]),
        .I3(\state_reg_n_0_[0] ),
        .I4(state_reg),
        .I5(Q[5]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \tx_data[7]_i_1 
       (.I0(tx_data[8]),
        .I1(next[1]),
        .I2(next[0]),
        .I3(\state_reg_n_0_[0] ),
        .I4(state_reg),
        .I5(Q[6]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAA2AA)) 
    \tx_data[8]_i_1 
       (.I0(tx_data[9]),
        .I1(next[1]),
        .I2(next[0]),
        .I3(\state_reg_n_0_[0] ),
        .I4(state_reg),
        .I5(Q[7]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'h08380808)) 
    \tx_data[9]_i_1 
       (.I0(baudrate_pulse_reg_n_0),
        .I1(state_reg),
        .I2(\state_reg_n_0_[0] ),
        .I3(next[0]),
        .I4(next[1]),
        .O(\tx_data[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \tx_data[9]_i_2 
       (.I0(state_reg),
        .I1(\state_reg_n_0_[0] ),
        .I2(next[0]),
        .I3(next[1]),
        .O(tx_data12_out));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[0] 
       (.C(CLK),
        .CE(\tx_data[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[0]),
        .Q(tx_data_0));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[1] 
       (.C(CLK),
        .CE(\tx_data[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[1]),
        .Q(tx_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[2] 
       (.C(CLK),
        .CE(\tx_data[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[2]),
        .Q(tx_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[3] 
       (.C(CLK),
        .CE(\tx_data[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[3]),
        .Q(tx_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[4] 
       (.C(CLK),
        .CE(\tx_data[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[4]),
        .Q(tx_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[5] 
       (.C(CLK),
        .CE(\tx_data[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[5]),
        .Q(tx_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[6] 
       (.C(CLK),
        .CE(\tx_data[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[6]),
        .Q(tx_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[7] 
       (.C(CLK),
        .CE(\tx_data[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[7]),
        .Q(tx_data[7]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[8] 
       (.C(CLK),
        .CE(\tx_data[9]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[8]),
        .Q(tx_data[8]));
  FDPE #(
    .INIT(1'b0)) 
    \tx_data_reg[9] 
       (.C(CLK),
        .CE(\tx_data[9]_i_1_n_0 ),
        .D(tx_data12_out),
        .PRE(AR),
        .Q(tx_data[9]));
  LUT2 #(
    .INIT(4'hB)) 
    uart_rxd_out_OBUF_inst_i_1
       (.I0(tx_data_0),
        .I1(state_reg),
        .O(uart_rxd_out_OBUF));
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
