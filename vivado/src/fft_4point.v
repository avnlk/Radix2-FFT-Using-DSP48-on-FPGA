module fft4 #
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
    input       signed [N-1:0]     in2_r,
    input       signed [N-1:0]     in2_i,
    input       signed [N-1:0]     in3_r,
    input       signed [N-1:0]     in3_i,
    input start,
    output      signed [N:0]       f4out0_r,
    output      signed [N:0]       f4out0_i,
    output      signed [N:0]       f4out1_r,
    output      signed [N:0]       f4out1_i,
    output      signed [N:0]       f4out2_r,
    output      signed [N:0]       f4out2_i,
    output      signed [N:0]       f4out3_r,
    output      signed [N:0]       f4out3_i,
    output reg done
    
);



    wire signed [N:0] stage1_out0_r, stage1_out0_i, stage1_out1_r, stage1_out1_i;
    wire signed [N:0] stage1_out2_r, stage1_out2_i, stage1_out3_r, stage1_out3_i;

    wire signed [N-1:0] w1_real = 18'b000100000000000000;
    wire signed [N-1:0] w1_imag = 18'b000000000000000000; 
    wire signed [N-1:0] w2_real = 18'b000000000000000000; 
    wire signed [N-1:0] w2_imag = 18'b111100000000000000;
    reg start1;
    reg start2;
    reg [3:0]count, stage;
    wire done1, done2, done3, done4;

initial begin  
    done<=0;
    start1<=1;
    start2<=1;
    stage<=0;
end


    butterfly2 #(N) butterfly_0 (
        .clk(clk),
        .rst(rst),
        .in0_r(in0_r),
        .in0_i(in0_i),
        .in1_r(in2_r),
        .in1_i(in2_i),
        .start(start1),
        .twiddle_r(w1_real),    
        .twiddle_i(w1_imag),
        .f2out0_r(stage1_out0_r),
        .f2out0_i(stage1_out0_i),
        .f2out1_r(stage1_out2_r),
        .f2out1_i(stage1_out2_i),
        .done(done1)
    );

    butterfly2 #(N) butterfly_1 (
        .clk(clk),
        .rst(rst),
        .in0_r(in1_r),
        .in0_i(in1_i),
        .in1_r(in3_r),
        .in1_i(in3_i),
        .start(start1),
        .twiddle_r(w1_real),    
        .twiddle_i(w1_imag),
        .f2out0_r(stage1_out1_r),
        .f2out0_i(stage1_out1_i),
        .f2out1_r(stage1_out3_r),
        .f2out1_i(stage1_out3_i),
        .done(done2)
    );


    butterfly2 #(N) butterfly_2 (
        .clk(clk),
        .rst(rst),
        .in0_r(stage1_out0_r),
        .in0_i(stage1_out0_i),
        .in1_r(stage1_out1_r),
        .in1_i(stage1_out1_i),
        .start(start2),
        .twiddle_r(w1_real),   
        .twiddle_i(w1_imag),
        .f2out0_r(f4out0_r),
        .f2out0_i(f4out0_i),
        .f2out1_r(f4out2_r),
        .f2out1_i(f4out2_i),
        .done(done3)
    );

    butterfly2 #(N) butterfly_3 (
        .clk(clk),
        .rst(rst),
        .in0_r(stage1_out2_r),
        .in0_i(stage1_out2_i),
        .in1_r(stage1_out3_r),
        .in1_i(stage1_out3_i),
        .start(start2),
        .twiddle_r(w2_real),   
        .twiddle_i(w2_imag),
        .f2out0_r(f4out1_r),
        .f2out0_i(f4out1_i),
        .f2out1_r(f4out3_r),
        .f2out1_i(f4out3_i),
        .done(done4)
    );
    
    
    always @(posedge clk) begin
        if (start==0) begin
            done<=0;
            stage<=0;
        end
        else begin
            if(stage==0 && done1==1 && done2==1) begin
                stage<=1;
            end
            if(stage==1 && done3==1 && done4==1) begin
                stage<=2;
            end
            if(stage==2) begin
                done<=1;
            end
        end
    end
    
    
endmodule
