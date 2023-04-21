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
            receive: next = rx_done? (enable_rx? receive: (enable_tx? transmit: idle)): receive;
            transmit : next = tx_done? (enable_tx? transmit: (enable_rx? receive: idle)): transmit;
        endcase
    end
    
    // State transition.
    always @(negedge clk, posedge reset) begin
        if (reset) state <= idle;
        else state <= next;
    end
    
    // Chip select.
    assign ss = ~|state[2:1];
    
    // Transmit data counter.
    reg [4:0] tx_counter = 0;
    always @(negedge clk, posedge reset) begin
        if (reset) tx_counter <= 0;
        else if (state == transmit) begin
            if (tx_counter == 4'd7) begin
                tx_counter <= 0;
            end
            else begin
                tx_counter <= tx_counter + 4'd1;
            end
        end
        else begin
            tx_counter <= 4'b0;
        end
    end
    assign tx_done = tx_counter==4'd7;
    
    // Transmit data output.
    assign mosi = data_tx[7-tx_counter];
    
    // Receive data counter.
    reg [4:0] rx_counter = 0;
    always @(posedge clk, posedge reset) begin
        if (reset) tx_counter <= 0;
        else if (state == receive) begin
            if (rx_counter == 4'd7) begin
                rx_counter <= 0;
            end
            else begin
                rx_counter <= rx_counter + 4'd1;
            end
        end
        else begin
            rx_counter <= 4'b0;
        end
    end
    assign rx_done = rx_counter==4'd7;
    
    // Receive data organize.
    reg [7:0] rx_data_reg = 0;
    always @(posedge clk, posedge reset) begin
        if (reset) rx_data_reg <= 8'd0;
        else if (rx_counter==4'd7) rx_data_reg <= 0;
        else rx_data_reg[7-rx_counter] <= miso;
    end
    
    // Receive data output.
    always @(posedge clk, posedge reset) begin
        if (reset) data_rx <= 8'd0;
        else if (rx_counter==4'd7) data_rx <= rx_data_reg;
        else data_rx <= data_rx;
    end

    // SCLK generation.
    assign sclk = |state[2:1]? clk: 1'b0;

    
endmodule