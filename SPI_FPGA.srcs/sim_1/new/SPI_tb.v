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
    
    reg clk=0;
    reg reset=0;
    reg enable_rx=0;
    reg enable_tx=0;
    reg [7:0] data_tx=0;
    wire miso;
    
    wire [7:0] data_rx;
    wire tx_done, rx_done, sclk, mosi, ss;
    
    always #1 clk = ~clk;
    
    reg [7:0] data;
    initial begin
        data_tx = 0;
        data = 0;
        #50 enable_rx <= 1;


    end
    
    reg [3:0] counter=0;
    always @(negedge clk) begin
        if (counter==4'd7) begin
            counter <= 0;
            data <= data_tx;
            data_tx <= data_tx + 1;
        end
        else if (~ss) begin
            counter <= counter + 1;
            data <= data << 1;
        end
    end

    assign miso = data[7];  
    
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
