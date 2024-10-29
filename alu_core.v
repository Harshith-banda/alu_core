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

