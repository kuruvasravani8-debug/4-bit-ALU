module tb_alu_4bit;
reg [3:0] A, B;
reg [2:0] sel;
wire [3:0] result;
wire carry, zero;
alu_4bit uut(A, B, sel, result, carry, zero);
initial begin
    A=4'd5; B=4'd3; sel=3'b000; #10; // ADD 5+3=8
    A=4'd5; B=4'd3; sel=3'b001; #10; // SUB
    A=4'd5; B=4'd3; sel=3'b010; #10; // AND
    A=4'd5; B=4'd3; sel=3'b011; #10; // OR
    $finish;
end
endmodule
