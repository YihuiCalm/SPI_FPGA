`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2023 06:24:55 PM
// Design Name: 
// Module Name: SPI_tb
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


module SPI_tb(

    );
    
    reg clk=0, reset=1;
    reg enable_rx=0, enable_tx=0, miso=0;
    reg [7:0] data=0, data_tx=0;
    
    wire tx_done, mosi, sclk, ss, rx_done;
    wire [7:0] data_rx;
    
    always #1 clk = ~clk;
    
    initial begin
        #9
        enable_tx = 1;
        reset = 0;
    end
    
    always @(posedge clk) begin
        if (tx_done) data <= data + 1;
        else if (rx_done) data <= data + 1;
        else data <= data;
    end
    
    always @(negedge clk) begin
        if (tx_done) begin
            enable_rx <= 1;
            enable_tx <= 0;
        end
        else if (rx_done) begin
            enable_rx <= 0;
            enable_tx <= 1;
        end
    end
    
    always @(posedge clk) begin
     if (enable_tx) data_tx <= data;
     else data_tx <= 0;
    end
    
    
    reg [7:0] tb_counter=0;
    always @(posedge clk) begin
        if (enable_rx) begin
            if (tb_counter==8'd16) tb_counter <= 0;
            else tb_counter <= tb_counter + 1;
            miso <= data[7-(tb_counter)/2];
        end
        else begin
            tb_counter <= 0;
            miso <= 0;
        end
    end
    
    
    SPI_Master inst(
    .clk(clk),
    .reset(reset),
    .enable_rx(enable_rx),
    .enable_tx(enable_tx),
    .data_tx(data_tx),
    .tx_done(tx_done),
    .mosi(mosi),
    .sclk(sclk),
    .ss(ss),
    .data_rx(data_rx),
    .rx_done(rx_done),
    .miso(miso)
    ); 
    
endmodule
