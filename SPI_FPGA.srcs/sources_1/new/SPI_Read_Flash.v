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
    
    output uart_rxd_out
    );
    
    //Clk signal generation.
    reg clk=0;
    reg [3:0] clk_counter;
    always @(posedge CLK100MHZ, posedge reset) begin
    	if (reset) begin
    		clk_counter <= 0;
    		clk <= 0;
    	end
    	else begin
    		if (clk_counter==4'd1) begin
    			clk_counter <= 0;
    			clk <= ~clk;
    		end
    		else begin
    			clk_counter <= clk_counter + 1;
    			clk <= clk;
    		end
    	end
    end
    
    //Reset signal generation.
	wire reset=btn[0];

    
    //Start Signal generation.
    reg start = 0;
    reg [127:0] start_reg=0;
    always @(posedge clk, posedge reset) begin
    	if (reset) begin
    		start_reg <= 0;
    		start <= 0;
    	end
    	else begin
    		start_reg <= {start_reg[126:0],btn[1]};
    		if (&start_reg) start <= 1; 
    		else start <= 0;
    	end
    end

    		
// State machine.     
    parameter instruction = 8'h90;
    parameter address = 24'd0;
    
    parameter idle = 10'b00000001;
    parameter transmit_0 = idle << 1;
    parameter transmit_1 = idle << 2;
    parameter transmit_2 = idle << 3;
    parameter transmit_3 = idle << 4;
    parameter receive_0 = idle << 5;
    parameter receive_1 = idle << 6;
    parameter uart_0 = idle << 7;
    parameter uart_1 = idle << 8;
    parameter dithering_terminate = idle << 9;
    
    reg enable_tx=0, enable_rx=0;
    reg [9:0] state=idle, next=0;
    wire tx_done, rx_done, uart_tx_done;
    reg uart_done=0;
   
    always @(*) begin
        case (state)
            idle: next = start? transmit_0: idle;
            transmit_0: next = tx_done? transmit_1: transmit_0;
            transmit_1: next = tx_done? transmit_2: transmit_1;
            transmit_2: next = tx_done? transmit_3: transmit_2;
            transmit_3: next = tx_done? receive_0: transmit_3;
            receive_0: next = rx_done? receive_1: receive_0;
            receive_1: next = rx_done? uart_0: receive_1;
            uart_0: next = uart_tx_done? uart_1: uart_0;
            uart_1: next = uart_tx_done? dithering_terminate: uart_1;
            dithering_terminate: next = start_reg=={128{1'b0}}? idle: dithering_terminate;
        endcase
    end  
    
    always @(posedge clk, posedge reset) begin
        if (reset) state <= idle;
        else state <= next;
    end
    
    //SPI enable signal generation.
    always @(posedge clk, posedge reset) begin
        if (reset) {enable_rx,enable_tx} <= 2'b00;
        else begin
			if (|next[4:1]) begin
				enable_rx <= 0;
				enable_tx <= 1;
			end
			else if (|next[6:5]) begin
				enable_rx <= state[6]? 0: 1;
				enable_tx <= 0;
			end
			else begin
				enable_rx <= 0;
				enable_tx <= 0;
			end
		end
    end
    

    
    //SPI data organize.
    reg [7:0] tx_data;
    wire [7:0] rx_data;
    reg [15:0] respond_data = 0;
    wire [31:0] cmd_data;
    assign cmd_data = {instruction, address};
    //Receive data.
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            respond_data <= 0;
        end
        else begin
        	case (state)
        		receive_0: respond_data[15:8] <= next==receive_1? rx_data: respond_data[15:8];
                receive_1: respond_data[7:0] <= next==uart_0? rx_data: respond_data[7:0];
                idle: respond_data <= 0;
                default: respond_data <= respond_data;
            endcase
        end
    end
	//Transmit data.
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            tx_data <= 0;
        end
        else begin
            case (next)   
                transmit_0: tx_data <= cmd_data[31:31-7];
                transmit_1: tx_data <= cmd_data[31-8:31-15];
                transmit_2: tx_data <= cmd_data[31-16:31-23];
                transmit_3: tx_data <= cmd_data[31-24:31-31];
                default: tx_data <= 0;
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
    
    
    //UART enable signal generation.
    reg enable_uart = 0;
    always @(posedge clk, posedge reset) begin
    	if (reset) enable_uart <= 0;
    	else if (|next[8:7]) enable_uart <= state[8]? 0: 1;
    	else enable_uart <= 0;
    end
    

    reg [7:0] uart_data = 0;
    always @(posedge clk, posedge reset) begin
    	if (reset) uart_data <= 0;
    	else if (next[7]) uart_data <= respond_data[15:8];
    	else if (next[8]) uart_data <= respond_data[7:0];
    	else uart_data <= 0;
    end

    uart_tx #(.clk_frequence(25000000)) 
    	inst_uart (
        .data(uart_data),
        .CLK100MHZ(clk),
        .enable(enable_uart),
        .reset(reset),
        .done(uart_tx_done),
        .uart_rxd_out(uart_rxd_out)
        );
   
   
   
            
endmodule
