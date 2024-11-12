`timescale 1ns / 1ps

// File: VGAColourStripes.v
// Author: Michelle Lynch
// Copyright Michelle Lynch 2024
//
// Adapting Author: 
// Date:

module ColourStripes #(
    parameter COUNTER_WIDTH = 32, 
    parameter COUNT_FROM = 0,
    parameter COUNT_TO = 32'b1 << 26,
    parameter COUNT_RESET = 32'b1 << 27)
    (input clk, rst,
     input [10:0] row, col, 
     output [3:0] red, green, blue);

reg [3:0] red_reg, green_reg, blue_reg, red_next, green_next, blue_next;

// Next state & output logic state  machine 
always@* begin
   if(col >= 11'd0 && col <11'd80) begin
      red_next   <= 4'b0000;
      green_next <= 4'b0000;
      blue_next  <= 4'b0000;
   end
   else if(col >= 11'd80 && col < 11'd160) begin
      red_next   <= 4'b0000;
      green_next <= 4'b0000;
      blue_next  <= 4'b1111;
   end
   else if(col >= 11'd160 && col < 11'd240) begin
      red_next   <= 4'b0000;
      green_next <= 4'b1111;
      blue_next  <= 4'b0000;
   end
   else if(col >= 11'd240 && col < 11'd320) begin
      red_next   <= 4'b0000;
      green_next <= 4'b1111;
      blue_next  <= 4'b1111;
   end
   else if(col >= 11'd320 && col < 11'd400) begin
      red_next   <= 4'b1111;
      green_next <= 4'b0000;
      blue_next  <= 4'b0000;
   end
   else if(col >= 11'd400 && col < 11'd480) begin
      red_next   <= 4'b1111;
      green_next <= 4'b0000;
      blue_next  <= 4'b1111;
   end
   else if(col >= 11'd480 && col < 11'd560) begin
      red_next   <= 4'b1111;
      green_next <= 4'b1111;
      blue_next  <= 4'b0000;
   end
   else if(col >= 11'd560 && col < 11'd640) begin
      red_next  <= 4'b1111;
      green_next <= 4'b1111;
      blue_next  <= 4'b1111;
   end
   else begin
      red_next   <= 4'b1111;
      green_next <= 4'b1111;
      blue_next  <= 4'b1111;
   end
end

// Register RGB outputs    
always@(posedge clk, posedge rst) begin
    if(rst == 1'b1) begin
        red_reg   <= 4'b0000;
        green_reg <= 4'b0000;
        blue_reg  <= 4'b0000;
    end
    else begin
        red_reg   <= red_next;
        green_reg <= green_next;
        blue_reg  <= blue_next;
    end
end

// Assign output wires
assign red = red_reg;
assign green = green_reg;
assign blue = blue_reg;

endmodule