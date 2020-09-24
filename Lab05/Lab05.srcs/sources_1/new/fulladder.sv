`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Celaine Hornsby
// 
// Create Date: 09/24/2020 05:07:41 PM
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    input ain,
    input bin,
    input cin,
    output cout,
    output sout
    );
    
    wire c1, c2, s1;
    
    halfadder ha0(
    .a(ain), .b(bin),
    .c(c1), .s(s1)
    );
    
    halfadder ha1(
    .a(s1), .b(cin),
    .c(c2), .s(sout)
    );
    
    assign cout = c1 | c2;
endmodule
