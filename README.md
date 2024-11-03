# alu_core

## Code
*alu design*
```
module alu_core (input [3:0] a, input [3:0] b, input clk, input rst, input [1:0] op, output reg [7:0] result);
always @ (posedge clk) begin 
        if (rst) begin
            result <= 8'b00000000; // Reset result
        end else begin
            case (op)
                2'b00: result <= a + b;        // Addition
                2'b01: result <= a - b;        // Subtraction
                2'b10: result <= a * b;        // Multiplication
                2'b11: begin                    // Division
                    if (b == 0) begin
                        result <= 8'b11111111; // Indicate an error for division by zero
                    end else begin
                        result <= {4'b0000, a / b}; // Perform division and keep it 8 bits (padding with 0s)
                    end
                end
                default: result <= 8'b00000000; // Default case (optional)
            endcase
        end
    end 
endmodule
```
*alu testbench*
```
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
```
## RTL simulation 
*commands*
```
$ gvim alu_core.v tb_alu_core.v
$ gedit alu_core.v tb_alu_core.v
$ iverilog alu_core.v tb_alu_core.v
$ ls
$ ./a.out
$ gtkwave tb_good_mux.v

```
*gtkwave output*

![alu_core](https://github.com/user-attachments/assets/d022835e-0424-4f7c-8d23-47c276a19cbc)
![waveform2](https://github.com/user-attachments/assets/875cfd15-d9da-4c3a-b7fc-05404892669e)

## RTL synthesis

*commands for synthesis*

```
yosys> read_liberty -lib /lib/sky130_fd_sc_hd__tt_025C_1v80.lib
yosys> read_verilog good_mux.v
yosys> synth -top good_mux 
yosys> abc -liberty /home/knightmare/vlsi/sky130RTLDesignAndSynthesisWorkshop/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
yosys> show
```
![Screenshot from 2024-11-03 15-18-11](https://github.com/user-attachments/assets/1d37d0f8-e438-4d9c-9451-97f5a64a2760)

## Synthesis

![synth_alu_core](https://github.com/user-attachments/assets/77554b91-3fed-42ff-afa8-fd74be1583f4)
![synth_alu_core2](https://github.com/user-attachments/assets/6da214a6-ad29-42a7-b695-2eb7fa7ba0d2)

## DFFLIBMAP results

![DFFLIBMAP](https://github.com/user-attachments/assets/9df4d689-3633-4952-b302-0bda301549a6)

## ABC results 

![abc](https://github.com/user-attachments/assets/4a4fdabf-f408-4cde-915c-8ebfaedbe782)

## NETLIST

![image](https://github.com/user-attachments/assets/3a9d78c6-37dc-4843-95ec-70ca3b73472a)

## NETLIST simulation 

![netlist_waveform](https://github.com/user-attachments/assets/32611589-d62f-4cce-bf54-c40da20237e1)

**NOTE :** _RTL Simulation is the same as Netlist Simulation_

## STA analasys

![alu_slack](https://github.com/user-attachments/assets/2aaa5b32-5558-4ea1-aea8-621e1c4be368)

~~~
Library used : sky130_fd_sc_hd__tt_025C_1v80
Wost Slack : 4.36

Clock Frequency : 177.304965 MHz
~~~



