'timescale 1ns / 1ps

module ALU_tb();
    reg[7:0]A;
    reg[7:0]B;
    reg[2:0]alu_sel;
    wire[7:0]alu_out;
    wire carry_out;
    
    ALU dut(A,B,alu_sel,alu_out,carry_out);
    
    initial begin
    
    A = 8'b10000001;
    B = 8'b00000011;
    alu_sel = 3'b101;
    #10;
    alu_sel = 3'b100;
    #10;
    alu_sel = 3'b000;
    #10;
    alu_sel = 3'b001;
    #10;
    alu_sel = 3'b010;
    #10;
    alu_sel = 3'b011;
    #10;
    alu_sel = 3'b111;
    #10;
    alu_sel = 3'b110;
    #10;
    $finish;
    end
    
    endmodule
