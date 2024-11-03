# alu_core
*Before installing run the command below*
```
$ sudo apt update && upgrade
```
Tools needed:
- [x] Yosys
- [x] OpenSTA
- [x] ngspice
- [x] iverilog
- [x] gtkwave
- [x] magic

### Yosys
```
$ mkdir yosys
$ git clone https://github.com/YosysHQ/yosys.git
$ cd yosys
$ sudo apt-get install build-essential clang bison flex \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev zlib1g-dev
$ make 
$ sudo make install
```

![yosys](https://user-images.githubusercontent.com/112769624/236633099-02d75838-aa08-46c7-b303-7905add62979.png)



### OpenSTA
*To install cmake for 18.04 (if not present)*
```
$ wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | sudo apt-key add -
$ sudo apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main'
$ sudo apt-get update
$ sudo apt-get upgrade
```
*Dependency*
```
$ sudo apt install swig
```
*For OpenSTA*
```
$ git clone https://github.com/The-OpenROAD-Project/OpenSTA.git
$ cd OpenSTA
$ mkdir build
$ cd build
$ cmake ..
$ make
```
![sta](https://user-images.githubusercontent.com/112769624/236634039-9f27788e-8a0f-4f94-94f3-f5ba59ed7f3a.png)


### ngspice
* Download ngspice-37.tar.gz from old releases parent folder from
(https://sourceforge.net/projects/ngspice/files/)
```
$ tar -zxvf ngspice-40.tar.gz
$ cd ngspice-40
$ mkdir release
$ cd release
$ ../configure  --with-x --with-readline=yes --disable-debug
$ make
$ sudo make install
```
![ngspice](https://user-images.githubusercontent.com/112769624/236634603-e17ae7a4-9e6a-4ec5-bd67-8898ae467085.png)


### iverilog
```
$ sudo apt-get install iverilog
```
### gtkwave
```
$ sudo apt install gtkwave
```
### magic
```
$   sudo apt-get install m4
$   sudo apt-get install tcsh
$   sudo apt-get install csh
$   sudo apt-get install libx11-dev
$   sudo apt-get install tcl-dev tk-dev
$   sudo apt-get install libcairo2-dev
$   sudo apt-get install mesa-common-dev libglu1-mesa-dev
$   sudo apt-get install libncurses-dev
```
### Good MUX design and testbench

![iverilog sim](https://user-images.githubusercontent.com/112769624/236661360-f3b70813-89fc-41de-87fb-a54129a675ae.png)

*Presequisites*
```
$ sudo apt install vim-gtk3
```
*commands*
```
$ gvim alu_core.v tb_alu_core.v
$ gedit alu_core.v tb_alu_core.v
$ iverilog alu_core.v tb_alu_core.v
$ ls
$ ./a.out
$ gtkwave tb_good_mux.v

```
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
*gtkwave output*

![alu_core](https://github.com/user-attachments/assets/d022835e-0424-4f7c-8d23-47c276a19cbc)
![waveform2](https://github.com/user-attachments/assets/875cfd15-d9da-4c3a-b7fc-05404892669e)







