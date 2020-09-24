`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Celaine Hornsby    
// 
// Create Date: 09/24/2020 06:14:47 PM
// Design Name: 
// Module Name: addsub
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


module addsub(
    input [1:0] a,
    input [1:0] b,
    output [1:0] sum,
    input mode,
    output cbout
    );
    
    wire c1, c2;
    wire [1:0] b_n;
    
    assign b_n = ~b;
    
    fulladder fa0(
    .ain(a[0]) , .bin(b[0]), .cin(mode),
    .cout(c1), .sout(sum[0])
    );
    
    fulladder fa1(
    .ain(a[1]) , .bin(b[1]), .cin(mode),
    .cout(c2), .sout(sum[1])
    );
    
    assign cbout = c1 | c2;
endmodule
