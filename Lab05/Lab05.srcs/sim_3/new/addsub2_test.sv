`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Celaine Hornsby    
// 
// Create Date: 09/24/2020 06:14:47 PM
// Design Name: 
// Module Name: addsub2_test
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


module addsub2_test();

    reg [1:0] a; 
    reg [1:0] b;
    reg m;
    wire [1:0] s;
    wire cb;
    
    addsub3 as(
    .a(a), .b(b), .mode(m),
    .sout(s), .cbout(cb)
    );
    
    initial begin 

        a[0] = 0; b[0] = 1; a[1] = 0; b[1] = 0; m = 0; #10;
        a[0] = 0; b[0] = 0; a[1] = 0; b[1] = 1; m = 0; #10;
        a[0] = 0; b[0] = 1; a[1] = 0; b[1] = 1; m = 0; #10;
        a[0] = 1; b[0] = 1; a[1] = 0; b[1] = 0; m = 0; #10;
        a[0] = 0; b[0] = 1; a[1] = 1; b[1] = 0; m = 0; #10;
        a[0] = 0; b[0] = 0; a[1] = 1; b[1] = 0; m = 0; #10;
        a[0] = 0; b[0] = 1; a[1] = 0; b[1] = 0; m = 1; #10;
        a[0] = 0; b[0] = 0; a[1] = 0; b[1] = 1; m = 1; #10;
        a[0] = 0; b[0] = 1; a[1] = 0; b[1] = 1; m = 1; #10;
        a[0] = 1; b[0] = 1; a[1] = 0; b[1] = 0; m = 1; #10;
        a[0] = 0; b[0] = 1; a[1] = 1; b[1] = 0; m = 1; #10;
        a[0] = 0; b[0] = 0; a[1] = 1; b[1] = 0; m = 1; #10;
    
       $finish ;
        end 
endmodule