`timescale 1ns / 1ps

module butterfly2 #
(
    parameter N = 18
)
(
    input                   clk,
    input                   rst,
    input       signed [N-1:0]     in0_r,
    input       signed [N-1:0]     in0_i,
    input       signed [N-1:0]     in1_r,
    input       signed [N-1:0]     in1_i,
    input       signed [N-1:0]     twiddle_r,
    input       signed [N-1:0]     twiddle_i,
    input                   start,

    output reg  signed [N:0]       f2out0_r,
    output reg  signed [N:0]       f2out0_i,
    output reg  signed [N:0]       f2out1_r,
    output reg  signed [N:0]       f2out1_i,
    output reg                   done
);

    wire signed        [35:0]      in1r_wr;
    wire signed        [35:0]      in1i_wi;
    wire signed        [35:0]      in1i_wr;
    wire signed        [35:0]      in1r_wi;
    
    wire  signed [17:0] product_real;
    wire  signed [17:0] product_imag;
    reg [2:0] count;

    // Reset or initialize outputs and counter on reset
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Reset outputs and count
            f2out0_r <= 0;
            f2out0_i <= 0;
            f2out1_r <= 0;
            f2out1_i <= 0;
            done <= 0;
            count <= 0;
        end else begin
            // Check for change in start signal
            if (!start) begin
                count <= 0;  // Reset counter on change of start signal
            end else if (count < 8) begin
                count <= count + 1;  // Increment counter
            end
            
            // Perform butterfly calculations when count is valid
            if (count < 8) begin
                // Calculate products
                f2out0_r <= in0_r + product_real;
                f2out0_i <= in0_i + product_imag;
                f2out1_r <= in0_r - product_real;
                f2out1_i <= in0_i - product_imag;
            end
            
            // Set done signal when count reaches 8
            if (count==3'b110) begin
                done <= 1;
            end else begin
                done <= 0;  // Reset done signal until count reaches 8
            end
        end
    end
    
    // Multipliers
    mult_a_b M1 (
        .CLK(clk),
        .A(in1_r),
        .B(twiddle_r),
        .P(in1r_wr)
    );

    mult_a_b M2 (
        .CLK(clk),
        .A(in1_i),
        .B(twiddle_i),
        .P(in1i_wi)
    );

    mult_a_b M3 (
        .CLK(clk),
        .A(in1_r),
        .B(twiddle_i),
        .P(in1r_wi)
    );

    mult_a_b M4 (
        .CLK(clk),
        .A(in1_i),
        .B(twiddle_r),
        .P(in1i_wr)
    );

    // Calculate the product results with scaling
    assign product_real = (in1r_wr - in1i_wi) >>> 14;
    assign product_imag = (in1r_wi + in1i_wr) >>> 14;

endmodule
