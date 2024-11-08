# alu_core

## Code
*alu design*
```
module alu_core (
    input [7:0] a, 
    input [7:0] b, 
    input clk, 
    input rst, 
    input [1:0] op, 
    output reg [15:0] result
);
    always @ (posedge clk) begin 
        if (rst) begin
            result <= 16'b0; // Reset result
        end else begin
            case (op)
                2'b00: result <= a + b;             // Addition
                2'b01: result <= a - b;             // Subtraction
                2'b10: result <= a * b;             // Multiplication
                2'b11: begin                         // Division
                    if (b == 0) begin
                        result <= 16'hFFFF;         // Indicate error for division by zero
                    end else begin
                        result <= {8'b0, a / b};    // Division with zero padding in upper byte
                    end
                end
                default: result <= 16'b0;           // Default case
            endcase
        end
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
$ gtkwave alu_testbench.vcd

```
*gtkwave output*

![alu_core](https://github.com/user-attachments/assets/d022835e-0424-4f7c-8d23-47c276a19cbc)
![waveform1](https://github.com/user-attachments/assets/1ee819b7-3f05-4684-821a-55c5bb5a1b8f)


## RTL synthesis

*commands for synthesis*

```
yosys> read_liberty -lib /lib/sky130_fd_sc_hd__tt_025C_1v80.lib
yosys> read_verilog alu_core.v
yosys> synth -top alu_core 
yosys> abc -liberty /lib/sky130_fd_sc_hd__tt_025C_1v80.lib
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



