`include "alu.v"
module alu_fixture #(parameter n=32); 
reg [n-1:0]A,B;
wire [n-1:0] R;
wire O, N, Z;
reg[1:0] Ctrl;

initial 
$vcdpluson; 

initial 
$monitor($time, "Ctrl=%b, A=%h, B=%h, Result R=%h, N=%b, Z=%b, O=%b", Ctrl[1:0], A[n-1:0], B[n- 1:0],R[n-1:0], O, N, Z); alu al(Ctrl, A, B, R, O, N, Z); 
initial 
begin 
// Addition 
Ctrl=2'b00; 
A=32'hFFFF_F000;
B=32'hFFFF_FFFF; 

#15  A=32'hFFFF_FFFF; 
        B=32'h000F_00F0; 

#15  A=32'h6767_6767; 
        B=32'h1243_1243; 

#15  A=32'hAAAA_AAAA;
         B=32'hEFAB_CD19; 

#15  A=32'hFFFF_FFFF; 
         B=32'h0000_0001; 

#15  A=32'hFFFF_FFFF; 
         B=32'hFFFF_FFFF; 

#15  A=32'hFFFF_FFFC; 
        B=32'hFFFF_FFFC; 

#15  A=32'hFFFF_0000; 
        B=32'h0000_1342; 

#15  A=32'h0123_4567; 
        B=32'h0008_0808; 

//Subtraction 

#15 Ctrl=2'b01; 
A=32'hFFFF_F000; 
B=32'hFFFF_FFFF; 

#15  A=32'hFFFF_FFFF; 
        B=32'h000F_00F0; 

#15  A=32'h6767_6767; 
        B=32'h1243_1243; 

#15  A=32'hAAAA_AAAA; 
         B=32'hEFAB_CD19; 

#15   A=32'hFFFF_FFFF; 
         B=32'h0000_0001; 

#15  A=32'hFFFF_FFFF; 
        B=32'hFFFF_FFFF; 

#15  A=32'hFFFF_FFFC; 
        B=32'hFFFF_FFFC; 

#15  A=32'hFFFF_0000; 
         B=32'h0000_1342; 

#15  A=32'h0123_4567;
         B=32'h0008_0808; 

// Bitwise AND 

#15 Ctrl=2'b10; 
A=32'hFFFF_FFFF; 
B=32'h0A0A_B0B0; 

#15  A=32'hABCD_4545; 
        B=32'h1238_3588; 

#15  A=32'hF0F0_F0F0; 
        B=32'hCFCF_CFCF; 

#15  A=32'h0000_0000; 
        B=32'h1100_0001; 

//Bitwise OR 

#15 Ctrl=2'b11; 
A=32'hFFFF_FFFF;
B=32'h0A0A_B0B0; 

#15  A=32'hABCD_4545; 
        B=32'h1238_3588; 

#15  A=32'hF0F0_F0F0; 
        B=32'hCFCF_CFCF; 

#15  A=32'h0000_0000; 
        B=32'h1100_0001; 

end 

initial 
begin
#1000 $finish; 
end

endmodule 
