`timescale 1ns / 1ps

module fft_16point #(
    parameter N = 18
)
(
    input                   clk,
    input                   rst,
    input signed [N-1:0]    in0_r,
    input signed [N-1:0]    in0_i,
    input signed [N-1:0]    in1_r,
    input signed [N-1:0]    in1_i,
    input signed [N-1:0]    in2_r,
    input signed [N-1:0]    in2_i,
    input signed [N-1:0]    in3_r,
    input signed [N-1:0]    in3_i,
    input signed [N-1:0]    in4_r,
    input signed [N-1:0]    in4_i,
    input signed [N-1:0]    in5_r,
    input signed [N-1:0]    in5_i,
    input signed [N-1:0]    in6_r,
    input signed [N-1:0]    in6_i,
    input signed [N-1:0]    in7_r,
    input signed [N-1:0]    in7_i,
    input signed [N-1:0]    in8_r,
    input signed [N-1:0]    in8_i,
    input signed [N-1:0]    in9_r,
    input signed [N-1:0]    in9_i,
    input signed [N-1:0]    in10_r,
    input signed [N-1:0]    in10_i,
    input signed [N-1:0]    in11_r,
    input signed [N-1:0]    in11_i,
    input signed [N-1:0]    in12_r,
    input signed [N-1:0]    in12_i,
    input signed [N-1:0]    in13_r,
    input signed [N-1:0]    in13_i,
    input signed [N-1:0]    in14_r,
    input signed [N-1:0]    in14_i,
    input signed [N-1:0]    in15_r,
    input signed [N-1:0]    in15_i,
    output signed [N:0]     out0_r,
    output signed [N:0]     out0_i,
    output signed [N:0]     out1_r,
    output signed [N:0]     out1_i,
    output signed [N:0]     out2_r,
    output signed [N:0]     out2_i,
    output signed [N:0]     out3_r,
    output signed [N:0]     out3_i,
    output signed [N:0]     out4_r,
    output signed [N:0]     out4_i,
    output signed [N:0]     out5_r,
    output signed [N:0]     out5_i,
    output signed [N:0]     out6_r,
    output signed [N:0]     out6_i,
    output signed [N:0]     out7_r,
    output signed [N:0]     out7_i,
    output signed [N:0]     out8_r,
    output signed [N:0]     out8_i,
    output signed [N:0]     out9_r,
    output signed [N:0]     out9_i,
    output signed [N:0]     out10_r,
    output signed [N:0]     out10_i,
    output signed [N:0]     out11_r,
    output signed [N:0]     out11_i,
    output signed [N:0]     out12_r,
    output signed [N:0]     out12_i,
    output signed [N:0]     out13_r,
    output signed [N:0]     out13_i,
    output signed [N:0]     out14_r,
    output signed [N:0]     out14_i,
    output signed [N:0]     out15_r,
    output signed [N:0]     out15_i,
    output reg done,
    input start
//    output wire signed [18:0] f2out0_r, f2out0_i,
//    output wire signed [18:0] f2out1_r, f2out1_i,
//    output reg [5:0] stage,
//    output reg [5:0] butterfly_count,
//    output fft8_done, butterfly_done
);

    // States and counters
    reg [5:0] stage;
    reg [5:0] butterfly_count;
    
    reg fft_start, butterfly_start;

    // FFT 8-point output wires and done signals
    wire signed [17:0] fft8_out_r [0:7];
    wire signed [17:0] fft8_out_i [0:7];
    wire fft8_done;

    // Butterfly output wires
    wire signed [18:0] f2out0_r, f2out0_i;
    wire signed [18:0] f2out1_r, f2out1_i;
    wire butterfly_done;

    // Registers to hold intermediate FFT results
    reg signed [17:0] even_r [0:7];
    reg signed [17:0] even_i [0:7];
    reg signed [17:0] odd_r [0:7];
    reg signed [17:0] odd_i [0:7];
    
    reg signed [17:0] fft_in_r [0:7];
    reg signed [17:0] fft_in_i [0:7];
    
    // Declare and directly assign twiddle factor values in arrays
// Declare twiddle factor arrays
    wire signed [17:0] twiddle_r [0:7];
    wire signed [17:0] twiddle_i [0:7];
    
    // Assign each element of the array individually
    assign twiddle_r[0] = 18'b000100000000000000;  // w0_real: 1
    assign twiddle_i[0] = 18'b000000000000000000;  // w0_imag: 0
    
    assign twiddle_r[1] = 18'b000011101100100001;  // w1_real: cos(π/8)
    assign twiddle_i[1] = 18'b111110011110000010;  // w_imag: -sin(π/8)
    
    assign twiddle_r[2] = 18'b000010110101000001;  // w2_real: cos(π/4) or 1/√2
    assign twiddle_i[2] = 18'b111101001010111111;  // w2_imag: -sin(π/4) or -1/√2
    
    assign twiddle_r[3] = 18'b000001100001111110;  // w3_real: cos(3π/8)
    assign twiddle_i[3] = 18'b111100010011011111;  // w3_imag: -sin(3π/8)
    
    assign twiddle_r[4] = 18'b000000000000000000;  // w4_real: 0
    assign twiddle_i[4] = 18'b111100000000000000;  // w4_imag: -1
    
    assign twiddle_r[5] = 18'b111110011110000010;  // w5_real: -cos(5π/8)
    assign twiddle_i[5] = 18'b111100010011011111;  // w5_imag: -sin(5π/8)
    
    assign twiddle_r[6] = 18'b111101001010111111;  // w6_real: -cos(3π/4) or -1/√2
    assign twiddle_i[6] = 18'b111101001010111111;  // w6_imag: -sin(3π/4) or -1/√2
    
    assign twiddle_r[7] = 18'b111100010011011111;  // w7_real: -cos(7π/8)
    assign twiddle_i[7] = 18'b111110011110000010;  // w7_imag: -sin(7π/8)
    
    
    reg signed [N:0]temp_r[15:0];
    reg signed [N:0]temp_i[15:0];



    // FFT 8-point instance
    fft8_using_4point #(.N(N)) fft8_even (
        .clk(clk), .rst(rst),
        .in0_r(fft_in_r[0]), .in0_i(fft_in_i[0]),
        .in1_r(fft_in_r[1]), .in1_i(fft_in_i[1]),
        .in2_r(fft_in_r[2]), .in2_i(fft_in_i[2]),
        .in3_r(fft_in_r[3]), .in3_i(fft_in_i[3]),
        .in4_r(fft_in_r[4]), .in4_i(fft_in_i[4]),
        .in5_r(fft_in_r[5]), .in5_i(fft_in_i[5]),
        .in6_r(fft_in_r[6]), .in6_i(fft_in_i[6]),
        .in7_r(fft_in_r[7]), .in7_i(fft_in_i[7]),
        .out0_r(fft8_out_r [0]), .out0_i(fft8_out_i[0]),
        .out1_r(fft8_out_r [1]), .out1_i(fft8_out_i[1]),
        .out2_r(fft8_out_r [2]), .out2_i(fft8_out_i[2]),
        .out3_r(fft8_out_r [3]), .out3_i(fft8_out_i[3]),
        .out4_r(fft8_out_r [4]), .out4_i(fft8_out_i[4]),
        .out5_r(fft8_out_r [5]), .out5_i(fft8_out_i[5]),
        .out6_r(fft8_out_r [6]), .out6_i(fft8_out_i[6]),
        .out7_r(fft8_out_r [7]), .out7_i(fft8_out_i[7]),
        .start(fft_start),
        .done(fft8_done)
    );

    // Butterfly instance
    butterfly2 #(.N(18)) butterfly_inst (
        .clk(clk),
        .rst(rst),
        .in0_r(even_r[butterfly_count]),
        .in0_i(even_i[butterfly_count]),
        .in1_r(odd_r[butterfly_count]),
        .in1_i(odd_i[butterfly_count]),
        .twiddle_r(twiddle_r[butterfly_count]),
        .twiddle_i(twiddle_i[butterfly_count]),
        .start(butterfly_start),
        .f2out0_r(f2out0_r),
        .f2out0_i(f2out0_i),
        .f2out1_r(f2out1_r),
        .f2out1_i(f2out1_i),
        .done(butterfly_done)
    );

    // Signals for FFT input assignment
reg temp_done;
    
    // State machine for sequential FFT and butterfly operations
    always @(posedge clk or posedge rst) begin
        if (rst || !start) begin
            done <= 0;
            temp_done<=0;
            fft_start <= 0;
            butterfly_start <= 0;
            butterfly_count <= 0;
            stage <= 0;
        end else begin
            case (stage)
                0: begin
                    if (start) begin
                        // Set inputs for even-indexed FFT
                        fft_in_r[0] <= in0_r;
                        fft_in_r[1] <= in2_r;
                        fft_in_r[2] <= in4_r;
                        fft_in_r[3] <= in6_r;
                        fft_in_r[4] <= in8_r;
                        fft_in_r[5] <= in10_r;
                        fft_in_r[6] <= in12_r;
                        fft_in_r[7] <= in14_r;
                        fft_in_i[0] <= in0_i;
                        fft_in_i[1] <= in2_i;
                        fft_in_i[2] <= in4_i;
                        fft_in_i[3] <= in6_i;
                        fft_in_i[4] <= in8_i;
                        fft_in_i[5] <= in10_i;
                        fft_in_i[6] <= in12_i;
                        fft_in_i[7] <= in14_i;
                        fft_start <= 1;
                        stage <= 6'b000001;
                    end
                end

                1: begin
                    if (fft8_done) begin
                        // Capture even FFT results
                        even_r[0] <= fft8_out_r[0];
                        even_i[0] <= fft8_out_i[0];
    
                        even_r[1] <= fft8_out_r[1];
                        even_i[1] <= fft8_out_i[1];
    
                        even_r[2] <= fft8_out_r[2];
                        even_i[2] <= fft8_out_i[2];
    
                        even_r[3] <= fft8_out_r[3];
                        even_i[3] <= fft8_out_i[3];
    
                        even_r[4] <= fft8_out_r[4];
                        even_i[4] <= fft8_out_i[4];
    
                        even_r[5] <= fft8_out_r[5];
                        even_i[5] <= fft8_out_i[5];
    
                        even_r[6] <= fft8_out_r[6];
                        even_i[6] <= fft8_out_i[6];
    
                        even_r[7] <= fft8_out_r[7];
                        even_i[7] <= fft8_out_i[7];

                        // Set inputs for odd-indexed FFT
                        fft_in_r[0] <= in1_r;
                        fft_in_r[1] <= in3_r;
                        fft_in_r[2] <= in5_r;
                        fft_in_r[3] <= in7_r;
                        fft_in_r[4] <= in9_r;
                        fft_in_r[5] <= in11_r;
                        fft_in_r[6] <= in13_r;
                        fft_in_r[7] <= in15_r;
                        fft_in_i[0] <= in1_i;
                        fft_in_i[1] <= in3_i;
                        fft_in_i[2] <= in5_i;
                        fft_in_i[3] <= in7_i;
                        fft_in_i[4] <= in9_i;
                        fft_in_i[5] <= in11_i;
                        fft_in_i[6] <= in13_i;
                        fft_in_i[7] <= in15_i;
                        fft_start <= 0;
                        stage <= 6'b000010;
                    end
                end
                
                2:begin
                    if(!fft_start) begin
                        stage<=6'b000011;
                        fft_start<=1;
                        end
                       end
                3: begin
                    if (fft8_done) begin
                                               // Capture odd FFT results
                        odd_r[0] <= fft8_out_r[0];
                        odd_i[0] <= fft8_out_i[0];
    
                        odd_r[1] <= fft8_out_r[1];
                        odd_i[1] <= fft8_out_i[1];
    
                        odd_r[2] <= fft8_out_r[2];
                        odd_i[2] <= fft8_out_i[2];
    
                        odd_r[3] <= fft8_out_r[3];
                        odd_i[3] <= fft8_out_i[3];
    
                        odd_r[4] <= fft8_out_r[4];
                        odd_i[4] <= fft8_out_i[4];
    
                        odd_r[5] <= fft8_out_r[5];
                        odd_i[5] <= fft8_out_i[5];
    
                        odd_r[6] <= fft8_out_r[6];
                        odd_i[6] <= fft8_out_i[6];
    
                        odd_r[7] <= fft8_out_r[7];
                        odd_i[7] <= fft8_out_i[7];
                        // Start butterfly operations
                        fft_start <= 0;
//                        butterfly_start <= 1;
                        stage <= 6'b000100;
                    end
//                    else fft_start <=~;
                end
                4:begin
                stage<=6'b000101;
                butterfly_start<=1;
                end
                5: begin
                if (!butterfly_start && !butterfly_done) begin
                    butterfly_start <= 1;  // Start butterfly operation
                    done <= 0;             // Clear done at the beginning
                end
                else if (butterfly_done && butterfly_start) begin
                    // Store butterfly outputs in the result arrays
                    temp_r[butterfly_count] <= f2out0_r;
                    temp_i[butterfly_count] <= f2out0_i;
                    temp_r[butterfly_count + 8] <= f2out1_r;
                    temp_i[butterfly_count + 8] <= f2out1_i;
            
                    // Advance butterfly count or finish
                    if (butterfly_count == 3'b111) begin
                        done <= 1;           // Set done signal when all operations are complete
                        stage <= 6'b000000;          // Reset stage
                    end
                    else begin
                        butterfly_count <= butterfly_count + 1;
                        butterfly_start <= 0;  // Restart butterfly for the next set
                    end
                end
            end
            endcase
        end
    end
    
//    always @(posedge start) begin
//        done <= 0;
//            temp_done<=0;
//            fft_start <= 0;
//            butterfly_start <= 0;
//            butterfly_count <= 0;
//            stage <= 0;
//    end
    
assign out0_r = temp_r[0];
assign out1_r = temp_r[1];
assign out2_r = temp_r[2];
assign out3_r = temp_r[3];
assign out4_r = temp_r[4];
assign out5_r = temp_r[5];
assign out6_r = temp_r[6];
assign out7_r = temp_r[7];
assign out8_r = temp_r[8];
assign out9_r = temp_r[9];
assign out10_r = temp_r[10];
assign out11_r = temp_r[11];
assign out12_r = temp_r[12];
assign out13_r = temp_r[13];
assign out14_r = temp_r[14];
assign out15_r = temp_r[15];

assign out0_i = temp_i[0];
assign out1_i = temp_i[1];
assign out2_i = temp_i[2];
assign out3_i = temp_i[3];
assign out4_i = temp_i[4];
assign out5_i = temp_i[5];
assign out6_i = temp_i[6];
assign out7_i = temp_i[7];
assign out8_i = temp_i[8];
assign out9_i = temp_i[9];
assign out10_i = temp_i[10];
assign out11_i = temp_i[11];
assign out12_i = temp_i[12];
assign out13_i = temp_i[13];
assign out14_i = temp_i[14];
assign out15_i = temp_i[15];
   
    
endmodule

