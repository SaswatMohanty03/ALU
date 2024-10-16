`timescale 1ns / 1ps

module ALU(input[7:0]A,
           input[7:0]B,
           input[2:0]alu_sel,
           output reg[7:0]alu_out,
           output reg carry_out);
           
           reg[8:0]temp;
           
           always @(*)begin
           carry_out = 0;
           case(alu_sel)
               3'b000: alu_out = A | B;
               3'b001: alu_out = A & B;
               3'b010: begin
                 temp = A+B;
                 alu_out = temp[7:0];
                 carry_out = temp[8];
                 end
               3'b011: begin
                 temp = A - B;
                 alu_out = temp[7:0];
                 carry_out = temp[8];
                 end
               3'b100: alu_out = A ^ B;
               3'b101: alu_out = ~(A ^ B);
               3'b110: alu_out = ~(A & B);
               3'b111: alu_out = ~(A | B);
               default: alu_out = 8'b00000000;
               
           endcase
               end
                 
         endmodule
