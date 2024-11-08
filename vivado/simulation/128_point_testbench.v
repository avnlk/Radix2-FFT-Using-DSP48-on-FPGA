`timescale 1ns / 1ps

module tb_fft_128point;

    // Parameters
    parameter N = 18;

    // Signals
    reg clk;
    reg rst;
    reg signed [N-1:0] in0_r, in0_i, in1_r, in1_i, in2_r, in2_i, in3_r, in3_i, in4_r, in4_i,
                       in5_r, in5_i, in6_r, in6_i, in7_r, in7_i, in8_r, in8_i, in9_r, in9_i,
                       in10_r, in10_i, in11_r, in11_i, in12_r, in12_i, in13_r, in13_i, in14_r, in14_i,
                       in15_r, in15_i, in16_r, in16_i, in17_r, in17_i, in18_r, in18_i, in19_r, in19_i,
                       in20_r, in20_i, in21_r, in21_i, in22_r, in22_i, in23_r, in23_i, in24_r, in24_i,
                       in25_r, in25_i, in26_r, in26_i, in27_r, in27_i, in28_r, in28_i, in29_r, in29_i,
                       in30_r, in30_i, in31_r, in31_i, in32_r, in32_i, in33_r, in33_i, in34_r, in34_i,
                       in35_r, in35_i, in36_r, in36_i, in37_r, in37_i, in38_r, in38_i, in39_r, in39_i,
                       in40_r, in40_i, in41_r, in41_i, in42_r, in42_i, in43_r, in43_i, in44_r, in44_i,
                       in45_r, in45_i, in46_r, in46_i, in47_r, in47_i, in48_r, in48_i, in49_r, in49_i,
                       in50_r, in50_i, in51_r, in51_i, in52_r, in52_i, in53_r, in53_i, in54_r, in54_i,
                       in55_r, in55_i, in56_r, in56_i, in57_r, in57_i, in58_r, in58_i, in59_r, in59_i,
                       in60_r, in60_i, in61_r, in61_i, in62_r, in62_i, in63_r, in63_i;
    reg signed [N-1:0] in64_r, in64_i, in65_r, in65_i, in66_r, in66_i, in67_r, in67_i, in68_r, in68_i,
                   in69_r, in69_i, in70_r, in70_i, in71_r, in71_i, in72_r, in72_i, in73_r, in73_i,
                   in74_r, in74_i, in75_r, in75_i, in76_r, in76_i, in77_r, in77_i, in78_r, in78_i,
                   in79_r, in79_i, in80_r, in80_i, in81_r, in81_i, in82_r, in82_i, in83_r, in83_i,
                   in84_r, in84_i, in85_r, in85_i, in86_r, in86_i, in87_r, in87_i, in88_r, in88_i,
                   in89_r, in89_i, in90_r, in90_i, in91_r, in91_i, in92_r, in92_i, in93_r, in93_i,
                   in94_r, in94_i, in95_r, in95_i, in96_r, in96_i, in97_r, in97_i, in98_r, in98_i,
                   in99_r, in99_i, in100_r, in100_i, in101_r, in101_i, in102_r, in102_i, in103_r, in103_i,
                   in104_r, in104_i, in105_r, in105_i, in106_r, in106_i, in107_r, in107_i, in108_r, in108_i,
                   in109_r, in109_i, in110_r, in110_i, in111_r, in111_i, in112_r, in112_i, in113_r, in113_i,
                   in114_r, in114_i, in115_r, in115_i, in116_r, in116_i, in117_r, in117_i, in118_r, in118_i,
                   in119_r, in119_i, in120_r, in120_i, in121_r, in121_i, in122_r, in122_i, in123_r, in123_i,
                   in124_r, in124_i, in125_r, in125_i, in126_r, in126_i, in127_r, in127_i;

    wire signed [N:0] out0_r, out0_i, out1_r, out1_i, out2_r, out2_i, out3_r, out3_i, out4_r, out4_i,
                       out5_r, out5_i, out6_r, out6_i, out7_r, out7_i, out8_r, out8_i, out9_r, out9_i,
                       out10_r, out10_i, out11_r, out11_i, out12_r, out12_i, out13_r, out13_i, out14_r, out14_i,
                       out15_r, out15_i, out16_r, out16_i, out17_r, out17_i, out18_r, out18_i, out19_r, out19_i,
                       out20_r, out20_i, out21_r, out21_i, out22_r, out22_i, out23_r, out23_i, out24_r, out24_i,
                       out25_r, out25_i, out26_r, out26_i, out27_r, out27_i, out28_r, out28_i, out29_r, out29_i,
                       out30_r, out30_i, out31_r, out31_i, out32_r, out32_i, out33_r, out33_i, out34_r, out34_i,
                       out35_r, out35_i, out36_r, out36_i, out37_r, out37_i, out38_r, out38_i, out39_r, out39_i,
                       out40_r, out40_i, out41_r, out41_i, out42_r, out42_i, out43_r, out43_i, out44_r, out44_i,
                       out45_r, out45_i, out46_r, out46_i, out47_r, out47_i, out48_r, out48_i, out49_r, out49_i,
                       out50_r, out50_i, out51_r, out51_i, out52_r, out52_i, out53_r, out53_i, out54_r, out54_i,
                       out55_r, out55_i, out56_r, out56_i, out57_r, out57_i, out58_r, out58_i, out59_r, out59_i,
                       out60_r, out60_i, out61_r, out61_i, out62_r, out62_i, out63_r, out63_i;
    wire signed [N:0] out64_r, out64_i, out65_r, out65_i, out66_r, out66_i, out67_r, out67_i, out68_r, out68_i,
                  out69_r, out69_i, out70_r, out70_i, out71_r, out71_i, out72_r, out72_i, out73_r, out73_i,
                  out74_r, out74_i, out75_r, out75_i, out76_r, out76_i, out77_r, out77_i, out78_r, out78_i,
                  out79_r, out79_i, out80_r, out80_i, out81_r, out81_i, out82_r, out82_i, out83_r, out83_i,
                  out84_r, out84_i, out85_r, out85_i, out86_r, out86_i, out87_r, out87_i, out88_r, out88_i,
                  out89_r, out89_i, out90_r, out90_i, out91_r, out91_i, out92_r, out92_i, out93_r, out93_i,
                  out94_r, out94_i, out95_r, out95_i, out96_r, out96_i, out97_r, out97_i, out98_r, out98_i,
                  out99_r, out99_i, out100_r, out100_i, out101_r, out101_i, out102_r, out102_i, out103_r, out103_i,
                  out104_r, out104_i, out105_r, out105_i, out106_r, out106_i, out107_r, out107_i, out108_r, out108_i,
                  out109_r, out109_i, out110_r, out110_i, out111_r, out111_i, out112_r, out112_i, out113_r, out113_i,
                  out114_r, out114_i, out115_r, out115_i, out116_r, out116_i, out117_r, out117_i, out118_r, out118_i,
                  out119_r, out119_i, out120_r, out120_i, out121_r, out121_i, out122_r, out122_i, out123_r, out123_i,
                  out124_r, out124_i, out125_r, out125_i, out126_r, out126_i, out127_r, out127_i;

    reg start;

//    wire signed [N-1:0] out_r [0:63];
//    wire signed [N-1:0] out_i [0:63];
    wire done;
    wire fft_done,butterfly_done;
    wire signed [18:0] f2out0_r, f2out0_i, f2out1_r, f2out1_i;
    wire [6:0] stage, butterfly_count;
//    wire fft8_donebutterfly_done;

    // File descriptor
    integer file;

    function real q12_6_to_real;
        input signed [19:0] value;
        real result;
        begin
            result = $signed(value)/64.0;
            q12_6_to_real = result;
        end
    endfunction

    // Instantiate the 64-point FFT module
    fft_128point #(.N(N)) fft_instance (
    .clk(clk),
    .rst(rst),
    .in0_r(in0_r), .in0_i(in0_i), .in1_r(in1_r), .in1_i(in1_i),
    .in2_r(in2_r), .in2_i(in2_i), .in3_r(in3_r), .in3_i(in3_i),
    .in4_r(in4_r), .in4_i(in4_i), .in5_r(in5_r), .in5_i(in5_i),
    .in6_r(in6_r), .in6_i(in6_i), .in7_r(in7_r), .in7_i(in7_i),
    .in8_r(in8_r), .in8_i(in8_i), .in9_r(in9_r), .in9_i(in9_i),
    .in10_r(in10_r), .in10_i(in10_i), .in11_r(in11_r), .in11_i(in11_i),
    .in12_r(in12_r), .in12_i(in12_i), .in13_r(in13_r), .in13_i(in13_i),
    .in14_r(in14_r), .in14_i(in14_i), .in15_r(in15_r), .in15_i(in15_i),
    .in16_r(in16_r), .in16_i(in16_i), .in17_r(in17_r), .in17_i(in17_i),
    .in18_r(in18_r), .in18_i(in18_i), .in19_r(in19_r), .in19_i(in19_i),
    .in20_r(in20_r), .in20_i(in20_i), .in21_r(in21_r), .in21_i(in21_i),
    .in22_r(in22_r), .in22_i(in22_i), .in23_r(in23_r), .in23_i(in23_i),
    .in24_r(in24_r), .in24_i(in24_i), .in25_r(in25_r), .in25_i(in25_i),
    .in26_r(in26_r), .in26_i(in26_i), .in27_r(in27_r), .in27_i(in27_i),
    .in28_r(in28_r), .in28_i(in28_i), .in29_r(in29_r), .in29_i(in29_i),
    .in30_r(in30_r), .in30_i(in30_i), .in31_r(in31_r), .in31_i(in31_i),
    .in32_r(in32_r), .in32_i(in32_i), .in33_r(in33_r), .in33_i(in33_i),
    .in34_r(in34_r), .in34_i(in34_i), .in35_r(in35_r), .in35_i(in35_i),
    .in36_r(in36_r), .in36_i(in36_i), .in37_r(in37_r), .in37_i(in37_i),
    .in38_r(in38_r), .in38_i(in38_i), .in39_r(in39_r), .in39_i(in39_i),
    .in40_r(in40_r), .in40_i(in40_i), .in41_r(in41_r), .in41_i(in41_i),
    .in42_r(in42_r), .in42_i(in42_i), .in43_r(in43_r), .in43_i(in43_i),
    .in44_r(in44_r), .in44_i(in44_i), .in45_r(in45_r), .in45_i(in45_i),
    .in46_r(in46_r), .in46_i(in46_i), .in47_r(in47_r), .in47_i(in47_i),
    .in48_r(in48_r), .in48_i(in48_i), .in49_r(in49_r), .in49_i(in49_i),
    .in50_r(in50_r), .in50_i(in50_i), .in51_r(in51_r), .in51_i(in51_i),
    .in52_r(in52_r), .in52_i(in52_i), .in53_r(in53_r), .in53_i(in53_i),
    .in54_r(in54_r), .in54_i(in54_i), .in55_r(in55_r), .in55_i(in55_i),
    .in56_r(in56_r), .in56_i(in56_i), .in57_r(in57_r), .in57_i(in57_i),
    .in58_r(in58_r), .in58_i(in58_i), .in59_r(in59_r), .in59_i(in59_i),
    .in60_r(in60_r), .in60_i(in60_i), .in61_r(in61_r), .in61_i(in61_i),
    .in62_r(in62_r), .in62_i(in62_i), .in63_r(in63_r), .in63_i(in63_i),
        .in64_r(in64_r), .in64_i(in64_i), .in65_r(in65_r), .in65_i(in65_i),
    .in66_r(in66_r), .in66_i(in66_i), .in67_r(in67_r), .in67_i(in67_i),
    .in68_r(in68_r), .in68_i(in68_i), .in69_r(in69_r), .in69_i(in69_i),
    .in70_r(in70_r), .in70_i(in70_i), .in71_r(in71_r), .in71_i(in71_i),
    .in72_r(in72_r), .in72_i(in72_i), .in73_r(in73_r), .in73_i(in73_i),
    .in74_r(in74_r), .in74_i(in74_i), .in75_r(in75_r), .in75_i(in75_i),
    .in76_r(in76_r), .in76_i(in76_i), .in77_r(in77_r), .in77_i(in77_i),
    .in78_r(in78_r), .in78_i(in78_i), .in79_r(in79_r), .in79_i(in79_i),
    .in80_r(in80_r), .in80_i(in80_i), .in81_r(in81_r), .in81_i(in81_i),
    .in82_r(in82_r), .in82_i(in82_i), .in83_r(in83_r), .in83_i(in83_i),
    .in84_r(in84_r), .in84_i(in84_i), .in85_r(in85_r), .in85_i(in85_i),
    .in86_r(in86_r), .in86_i(in86_i), .in87_r(in87_r), .in87_i(in87_i),
    .in88_r(in88_r), .in88_i(in88_i), .in89_r(in89_r), .in89_i(in89_i),
    .in90_r(in90_r), .in90_i(in90_i), .in91_r(in91_r), .in91_i(in91_i),
    .in92_r(in92_r), .in92_i(in92_i), .in93_r(in93_r), .in93_i(in93_i),
    .in94_r(in94_r), .in94_i(in94_i), .in95_r(in95_r), .in95_i(in95_i),
    .in96_r(in96_r), .in96_i(in96_i), .in97_r(in97_r), .in97_i(in97_i),
    .in98_r(in98_r), .in98_i(in98_i), .in99_r(in99_r), .in99_i(in99_i),
    .in100_r(in100_r), .in100_i(in100_i), .in101_r(in101_r), .in101_i(in101_i),
    .in102_r(in102_r), .in102_i(in102_i), .in103_r(in103_r), .in103_i(in103_i),
    .in104_r(in104_r), .in104_i(in104_i), .in105_r(in105_r), .in105_i(in105_i),
    .in106_r(in106_r), .in106_i(in106_i), .in107_r(in107_r), .in107_i(in107_i),
    .in108_r(in108_r), .in108_i(in108_i), .in109_r(in109_r), .in109_i(in109_i),
    .in110_r(in110_r), .in110_i(in110_i), .in111_r(in111_r), .in111_i(in111_i),
    .in112_r(in112_r), .in112_i(in112_i), .in113_r(in113_r), .in113_i(in113_i),
    .in114_r(in114_r), .in114_i(in114_i), .in115_r(in115_r), .in115_i(in115_i),
    .in116_r(in116_r), .in116_i(in116_i), .in117_r(in117_r), .in117_i(in117_i),
    .in118_r(in118_r), .in118_i(in118_i), .in119_r(in119_r), .in119_i(in119_i),
    .in120_r(in120_r), .in120_i(in120_i), .in121_r(in121_r), .in121_i(in121_i),
    .in122_r(in122_r), .in122_i(in122_i), .in123_r(in123_r), .in123_i(in123_i),
    .in124_r(in124_r), .in124_i(in124_i), .in125_r(in125_r), .in125_i(in125_i),
    .in126_r(in126_r), .in126_i(in126_i), .in127_r(in127_r), .in127_i(in127_i),
    .out0_r(out0_r), .out0_i(out0_i), .out1_r(out1_r), .out1_i(out1_i),
    .out2_r(out2_r), .out2_i(out2_i), .out3_r(out3_r), .out3_i(out3_i),
    .out4_r(out4_r), .out4_i(out4_i), .out5_r(out5_r), .out5_i(out5_i),
    .out6_r(out6_r), .out6_i(out6_i), .out7_r(out7_r), .out7_i(out7_i),
    .out8_r(out8_r), .out8_i(out8_i), .out9_r(out9_r), .out9_i(out9_i),
    .out10_r(out10_r), .out10_i(out10_i), .out11_r(out11_r), .out11_i(out11_i),
    .out12_r(out12_r), .out12_i(out12_i), .out13_r(out13_r), .out13_i(out13_i),
    .out14_r(out14_r), .out14_i(out14_i), .out15_r(out15_r), .out15_i(out15_i),
    .out16_r(out16_r), .out16_i(out16_i), .out17_r(out17_r), .out17_i(out17_i),
    .out18_r(out18_r), .out18_i(out18_i), .out19_r(out19_r), .out19_i(out19_i),
    .out20_r(out20_r), .out20_i(out20_i), .out21_r(out21_r), .out21_i(out21_i),
    .out22_r(out22_r), .out22_i(out22_i), .out23_r(out23_r), .out23_i(out23_i),
    .out24_r(out24_r), .out24_i(out24_i), .out25_r(out25_r), .out25_i(out25_i),
    .out26_r(out26_r), .out26_i(out26_i), .out27_r(out27_r), .out27_i(out27_i),
    .out28_r(out28_r), .out28_i(out28_i), .out29_r(out29_r), .out29_i(out29_i),
    .out30_r(out30_r), .out30_i(out30_i), .out31_r(out31_r), .out31_i(out31_i),
    .out32_r(out32_r), .out32_i(out32_i), .out33_r(out33_r), .out33_i(out33_i),
    .out34_r(out34_r), .out34_i(out34_i), .out35_r(out35_r), .out35_i(out35_i),
    .out36_r(out36_r), .out36_i(out36_i), .out37_r(out37_r), .out37_i(out37_i),
    .out38_r(out38_r), .out38_i(out38_i), .out39_r(out39_r), .out39_i(out39_i),
    .out40_r(out40_r), .out40_i(out40_i), .out41_r(out41_r), .out41_i(out41_i),
    .out42_r(out42_r), .out42_i(out42_i), .out43_r(out43_r), .out43_i(out43_i),
    .out44_r(out44_r), .out44_i(out44_i), .out45_r(out45_r), .out45_i(out45_i),
    .out46_r(out46_r), .out46_i(out46_i), .out47_r(out47_r), .out47_i(out47_i),
    .out48_r(out48_r), .out48_i(out48_i), .out49_r(out49_r), .out49_i(out49_i),
    .out50_r(out50_r), .out50_i(out50_i), .out51_r(out51_r), .out51_i(out51_i),
    .out52_r(out52_r), .out52_i(out52_i), .out53_r(out53_r), .out53_i(out53_i),
    .out54_r(out54_r), .out54_i(out54_i), .out55_r(out55_r), .out55_i(out55_i),
    .out56_r(out56_r), .out56_i(out56_i), .out57_r(out57_r), .out57_i(out57_i),
    .out58_r(out58_r), .out58_i(out58_i), .out59_r(out59_r), .out59_i(out59_i),
    .out60_r(out60_r), .out60_i(out60_i), .out61_r(out61_r), .out61_i(out61_i),
    .out62_r(out62_r), .out62_i(out62_i), .out63_r(out63_r), .out63_i(out63_i),
    .out64_r(out64_r), .out64_i(out64_i), .out65_r(out65_r), .out65_i(out65_i),
.out66_r(out66_r), .out66_i(out66_i), .out67_r(out67_r), .out67_i(out67_i),
.out68_r(out68_r), .out68_i(out68_i), .out69_r(out69_r), .out69_i(out69_i),
.out70_r(out70_r), .out70_i(out70_i), .out71_r(out71_r), .out71_i(out71_i),
.out72_r(out72_r), .out72_i(out72_i), .out73_r(out73_r), .out73_i(out73_i),
.out74_r(out74_r), .out74_i(out74_i), .out75_r(out75_r), .out75_i(out75_i),
.out76_r(out76_r), .out76_i(out76_i), .out77_r(out77_r), .out77_i(out77_i),
.out78_r(out78_r), .out78_i(out78_i), .out79_r(out79_r), .out79_i(out79_i),
.out80_r(out80_r), .out80_i(out80_i), .out81_r(out81_r), .out81_i(out81_i),
.out82_r(out82_r), .out82_i(out82_i), .out83_r(out83_r), .out83_i(out83_i),
.out84_r(out84_r), .out84_i(out84_i), .out85_r(out85_r), .out85_i(out85_i),
.out86_r(out86_r), .out86_i(out86_i), .out87_r(out87_r), .out87_i(out87_i),
.out88_r(out88_r), .out88_i(out88_i), .out89_r(out89_r), .out89_i(out89_i),
.out90_r(out90_r), .out90_i(out90_i), .out91_r(out91_r), .out91_i(out91_i),
.out92_r(out92_r), .out92_i(out92_i), .out93_r(out93_r), .out93_i(out93_i),
.out94_r(out94_r), .out94_i(out94_i), .out95_r(out95_r), .out95_i(out95_i),
.out96_r(out96_r), .out96_i(out96_i), .out97_r(out97_r), .out97_i(out97_i),
.out98_r(out98_r), .out98_i(out98_i), .out99_r(out99_r), .out99_i(out99_i),
.out100_r(out100_r), .out100_i(out100_i), .out101_r(out101_r), .out101_i(out101_i),
.out102_r(out102_r), .out102_i(out102_i), .out103_r(out103_r), .out103_i(out103_i),
.out104_r(out104_r), .out104_i(out104_i), .out105_r(out105_r), .out105_i(out105_i),
.out106_r(out106_r), .out106_i(out106_i), .out107_r(out107_r), .out107_i(out107_i),
.out108_r(out108_r), .out108_i(out108_i), .out109_r(out109_r), .out109_i(out109_i),
.out110_r(out110_r), .out110_i(out110_i), .out111_r(out111_r), .out111_i(out111_i),
.out112_r(out112_r), .out112_i(out112_i), .out113_r(out113_r), .out113_i(out113_i),
.out114_r(out114_r), .out114_i(out114_i), .out115_r(out115_r), .out115_i(out115_i),
.out116_r(out116_r), .out116_i(out116_i), .out117_r(out117_r), .out117_i(out117_i),
.out118_r(out118_r), .out118_i(out118_i), .out119_r(out119_r), .out119_i(out119_i),
.out120_r(out120_r), .out120_i(out120_i), .out121_r(out121_r), .out121_i(out121_i),
.out122_r(out122_r), .out122_i(out122_i), .out123_r(out123_r), .out123_i(out123_i),
.out124_r(out124_r), .out124_i(out124_i), .out125_r(out125_r), .out125_i(out125_i),
.out126_r(out126_r), .out126_i(out126_i), .out127_r(out127_r), .out127_i(out127_i),
    .start(start),
    .done(done),
    .f2out0_r(f2out0_r),
    .f2out0_i(f2out0_i),
    .f2out1_r(f2out1_r),
    .f2out1_i(f2out1_i),
    .fft_done(fft_done),
    .stage(stage),
    .butterfly_count(butterfly_count),
    .butterfly_done(butterfly_done)
);


    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100 MHz clock
    end

    // Test procedure
    initial begin
        // Open file to store results
        file = $fopen("/home/rohit/Desktop/fft_results.txt", "w");

        // Reset the design
        rst = 1;
        start = 0;
        #10;
        rst = 0;

        // Initialize inputs to arbitrary values for testing
// Initialize inputs to specified values for testing
in0_r = 18'd384;  in0_i = 18'd384;
in1_r = 18'd64;   in1_i = 18'd64;
in2_r = 18'd192;  in2_i = 18'd192;
in3_r = 18'd128;  in3_i = 18'd128;
in4_r = 18'd64;   in4_i = 18'd64;
in5_r = 18'd64;   in5_i = 18'd64;
in6_r = 18'd64;   in6_i = 18'd64;
in7_r = 18'd64;   in7_i = 18'd64;
in8_r = 18'd64;   in8_i = 18'd64;
in9_r = 18'd64;   in9_i = 18'd64;
in10_r = 18'd64;  in10_i = 18'd64;
in11_r = 18'd64;  in11_i = 18'd64;
in12_r = 18'd64;  in12_i = 18'd64;
in13_r = 18'd64;  in13_i = 18'd64;
in14_r = 18'd64;  in14_i = 18'd64;
in15_r = 18'd64;  in15_i = 18'd64;
in16_r = 18'd64;  in16_i = 18'd64;
in17_r = 18'd64;  in17_i = 18'd64;
in18_r = 18'd64;  in18_i = 18'd64;
in19_r = 18'd64;  in19_i = 18'd64;
in20_r = 18'd64;  in20_i = 18'd64;
in21_r = 18'd64;  in21_i = 18'd64;
in22_r = 18'd64;  in22_i = 18'd64;
in23_r = 18'd64;  in23_i = 18'd64;
in24_r = 18'd64;  in24_i = 18'd64;
in25_r = 18'd64;  in25_i = 18'd64;
in26_r = 18'd64;  in26_i = 18'd64;
in27_r = 18'd64;  in27_i = 18'd64;
in28_r = 18'd64;  in28_i = 18'd64;
in29_r = 18'd64;  in29_i = 18'd64;
in30_r = 18'd64;  in30_i = 18'd64;
in31_r = 18'd64;  in31_i = 18'd64;
in32_r = 18'd64;  in32_i = 18'd64;
in33_r = 18'd64;  in33_i = 18'd64;
in34_r = 18'd64;  in34_i = 18'd64;
in35_r = 18'd64;  in35_i = 18'd64;
in36_r = 18'd64;  in36_i = 18'd64;
in37_r = 18'd64;  in37_i = 18'd64;
in38_r = 18'd64;  in38_i = 18'd64;
in39_r = 18'd64;  in39_i = 18'd64;
in40_r = 18'd64;  in40_i = 18'd64;
in41_r = 18'd64;  in41_i = 18'd64;
in42_r = 18'd64;  in42_i = 18'd64;
in43_r = 18'd64;  in43_i = 18'd64;
in44_r = 18'd64;  in44_i = 18'd64;
in45_r = 18'd64;  in45_i = 18'd64;
in46_r = 18'd64;  in46_i = 18'd64;
in47_r = 18'd64;  in47_i = 18'd64;
in48_r = 18'd64;  in48_i = 18'd64;
in49_r = 18'd64;  in49_i = 18'd64;
in50_r = 18'd64;  in50_i = 18'd64;
in51_r = 18'd64;  in51_i = 18'd64;
in52_r = 18'd64;  in52_i = 18'd64;
in53_r = 18'd64;  in53_i = 18'd64;
in54_r = 18'd64;  in54_i = 18'd64;
in55_r = 18'd64;  in55_i = 18'd64;
in56_r = 18'd64;  in56_i = 18'd64;
in57_r = 18'd64;  in57_i = 18'd64;
in58_r = 18'd64;  in58_i = 18'd64;
in59_r = 18'd64;  in59_i = 18'd64;
in60_r = 18'd64;  in60_i = 18'd64;
in61_r = 18'd64;  in61_i = 18'd64;
in62_r = 18'd64;  in62_i = 18'd64;
in63_r = 18'd64;  in63_i = 18'd64;
in64_r = 18'd64;  in64_i = 18'd64;
in65_r = 18'd64;  in65_i = 18'd64;
in66_r = 18'd64;  in66_i = 18'd64;
in67_r = 18'd64;  in67_i = 18'd64;
in68_r = 18'd64;  in68_i = 18'd64;
in69_r = 18'd64;  in69_i = 18'd64;
in70_r = 18'd64;  in70_i = 18'd64;
in71_r = 18'd64;  in71_i = 18'd64;
in72_r = 18'd64;  in72_i = 18'd64;
in73_r = 18'd64;  in73_i = 18'd64;
in74_r = 18'd64;  in74_i = 18'd64;
in75_r = 18'd64;  in75_i = 18'd64;
in76_r = 18'd64;  in76_i = 18'd64;
in77_r = 18'd64;  in77_i = 18'd64;
in78_r = 18'd64;  in78_i = 18'd64;
in79_r = 18'd64;  in79_i = 18'd64;
in80_r = 18'd64;  in80_i = 18'd64;
in81_r = 18'd64;  in81_i = 18'd64;
in82_r = 18'd64;  in82_i = 18'd64;
in83_r = 18'd64;  in83_i = 18'd64;
in84_r = 18'd64;  in84_i = 18'd64;
in85_r = 18'd64;  in85_i = 18'd64;
in86_r = 18'd64;  in86_i = 18'd64;
in87_r = 18'd64;  in87_i = 18'd64;
in88_r = 18'd64;  in88_i = 18'd64;
in89_r = 18'd64;  in89_i = 18'd64;
in90_r = 18'd64;  in90_i = 18'd64;
in91_r = 18'd64;  in91_i = 18'd64;
in92_r = 18'd64;  in92_i = 18'd64;
in93_r = 18'd64;  in93_i = 18'd64;
in94_r = 18'd64;  in94_i = 18'd64;
in95_r = 18'd64;  in95_i = 18'd64;
in96_r = 18'd64;  in96_i = 18'd64;
in97_r = 18'd64;  in97_i = 18'd64;
in98_r = 18'd64;  in98_i = 18'd64;
in99_r = 18'd64;  in99_i = 18'd64;
in100_r = 18'd64;  in100_i = 18'd64;
in101_r = 18'd64;  in101_i = 18'd64;
in102_r = 18'd64;  in102_i = 18'd64;
in103_r = 18'd64;  in103_i = 18'd64;
in104_r = 18'd64;  in104_i = 18'd64;
in105_r = 18'd64;  in105_i = 18'd64;
in106_r = 18'd64;  in106_i = 18'd64;
in107_r = 18'd64;  in107_i = 18'd64;
in108_r = 18'd64;  in108_i = 18'd64;
in109_r = 18'd64;  in109_i = 18'd64;
in110_r = 18'd64;  in110_i = 18'd64;
in111_r = 18'd64;  in111_i = 18'd64;
in112_r = 18'd64;  in112_i = 18'd64;
in113_r = 18'd64;  in113_i = 18'd64;
in114_r = 18'd64;  in114_i = 18'd64;
in115_r = 18'd64;  in115_i = 18'd64;
in116_r = 18'd64;  in116_i = 18'd64;
in117_r = 18'd64;  in117_i = 18'd64;
in118_r = 18'd64;  in118_i = 18'd64;
in119_r = 18'd64;  in119_i = 18'd64;
in120_r = 18'd64;  in120_i = 18'd64;
in121_r = 18'd64;  in121_i = 18'd64;
in122_r = 18'd64;  in122_i = 18'd64;
in123_r = 18'd64;  in123_i = 18'd64;
in124_r = 18'd64;  in124_i = 18'd64;
in125_r = 18'd64;  in125_i = 18'd64;
in126_r = 18'd64;  in126_i = 18'd64;
in127_r = 18'd64;  in127_i = 18'd64;


        // ...initialize all other inputs up to in63_r, in63_i

        // Start the FFT operation
        #100;
        start = 1;

        // Wait for the FFT operation to complete
        wait(done);
        #1000;
        $fdisplay(file, 
    "Inputs: (in0: (%0.6f %0.6f), in1: (%0.6f %0.6f), in2: (%0.6f %0.6f), in3: (%0.6f %0.6f), in4: (%0.6f %0.6f), in5: (%0.6f %0.6f), in6: (%0.6f %0.6f), in7: (%0.6f %0.6f), in8: (%0.6f %0.6f), in9: (%0.6f %0.6f), in10: (%0.6f %0.6f), in11: (%0.6f %0.6f), in12: (%0.6f %0.6f), in13: (%0.6f %0.6f), in14: (%0.6f %0.6f), in15: (%0.6f %0.6f), in16: (%0.6f %0.6f), in17: (%0.6f %0.6f), in18: (%0.6f %0.6f), in19: (%0.6f %0.6f), in20: (%0.6f %0.6f), in21: (%0.6f %0.6f), in22: (%0.6f %0.6f), in23: (%0.6f %0.6f), in24: (%0.6f %0.6f), in25: (%0.6f %0.6f), in26: (%0.6f %0.6f), in27: (%0.6f %0.6f), in28: (%0.6f %0.6f), in29: (%0.6f %0.6f), in30: (%0.6f %0.6f), in31: (%0.6f %0.6f), in32: (%0.6f %0.6f), in33: (%0.6f %0.6f), in34: (%0.6f %0.6f), in35: (%0.6f %0.6f), in36: (%0.6f %0.6f), in37: (%0.6f %0.6f), in38: (%0.6f %0.6f), in39: (%0.6f %0.6f), in40: (%0.6f %0.6f), in41: (%0.6f %0.6f), in42: (%0.6f %0.6f), in43: (%0.6f %0.6f), in44: (%0.6f %0.6f), in45: (%0.6f %0.6f), in46: (%0.6f %0.6f), in47: (%0.6f %0.6f), in48: (%0.6f %0.6f), in49: (%0.6f %0.6f), in50: (%0.6f %0.6f), in51: (%0.6f %0.6f), in52: (%0.6f %0.6f), in53: (%0.6f %0.6f), in54: (%0.6f %0.6f), in55: (%0.6f %0.6f), in56: (%0.6f %0.6f), in57: (%0.6f %0.6f), in58: (%0.6f %0.6f), in59: (%0.6f %0.6f), in60: (%0.6f %0.6f), in61: (%0.6f %0.6f), in62: (%0.6f %0.6f), in63: (%0.6f %0.6f)), in64: (%0.6f %0.6f), in65: (%0.6f %0.6f), in66: (%0.6f %0.6f), in67: (%0.6f %0.6f), in68: (%0.6f %0.6f), in69: (%0.6f %0.6f),in70: (%0.6f %0.6f), in71: (%0.6f %0.6f), in72: (%0.6f %0.6f), in73: (%0.6f %0.6f), in74: (%0.6f %0.6f), in75: (%0.6f %0.6f),in76: (%0.6f %0.6f), in77: (%0.6f %0.6f), in78: (%0.6f %0.6f), in79: (%0.6f %0.6f), in80: (%0.6f %0.6f), in81: (%0.6f %0.6f),in82: (%0.6f %0.6f), in83: (%0.6f %0.6f), in84: (%0.6f %0.6f), in85: (%0.6f %0.6f), in86: (%0.6f %0.6f), in87: (%0.6f %0.6f),in88: (%0.6f %0.6f), in89: (%0.6f %0.6f), in90: (%0.6f %0.6f), in91: (%0.6f %0.6f), in92: (%0.6f %0.6f), in93: (%0.6f %0.6f),in94: (%0.6f %0.6f), in95: (%0.6f %0.6f), in96: (%0.6f %0.6f), in97: (%0.6f %0.6f), in98: (%0.6f %0.6f), in99: (%0.6f %0.6f),in100: (%0.6f %0.6f), in101: (%0.6f %0.6f), in102: (%0.6f %0.6f), in103: (%0.6f %0.6f), in104: (%0.6f %0.6f), in105: (%0.6f %0.6f),in106: (%0.6f %0.6f), in107: (%0.6f %0.6f), in108: (%0.6f %0.6f), in109: (%0.6f %0.6f), in110: (%0.6f %0.6f), in111: (%0.6f %0.6f),in112: (%0.6f %0.6f), in113: (%0.6f %0.6f), in114: (%0.6f %0.6f), in115: (%0.6f %0.6f), in116: (%0.6f %0.6f), in117: (%0.6f %0.6f),in118: (%0.6f %0.6f), in119: (%0.6f %0.6f), in120: (%0.6f %0.6f), in121: (%0.6f %0.6f), in122: (%0.6f %0.6f), in123: (%0.6f %0.6f),in124: (%0.6f %0.6f), in125: (%0.6f %0.6f), in126: (%0.6f %0.6f), in127: (%0.6f %0.6f) Outputs: (y0: (%0.6f %0.6f), y1: (%0.6f %0.6f), y2: (%0.6f %0.6f), y3: (%0.6f %0.6f), y4: (%0.6f %0.6f), y5: (%0.6f %0.6f), y6: (%0.6f %0.6f), y7: (%0.6f %0.6f), y8: (%0.6f %0.6f), y9: (%0.6f %0.6f), y10: (%0.6f %0.6f), y11: (%0.6f %0.6f), y12: (%0.6f %0.6f), y13: (%0.6f %0.6f), y14: (%0.6f %0.6f), y15: (%0.6f %0.6f), y16: (%0.6f %0.6f), y17: (%0.6f %0.6f), y18: (%0.6f %0.6f), y19: (%0.6f %0.6f), y20: (%0.6f %0.6f), y21: (%0.6f %0.6f), y22: (%0.6f %0.6f), y23: (%0.6f %0.6f), y24: (%0.6f %0.6f), y25: (%0.6f %0.6f), y26: (%0.6f %0.6f), y27: (%0.6f %0.6f), y28: (%0.6f %0.6f), y29: (%0.6f %0.6f), y30: (%0.6f %0.6f), y31: (%0.6f %0.6f), y32: (%0.6f %0.6f), y33: (%0.6f %0.6f), y34: (%0.6f %0.6f), y35: (%0.6f %0.6f), y36: (%0.6f %0.6f), y37: (%0.6f %0.6f), y38: (%0.6f %0.6f), y39: (%0.6f %0.6f), y40: (%0.6f %0.6f), y41: (%0.6f %0.6f), y42: (%0.6f %0.6f), y43: (%0.6f %0.6f), y44: (%0.6f %0.6f), y45: (%0.6f %0.6f), y46: (%0.6f %0.6f), y47: (%0.6f %0.6f), y48: (%0.6f %0.6f), y49: (%0.6f %0.6f), y50: (%0.6f %0.6f), y51: (%0.6f %0.6f), y52: (%0.6f %0.6f), y53: (%0.6f %0.6f), y54: (%0.6f %0.6f), y55: (%0.6f %0.6f), y56: (%0.6f %0.6f), y57: (%0.6f %0.6f), y58: (%0.6f %0.6f), y59: (%0.6f %0.6f), y60: (%0.6f %0.6f), y61: (%0.6f %0.6f), y62: (%0.6f %0.6f), y63: (%0.6f %0.6f)), y64: (%0.6f %0.6f), y65: (%0.6f %0.6f), y66: (%0.6f %0.6f), y67: (%0.6f %0.6f), y68: (%0.6f %0.6f), y69: (%0.6f %0.6f),y70: (%0.6f %0.6f), y71: (%0.6f %0.6f), y72: (%0.6f %0.6f), y73: (%0.6f %0.6f), y74: (%0.6f %0.6f), y75: (%0.6f %0.6f),y76: (%0.6f %0.6f), y77: (%0.6f %0.6f), y78: (%0.6f %0.6f), y79: (%0.6f %0.6f), y80: (%0.6f %0.6f), y81: (%0.6f %0.6f),y82: (%0.6f %0.6f), y83: (%0.6f %0.6f), y84: (%0.6f %0.6f), y85: (%0.6f %0.6f), y86: (%0.6f %0.6f), y87: (%0.6f %0.6f),y88: (%0.6f %0.6f), y89: (%0.6f %0.6f), y90: (%0.6f %0.6f), y91: (%0.6f %0.6f), y92: (%0.6f %0.6f), y93: (%0.6f %0.6f),y94: (%0.6f %0.6f), y95: (%0.6f %0.6f), y96: (%0.6f %0.6f), y97: (%0.6f %0.6f), y98: (%0.6f %0.6f), y99: (%0.6f %0.6f),y100: (%0.6f %0.6f), y101: (%0.6f %0.6f), y102: (%0.6f %0.6f), y103: (%0.6f %0.6f), y104: (%0.6f %0.6f), y105: (%0.6f %0.6f),y106: (%0.6f %0.6f), y107: (%0.6f %0.6f), y108: (%0.6f %0.6f), y109: (%0.6f %0.6f), y110: (%0.6f %0.6f), y111: (%0.6f %0.6f),y112: (%0.6f %0.6f), y113: (%0.6f %0.6f), y114: (%0.6f %0.6f), y115: (%0.6f %0.6f), y116: (%0.6f %0.6f), y117: (%0.6f %0.6f),y118: (%0.6f %0.6f), y119: (%0.6f %0.6f), y120: (%0.6f %0.6f), y121: (%0.6f %0.6f), y122: (%0.6f %0.6f), y123: (%0.6f %0.6f),y124: (%0.6f %0.6f), y125: (%0.6f %0.6f), y126: (%0.6f %0.6f), y127: (%0.6f %0.6f))",
    q12_6_to_real(in0_r), q12_6_to_real(in0_i), 
q12_6_to_real(in1_r), q12_6_to_real(in1_i), 
q12_6_to_real(in2_r), q12_6_to_real(in2_i), 
q12_6_to_real(in3_r), q12_6_to_real(in3_i), 
q12_6_to_real(in4_r), q12_6_to_real(in4_i), 
q12_6_to_real(in5_r), q12_6_to_real(in5_i), 
q12_6_to_real(in6_r), q12_6_to_real(in6_i), 
q12_6_to_real(in7_r), q12_6_to_real(in7_i), 
q12_6_to_real(in8_r), q12_6_to_real(in8_i), 
q12_6_to_real(in9_r), q12_6_to_real(in9_i), 
q12_6_to_real(in10_r), q12_6_to_real(in10_i), 
q12_6_to_real(in11_r), q12_6_to_real(in11_i), 
q12_6_to_real(in12_r), q12_6_to_real(in12_i), 
q12_6_to_real(in13_r), q12_6_to_real(in13_i), 
q12_6_to_real(in14_r), q12_6_to_real(in14_i), 
q12_6_to_real(in15_r), q12_6_to_real(in15_i), 
q12_6_to_real(in16_r), q12_6_to_real(in16_i), 
q12_6_to_real(in17_r), q12_6_to_real(in17_i), 
q12_6_to_real(in18_r), q12_6_to_real(in18_i), 
q12_6_to_real(in19_r), q12_6_to_real(in19_i), 
q12_6_to_real(in20_r), q12_6_to_real(in20_i), 
q12_6_to_real(in21_r), q12_6_to_real(in21_i), 
q12_6_to_real(in22_r), q12_6_to_real(in22_i), 
q12_6_to_real(in23_r), q12_6_to_real(in23_i), 
q12_6_to_real(in24_r), q12_6_to_real(in24_i), 
q12_6_to_real(in25_r), q12_6_to_real(in25_i), 
q12_6_to_real(in26_r), q12_6_to_real(in26_i), 
q12_6_to_real(in27_r), q12_6_to_real(in27_i), 
q12_6_to_real(in28_r), q12_6_to_real(in28_i), 
q12_6_to_real(in29_r), q12_6_to_real(in29_i), 
q12_6_to_real(in30_r), q12_6_to_real(in30_i), 
q12_6_to_real(in31_r), q12_6_to_real(in31_i), 
q12_6_to_real(in32_r), q12_6_to_real(in32_i), 
q12_6_to_real(in33_r), q12_6_to_real(in33_i), 
q12_6_to_real(in34_r), q12_6_to_real(in34_i), 
q12_6_to_real(in35_r), q12_6_to_real(in35_i), 
q12_6_to_real(in36_r), q12_6_to_real(in36_i), 
q12_6_to_real(in37_r), q12_6_to_real(in37_i), 
q12_6_to_real(in38_r), q12_6_to_real(in38_i), 
q12_6_to_real(in39_r), q12_6_to_real(in39_i), 
q12_6_to_real(in40_r), q12_6_to_real(in40_i), 
q12_6_to_real(in41_r), q12_6_to_real(in41_i), 
q12_6_to_real(in42_r), q12_6_to_real(in42_i), 
q12_6_to_real(in43_r), q12_6_to_real(in43_i), 
q12_6_to_real(in44_r), q12_6_to_real(in44_i), 
q12_6_to_real(in45_r), q12_6_to_real(in45_i), 
q12_6_to_real(in46_r), q12_6_to_real(in46_i), 
q12_6_to_real(in47_r), q12_6_to_real(in47_i), 
q12_6_to_real(in48_r), q12_6_to_real(in48_i), 
q12_6_to_real(in49_r), q12_6_to_real(in49_i), 
q12_6_to_real(in50_r), q12_6_to_real(in50_i), 
q12_6_to_real(in51_r), q12_6_to_real(in51_i), 
q12_6_to_real(in52_r), q12_6_to_real(in52_i), 
q12_6_to_real(in53_r), q12_6_to_real(in53_i), 
q12_6_to_real(in54_r), q12_6_to_real(in54_i), 
q12_6_to_real(in55_r), q12_6_to_real(in55_i), 
q12_6_to_real(in56_r), q12_6_to_real(in56_i), 
q12_6_to_real(in57_r), q12_6_to_real(in57_i), 
q12_6_to_real(in58_r), q12_6_to_real(in58_i), 
q12_6_to_real(in59_r), q12_6_to_real(in59_i), 
q12_6_to_real(in60_r), q12_6_to_real(in60_i), 
q12_6_to_real(in61_r), q12_6_to_real(in61_i), 
q12_6_to_real(in62_r), q12_6_to_real(in62_i), 
q12_6_to_real(in63_r), q12_6_to_real(in63_i), 
q12_6_to_real(in64_r), q12_6_to_real(in64_i), 
q12_6_to_real(in65_r), q12_6_to_real(in65_i), 
q12_6_to_real(in66_r), q12_6_to_real(in66_i), 
q12_6_to_real(in67_r), q12_6_to_real(in67_i), 
q12_6_to_real(in68_r), q12_6_to_real(in68_i), 
q12_6_to_real(in69_r), q12_6_to_real(in69_i), 
q12_6_to_real(in70_r), q12_6_to_real(in70_i), 
q12_6_to_real(in71_r), q12_6_to_real(in71_i), 
q12_6_to_real(in72_r), q12_6_to_real(in72_i), 
q12_6_to_real(in73_r), q12_6_to_real(in73_i), 
q12_6_to_real(in74_r), q12_6_to_real(in74_i), 
q12_6_to_real(in75_r), q12_6_to_real(in75_i), 
q12_6_to_real(in76_r), q12_6_to_real(in76_i), 
q12_6_to_real(in77_r), q12_6_to_real(in77_i), 
q12_6_to_real(in78_r), q12_6_to_real(in78_i), 
q12_6_to_real(in79_r), q12_6_to_real(in79_i), 
q12_6_to_real(in80_r), q12_6_to_real(in80_i), 
q12_6_to_real(in81_r), q12_6_to_real(in81_i), 
q12_6_to_real(in82_r), q12_6_to_real(in82_i), 
q12_6_to_real(in83_r), q12_6_to_real(in83_i), 
q12_6_to_real(in84_r), q12_6_to_real(in84_i), 
q12_6_to_real(in85_r), q12_6_to_real(in85_i), 
q12_6_to_real(in86_r), q12_6_to_real(in86_i), 
q12_6_to_real(in87_r), q12_6_to_real(in87_i), 
q12_6_to_real(in88_r), q12_6_to_real(in88_i), 
q12_6_to_real(in89_r), q12_6_to_real(in89_i), 
q12_6_to_real(in90_r), q12_6_to_real(in90_i), 
q12_6_to_real(in91_r), q12_6_to_real(in91_i), 
q12_6_to_real(in92_r), q12_6_to_real(in92_i), 
q12_6_to_real(in93_r), q12_6_to_real(in93_i), 
q12_6_to_real(in94_r), q12_6_to_real(in94_i), 
q12_6_to_real(in95_r), q12_6_to_real(in95_i), 
q12_6_to_real(in96_r), q12_6_to_real(in96_i), 
q12_6_to_real(in97_r), q12_6_to_real(in97_i), 
q12_6_to_real(in98_r), q12_6_to_real(in98_i), 
q12_6_to_real(in99_r), q12_6_to_real(in99_i), 
q12_6_to_real(in100_r), q12_6_to_real(in100_i), 
q12_6_to_real(in101_r), q12_6_to_real(in101_i), 
q12_6_to_real(in102_r), q12_6_to_real(in102_i), 
q12_6_to_real(in103_r), q12_6_to_real(in103_i), 
q12_6_to_real(in104_r), q12_6_to_real(in104_i), 
q12_6_to_real(in105_r), q12_6_to_real(in105_i), 
q12_6_to_real(in106_r), q12_6_to_real(in106_i), 
q12_6_to_real(in107_r), q12_6_to_real(in107_i), 
q12_6_to_real(in108_r), q12_6_to_real(in108_i), 
q12_6_to_real(in109_r), q12_6_to_real(in109_i), 
q12_6_to_real(in110_r), q12_6_to_real(in110_i), 
q12_6_to_real(in111_r), q12_6_to_real(in111_i), 
q12_6_to_real(in112_r), q12_6_to_real(in112_i), 
q12_6_to_real(in113_r), q12_6_to_real(in113_i), 
q12_6_to_real(in114_r), q12_6_to_real(in114_i), 
q12_6_to_real(in115_r), q12_6_to_real(in115_i), 
q12_6_to_real(in116_r), q12_6_to_real(in116_i), 
q12_6_to_real(in117_r), q12_6_to_real(in117_i), 
q12_6_to_real(in118_r), q12_6_to_real(in118_i), 
q12_6_to_real(in119_r), q12_6_to_real(in119_i), 
q12_6_to_real(in120_r), q12_6_to_real(in120_i), 
q12_6_to_real(in121_r), q12_6_to_real(in121_i), 
q12_6_to_real(in122_r), q12_6_to_real(in122_i), 
q12_6_to_real(in123_r), q12_6_to_real(in123_i), 
q12_6_to_real(in124_r), q12_6_to_real(in124_i), 
q12_6_to_real(in125_r), q12_6_to_real(in125_i), 
q12_6_to_real(in126_r), q12_6_to_real(in126_i), 
q12_6_to_real(in127_r), q12_6_to_real(in127_i),
q12_6_to_real(out0_r), q12_6_to_real(out0_i), 
q12_6_to_real(out1_r), q12_6_to_real(out1_i), 
q12_6_to_real(out2_r), q12_6_to_real(out2_i), 
q12_6_to_real(out3_r), q12_6_to_real(out3_i), 
q12_6_to_real(out4_r), q12_6_to_real(out4_i), 
q12_6_to_real(out5_r), q12_6_to_real(out5_i), 
q12_6_to_real(out6_r), q12_6_to_real(out6_i), 
q12_6_to_real(out7_r), q12_6_to_real(out7_i), 
q12_6_to_real(out8_r), q12_6_to_real(out8_i), 
q12_6_to_real(out9_r), q12_6_to_real(out9_i), 
q12_6_to_real(out10_r), q12_6_to_real(out10_i), 
q12_6_to_real(out11_r), q12_6_to_real(out11_i), 
q12_6_to_real(out12_r), q12_6_to_real(out12_i), 
q12_6_to_real(out13_r), q12_6_to_real(out13_i), 
q12_6_to_real(out14_r), q12_6_to_real(out14_i), 
q12_6_to_real(out15_r), q12_6_to_real(out15_i), 
q12_6_to_real(out16_r), q12_6_to_real(out16_i), 
q12_6_to_real(out17_r), q12_6_to_real(out17_i), 
q12_6_to_real(out18_r), q12_6_to_real(out18_i), 
q12_6_to_real(out19_r), q12_6_to_real(out19_i), 
q12_6_to_real(out20_r), q12_6_to_real(out20_i), 
q12_6_to_real(out21_r), q12_6_to_real(out21_i), 
q12_6_to_real(out22_r), q12_6_to_real(out22_i), 
q12_6_to_real(out23_r), q12_6_to_real(out23_i), 
q12_6_to_real(out24_r), q12_6_to_real(out24_i), 
q12_6_to_real(out25_r), q12_6_to_real(out25_i), 
q12_6_to_real(out26_r), q12_6_to_real(out26_i), 
q12_6_to_real(out27_r), q12_6_to_real(out27_i), 
q12_6_to_real(out28_r), q12_6_to_real(out28_i), 
q12_6_to_real(out29_r), q12_6_to_real(out29_i), 
q12_6_to_real(out30_r), q12_6_to_real(out30_i), 
q12_6_to_real(out31_r), q12_6_to_real(out31_i), 
q12_6_to_real(out32_r), q12_6_to_real(out32_i), 
q12_6_to_real(out33_r), q12_6_to_real(out33_i), 
q12_6_to_real(out34_r), q12_6_to_real(out34_i), 
q12_6_to_real(out35_r), q12_6_to_real(out35_i), 
q12_6_to_real(out36_r), q12_6_to_real(out36_i), 
q12_6_to_real(out37_r), q12_6_to_real(out37_i), 
q12_6_to_real(out38_r), q12_6_to_real(out38_i), 
q12_6_to_real(out39_r), q12_6_to_real(out39_i), 
q12_6_to_real(out40_r), q12_6_to_real(out40_i), 
q12_6_to_real(out41_r), q12_6_to_real(out41_i), 
q12_6_to_real(out42_r), q12_6_to_real(out42_i), 
q12_6_to_real(out43_r), q12_6_to_real(out43_i), 
q12_6_to_real(out44_r), q12_6_to_real(out44_i), 
q12_6_to_real(out45_r), q12_6_to_real(out45_i), 
q12_6_to_real(out46_r), q12_6_to_real(out46_i), 
q12_6_to_real(out47_r), q12_6_to_real(out47_i), 
q12_6_to_real(out48_r), q12_6_to_real(out48_i), 
q12_6_to_real(out49_r), q12_6_to_real(out49_i), 
q12_6_to_real(out50_r), q12_6_to_real(out50_i), 
q12_6_to_real(out51_r), q12_6_to_real(out51_i), 
q12_6_to_real(out52_r), q12_6_to_real(out52_i), 
q12_6_to_real(out53_r), q12_6_to_real(out53_i), 
q12_6_to_real(out54_r), q12_6_to_real(out54_i), 
q12_6_to_real(out55_r), q12_6_to_real(out55_i), 
q12_6_to_real(out56_r), q12_6_to_real(out56_i), 
q12_6_to_real(out57_r), q12_6_to_real(out57_i), 
q12_6_to_real(out58_r), q12_6_to_real(out58_i), 
q12_6_to_real(out59_r), q12_6_to_real(out59_i), 
q12_6_to_real(out60_r), q12_6_to_real(out60_i), 
q12_6_to_real(out61_r), q12_6_to_real(out61_i), 
q12_6_to_real(out62_r), q12_6_to_real(out62_i), 
q12_6_to_real(out63_r), q12_6_to_real(out63_i), 
q12_6_to_real(out64_r), q12_6_to_real(out64_i), 
q12_6_to_real(out65_r), q12_6_to_real(out65_i), 
q12_6_to_real(out66_r), q12_6_to_real(out66_i), 
q12_6_to_real(out67_r), q12_6_to_real(out67_i), 
q12_6_to_real(out68_r), q12_6_to_real(out68_i), 
q12_6_to_real(out69_r), q12_6_to_real(out69_i), 
q12_6_to_real(out70_r), q12_6_to_real(out70_i), 
q12_6_to_real(out71_r), q12_6_to_real(out71_i), 
q12_6_to_real(out72_r), q12_6_to_real(out72_i), 
q12_6_to_real(out73_r), q12_6_to_real(out73_i), 
q12_6_to_real(out74_r), q12_6_to_real(out74_i), 
q12_6_to_real(out75_r), q12_6_to_real(out75_i), 
q12_6_to_real(out76_r), q12_6_to_real(out76_i), 
q12_6_to_real(out77_r), q12_6_to_real(out77_i), 
q12_6_to_real(out78_r), q12_6_to_real(out78_i), 
q12_6_to_real(out79_r), q12_6_to_real(out79_i), 
q12_6_to_real(out80_r), q12_6_to_real(out80_i), 
q12_6_to_real(out81_r), q12_6_to_real(out81_i), 
q12_6_to_real(out82_r), q12_6_to_real(out82_i), 
q12_6_to_real(out83_r), q12_6_to_real(out83_i), 
q12_6_to_real(out84_r), q12_6_to_real(out84_i), 
q12_6_to_real(out85_r), q12_6_to_real(out85_i), 
q12_6_to_real(out86_r), q12_6_to_real(out86_i), 
q12_6_to_real(out87_r), q12_6_to_real(out87_i), 
q12_6_to_real(out88_r), q12_6_to_real(out88_i), 
q12_6_to_real(out89_r), q12_6_to_real(out89_i), 
q12_6_to_real(out90_r), q12_6_to_real(out90_i), 
q12_6_to_real(out91_r), q12_6_to_real(out91_i), 
q12_6_to_real(out92_r), q12_6_to_real(out92_i), 
q12_6_to_real(out93_r), q12_6_to_real(out93_i), 
q12_6_to_real(out94_r), q12_6_to_real(out94_i), 
q12_6_to_real(out95_r), q12_6_to_real(out95_i), 
q12_6_to_real(out96_r), q12_6_to_real(out96_i), 
q12_6_to_real(out97_r), q12_6_to_real(out97_i), 
q12_6_to_real(out98_r), q12_6_to_real(out98_i), 
q12_6_to_real(out99_r), q12_6_to_real(out99_i), 
q12_6_to_real(out100_r), q12_6_to_real(out100_i), 
q12_6_to_real(out101_r), q12_6_to_real(out101_i), 
q12_6_to_real(out102_r), q12_6_to_real(out102_i), 
q12_6_to_real(out103_r), q12_6_to_real(out103_i), 
q12_6_to_real(out104_r), q12_6_to_real(out104_i), 
q12_6_to_real(out105_r), q12_6_to_real(out105_i), 
q12_6_to_real(out106_r), q12_6_to_real(out106_i), 
q12_6_to_real(out107_r), q12_6_to_real(out107_i), 
q12_6_to_real(out108_r), q12_6_to_real(out108_i), 
q12_6_to_real(out109_r), q12_6_to_real(out109_i), 
q12_6_to_real(out110_r), q12_6_to_real(out110_i), 
q12_6_to_real(out111_r), q12_6_to_real(out111_i), 
q12_6_to_real(out112_r), q12_6_to_real(out112_i), 
q12_6_to_real(out113_r), q12_6_to_real(out113_i), 
q12_6_to_real(out114_r), q12_6_to_real(out114_i), 
q12_6_to_real(out115_r), q12_6_to_real(out115_i), 
q12_6_to_real(out116_r), q12_6_to_real(out116_i), 
q12_6_to_real(out117_r), q12_6_to_real(out117_i), 
q12_6_to_real(out118_r), q12_6_to_real(out118_i), 
q12_6_to_real(out119_r), q12_6_to_real(out119_i), 
q12_6_to_real(out120_r), q12_6_to_real(out120_i), 
q12_6_to_real(out121_r), q12_6_to_real(out121_i), 
q12_6_to_real(out122_r), q12_6_to_real(out122_i), 
q12_6_to_real(out123_r), q12_6_to_real(out123_i), 
q12_6_to_real(out124_r), q12_6_to_real(out124_i), 
q12_6_to_real(out125_r), q12_6_to_real(out125_i), 
q12_6_to_real(out126_r), q12_6_to_real(out126_i), 
q12_6_to_real(out127_r), q12_6_to_real(out127_i)
);

        

        // Close file
        $fclose(file);

        // Finish simulation
        #10;
        $finish;
    end

endmodule
