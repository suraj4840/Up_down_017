`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 7/24/2023 03:41:17 PM
// Design Name: 
// Module Name: up_counter_tb
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


module up_counter_tb();
reg clk,rst;
wire [3:0]count;

up_counter dut(clk,rst,count);

initial 
begin
clk =1'b0;
rst =1'b1;
#10
rst =1'b0;
#200
$finish;
end

always #5 clk=~clk;

endmodule

