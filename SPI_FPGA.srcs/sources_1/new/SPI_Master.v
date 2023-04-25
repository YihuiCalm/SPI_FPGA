`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2023 04:08:08 PM
// Design Name: 
// Module Name: SPI_Master
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


module SPI_Master(
    input clk,
    input reset,
    input enable_rx,
    input enable_tx,
    input [7:0] data_tx,
    output reg [7:0] data_rx = 0,
    output tx_done,
    output rx_done,
    
    input miso,
    output sclk,
    output mosi,
    output ss
    );


    parameter idle = 3'b001;
    parameter transmit = 3'b010;
    parameter receive = 3'b100;
    
    reg [2:0] state=idle, next=idle;
    
    // State table.
    always @(*) begin
        case (state)
            idle: next = enable_rx? receive: (enable_tx? transmit: idle);
            receive: next = rx_done? (enable_tx? transmit: (enable_rx? receive: idle)): receive;
            transmit : next = tx_done? (enable_rx? receive: (enable_tx? transmit: idle)): transmit;
        endcase
    end
    
    // State transition.
    always @(posedge clk, posedge reset) begin
        if (reset) state <= idle;
        else state <= next;
    end
    
    // Chip select.
    assign ss = ~(state == transmit | state == receive);
    
    // Data counter.
    reg [4:0] counter = 0;
    always @(posedge clk, posedge reset) begin
        if (reset) counter <= 0;
        else if (state == transmit | state == receive) begin
            if (counter == 4'd15) begin
                counter <= 0;
            end
            else begin
                counter <= counter + 4'd1;
            end
        end
        else begin
            counter <= 4'b0;
        end
    end
    
    assign tx_done = counter==4'd15 & state==transmit;
    assign rx_done = counter==4'd15 & state==receive;
    
    
    
    // Transmit data output.
    assign mosi = data_tx[7-counter/2];

    // Receive data organize.
    reg [7:0] rx_data_reg = 0;
    always @(posedge clk, posedge reset) begin
        if (reset) rx_data_reg <= 8'd0;
        else if (state==receive) begin
            if (counter==0) rx_data_reg <= {miso, 7'd0};
            else if (counter[0]==1'b0) begin
                rx_data_reg[7-counter/2] <= miso;
            end
            else rx_data_reg <= rx_data_reg;
        end
        else rx_data_reg <= 0;
    end
    
    // Receive data output.
//    always @(posedge clk, posedge reset) begin
//        if (reset) data_rx <= 8'd0;
//        else if (rx_done) data_rx <= rx_data_reg;
//        else data_rx <= data_rx;
//    end
    always @(*) data_rx = rx_data_reg;
    // SCLK generation.
    assign sclk = counter[0];

    
endmodule