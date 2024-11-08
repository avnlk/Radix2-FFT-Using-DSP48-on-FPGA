module fft8_using_4point #
(
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
    input start,
//    input odd,
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
    output reg done,
    output done1, done2, done3, done4, done5, done6
//    output reg even
);

reg [3:0] count;

// Initial conditions for sequential logic and tracking done signals
initial begin
    done = 0;
    count = 0;
end

// Instantiate two 4-point FFT modules
wire signed [N:0] fft4_even_out[3:0][1:0];
wire signed [N:0] fft4_odd_out[3:0][1:0];

fft4 #(.N(N)) fft4_even (
    .clk(clk), .rst(rst),
    .in0_r(in0_r), .in0_i(in0_i),
    .in1_r(in2_r), .in1_i(in2_i),
    .in2_r(in4_r), .in2_i(in4_i),
    .in3_r(in6_r), .in3_i(in6_i),
    .f4out0_r(fft4_even_out[0][0]), .f4out0_i(fft4_even_out[0][1]),
    .f4out1_r(fft4_even_out[1][0]), .f4out1_i(fft4_even_out[1][1]),
    .f4out2_r(fft4_even_out[2][0]), .f4out2_i(fft4_even_out[2][1]),
    .f4out3_r(fft4_even_out[3][0]), .f4out3_i(fft4_even_out[3][1]),
    .start(start), .done(done1)
);

fft4 #(.N(N)) fft4_odd (
    .clk(clk), .rst(rst),
    .in0_r(in1_r), .in0_i(in1_i),
    .in1_r(in3_r), .in1_i(in3_i),
    .in2_r(in5_r), .in2_i(in5_i),
    .in3_r(in7_r), .in3_i(in7_i),
    .f4out0_r(fft4_odd_out[0][0]), .f4out0_i(fft4_odd_out[0][1]),
    .f4out1_r(fft4_odd_out[1][0]), .f4out1_i(fft4_odd_out[1][1]),
    .f4out2_r(fft4_odd_out[2][0]), .f4out2_i(fft4_odd_out[2][1]),
    .f4out3_r(fft4_odd_out[3][0]), .f4out3_i(fft4_odd_out[3][1]),
    .start(start), .done(done2)
);

// Twiddle factors in 17-bit fixed-point format
wire signed [17:0] w0_real = 18'b000100000000000000;  // 1
wire signed [17:0] w0_imag = 18'b000000000000000000;  // 0
wire signed [17:0] w1_real = 18'b000010110101000110;  // ≈ 0.7071
wire signed [17:0] w1_imag = 18'b111101001010111001;  // ≈ -0.7071
wire signed [17:0] w2_real = 18'b000000000000000000;  // 0
wire signed [17:0] w2_imag = 18'b111100000000000000;  // -1
wire signed [17:0] w3_real = 18'b111101001010111001;  // ≈ -0.7071
wire signed [17:0] w3_imag = 18'b111101001010111001;  // ≈ -0.7071

// Final butterfly stage
butterfly2 #(N) butterfly0 (.clk(clk), .rst(rst), .in0_r(fft4_even_out[0][0]), .in0_i(fft4_even_out[0][1]), .in1_r(fft4_odd_out[0][0]), .in1_i(fft4_odd_out[0][1]), .twiddle_r(w0_real), .twiddle_i(w0_imag), .f2out0_r(out0_r), .f2out0_i(out0_i), .f2out1_r(out4_r), .f2out1_i(out4_i), .start(done1 && done2), .done(done3));
butterfly2 #(N) butterfly1 (.clk(clk), .rst(rst), .in0_r(fft4_even_out[1][0]), .in0_i(fft4_even_out[1][1]), .in1_r(fft4_odd_out[1][0]), .in1_i(fft4_odd_out[1][1]), .twiddle_r(w1_real), .twiddle_i(w1_imag), .f2out0_r(out1_r), .f2out0_i(out1_i), .f2out1_r(out5_r), .f2out1_i(out5_i), .start(done1 && done2), .done(done4));
butterfly2 #(N) butterfly2 (.clk(clk), .rst(rst), .in0_r(fft4_even_out[2][0]), .in0_i(fft4_even_out[2][1]), .in1_r(fft4_odd_out[2][0]), .in1_i(fft4_odd_out[2][1]), .twiddle_r(w2_real), .twiddle_i(w2_imag), .f2out0_r(out2_r), .f2out0_i(out2_i), .f2out1_r(out6_r), .f2out1_i(out6_i), .start(done1 && done2), .done(done5));
butterfly2 #(N) butterfly3 (.clk(clk), .rst(rst), .in0_r(fft4_even_out[3][0]), .in0_i(fft4_even_out[3][1]), .in1_r(fft4_odd_out[3][0]), .in1_i(fft4_odd_out[3][1]), .twiddle_r(w3_real), .twiddle_i(w3_imag), .f2out0_r(out3_r), .f2out0_i(out3_i), .f2out1_r(out7_r), .f2out1_i(out7_i), .start(done1 && done2), .done(done6));

// Generate overall done signal
always @(posedge clk or posedge rst) begin
    if (rst) begin
        done <= 0;
        count <= 0;
    end else if (!start) begin
        done <= 0;
        count <= 0;
    end else if (done3 && done4 && done5 && done6) begin
        done <= 1;
        count <= count + 1;
//        even<=~odd;
    end
end

endmodule


