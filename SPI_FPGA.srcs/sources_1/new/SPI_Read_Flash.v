`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2023 01:56:11 AM
// Design Name: 
// Module Name: SPI_Read_Flash
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


module SPI_Read_Flash(
    input CLK100MHZ,
    input [1:0] btn,
    input qspi_miso,
    output qspi_sck,
    output qspi_cs,
    output qspi_mosi,
    
    output uart_rxd_out,
    output [3:0] led
    );
    
	wire start, clk, reset;
    assign reset = btn[0];
    assign clk = CLK100MHZ;
    
    reg [127:0] start_reg=0;
    always @(posedge clk, posedge reset) begin
    	if (reset) start_reg <= 0;
    	else start_reg <= {start_reg[126:0],btn[1]};
    end

    assign start = start_reg=={128{1'b1}};
    		
    
    parameter instruction = 8'h90;
    parameter address = 24'h000000;
    
    parameter idle = 8'b00000001;
    parameter transmit_0 = idle << 1;
    parameter transmit_1 = idle << 2;
    parameter transmit_2 = idle << 3;
    parameter transmit_3 = idle << 4;
    parameter receive_0 = idle << 5;
    parameter receive_1 = idle << 6;
    parameter uart_transmitting = idle << 7;
    
    wire enable_tx, enable_rx;
    reg [7:0] state=idle, next=0;
    wire tx_done, rx_done, respond_done, uart_tx_done;
    reg uart_done=0;
    
    always @(*) begin
        case (state)
            idle: next = start? transmit_0: idle;
            transmit_0: next = tx_done? transmit_1: transmit_0;
            transmit_1: next = tx_done? transmit_2: transmit_1;
            transmit_2: next = tx_done? transmit_3: transmit_2;
            transmit_3: next = tx_done? receive_0: transmit_3;
            receive_0: next = rx_done? receive_1: receive_0;
            receive_1: next = rx_done? uart_transmitting: receive_1;
            uart_transmitting: next = uart_done? idle: uart_transmitting;
        endcase
    end  
    
    always @(posedge clk, posedge reset) begin
        if (reset) state <= idle;
        else state <= next;
    end
    
    assign enable_tx = |next[4:1];
    assign enable_rx = |next[6:5];
    assign respond_done = next==uart_transmitting;
    
    reg [7:0] tx_data;
    wire [7:0] rx_data;
    reg [15:0] respond_data = 0;
    wire [31:0] cmd_data;
    assign cmd_data = {instruction, address};
//    always @(*) begin
//        case (state)
//            idle: begin
//                tx_data = 8'd0;
//                respond_data = 0;
//            end
//            transmit_0: tx_data = cmd_data[31:31-7];
//            transmit_1: tx_data = cmd_data[31-8:31-15];
//            transmit_2: tx_data = cmd_data[31-16:31-23];
//            transmit_3: tx_data = cmd_data[31-24:31-31];
//            receive_0: respond_data[15:8] = rx_data;
//            receive_1: respond_data[7:0] = rx_data;
//        endcase
//    end 
    
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            respond_data <= 0;
            tx_data <= 0;
        end
        else begin
            case (next)
                idle: begin
                    respond_data <= respond_data;
                    tx_data <= 0;
                end
                transmit_0: tx_data <= cmd_data[31:31-7];
                transmit_1: tx_data <= cmd_data[31-8:31-15];
                transmit_2: tx_data <= cmd_data[31-16:31-23];
                transmit_3: tx_data <= cmd_data[31-24:31-31];
                receive_0: tx_data <= 0;
                receive_1: begin
                    if (state==receive_0) respond_data[7:0] <= rx_data;
                    else respond_data[7:0] <= respond_data[7:0];
                    tx_data <= 0;
                end
                uart_transmitting: begin
                	if (state==uart_transmitting) respond_data <= respond_data;
                	else respond_data[15:8] <= rx_data;
                	tx_data <= 0;
                end
            endcase
        end
    end
        

    
	SPI_Master inst_spi(
    .clk(clk),
    .reset(reset),
    .enable_rx(enable_rx),
    .enable_tx(enable_tx),
    .data_tx(tx_data),
    .tx_done(tx_done),
    .mosi(qspi_mosi),
    .sclk(qspi_sck),
    .ss(qspi_cs),
    .data_rx(rx_data),
    .rx_done(rx_done),
    .miso(qspi_miso)
    ); 
    
    reg uart_counter=0;
    wire uart_data;
    assign uart_data = uart_counter? respond_data[7:0]: respond_data[15:8];
    uart_tx inst_uart(
        .data(uart_data),
        .CLK100MHZ(clk),
        .enable(respond_done),
        .reset(reset),
        .done(uart_tx_done),
        .uart_rxd_out(uart_rxd_out)
        );
   
    
	always @(posedge clk, posedge reset) begin
    	if (reset) begin
			uart_counter <= 0;
			uart_done <= 0;
		end
		else if (uart_tx_done) begin
			if (uart_counter) begin
				uart_counter <= 0;
				uart_done <= 1;
			end
			else begin
				uart_counter <= 1;
				uart_done <= 0;
			end
		end
		else uart_done <= 0;
	end
   
   assign led = respond_data[3:0];
   
            
endmodule
