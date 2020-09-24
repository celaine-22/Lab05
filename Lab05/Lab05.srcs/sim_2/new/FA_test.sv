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


module FA_test();

    reg cin, ain, bin;
    wire cout, sout;       
    
    fulladder fa0(
    .ain(ain), .bin(bin), .cin(cin),
    .cout(cout), .sout(sout)
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

endmodule 