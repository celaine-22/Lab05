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

module addsub(); 
    reg [1:0] a, b;
    reg m;
    wire [1:0] s;
    wire cb;
    
    addsub as(
    .a(a), .b(b), .mode(m),
    .cbout(cb), .sum(s)
    );
    
    initial begin 
        cin = 0; ain = 0; bin = 0; #10;
        cin = 0; ain = 0; bin = 1; #10;
        cin = 0; ain = 1; bin = 0; #10;
        cin = 0; ain = 1; bin = 1; #10;
        cin = 1; ain = 0; bin = 0; #10;
        cin = 1; ain = 0; bin = 1; #10;
        cin = 1; ain = 1; bin = 0; #10;
        cin = 1; ain = 1; bin = 1; #10;
       $finish ;
        end 

endmodule; 