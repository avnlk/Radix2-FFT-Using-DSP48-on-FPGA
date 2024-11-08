`timescale 1ns / 1ps

module fft_32point #(
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
    input signed [N-1:0]    in16_r,
    input signed [N-1:0]    in16_i,
    input signed [N-1:0]    in17_r,
    input signed [N-1:0]    in17_i,
    input signed [N-1:0]    in18_r,
    input signed [N-1:0]    in18_i,
    input signed [N-1:0]    in19_r,
    input signed [N-1:0]    in19_i,
    input signed [N-1:0]    in20_r,
    input signed [N-1:0]    in20_i,
    input signed [N-1:0]    in21_r,
    input signed [N-1:0]    in21_i,
    input signed [N-1:0]    in22_r,
    input signed [N-1:0]    in22_i,
    input signed [N-1:0]    in23_r,
    input signed [N-1:0]    in23_i,
    input signed [N-1:0]    in24_r,
    input signed [N-1:0]    in24_i,
    input signed [N-1:0]    in25_r,
    input signed [N-1:0]    in25_i,
    input signed [N-1:0]    in26_r,
    input signed [N-1:0]    in26_i,
    input signed [N-1:0]    in27_r,
    input signed [N-1:0]    in27_i,
    input signed [N-1:0]    in28_r,
    input signed [N-1:0]    in28_i,
    input signed [N-1:0]    in29_r,
    input signed [N-1:0]    in29_i,
    input signed [N-1:0]    in30_r,
    input signed [N-1:0]    in30_i,
    input signed [N-1:0]    in31_r,
    input signed [N-1:0]    in31_i,
    output signed [N:0]    out0_r,
    output signed [N:0]    out0_i,
    output signed [N:0]    out1_r,
    output signed [N:0]    out1_i,
    output signed [N:0]    out2_r,
    output signed [N:0]    out2_i,
    output signed [N:0]    out3_r,
    output signed [N:0]    out3_i,
    output signed [N:0]    out4_r,
    output signed [N:0]    out4_i,
    output signed [N:0]    out5_r,
    output signed [N:0]    out5_i,
    output signed [N:0]    out6_r,
    output signed [N:0]    out6_i,
    output signed [N:0]    out7_r,
    output signed [N:0]    out7_i,
    output signed [N:0]    out8_r,
    output signed [N:0]    out8_i,
    output signed [N:0]    out9_r,
    output signed [N:0]    out9_i,
    output signed [N:0]    out10_r,
    output signed [N:0]    out10_i,
    output signed [N:0]    out11_r,
    output signed [N:0]    out11_i,
    output signed [N:0]    out12_r,
    output signed [N:0]    out12_i,
    output signed [N:0]    out13_r,
    output signed [N:0]    out13_i,
    output signed [N:0]    out14_r,
    output signed [N:0]    out14_i,
    output signed [N:0]    out15_r,
    output signed [N:0]    out15_i,
    output signed [N:0]    out16_r,
    output signed [N:0]    out16_i,
    output signed [N:0]    out17_r,
    output signed [N:0]    out17_i,
    output signed [N:0]    out18_r,
    output signed [N:0]    out18_i,
    output signed [N:0]    out19_r,
    output signed [N:0]    out19_i,
    output signed [N:0]    out20_r,
    output signed [N:0]    out20_i,
    output signed [N:0]    out21_r,
    output signed [N:0]    out21_i,
    output signed [N:0]    out22_r,
    output signed [N:0]    out22_i,
    output signed [N:0]    out23_r,
    output signed [N:0]    out23_i,
    output signed [N:0]    out24_r,
    output signed [N:0]    out24_i,
    output signed [N:0]    out25_r,
    output signed [N:0]    out25_i,
    output signed [N:0]    out26_r,
    output signed [N:0]    out26_i,
    output signed [N:0]    out27_r,
    output signed [N:0]    out27_i,
    output signed [N:0]    out28_r,
    output signed [N:0]    out28_i,
    output signed [N:0]    out29_r,
    output signed [N:0]    out29_i,
    output signed [N:0]    out30_r,
    output signed [N:0]    out30_i,
    output signed [N:0]    out31_r,
    output signed [N:0]    out31_i,
    output reg done,
    input start
//    output wire signed [18:0] f2out0_r, f2out0_i,
//    output wire signed [18:0] f2out1_r, f2out1_i,
//    output reg [5:0] stage,
//    output reg [5:0] butterfly_count,
//    output fft_done, butterfly_done
);

    // States and counters
    reg [5:0] stage;
    reg [5:0] butterfly_count;
    wire fft_done;
    wire butterfly_done;
    wire signed [18:0] f2out0_r, f2out0_i;
    wire signed [18:0] f2out1_r, f2out1_i;
    
    reg fft_start, butterfly_start;

    // FFT 8-point output wires and done signals
    wire signed [17:0] fft_out_r [0:15];
    wire signed [17:0] fft_out_i [0:15];

    // Butterfly output wires
    

    // Registers to hold intermediate FFT results
    reg signed [17:0] even_r [0:15];
    reg signed [17:0] even_i [0:15];
    reg signed [17:0] odd_r [0:15];
    reg signed [17:0] odd_i [0:15];
    
    reg signed [17:0] fft_in_r [0:15];
    reg signed [17:0] fft_in_i [0:15];
    
    // Declare and directly assign twiddle factor values in arrays
// Declare twiddle factor arrays
    wire signed [17:0] twiddle_r [0:15];
    wire signed [17:0] twiddle_i [0:15];
    
    // Assign each element of the array individually
    assign twiddle_r[0] = 18'd16384;
    assign twiddle_i[0] = 18'd0;
    assign twiddle_r[1] = 18'd16069;
    assign twiddle_i[1] = -18'd3196;
    assign twiddle_r[2] = 18'd15136;
    assign twiddle_i[2] = -18'd6269;
    assign twiddle_r[3] = 18'd13622;
    assign twiddle_i[3] = -18'd9102;
    assign twiddle_r[4] = 18'd11585;
    assign twiddle_i[4] = -18'd11585;
    assign twiddle_r[5] = 18'd9102;
    assign twiddle_i[5] = -18'd13622;
    assign twiddle_r[6] = 18'd6269;
    assign twiddle_i[6] = -18'd15136;
    assign twiddle_r[7] = 18'd3196;
    assign twiddle_i[7] = -18'd16069;
    assign twiddle_r[8] = 18'd0;
    assign twiddle_i[8] = -18'd16384;
    assign twiddle_r[9] = -18'd3196;
    assign twiddle_i[9] = -18'd16069;
    assign twiddle_r[10] = -18'd6269;
    assign twiddle_i[10] = -18'd15136;
    assign twiddle_r[11] = -18'd9102;
    assign twiddle_i[11] = -18'd13622;
    assign twiddle_r[12] = -18'd11585;
    assign twiddle_i[12] = -18'd11585;
    assign twiddle_r[13] = -18'd13622;
    assign twiddle_i[13] = -18'd9102;
    assign twiddle_r[14] = -18'd15136;
    assign twiddle_i[14] = -18'd6269;
    assign twiddle_r[15] = -18'd16069;
    assign twiddle_i[15] = -18'd3196;
    
    
    reg signed [N:0]temp_r[0:31];
    reg signed [N:0]temp_i[0:31];
    reg signed [N:0] temp1_r[0:31];
    reg signed [N:0] temp1_i[0:31];



    // FFT 8-point instance
    fft_16point #(.N(N)) fft8_even (
        .clk(clk), .rst(rst),
        .in0_r(fft_in_r[0]), .in0_i(fft_in_i[0]),
        .in1_r(fft_in_r[1]), .in1_i(fft_in_i[1]),
        .in2_r(fft_in_r[2]), .in2_i(fft_in_i[2]),
        .in3_r(fft_in_r[3]), .in3_i(fft_in_i[3]),
        .in4_r(fft_in_r[4]), .in4_i(fft_in_i[4]),
        .in5_r(fft_in_r[5]), .in5_i(fft_in_i[5]),
        .in6_r(fft_in_r[6]), .in6_i(fft_in_i[6]),
        .in7_r(fft_in_r[7]), .in7_i(fft_in_i[7]),
        .in8_r(fft_in_r[8]), .in8_i(fft_in_i[8]),
        .in9_r(fft_in_r[9]), .in9_i(fft_in_i[9]),
        .in10_r(fft_in_r[10]), .in10_i(fft_in_i[10]),
        .in11_r(fft_in_r[11]), .in11_i(fft_in_i[11]),
        .in12_r(fft_in_r[12]), .in12_i(fft_in_i[12]),
        .in13_r(fft_in_r[13]), .in13_i(fft_in_i[13]),
        .in14_r(fft_in_r[14]), .in14_i(fft_in_i[14]),
        .in15_r(fft_in_r[15]), .in15_i(fft_in_i[15]),
        .out0_r(fft_out_r[0]), .out0_i(fft_out_i[0]),
        .out1_r(fft_out_r[1]), .out1_i(fft_out_i[1]),
        .out2_r(fft_out_r[2]), .out2_i(fft_out_i[2]),
        .out3_r(fft_out_r[3]), .out3_i(fft_out_i[3]),
        .out4_r(fft_out_r[4]), .out4_i(fft_out_i[4]),
        .out5_r(fft_out_r[5]), .out5_i(fft_out_i[5]),
        .out6_r(fft_out_r[6]), .out6_i(fft_out_i[6]),
        .out7_r(fft_out_r[7]), .out7_i(fft_out_i[7]),
        .out8_r(fft_out_r[8]), .out8_i(fft_out_i[8]),
        .out9_r(fft_out_r[9]), .out9_i(fft_out_i[9]),
        .out10_r(fft_out_r[10]), .out10_i(fft_out_i[10]),
        .out11_r(fft_out_r[11]), .out11_i(fft_out_i[11]),
        .out12_r(fft_out_r[12]), .out12_i(fft_out_i[12]),
        .out13_r(fft_out_r[13]), .out13_i(fft_out_i[13]),
        .out14_r(fft_out_r[14]), .out14_i(fft_out_i[14]),
        .out15_r(fft_out_r[15]), .out15_i(fft_out_i[15]),
        .start(fft_start),
        .done(fft_done)
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
                        // Real inputs assignments
                        fft_in_r[0] <= in0_r;
                        fft_in_r[1] <= in2_r;
                        fft_in_r[2] <= in4_r;
                        fft_in_r[3] <= in6_r;
                        fft_in_r[4] <= in8_r;
                        fft_in_r[5] <= in10_r;
                        fft_in_r[6] <= in12_r;
                        fft_in_r[7] <= in14_r;
                        
                        // New assignments for fft_in_r[8] to fft_in_r[15]
                        fft_in_r[8] <= in16_r;   // New assignment
                        fft_in_r[9] <= in18_r;   // New assignment
                        fft_in_r[10] <= in20_r;  // New assignment
                        fft_in_r[11] <= in22_r;  // New assignment
                        fft_in_r[12] <= in24_r;  // New assignment
                        fft_in_r[13] <= in26_r;  // New assignment
                        fft_in_r[14] <= in28_r;  // New assignment
                        fft_in_r[15] <= in30_r;  // New assignment
                        
                        // Imaginary inputs assignments
                        fft_in_i[0] <= in0_i;
                        fft_in_i[1] <= in2_i;
                        fft_in_i[2] <= in4_i;
                        fft_in_i[3] <= in6_i;
                        fft_in_i[4] <= in8_i;
                        fft_in_i[5] <= in10_i;
                        fft_in_i[6] <= in12_i;
                        fft_in_i[7] <= in14_i;
                        
                        // New assignments for fft_in_i[8] to fft_in_i[15]
                        fft_in_i[8] <= in16_i;   // New assignment
                        fft_in_i[9] <= in18_i;   // New assignment
                        fft_in_i[10] <= in20_i;  // New assignment
                        fft_in_i[11] <= in22_i;  // New assignment
                        fft_in_i[12] <= in24_i;  // New assignment
                        fft_in_i[13] <= in26_i;  // New assignment
                        fft_in_i[14] <= in28_i;  // New assignment
                        fft_in_i[15] <= in30_i;  // New assignment
                        
                        fft_start <= 1;
                        stage <= 6'b000001;
                    end
                end

                1: begin
                    if (fft_done) begin
                        // Capture even FFT results
                        // Even real outputs assignments
                        even_r[0] <= fft_out_r[0];
                        even_i[0] <= fft_out_i[0];
                        
                        even_r[1] <= fft_out_r[1];
                        even_i[1] <= fft_out_i[1];
                        
                        even_r[2] <= fft_out_r[2];
                        even_i[2] <= fft_out_i[2];
                        
                        even_r[3] <= fft_out_r[3];
                        even_i[3] <= fft_out_i[3];
                        
                        even_r[4] <= fft_out_r[4];
                        even_i[4] <= fft_out_i[4];
                        
                        even_r[5] <= fft_out_r[5];
                        even_i[5] <= fft_out_i[5];
                        
                        even_r[6] <= fft_out_r[6];
                        even_i[6] <= fft_out_i[6];
                        
                        even_r[7] <= fft_out_r[7];
                        even_i[7] <= fft_out_i[7];
                        
                        // New assignments for even_r[8] to even_r[15] and even_i[8] to even_i[15]
                        even_r[8] <= fft_out_r[8];   // New assignment
                        even_i[8] <= fft_out_i[8];   // New assignment
                        
                        even_r[9] <= fft_out_r[9];   // New assignment
                        even_i[9] <= fft_out_i[9];   // New assignment
                        
                        even_r[10] <= fft_out_r[10]; // New assignment
                        even_i[10] <= fft_out_i[10]; // New assignment
                        
                        even_r[11] <= fft_out_r[11]; // New assignment
                        even_i[11] <= fft_out_i[11]; // New assignment
                        
                        even_r[12] <= fft_out_r[12]; // New assignment
                        even_i[12] <= fft_out_i[12]; // New assignment
                        
                        even_r[13] <= fft_out_r[13]; // New assignment
                        even_i[13] <= fft_out_i[13]; // New assignment
                        
                        even_r[14] <= fft_out_r[14]; // New assignment
                        even_i[14] <= fft_out_i[14]; // New assignment
                        
                        even_r[15] <= fft_out_r[15]; // New assignment
                        even_i[15] <= fft_out_i[15]; // New assignment
                        

                        // Set inputs for odd-indexed FFT
                        // Real inputs assignments
                        fft_in_r[0] <= in1_r;
                        fft_in_r[1] <= in3_r;
                        fft_in_r[2] <= in5_r;
                        fft_in_r[3] <= in7_r;
                        fft_in_r[4] <= in9_r;
                        fft_in_r[5] <= in11_r;
                        fft_in_r[6] <= in13_r;
                        fft_in_r[7] <= in15_r;
                        
                        fft_in_r[8] <= in17_r;  // New assignment
                        fft_in_r[9] <= in19_r;  // New assignment
                        fft_in_r[10] <= in21_r; // New assignment
                        fft_in_r[11] <= in23_r; // New assignment
                        fft_in_r[12] <= in25_r; // New assignment
                        fft_in_r[13] <= in27_r; // New assignment
                        fft_in_r[14] <= in29_r; // New assignment
                        fft_in_r[15] <= in31_r; // New assignment
                        
                        // Imaginary inputs assignments
                        fft_in_i[0] <= in1_i;
                        fft_in_i[1] <= in3_i;
                        fft_in_i[2] <= in5_i;
                        fft_in_i[3] <= in7_i;
                        fft_in_i[4] <= in9_i;
                        fft_in_i[5] <= in11_i;
                        fft_in_i[6] <= in13_i;
                        fft_in_i[7] <= in15_i;
                        
                        fft_in_i[8] <= in17_i;  // New assignment
                        fft_in_i[9] <= in19_i;  // New assignment
                        fft_in_i[10] <= in21_i; // New assignment
                        fft_in_i[11] <= in23_i; // New assignment
                        fft_in_i[12] <= in25_i; // New assignment
                        fft_in_i[13] <= in27_i; // New assignment
                        fft_in_i[14] <= in29_i; // New assignment
                        fft_in_i[15] <= in31_i; // New assignment

                        fft_start <= 0;
                        stage <= 6'b000010;
                    end
                end
                
                2:begin
                    if(!fft_done) begin
                        stage<=6'b000011;
                        fft_start<=1;
                        end
                       end
                3: begin
                    if (fft_done) begin
                                               // Capture odd FFT results
                        odd_r[0] <= fft_out_r[0];
                        odd_i[0] <= fft_out_i[0];
                        
                        odd_r[1] <= fft_out_r[1];
                        odd_i[1] <= fft_out_i[1];
                        
                        odd_r[2] <= fft_out_r[2];
                        odd_i[2] <= fft_out_i[2];
                        
                        odd_r[3] <= fft_out_r[3];
                        odd_i[3] <= fft_out_i[3];
                        
                        odd_r[4] <= fft_out_r[4];
                        odd_i[4] <= fft_out_i[4];
                        
                        odd_r[5] <= fft_out_r[5];
                        odd_i[5] <= fft_out_i[5];
                        
                        odd_r[6] <= fft_out_r[6];
                        odd_i[6] <= fft_out_i[6];
                        
                        odd_r[7] <= fft_out_r[7];
                        odd_i[7] <= fft_out_i[7];
                        
                        // New assignments for odd_r[8] to odd_r[15] and odd_i[8] to odd_i[15]
                        odd_r[8] <= fft_out_r[8];
                        odd_i[8] <= fft_out_i[8];
                        
                        odd_r[9] <= fft_out_r[9];
                        odd_i[9] <= fft_out_i[9];
                        
                        odd_r[10] <= fft_out_r[10];
                        odd_i[10] <= fft_out_i[10];
                        
                        odd_r[11] <= fft_out_r[11];
                        odd_i[11] <= fft_out_i[11];
                        
                        odd_r[12] <= fft_out_r[12];
                        odd_i[12] <= fft_out_i[12];
                        
                        odd_r[13] <= fft_out_r[13];
                        odd_i[13] <= fft_out_i[13];
                        
                        odd_r[14] <= fft_out_r[14];
                        odd_i[14] <= fft_out_i[14];
                        
                        odd_r[15] <= fft_out_r[15];
                        odd_i[15] <= fft_out_i[15];
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
                    temp_r[butterfly_count + 16] <= f2out1_r;
                    temp_i[butterfly_count + 16] <= f2out1_i;
            
                    // Advance butterfly count or finish
                    if (butterfly_count == 4'b1111) begin
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
    
// Real outputs assignments
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
assign out16_r = temp_r[16];
assign out17_r = temp_r[17];
assign out18_r = temp_r[18];
assign out19_r = temp_r[19];
assign out20_r = temp_r[20];
assign out21_r = temp_r[21];
assign out22_r = temp_r[22];
assign out23_r = temp_r[23];
assign out24_r = temp_r[24];
assign out25_r = temp_r[25];
assign out26_r = temp_r[26];
assign out27_r = temp_r[27];
assign out28_r = temp_r[28];
assign out29_r = temp_r[29];
assign out30_r = temp_r[30];
assign out31_r = temp_r[31];

// Imaginary outputs assignments
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
assign out16_i = temp_i[16];
assign out17_i = temp_i[17];
assign out18_i = temp_i[18];
assign out19_i = temp_i[19];
assign out20_i = temp_i[20];
assign out21_i = temp_i[21];
assign out22_i = temp_i[22];
assign out23_i = temp_i[23];
assign out24_i = temp_i[24];
assign out25_i = temp_i[25];
assign out26_i = temp_i[26];
assign out27_i = temp_i[27];
assign out28_i = temp_i[28];
assign out29_i = temp_i[29];
assign out30_i = temp_i[30];
assign out31_i = temp_i[31];

   
    
endmodule