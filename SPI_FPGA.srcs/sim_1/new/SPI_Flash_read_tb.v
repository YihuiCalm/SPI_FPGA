`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2023 04:40:57 AM
// Design Name: 
// Module Name: SPI_Flash_read_tb
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


module SPI_Flash_read_tb(

    );
    
    reg clk=0, reset=1, start=0, miso=0;
    wire sck, cs, mosi, respond_done;
    
    always #1 clk = ~clk;
    
    initial begin
        #5 reset = 0;
        #5 start = 1;
        miso = 1;
        #250 start = 1;
    end
    

    
    SPI_Read_Flash inst(
        .CLK100MHZ(clk),
        .btn({start,reset}),
        .qspi_miso(miso),
        .qspi_sck(sck),
        .qspi_cs(cs),
        .qspi_mosi(mosi)
        );
    
endmodule
