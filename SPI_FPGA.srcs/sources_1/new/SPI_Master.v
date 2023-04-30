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
    output reg tx_done = 0,
    output reg rx_done = 0,
    
    input miso,
    output reg sclk = 0,
    output reg mosi = 0,
    output reg ss = 1
    );
    
    reg [3:0] counter = 0;

    parameter idle = 3'b001;
    parameter transmit = 3'b010;
    parameter receive = 3'b100;
    
    reg [2:0] state=idle, next=idle;
    
    // State table.
    always @(*) begin
        case (state)
            idle: next = enable_rx? receive: (enable_tx? transmit: idle);
            receive: next = (counter==4'd15)? (enable_tx? transmit: (enable_rx? receive: idle)): receive;
            transmit: next = (counter==4'd15)? (enable_rx? receive: (enable_tx? transmit: idle)): transmit;
        endcase
    end
    
    // State transition.
    always @(posedge clk, posedge reset) begin
        if (reset) state <= idle;
        else state <= next;
    end
    
    // Chip select.
    always @(posedge clk, posedge reset) begin
    	if (reset) ss <= 1;
    	else if (next==transmit | next==receive) ss <= 0;
    	else ss <= 1;
    end
    
    // Data counter.

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
    
    always @(posedge clk, posedge reset) begin
    	if (reset) {rx_done,tx_done} <= 2'b00;
    	else if (counter==4'd13&state[1]) {rx_done, tx_done} <= 2'b01;
    	else if (counter==4'd14&state[2]) {rx_done, tx_done} <= 2'b10;
    	else {rx_done, tx_done} <= 2'b00;
    end
    
    
    
    // Transmit data output.
    always @(posedge clk, posedge reset) begin
    	if (reset) mosi <= 0;
    	else if (next==transmit) mosi <= data_tx[7-(counter+1)/2];
    	else mosi <= 0;
    end

    // Receive data organize.
    reg [7:0] rx_data_reg = 0;
    always @(posedge clk, posedge reset) begin
        if (reset) rx_data_reg <= 8'd0;
        else if (state==receive) begin
            if (counter==0) rx_data_reg <= {miso, 7'd0};
            else if (~counter[0]) begin
                rx_data_reg[7-counter/2] <= miso;
            end
            else rx_data_reg <= rx_data_reg;
        end
        else rx_data_reg <= 0;
    end
    
    always begin
    	data_rx = rx_data_reg;
    end
    
    // SCLK generation.
    always @(posedge clk, posedge reset) begin
    	if (reset) sclk <= 0;
    	else if (state == transmit | state == receive) begin
    		if (~counter[0]) sclk <= 1;
    		else sclk <= 0;
    	end
    	else sclk <= 0;
    end

    
endmodule