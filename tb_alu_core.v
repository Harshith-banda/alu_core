module tb_alu_core;

    reg [3:0] a;
    reg [3:0] b;
    reg clk;
    reg rst;
    reg [1:0] op;

    wire [7:0] result;

    alu_core uut (
        .a(a),
        .b(b),
        .clk(clk),
        .rst(rst),
        .op(op),
        .result(result)
    );
    
    initial begin
    $dumpfile("alu_testbench.vcd"); // Specifies the VCD output file name
    $dumpvars(0, tb_alu_core);           // Dumps all variables in the tb_alu module
end

    
    initial begin
    clk = 0;
    forever #5 clk = ~clk;
    end
    
    initial begin
        a = 4'b0000;
        b = 4'b0000;
        op = 2'b00;
        rst = 1;
        
        #10 rst = 0;        
        #10;
        a = 4'b0101;  
        b = 4'b0011;  
        op = 2'b00; 
        #10;
        $display("Test Addition: a = %d, b = %d, result = %d (Expected: 8)", a, b, result);
        
        a = 4'b0110;  
        b = 4'b0010;  
        op = 2'b01;  
        #10;
        $display("Test Subtraction: a = %d, b = %d, result = %d (Expected: 4)", a, b, result);
        
        a = 4'b0011;  
        b = 4'b0011;  
        op = 2'b10;   
        #10;
        $display("Test Multiplication: a = %d, b = %d, result = %d (Expected: 9)", a, b, result);
       
        a = 4'b0100;  
        b = 4'b0010;  
        op = 2'b11;   
        #10;
        $display("Test Division: a = %d, b = %d, result = %d (Expected: 2)", a, b, result);

       
        a = 4'b0101;  
        b = 4'b0000;  
        op = 2'b11;   
        #10;
        $display("Test Division by Zero: a = %d, b = %d, result = %b (Expected: 11111111)", a, b, result);

        
        #10 rst = 1; #10 rst = 0;
        
        $stop;
    end

endmodule

