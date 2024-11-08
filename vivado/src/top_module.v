`timescale 1ns / 1ps

module top_module#(
        parameter N = 18
    )
    (
    input  clk,
    input  rst

    );
    
        reg  signed [N-1:0]    in0_r;
        reg  signed [N-1:0]    in0_i;
        reg  signed [N-1:0]    in1_r;
        reg  signed [N-1:0]    in1_i;
        reg  signed [N-1:0]    in2_r;
        reg  signed [N-1:0]    in2_i;
        reg  signed [N-1:0]    in3_r;
        reg  signed [N-1:0]    in3_i;
        reg  signed [N-1:0]    in4_r;
        reg  signed [N-1:0]    in4_i;
        reg  signed [N-1:0]    in5_r;
        reg  signed [N-1:0]    in5_i;
        reg  signed [N-1:0]    in6_r;
        reg  signed [N-1:0]    in6_i;
        reg  signed [N-1:0]    in7_r;
        reg  signed [N-1:0]    in7_i;
        reg  signed [N-1:0]    in8_r;
        reg  signed [N-1:0]    in8_i;
        reg  signed [N-1:0]    in9_r;
        reg  signed [N-1:0]    in9_i;
        reg  signed [N-1:0]    in10_r;
        reg  signed [N-1:0]    in10_i;
        reg  signed [N-1:0]    in11_r;
        reg  signed [N-1:0]    in11_i;
        reg  signed [N-1:0]    in12_r;
        reg  signed [N-1:0]    in12_i;
        reg  signed [N-1:0]    in13_r;
        reg  signed [N-1:0]    in13_i;
        reg  signed [N-1:0]    in14_r;
        reg  signed [N-1:0]    in14_i;
        reg  signed [N-1:0]    in15_r;
        reg  signed [N-1:0]    in15_i;
        reg  signed [N-1:0]    in16_r;
        reg  signed [N-1:0]    in16_i;
        reg  signed [N-1:0]    in17_r;
        reg  signed [N-1:0]    in17_i;
        reg  signed [N-1:0]    in18_r;
        reg  signed [N-1:0]    in18_i;
        reg  signed [N-1:0]    in19_r;
        reg  signed [N-1:0]    in19_i;
        reg  signed [N-1:0]    in20_r;
        reg  signed [N-1:0]    in20_i;
        reg  signed [N-1:0]    in21_r;
        reg  signed [N-1:0]    in21_i;
        reg  signed [N-1:0]    in22_r;
        reg  signed [N-1:0]    in22_i;
        reg  signed [N-1:0]    in23_r;
        reg  signed [N-1:0]    in23_i;
        reg  signed [N-1:0]    in24_r;
        reg  signed [N-1:0]    in24_i;
        reg  signed [N-1:0]    in25_r;
        reg  signed [N-1:0]    in25_i;
        reg  signed [N-1:0]    in26_r;
        reg  signed [N-1:0]    in26_i;
        reg  signed [N-1:0]    in27_r;
        reg  signed [N-1:0]    in27_i;
        reg  signed [N-1:0]    in28_r;
        reg  signed [N-1:0]    in28_i;
        reg  signed [N-1:0]    in29_r;
        reg  signed [N-1:0]    in29_i;
        reg  signed [N-1:0]    in30_r;
        reg  signed [N-1:0]    in30_i;
        reg  signed [N-1:0]    in31_r;
        reg  signed [N-1:0]    in31_i;
        reg  signed [N-1:0]    in32_r;
        reg  signed [N-1:0]    in32_i;
        reg  signed [N-1:0]    in33_r;
        reg  signed [N-1:0]    in33_i;
        reg  signed [N-1:0]    in34_r;
        reg  signed [N-1:0]    in34_i;
        reg  signed [N-1:0]    in35_r;
        reg  signed [N-1:0]    in35_i;
        reg  signed [N-1:0]    in36_r;
        reg  signed [N-1:0]    in36_i;
        reg  signed [N-1:0]    in37_r;
        reg  signed [N-1:0]    in37_i;
        reg  signed [N-1:0]    in38_r;
        reg  signed [N-1:0]    in38_i;
        reg  signed [N-1:0]    in39_r;
        reg  signed [N-1:0]    in39_i;
        reg  signed [N-1:0]    in40_r;
        reg  signed [N-1:0]    in40_i;
        reg  signed [N-1:0]    in41_r;
        reg  signed [N-1:0]    in41_i;
        reg  signed [N-1:0]    in42_r;
        reg  signed [N-1:0]    in42_i;
        reg  signed [N-1:0]    in43_r;
        reg  signed [N-1:0]    in43_i;
        reg  signed [N-1:0]    in44_r;
        reg  signed [N-1:0]    in44_i;
        reg  signed [N-1:0]    in45_r;
        reg  signed [N-1:0]    in45_i;
        reg  signed [N-1:0]    in46_r;
        reg  signed [N-1:0]    in46_i;
        reg  signed [N-1:0]    in47_r;
        reg  signed [N-1:0]    in47_i;
        reg  signed [N-1:0]    in48_r;
        reg  signed [N-1:0]    in48_i;
        reg  signed [N-1:0]    in49_r;
        reg  signed [N-1:0]    in49_i;
        reg  signed [N-1:0]    in50_r;
        reg  signed [N-1:0]    in50_i;
        reg  signed [N-1:0]    in51_r;
        reg  signed [N-1:0]    in51_i;
        reg  signed [N-1:0]    in52_r;
        reg  signed [N-1:0]    in52_i;
        reg  signed [N-1:0]    in53_r;
        reg  signed [N-1:0]    in53_i;
        reg  signed [N-1:0]    in54_r;
        reg  signed [N-1:0]    in54_i;
        reg  signed [N-1:0]    in55_r;
        reg  signed [N-1:0]    in55_i;
        reg  signed [N-1:0]    in56_r;
        reg  signed [N-1:0]    in56_i;
        reg  signed [N-1:0]    in57_r;
        reg  signed [N-1:0]    in57_i;
        reg  signed [N-1:0]    in58_r;
        reg  signed [N-1:0]    in58_i;
        reg  signed [N-1:0]    in59_r;
        reg  signed [N-1:0]    in59_i;
        reg  signed [N-1:0]    in60_r;
        reg  signed [N-1:0]    in60_i;
        reg  signed [N-1:0]    in61_r;
        reg  signed [N-1:0]    in61_i;
        reg  signed [N-1:0]    in62_r;
        reg  signed [N-1:0]    in62_i;
        reg  signed [N-1:0]    in63_r;
        reg  signed [N-1:0]    in63_i;
        reg  signed [N-1:0]    in64_r;
            reg  signed [N-1:0]    in64_i;
            reg  signed [N-1:0]    in65_r;
            reg  signed [N-1:0]    in65_i;
            reg  signed [N-1:0]    in66_r;
            reg  signed [N-1:0]    in66_i;
            reg  signed [N-1:0]    in67_r;
            reg  signed [N-1:0]    in67_i;
            reg  signed [N-1:0]    in68_r;
            reg  signed [N-1:0]    in68_i;
            reg  signed [N-1:0]    in69_r;
            reg  signed [N-1:0]    in69_i;
            reg  signed [N-1:0]    in70_r;
            reg  signed [N-1:0]    in70_i;
            reg  signed [N-1:0]    in71_r;
            reg  signed [N-1:0]    in71_i;
            reg  signed [N-1:0]    in72_r;
            reg  signed [N-1:0]    in72_i;
            reg  signed [N-1:0]    in73_r;
            reg  signed [N-1:0]    in73_i;
            reg  signed [N-1:0]    in74_r;
            reg  signed [N-1:0]    in74_i;
            reg  signed [N-1:0]    in75_r;
            reg  signed [N-1:0]    in75_i;
            reg  signed [N-1:0]    in76_r;
            reg  signed [N-1:0]    in76_i;
            reg  signed [N-1:0]    in77_r;
            reg  signed [N-1:0]    in77_i;
            reg  signed [N-1:0]    in78_r;
            reg  signed [N-1:0]    in78_i;
            reg  signed [N-1:0]    in79_r;
            reg  signed [N-1:0]    in79_i;
            reg  signed [N-1:0]    in80_r;
            reg  signed [N-1:0]    in80_i;
            reg  signed [N-1:0]    in81_r;
            reg  signed [N-1:0]    in81_i;
            reg  signed [N-1:0]    in82_r;
            reg  signed [N-1:0]    in82_i;
            reg  signed [N-1:0]    in83_r;
            reg  signed [N-1:0]    in83_i;
            reg  signed [N-1:0]    in84_r;
            reg  signed [N-1:0]    in84_i;
            reg  signed [N-1:0]    in85_r;
            reg  signed [N-1:0]    in85_i;
            reg  signed [N-1:0]    in86_r;
            reg  signed [N-1:0]    in86_i;
            reg  signed [N-1:0]    in87_r;
            reg  signed [N-1:0]    in87_i;
            reg  signed [N-1:0]    in88_r;
            reg  signed [N-1:0]    in88_i;
            reg  signed [N-1:0]    in89_r;
            reg  signed [N-1:0]    in89_i;
            reg  signed [N-1:0]    in90_r;
            reg  signed [N-1:0]    in90_i;
            reg  signed [N-1:0]    in91_r;
            reg  signed [N-1:0]    in91_i;
            reg  signed [N-1:0]    in92_r;
            reg  signed [N-1:0]    in92_i;
            reg  signed [N-1:0]    in93_r;
            reg  signed [N-1:0]    in93_i;
            reg  signed [N-1:0]    in94_r;
            reg  signed [N-1:0]    in94_i;
            reg  signed [N-1:0]    in95_r;
            reg  signed [N-1:0]    in95_i;
            reg  signed [N-1:0]    in96_r;
            reg  signed [N-1:0]    in96_i;
            reg  signed [N-1:0]    in97_r;
            reg  signed [N-1:0]    in97_i;
            reg  signed [N-1:0]    in98_r;
            reg  signed [N-1:0]    in98_i;
            reg  signed [N-1:0]    in99_r;
            reg  signed [N-1:0]    in99_i;
            reg  signed [N-1:0]    in100_r;
            reg  signed [N-1:0]    in100_i;
            reg  signed [N-1:0]    in101_r;
            reg  signed [N-1:0]    in101_i;
            reg  signed [N-1:0]    in102_r;
            reg  signed [N-1:0]    in102_i;
            reg  signed [N-1:0]    in103_r;
            reg  signed [N-1:0]    in103_i;
            reg  signed [N-1:0]    in104_r;
            reg  signed [N-1:0]    in104_i;
            reg  signed [N-1:0]    in105_r;
            reg  signed [N-1:0]    in105_i;
            reg  signed [N-1:0]    in106_r;
            reg  signed [N-1:0]    in106_i;
            reg  signed [N-1:0]    in107_r;
            reg  signed [N-1:0]    in107_i;
            reg  signed [N-1:0]    in108_r;
            reg  signed [N-1:0]    in108_i;
            reg  signed [N-1:0]    in109_r;
            reg  signed [N-1:0]    in109_i;
            reg  signed [N-1:0]    in110_r;
            reg  signed [N-1:0]    in110_i;
            reg  signed [N-1:0]    in111_r;
            reg  signed [N-1:0]    in111_i;
            reg  signed [N-1:0]    in112_r;
            reg  signed [N-1:0]    in112_i;
            reg  signed [N-1:0]    in113_r;
            reg  signed [N-1:0]    in113_i;
            reg  signed [N-1:0]    in114_r;
            reg  signed [N-1:0]    in114_i;
            reg  signed [N-1:0]    in115_r;
            reg  signed [N-1:0]    in115_i;
            reg  signed [N-1:0]    in116_r;
            reg  signed [N-1:0]    in116_i;
            reg  signed [N-1:0]    in117_r;
            reg  signed [N-1:0]    in117_i;
            reg  signed [N-1:0]    in118_r;
            reg  signed [N-1:0]    in118_i;
            reg  signed [N-1:0]    in119_r;
            reg  signed [N-1:0]    in119_i;
            reg  signed [N-1:0]    in120_r;
            reg  signed [N-1:0]    in120_i;
            reg  signed [N-1:0]    in121_r;
            reg  signed [N-1:0]    in121_i;
            reg  signed [N-1:0]    in122_r;
            reg  signed [N-1:0]    in122_i;
            reg  signed [N-1:0]    in123_r;
            reg  signed [N-1:0]    in123_i;
            reg  signed [N-1:0]    in124_r;
            reg  signed [N-1:0]    in124_i;
            reg  signed [N-1:0]    in125_r;
            reg  signed [N-1:0]    in125_i;
            reg  signed [N-1:0]    in126_r;
            reg  signed [N-1:0]    in126_i;
            reg  signed [N-1:0]    in127_r;
            reg  signed [N-1:0]    in127_i;
            wire signed [N:0]    out0_r;
            reg start;
        wire signed [N:0]    out0_i;
        wire signed [N:0]    out1_r;
        wire signed [N:0]    out1_i;
        wire signed [N:0]    out2_r;
        wire signed [N:0]    out2_i;
        wire signed [N:0]    out3_r;
        wire signed [N:0]    out3_i;
        wire signed [N:0]    out4_r;
        wire signed [N:0]    out4_i;
        wire signed [N:0]    out5_r;
        wire signed [N:0]    out5_i;
        wire signed [N:0]    out6_r;
        wire signed [N:0]    out6_i;
        wire signed [N:0]    out7_r;
        wire signed [N:0]    out7_i;
        wire signed [N:0]    out8_r;
        wire signed [N:0]    out8_i;
        wire signed [N:0]    out9_r;
        wire signed [N:0]    out9_i;
        wire signed [N:0]    out10_r;
        wire signed [N:0]    out10_i;
        wire signed [N:0]    out11_r;
        wire signed [N:0]    out11_i;
        wire signed [N:0]    out12_r;
        wire signed [N:0]    out12_i;
        wire signed [N:0]    out13_r;
        wire signed [N:0]    out13_i;
        wire signed [N:0]    out14_r;
        wire signed [N:0]    out14_i;
        wire signed [N:0]    out15_r;
        wire signed [N:0]    out15_i;
        wire signed [N:0]    out16_r;
        wire signed [N:0]    out16_i;
        wire signed [N:0]    out17_r;
        wire signed [N:0]    out17_i;
        wire signed [N:0]    out18_r;
        wire signed [N:0]    out18_i;
        wire signed [N:0]    out19_r;
        wire signed [N:0]    out19_i;
        wire signed [N:0]    out20_r;
        wire signed [N:0]    out20_i;
        wire signed [N:0]    out21_r;
        wire signed [N:0]    out21_i;
        wire signed [N:0]    out22_r;
        wire signed [N:0]    out22_i;
        wire signed [N:0]    out23_r;
        wire signed [N:0]    out23_i;
        wire signed [N:0]    out24_r;
        wire signed [N:0]    out24_i;
        wire signed [N:0]    out25_r;
        wire signed [N:0]    out25_i;
        wire signed [N:0]    out26_r;
        wire signed [N:0]    out26_i;
        wire signed [N:0]    out27_r;
        wire signed [N:0]    out27_i;
        wire signed [N:0]    out28_r;
        wire signed [N:0]    out28_i;
        wire signed [N:0]    out29_r;
        wire signed [N:0]    out29_i;
        wire signed [N:0]    out30_r;
        wire signed [N:0]    out30_i;
        wire signed [N:0]    out31_r;
        wire signed [N:0]    out31_i;
        wire signed [N:0]    out32_r;
        wire signed [N:0]    out32_i;
        wire signed [N:0]    out33_r;
        wire signed [N:0]    out33_i;
        wire signed [N:0]    out34_r;
        wire signed [N:0]    out34_i;
        wire signed [N:0]    out35_r;
        wire signed [N:0]    out35_i;
        wire signed [N:0]    out36_r;
        wire signed [N:0]    out36_i;
        wire signed [N:0]    out37_r;
        wire signed [N:0]    out37_i;
        wire signed [N:0]    out38_r;
        wire signed [N:0]    out38_i;
        wire signed [N:0]    out39_r;
        wire signed [N:0]    out39_i;
        wire signed [N:0]    out40_r;
        wire signed [N:0]    out40_i;
        wire signed [N:0]    out41_r;
        wire signed [N:0]    out41_i;
        wire signed [N:0]    out42_r;
        wire signed [N:0]    out42_i;
        wire signed [N:0]    out43_r;
        wire signed [N:0]    out43_i;
        wire signed [N:0]    out44_r;
        wire signed [N:0]    out44_i;
        wire signed [N:0]    out45_r;
        wire signed [N:0]    out45_i;
        wire signed [N:0]    out46_r;
        wire signed [N:0]    out46_i;
        wire signed [N:0]    out47_r;
        wire signed [N:0]    out47_i;
        wire signed [N:0]    out48_r;
        wire signed [N:0]    out48_i;
        wire signed [N:0]    out49_r;
        wire signed [N:0]    out49_i;
        wire signed [N:0]    out50_r;
        wire signed [N:0]    out50_i;
        wire signed [N:0]    out51_r;
        wire signed [N:0]    out51_i;
        wire signed [N:0]    out52_r;
        wire signed [N:0]    out52_i;
        wire signed [N:0]    out53_r;
        wire signed [N:0]    out53_i;
        wire signed [N:0]    out54_r;
        wire signed [N:0]    out54_i;
        wire signed [N:0]    out55_r;
        wire signed [N:0]    out55_i;
        wire signed [N:0]    out56_r;
        wire signed [N:0]    out56_i;
        wire signed [N:0]    out57_r;
        wire signed [N:0]    out57_i;
        wire signed [N:0]    out58_r;
        wire signed [N:0]    out58_i;
        wire signed [N:0]    out59_r;
        wire signed [N:0]    out59_i;
        wire signed [N:0]    out60_r;
        wire signed [N:0]    out60_i;
        wire signed [N:0]    out61_r;
        wire signed [N:0]    out61_i;
        wire signed [N:0]    out62_r;
        wire signed [N:0]    out62_i;
        wire signed [N:0]    out63_r;
        wire signed [N:0]    out63_i;
        wire signed [N:0]    out64_r;
        wire signed [N:0]    out64_i;
        wire signed [N:0]    out65_r;
        wire signed [N:0]    out65_i;
        wire signed [N:0]    out66_r;
        wire signed [N:0]    out66_i;
        wire signed [N:0]    out67_r;
        wire signed [N:0]    out67_i;
        wire signed [N:0]    out68_r;
        wire signed [N:0]    out68_i;
        wire signed [N:0]    out69_r;
        wire signed [N:0]    out69_i;
        wire signed [N:0]    out70_r;
        wire signed [N:0]    out70_i;
        wire signed [N:0]    out71_r;
        wire signed [N:0]    out71_i;
        wire signed [N:0]    out72_r;
        wire signed [N:0]    out72_i;
        wire signed [N:0]    out73_r;
        wire signed [N:0]    out73_i;
        wire signed [N:0]    out74_r;
        wire signed [N:0]    out74_i;
        wire signed [N:0]    out75_r;
        wire signed [N:0]    out75_i;
        wire signed [N:0]    out76_r;
        wire signed [N:0]    out76_i;
        wire signed [N:0]    out77_r;
        wire signed [N:0]    out77_i;
        wire signed [N:0]    out78_r;
        wire signed [N:0]    out78_i;
        wire signed [N:0]    out79_r;
        wire signed [N:0]    out79_i;
        wire signed [N:0]    out80_r;
        wire signed [N:0]    out80_i;
        wire signed [N:0]    out81_r;
        wire signed [N:0]    out81_i;
        wire signed [N:0]    out82_r;
        wire signed [N:0]    out82_i;
        wire signed [N:0]    out83_r;
        wire signed [N:0]    out83_i;
        wire signed [N:0]    out84_r;
        wire signed [N:0]    out84_i;
        wire signed [N:0]    out85_r;
        wire signed [N:0]    out85_i;
        wire signed [N:0]    out86_r;
        wire signed [N:0]    out86_i;
        wire signed [N:0]    out87_r;
        wire signed [N:0]    out87_i;
        wire signed [N:0]    out88_r;
        wire signed [N:0]    out88_i;
        wire signed [N:0]    out89_r;
        wire signed [N:0]    out89_i;
        wire signed [N:0]    out90_r;
        wire signed [N:0]    out90_i;
        wire signed [N:0]    out91_r;
        wire signed [N:0]    out91_i;
        wire signed [N:0]    out92_r;
        wire signed [N:0]    out92_i;
        wire signed [N:0]    out93_r;
        wire signed [N:0]    out93_i;
        wire signed [N:0]    out94_r;
        wire signed [N:0]    out94_i;
        wire signed [N:0]    out95_r;
        wire signed [N:0]    out95_i;
        wire signed [N:0]    out96_r;
        wire signed [N:0]    out96_i;
        wire signed [N:0]    out97_r;
        wire signed [N:0]    out97_i;
        wire signed [N:0]    out98_r;
        wire signed [N:0]    out98_i;
        wire signed [N:0]    out99_r;
        wire signed [N:0]    out99_i;
        wire signed [N:0]    out100_r;
        wire signed [N:0]    out100_i;
        wire signed [N:0]    out101_r;
        wire signed [N:0]    out101_i;
        wire signed [N:0]    out102_r;
        wire signed [N:0]    out102_i;
        wire signed [N:0]    out103_r;
        wire signed [N:0]    out103_i;
        wire signed [N:0]    out104_r;
        wire signed [N:0]    out104_i;
        wire signed [N:0]    out105_r;
        wire signed [N:0]    out105_i;
        wire signed [N:0]    out106_r;
        wire signed [N:0]    out106_i;
        wire signed [N:0]    out107_r;
        wire signed [N:0]    out107_i;
        wire signed [N:0]    out108_r;
        wire signed [N:0]    out108_i;
        wire signed [N:0]    out109_r;
        wire signed [N:0]    out109_i;
        wire signed [N:0]    out110_r;
        wire signed [N:0]    out110_i;
        wire signed [N:0]    out111_r;
        wire signed [N:0]    out111_i;
        wire signed [N:0]    out112_r;
        wire signed [N:0]    out112_i;
        wire signed [N:0]    out113_r;
        wire signed [N:0]    out113_i;
        wire signed [N:0]    out114_r;
        wire signed [N:0]    out114_i;
        wire signed [N:0]    out115_r;
        wire signed [N:0]    out115_i;
        wire signed [N:0]    out116_r;
        wire signed [N:0]    out116_i;
        wire signed [N:0]    out117_r;
        wire signed [N:0]    out117_i;
        wire signed [N:0]    out118_r;
        wire signed [N:0]    out118_i;
        wire signed [N:0]    out119_r;
        wire signed [N:0]    out119_i;
        wire signed [N:0]    out120_r;
        wire signed [N:0]    out120_i;
        wire signed [N:0]    out121_r;
        wire signed [N:0]    out121_i;
        wire signed [N:0]    out122_r;
        wire signed [N:0]    out122_i;
        wire signed [N:0]    out123_r;
        wire signed [N:0]    out123_i;
        wire signed [N:0]    out124_r;
        wire signed [N:0]    out124_i;
        wire signed [N:0]    out125_r;
        wire signed [N:0]    out125_i;
        wire signed [N:0]    out126_r;
        wire signed [N:0]    out126_i;
        wire signed [N:0]    out127_r;
        wire signed [N:0]    out127_i;
        wire done;
        wire signed [18:0] f2out0_r, f2out0_i;
        wire signed [18:0] f2out1_r, f2out1_i;
        wire [6:0] stage;
        wire [6:0] butterfly_count;
        wire fft_done, butterfly_done;
    
       
       
    reg [10:0] addr;         
    reg       en;
    reg       we;
    reg       start_blockram;          // Internal start signal
    reg       done_blockram;           // Internal done signal
    wire signed [N-1:0] bram_out;
    
               
    reg [8:0] read_count;
    reg load_done;
    reg fft_start_blockram;
    
    
    initial begin 
        addr <= 11'b0; 
        we <= 1'b0;
        en <= 1'b1;
        start_blockram <= 1'b1;   
        load_done <= 1'b0;
        start<=1;  
        fft_start_blockram<=0;           
    end 
             
        
   blk_mem_gen_0 bram_instance (
        .clka(clk),
        .ena(en),
        .wea(we),
        .addra(addr),
        .dina(18'b0),
        .douta(bram_out)
    );   
        
        
        


ila_0 your_instance_name (
	.clk(clk), // input wire clk


	.probe0(rst), // input wire [0:0]  probe0  
	.probe1(done), // input wire [0:0]  probe1 
	.probe2(load_done), // input wire [0:0]  probe2 
	.probe3(i), // input wire [7:0]  probe3 
	.probe4(stage_test), // input wire [2:0]  probe4 
	.probe5(addr), // input wire [10:0]  probe5 
	.probe6(fft_start_blockram), // input wire [0:0]  probe6 
	.probe7(out_case_r), // input wire [17:0]  probe7 
	.probe8(out_case_i), // input wire [17:0]  probe7
    .probe9(j) // input wire [7:0]  probe3 
 
);

 
         
        
        
        
        
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            addr <= 0;
//            read_count <= 0;
            load_done <= 1'b0;
            fft_start_blockram <= 1'b0;
            done_blockram <= 1'b0;
        end else if (start_blockram && !load_done) begin
            en <= 1'b1;
            case (addr)
                11'd2: in0_r <= bram_out;
                11'd3: in0_i <= bram_out;
                11'd4: in1_r <= bram_out;
                11'd5: in1_i <= bram_out;
                11'd6: in2_r <= bram_out;
                11'd7: in2_i <= bram_out;
                11'd8: in3_r <= bram_out;
                11'd9: in3_i <= bram_out;
                11'd10: in4_r <= bram_out;
                11'd11: in4_i <= bram_out;
                11'd12: in5_r <= bram_out;
                11'd13: in5_i <= bram_out;
                11'd14: in6_r <= bram_out;
                11'd15: in6_i <= bram_out;
                11'd16: in7_r <= bram_out;
                11'd17: in7_i <= bram_out;
                11'd18: in8_r <= bram_out;
                11'd19: in8_i <= bram_out;
                11'd20: in9_r <= bram_out;
                11'd21: in9_i <= bram_out;
                11'd22: in10_r <= bram_out;
                11'd23: in10_i <= bram_out;
                11'd24: in11_r <= bram_out;
                11'd25: in11_i <= bram_out;
                11'd26: in12_r <= bram_out;
                11'd27: in12_i <= bram_out;
                11'd28: in13_r <= bram_out;
                11'd29: in13_i <= bram_out;
                11'd30: in14_r <= bram_out;
                11'd31: in14_i <= bram_out;
                11'd32: in15_r <= bram_out;
                11'd33: in15_i <= bram_out;
                11'd34: in16_r <= bram_out;
                11'd35: in16_i <= bram_out;
                11'd36: in17_r <= bram_out;
                11'd37: in17_i <= bram_out;
                11'd38: in18_r <= bram_out;
                11'd39: in18_i <= bram_out;
                11'd40: in19_r <= bram_out;
                11'd41: in19_i <= bram_out;
                11'd42: in20_r <= bram_out;
                11'd43: in20_i <= bram_out;
                11'd44: in21_r <= bram_out;
                11'd45: in21_i <= bram_out;
                11'd46: in22_r <= bram_out;
                11'd47: in22_i <= bram_out;
                11'd48: in23_r <= bram_out;
                11'd49: in23_i <= bram_out;
                11'd50: in24_r <= bram_out;
                11'd51: in24_i <= bram_out;
                11'd52: in25_r <= bram_out;
                11'd53: in25_i <= bram_out;
                11'd54: in26_r <= bram_out;
                11'd55: in26_i <= bram_out;
                11'd56: in27_r <= bram_out;
                11'd57: in27_i <= bram_out;
                11'd58: in28_r <= bram_out;
                11'd59: in28_i <= bram_out;
                11'd60: in29_r <= bram_out;
                11'd61: in29_i <= bram_out;
                11'd62: in30_r <= bram_out;
                11'd63: in30_i <= bram_out;
                11'd64: in31_r <= bram_out;
                11'd65: in31_i <= bram_out;
                11'd66: in32_r <= bram_out;
                11'd67: in32_i <= bram_out;
                11'd68: in33_r <= bram_out;
                11'd69: in33_i <= bram_out;
                11'd70: in34_r <= bram_out;
                11'd71: in34_i <= bram_out;
                11'd72: in35_r <= bram_out;
                11'd73: in35_i <= bram_out;
                11'd74: in36_r <= bram_out;
                11'd75: in36_i <= bram_out;
                11'd76: in37_r <= bram_out;
                11'd77: in37_i <= bram_out;
                11'd78: in38_r <= bram_out;
                11'd79: in38_i <= bram_out;
                11'd80: in39_r <= bram_out;
                11'd81: in39_i <= bram_out;
                11'd82: in40_r <= bram_out;
                11'd83: in40_i <= bram_out;
                11'd84: in41_r <= bram_out;
                11'd85: in41_i <= bram_out;
                11'd86: in42_r <= bram_out;
                11'd87: in42_i <= bram_out;
                11'd88: in43_r <= bram_out;
                11'd89: in43_i <= bram_out;
                11'd90: in44_r <= bram_out;
                11'd91: in44_i <= bram_out;
                11'd92: in45_r <= bram_out;
                11'd93: in45_i <= bram_out;
                11'd94: in46_r <= bram_out;
                11'd95: in46_i <= bram_out;
                11'd96: in47_r <= bram_out;
                11'd97: in47_i <= bram_out;
                11'd98: in48_r <= bram_out;
                11'd99: in48_i <= bram_out;
                11'd100: in49_r <= bram_out;
                11'd101: in49_i <= bram_out;
                11'd102: in50_r <= bram_out;
                11'd103: in50_i <= bram_out;
                11'd104: in51_r <= bram_out;
                11'd105: in51_i <= bram_out;
                11'd106: in52_r <= bram_out;
                11'd107: in52_i <= bram_out;
                11'd108: in53_r <= bram_out;
                11'd109: in53_i <= bram_out;
                11'd110: in54_r <= bram_out;
                11'd111: in54_i <= bram_out;
                11'd112: in55_r <= bram_out;
                11'd113: in55_i <= bram_out;
                11'd114: in56_r <= bram_out;
                11'd115: in56_i <= bram_out;
                11'd116: in57_r <= bram_out;
                11'd117: in57_i <= bram_out;
                11'd118: in58_r <= bram_out;
                11'd119: in58_i <= bram_out;
                11'd120: in59_r <= bram_out;
                11'd121: in59_i <= bram_out;
                11'd122: in60_r <= bram_out;
                11'd123: in60_i <= bram_out;
                11'd124: in61_r <= bram_out;
                11'd125: in61_i <= bram_out;
                11'd126: in62_r <= bram_out;
                11'd127: in62_i <= bram_out;
                11'd128: in63_r <= bram_out;
                11'd129: in63_i <= bram_out;
                11'd130: in64_r <= bram_out;
                11'd131: in64_i <= bram_out;
                11'd132: in65_r <= bram_out;
                11'd133: in65_i <= bram_out;
                11'd134: in66_r <= bram_out;
                11'd135: in66_i <= bram_out;
                11'd136: in67_r <= bram_out;
                11'd137: in67_i <= bram_out;
                11'd138: in68_r <= bram_out;
                11'd139: in68_i <= bram_out;
                11'd140: in69_r <= bram_out;
                11'd141: in69_i <= bram_out;
                11'd142: in70_r <= bram_out;
                11'd143: in70_i <= bram_out;
                11'd144: in71_r <= bram_out;
                11'd145: in71_i <= bram_out;
                11'd146: in72_r <= bram_out;
                11'd147: in72_i <= bram_out;
                11'd148: in73_r <= bram_out;
                11'd149: in73_i <= bram_out;
                11'd150: in74_r <= bram_out;
                11'd151: in74_i <= bram_out;
                11'd152: in75_r <= bram_out;
                11'd153: in75_i <= bram_out;
                11'd154: in76_r <= bram_out;
                11'd155: in76_i <= bram_out;
                11'd156: in77_r <= bram_out;
                11'd157: in77_i <= bram_out;
                11'd158: in78_r <= bram_out;
                11'd159: in78_i <= bram_out;
                11'd160: in79_r <= bram_out;
                11'd161: in79_i <= bram_out;
                11'd162: in80_r <= bram_out;
                11'd163: in80_i <= bram_out;
                11'd164: in81_r <= bram_out;
                11'd165: in81_i <= bram_out;
                11'd166: in82_r <= bram_out;
                11'd167: in82_i <= bram_out;
                11'd168: in83_r <= bram_out;
                11'd169: in83_i <= bram_out;
                11'd170: in84_r <= bram_out;
                11'd171: in84_i <= bram_out;
                11'd172: in85_r <= bram_out;
                11'd173: in85_i <= bram_out;
                11'd174: in86_r <= bram_out;
                11'd175: in86_i <= bram_out;
                11'd176: in87_r <= bram_out;
                11'd177: in87_i <= bram_out;
                11'd178: in88_r <= bram_out;
                11'd179: in88_i <= bram_out;
                11'd180: in89_r <= bram_out;
                11'd181: in89_i <= bram_out;
                11'd182: in90_r <= bram_out;
                11'd183: in90_i <= bram_out;
                11'd184: in91_r <= bram_out;
                11'd185: in91_i <= bram_out;
                11'd186: in92_r <= bram_out;
                11'd187: in92_i <= bram_out;
                11'd188: in93_r <= bram_out;
                11'd189: in93_i <= bram_out;
                11'd190: in94_r <= bram_out;
                11'd191: in94_i <= bram_out;
                11'd192: in95_r <= bram_out;
                11'd193: in95_i <= bram_out;
                11'd194: in96_r <= bram_out;
                11'd195: in96_i <= bram_out;
                11'd196: in97_r <= bram_out;
                11'd197: in97_i <= bram_out;
                11'd198: in98_r <= bram_out;
                11'd199: in98_i <= bram_out;
                11'd200: in99_r <= bram_out;
                11'd201: in99_i <= bram_out;
                11'd202: in100_r <= bram_out;
                11'd203: in100_i <= bram_out;
                11'd204: in101_r <= bram_out;
                11'd205: in101_i <= bram_out;
                11'd206: in102_r <= bram_out;
                11'd207: in102_i <= bram_out;
                11'd208: in103_r <= bram_out;
                11'd209: in103_i <= bram_out;
                11'd210: in104_r <= bram_out;
                11'd211: in104_i <= bram_out;
                11'd212: in105_r <= bram_out;
                11'd213: in105_i <= bram_out;
                11'd214: in106_r <= bram_out;
                11'd215: in106_i <= bram_out;
                11'd216: in107_r <= bram_out;
                11'd217: in107_i <= bram_out;
                11'd218: in108_r <= bram_out;
                11'd219: in108_i <= bram_out;
                11'd220: in109_r <= bram_out;
                11'd221: in109_i <= bram_out;
                11'd222: in110_r <= bram_out;
                11'd223: in110_i <= bram_out;
                11'd224: in111_r <= bram_out;
                11'd225: in111_i <= bram_out;
                11'd226: in112_r <= bram_out;
                11'd227: in112_i <= bram_out;
                11'd228: in113_r <= bram_out;
                11'd229: in113_i <= bram_out;
                11'd230: in114_r <= bram_out;
                11'd231: in114_i <= bram_out;
                11'd232: in115_r <= bram_out;
                11'd233: in115_i <= bram_out;
                11'd234: in116_r <= bram_out;
                11'd235: in116_i <= bram_out;
                11'd236: in117_r <= bram_out;
                11'd237: in117_i <= bram_out;
                11'd238: in118_r <= bram_out;
                11'd239: in118_i <= bram_out;
                11'd240: in119_r <= bram_out;
                11'd241: in119_i <= bram_out;
                11'd242: in120_r <= bram_out;
                11'd243: in120_i <= bram_out;
                11'd244: in121_r <= bram_out;
                11'd245: in121_i <= bram_out;
                11'd246: in122_r <= bram_out;
                11'd247: in122_i <= bram_out;
                11'd248: in123_r <= bram_out;
                11'd249: in123_i <= bram_out;
                11'd250: in124_r <= bram_out;
                11'd251: in124_i <= bram_out;
                11'd252: in125_r <= bram_out;
                11'd253: in125_i <= bram_out;
                11'd254: in126_r <= bram_out;
                11'd255: in126_i <= bram_out;
                11'd256: in127_r <= bram_out;
                11'd257: 
                    begin
                        in127_i <= bram_out;
                        load_done <= 1'b1;  // Indicate that loading is complete
                end
        endcase
            addr <= addr + 1;
        end else if (load_done) begin
            fft_start_blockram <= 1'b1;
        end else if (fft_start_blockram) begin
            done_blockram <= 1'b1;
        end
    end
        
        
            fft_128point fft_inst (
        .clk(clk),
        .rst(rst),
        .start(fft_start_blockram),
        .in0_r(in0_r), .in0_i(in0_i),
        .in1_r(in1_r), .in1_i(in1_i),
        .in2_r(in2_r), .in2_i(in2_i),
        .in3_r(in3_r), .in3_i(in3_i),
        .in4_r(in4_r), .in4_i(in4_i),
        .in5_r(in5_r), .in5_i(in5_i),
        .in6_r(in6_r), .in6_i(in6_i),
        .in7_r(in7_r), .in7_i(in7_i),
        .in8_r(in8_r), .in8_i(in8_i),
        .in9_r(in9_r), .in9_i(in9_i),
        .in10_r(in10_r), .in10_i(in10_i),
        .in11_r(in11_r), .in11_i(in11_i),
        .in12_r(in12_r), .in12_i(in12_i),
        .in13_r(in13_r), .in13_i(in13_i),
        .in14_r(in14_r), .in14_i(in14_i),
        .in15_r(in15_r), .in15_i(in15_i),
        .in16_r(in16_r), .in16_i(in16_i),
        .in17_r(in17_r), .in17_i(in17_i),
        .in18_r(in18_r), .in18_i(in18_i),
        .in19_r(in19_r), .in19_i(in19_i),
        .in20_r(in20_r), .in20_i(in20_i),
        .in21_r(in21_r), .in21_i(in21_i),
        .in22_r(in22_r), .in22_i(in22_i),
        .in23_r(in23_r), .in23_i(in23_i),
        .in24_r(in24_r), .in24_i(in24_i),
        .in25_r(in25_r), .in25_i(in25_i),
        .in26_r(in26_r), .in26_i(in26_i),
        .in27_r(in27_r), .in27_i(in27_i),
        .in28_r(in28_r), .in28_i(in28_i),
        .in29_r(in29_r), .in29_i(in29_i),
        .in30_r(in30_r), .in30_i(in30_i),
        .in31_r(in31_r), .in31_i(in31_i),
        .in32_r(in32_r), .in32_i(in32_i),
        .in33_r(in33_r), .in33_i(in33_i),
        .in34_r(in34_r), .in34_i(in34_i),
        .in35_r(in35_r), .in35_i(in35_i),
        .in36_r(in36_r), .in36_i(in36_i),
        .in37_r(in37_r), .in37_i(in37_i),
        .in38_r(in38_r), .in38_i(in38_i),
        .in39_r(in39_r), .in39_i(in39_i),
        .in40_r(in40_r), .in40_i(in40_i),
        .in41_r(in41_r), .in41_i(in41_i),
        .in42_r(in42_r), .in42_i(in42_i),
        .in43_r(in43_r), .in43_i(in43_i),
        .in44_r(in44_r), .in44_i(in44_i),
        .in45_r(in45_r), .in45_i(in45_i),
        .in46_r(in46_r), .in46_i(in46_i),
        .in47_r(in47_r), .in47_i(in47_i),
        .in48_r(in48_r), .in48_i(in48_i),
        .in49_r(in49_r), .in49_i(in49_i),
        .in50_r(in50_r), .in50_i(in50_i),
        .in51_r(in51_r), .in51_i(in51_i),
        .in52_r(in52_r), .in52_i(in52_i),
        .in53_r(in53_r), .in53_i(in53_i),
        .in54_r(in54_r), .in54_i(in54_i),
        .in55_r(in55_r), .in55_i(in55_i),
        .in56_r(in56_r), .in56_i(in56_i),
        .in57_r(in57_r), .in57_i(in57_i),
        .in58_r(in58_r), .in58_i(in58_i),
        .in59_r(in59_r), .in59_i(in59_i),
        .in60_r(in60_r), .in60_i(in60_i),
        .in61_r(in61_r), .in61_i(in61_i),
        .in62_r(in62_r), .in62_i(in62_i),
        .in63_r(in63_r), .in63_i(in63_i),
        .in64_r(in64_r), .in64_i(in64_i),
        .in65_r(in65_r), .in65_i(in65_i),
        .in66_r(in66_r), .in66_i(in66_i),
        .in67_r(in67_r), .in67_i(in67_i),
        .in68_r(in68_r), .in68_i(in68_i),
        .in69_r(in69_r), .in69_i(in69_i),
        .in70_r(in70_r), .in70_i(in70_i),
        .in71_r(in71_r), .in71_i(in71_i),
        .in72_r(in72_r), .in72_i(in72_i),
        .in73_r(in73_r), .in73_i(in73_i),
        .in74_r(in74_r), .in74_i(in74_i),
        .in75_r(in75_r), .in75_i(in75_i),
        .in76_r(in76_r), .in76_i(in76_i),
        .in77_r(in77_r), .in77_i(in77_i),
        .in78_r(in78_r), .in78_i(in78_i),
        .in79_r(in79_r), .in79_i(in79_i),
        .in80_r(in80_r), .in80_i(in80_i),
        .in81_r(in81_r), .in81_i(in81_i),
        .in82_r(in82_r), .in82_i(in82_i),
        .in83_r(in83_r), .in83_i(in83_i),
        .in84_r(in84_r), .in84_i(in84_i),
        .in85_r(in85_r), .in85_i(in85_i),
        .in86_r(in86_r), .in86_i(in86_i),
        .in87_r(in87_r), .in87_i(in87_i),
        .in88_r(in88_r), .in88_i(in88_i),
        .in89_r(in89_r), .in89_i(in89_i),
        .in90_r(in90_r), .in90_i(in90_i),
        .in91_r(in91_r), .in91_i(in91_i),
        .in92_r(in92_r), .in92_i(in92_i),
        .in93_r(in93_r), .in93_i(in93_i),
        .in94_r(in94_r), .in94_i(in94_i),
        .in95_r(in95_r), .in95_i(in95_i),
        .in96_r(in96_r), .in96_i(in96_i),
        .in97_r(in97_r), .in97_i(in97_i),
        .in98_r(in98_r), .in98_i(in98_i),
        .in99_r(in99_r), .in99_i(in99_i),
        .in100_r(in100_r), .in100_i(in100_i),
        .in101_r(in101_r), .in101_i(in101_i),
        .in102_r(in102_r), .in102_i(in102_i),
        .in103_r(in103_r), .in103_i(in103_i),
        .in104_r(in104_r), .in104_i(in104_i),
        .in105_r(in105_r), .in105_i(in105_i),
        .in106_r(in106_r), .in106_i(in106_i),
        .in107_r(in107_r), .in107_i(in107_i),
        .in108_r(in108_r), .in108_i(in108_i),
        .in109_r(in109_r), .in109_i(in109_i),
        .in110_r(in110_r), .in110_i(in110_i),
        .in111_r(in111_r), .in111_i(in111_i),
        .in112_r(in112_r), .in112_i(in112_i),
        .in113_r(in113_r), .in113_i(in113_i),
        .in114_r(in114_r), .in114_i(in114_i),
        .in115_r(in115_r), .in115_i(in115_i),
        .in116_r(in116_r), .in116_i(in116_i),
        .in117_r(in117_r), .in117_i(in117_i),
        .in118_r(in118_r), .in118_i(in118_i),
        .in119_r(in119_r), .in119_i(in119_i),
        .in120_r(in120_r), .in120_i(in120_i),
        .in121_r(in121_r), .in121_i(in121_i),
        .in122_r(in122_r), .in122_i(in122_i),
        .in123_r(in123_r), .in123_i(in123_i),
        .in124_r(in124_r), .in124_i(in124_i),
        .in125_r(in125_r), .in125_i(in125_i),
        .in126_r(in126_r), .in126_i(in126_i),
        .in127_r(in127_r), .in127_i(in127_i),
        .out0_r(out0_r), .out0_i(out0_i),
        .out1_r(out1_r), .out1_i(out1_i),
        .out2_r(out2_r), .out2_i(out2_i),
        .out3_r(out3_r), .out3_i(out3_i),
        .out4_r(out4_r), .out4_i(out4_i),
        .out5_r(out5_r), .out5_i(out5_i),
        .out6_r(out6_r), .out6_i(out6_i),
        .out7_r(out7_r), .out7_i(out7_i),
        .out8_r(out8_r), .out8_i(out8_i),
        .out9_r(out9_r), .out9_i(out9_i),
        .out10_r(out10_r), .out10_i(out10_i),
        .out11_r(out11_r), .out11_i(out11_i),
        .out12_r(out12_r), .out12_i(out12_i),
        .out13_r(out13_r), .out13_i(out13_i),
        .out14_r(out14_r), .out14_i(out14_i),
        .out15_r(out15_r), .out15_i(out15_i),
        .out16_r(out16_r), .out16_i(out16_i),
        .out17_r(out17_r), .out17_i(out17_i),
        .out18_r(out18_r), .out18_i(out18_i),
        .out19_r(out19_r), .out19_i(out19_i),
        .out20_r(out20_r), .out20_i(out20_i),
        .out21_r(out21_r), .out21_i(out21_i),
        .out22_r(out22_r), .out22_i(out22_i),
        .out23_r(out23_r), .out23_i(out23_i),
        .out24_r(out24_r), .out24_i(out24_i),
        .out25_r(out25_r), .out25_i(out25_i),
        .out26_r(out26_r), .out26_i(out26_i),
        .out27_r(out27_r), .out27_i(out27_i),
        .out28_r(out28_r), .out28_i(out28_i),
        .out29_r(out29_r), .out29_i(out29_i),
        .out30_r(out30_r), .out30_i(out30_i),
        .out31_r(out31_r), .out31_i(out31_i),
        .out32_r(out32_r), .out32_i(out32_i),
        .out33_r(out33_r), .out33_i(out33_i),
        .out34_r(out34_r), .out34_i(out34_i),
        .out35_r(out35_r), .out35_i(out35_i),
        .out36_r(out36_r), .out36_i(out36_i),
        .out37_r(out37_r), .out37_i(out37_i),
        .out38_r(out38_r), .out38_i(out38_i),
        .out39_r(out39_r), .out39_i(out39_i),
        .out40_r(out40_r), .out40_i(out40_i),
        .out41_r(out41_r), .out41_i(out41_i),
        .out42_r(out42_r), .out42_i(out42_i),
        .out43_r(out43_r), .out43_i(out43_i),
        .out44_r(out44_r), .out44_i(out44_i),
        .out45_r(out45_r), .out45_i(out45_i),
        .out46_r(out46_r), .out46_i(out46_i),
        .out47_r(out47_r), .out47_i(out47_i),
        .out48_r(out48_r), .out48_i(out48_i),
        .out49_r(out49_r), .out49_i(out49_i),
        .out50_r(out50_r), .out50_i(out50_i),
        .out51_r(out51_r), .out51_i(out51_i),
        .out52_r(out52_r), .out52_i(out52_i),
        .out53_r(out53_r), .out53_i(out53_i),
        .out54_r(out54_r), .out54_i(out54_i),
        .out55_r(out55_r), .out55_i(out55_i),
        .out56_r(out56_r), .out56_i(out56_i),
        .out57_r(out57_r), .out57_i(out57_i),
        .out58_r(out58_r), .out58_i(out58_i),
        .out59_r(out59_r), .out59_i(out59_i),
        .out60_r(out60_r), .out60_i(out60_i),
        .out61_r(out61_r), .out61_i(out61_i),
        .out62_r(out62_r), .out62_i(out62_i),
        .out63_r(out63_r), .out63_i(out63_i),
        .out64_r(out64_r), .out64_i(out64_i),
        .out65_r(out65_r), .out65_i(out65_i),
        .out66_r(out66_r), .out66_i(out66_i),
        .out67_r(out67_r), .out67_i(out67_i),
        .out68_r(out68_r), .out68_i(out68_i),
        .out69_r(out69_r), .out69_i(out69_i),
        .out70_r(out70_r), .out70_i(out70_i),
        .out71_r(out71_r), .out71_i(out71_i),
        .out72_r(out72_r), .out72_i(out72_i),
        .out73_r(out73_r), .out73_i(out73_i),
        .out74_r(out74_r), .out74_i(out74_i),
        .out75_r(out75_r), .out75_i(out75_i),
        .out76_r(out76_r), .out76_i(out76_i),
        .out77_r(out77_r), .out77_i(out77_i),
        .out78_r(out78_r), .out78_i(out78_i),
        .out79_r(out79_r), .out79_i(out79_i),
        .out80_r(out80_r), .out80_i(out80_i),
        .out81_r(out81_r), .out81_i(out81_i),
        .out82_r(out82_r), .out82_i(out82_i),
        .out83_r(out83_r), .out83_i(out83_i),
        .out84_r(out84_r), .out84_i(out84_i),
        .out85_r(out85_r), .out85_i(out85_i),
        .out86_r(out86_r), .out86_i(out86_i),
        .out87_r(out87_r), .out87_i(out87_i),
        .out88_r(out88_r), .out88_i(out88_i),
        .out89_r(out89_r), .out89_i(out89_i),
        .out90_r(out90_r), .out90_i(out90_i),
        .out91_r(out91_r), .out91_i(out91_i),
        .out92_r(out92_r), .out92_i(out92_i),
        .out93_r(out93_r), .out93_i(out93_i),
        .out94_r(out94_r), .out94_i(out94_i),
        .out95_r(out95_r), .out95_i(out95_i),
        .out96_r(out96_r), .out96_i(out96_i),
        .out97_r(out97_r), .out97_i(out97_i),
        .out98_r(out98_r), .out98_i(out98_i),
        .out99_r(out99_r), .out99_i(out99_i),
        .out100_r(out100_r), .out100_i(out100_i),
        .out101_r(out101_r), .out101_i(out101_i),
        .out102_r(out102_r), .out102_i(out102_i),
        .out103_r(out103_r), .out103_i(out103_i),
        .out104_r(out104_r), .out104_i(out104_i),
        .out105_r(out105_r), .out105_i(out105_i),
        .out106_r(out106_r), .out106_i(out106_i),
        .out107_r(out107_r), .out107_i(out107_i),
        .out108_r(out108_r), .out108_i(out108_i),
        .out109_r(out109_r), .out109_i(out109_i),
        .out110_r(out110_r), .out110_i(out110_i),
        .out111_r(out111_r), .out111_i(out111_i),
        .out112_r(out112_r), .out112_i(out112_i),
        .out113_r(out113_r), .out113_i(out113_i),
        .out114_r(out114_r), .out114_i(out114_i),
        .out115_r(out115_r), .out115_i(out115_i),
        .out116_r(out116_r), .out116_i(out116_i),
        .out117_r(out117_r), .out117_i(out117_i),
        .out118_r(out118_r), .out118_i(out118_i),
        .out119_r(out119_r), .out119_i(out119_i),
        .out120_r(out120_r), .out120_i(out120_i),
        .out121_r(out121_r), .out121_i(out121_i),
        .out122_r(out122_r), .out122_i(out122_i),
        .out123_r(out123_r), .out123_i(out123_i),
        .out124_r(out124_r), .out124_i(out124_i),
        .out125_r(out125_r), .out125_i(out125_i),
        .out126_r(out126_r), .out126_i(out126_i),
        .out127_r(out127_r), .out127_i(out127_i),
        .done(done),.f2out0_r(f2out0_r),.f2out0_i(f2out0_i),
        .f2out1_r(f2out1_r), .f2out1_i(f2out1_i),.stage(stage),
        .butterfly_count(butterfly_count),.fft_done(fft_done),
        .butterfly_done(butterfly_done)
    );


reg signed [N:0] out_case_r; 
reg signed [N:0] out_case_i; 
reg [2:0] stage_test;
reg [N:0] out_test_r[0:15];
reg [N:0] out_test_i[0:15];
reg [N:0] out_test_3;
reg [N:0] out_iterative_r,out_iterative_i;
reg [7:0] i,j;
    
    initial begin
    i<=0;
    j<=0;
    end     
    

always@(posedge clk) begin
    if(done) begin
        i <= i+1;
    end
end

always@(posedge clk) begin
    if(done) begin
        j <= j+1;
    end
end


always@(posedge clk) begin
    case (i)
        8'd1: out_case_r <= out0_r;
        8'd2: out_case_r <= out1_r;
        8'd3: out_case_r <= out2_r;
        8'd4: out_case_r <= out3_r;
        8'd5: out_case_r <= out4_r;
        8'd6: out_case_r <= out5_r;
        8'd7: out_case_r <= out6_r;
        8'd8: out_case_r <= out7_r;
        8'd9: out_case_r <= out8_r;
        8'd10: out_case_r <= out9_r;
        8'd11: out_case_r <= out10_r;
        8'd12: out_case_r <= out11_r;
        8'd13: out_case_r <= out12_r;
        8'd14: out_case_r <= out13_r;
        8'd15: out_case_r <= out14_r;
        8'd16: out_case_r <= out15_r;
        8'd17: out_case_r <= out16_r;
        8'd18: out_case_r <= out17_r;
        8'd19: out_case_r <= out18_r;
        8'd20: out_case_r <= out19_r;
        8'd21: out_case_r <= out20_r;
        8'd22: out_case_r <= out21_r;
        8'd23: out_case_r <= out22_r;
        8'd24: out_case_r <= out23_r;
        8'd25: out_case_r <= out24_r;
        8'd26: out_case_r <= out25_r;
        8'd27: out_case_r <= out26_r;
        8'd28: out_case_r <= out27_r;
        8'd29: out_case_r <= out28_r;
        8'd30: out_case_r <= out29_r;
        8'd31: out_case_r <= out30_r;
        8'd32: out_case_r <= out31_r;
        8'd33: out_case_r <= out32_r;
        8'd34: out_case_r <= out33_r;
        8'd35: out_case_r <= out34_r;
        8'd36: out_case_r <= out35_r;
        8'd37: out_case_r <= out36_r;
        8'd38: out_case_r <= out37_r;
        8'd39: out_case_r <= out38_r;
        8'd40: out_case_r <= out39_r;
        8'd41: out_case_r <= out40_r;
        8'd42: out_case_r <= out41_r;
        8'd43: out_case_r <= out42_r;
        8'd44: out_case_r <= out43_r;
        8'd45: out_case_r <= out44_r;
        8'd46: out_case_r <= out45_r;
        8'd47: out_case_r <= out46_r;
        8'd48: out_case_r <= out47_r;
        8'd49: out_case_r <= out48_r;
        8'd50: out_case_r <= out49_r;
        8'd51: out_case_r <= out50_r;
        8'd52: out_case_r <= out51_r;
        8'd53: out_case_r <= out52_r;
        8'd54: out_case_r <= out53_r;
        8'd55: out_case_r <= out54_r;
        8'd56: out_case_r <= out55_r;
        8'd57: out_case_r <= out56_r;
        8'd58: out_case_r <= out57_r;
        8'd59: out_case_r <= out58_r;
        8'd60: out_case_r <= out59_r;
        8'd61: out_case_r <= out60_r;
        8'd62: out_case_r <= out61_r;
        8'd63: out_case_r <= out62_r;
        8'd64: out_case_r <= out63_r;
        8'd65: out_case_r <= out64_r;
        8'd66: out_case_r <= out65_r;
        8'd67: out_case_r <= out66_r;
        8'd68: out_case_r <= out67_r;
        8'd69: out_case_r <= out68_r;
        8'd70: out_case_r <= out69_r;
        8'd71: out_case_r <= out70_r;
        8'd72: out_case_r <= out71_r;
        8'd73: out_case_r <= out72_r;
        8'd74: out_case_r <= out73_r;
        8'd75: out_case_r <= out74_r;
        8'd76: out_case_r <= out75_r;
        8'd77: out_case_r <= out76_r;
        8'd78: out_case_r <= out77_r;
        8'd79: out_case_r <= out78_r;
        8'd80: out_case_r <= out79_r;
        8'd81: out_case_r <= out80_r;
        8'd82: out_case_r <= out81_r;
        8'd83: out_case_r <= out82_r;
        8'd84: out_case_r <= out83_r;
        8'd85: out_case_r <= out84_r;
        8'd86: out_case_r <= out85_r;
        8'd87: out_case_r <= out86_r;
        8'd88: out_case_r <= out87_r;
        8'd89: out_case_r <= out88_r;
        8'd90: out_case_r <= out89_r;
        8'd91: out_case_r <= out90_r;
        8'd92: out_case_r <= out91_r;
        8'd93: out_case_r <= out92_r;
        8'd94: out_case_r <= out93_r;
        8'd95: out_case_r <= out94_r;
        8'd96: out_case_r <= out95_r;
        8'd97: out_case_r <= out96_r;
        8'd98: out_case_r <= out97_r;
        8'd99: out_case_r <= out98_r;
        8'd100: out_case_r <= out99_r;
        8'd101: out_case_r <= out100_r;
        8'd102: out_case_r <= out101_r;
        8'd103: out_case_r <= out102_r;
        8'd104: out_case_r <= out103_r;
        8'd105: out_case_r <= out104_r;
        8'd106: out_case_r <= out105_r;
        8'd107: out_case_r <= out106_r;
        8'd108: out_case_r <= out107_r;
        8'd109: out_case_r <= out108_r;
        8'd110: out_case_r <= out109_r;
        8'd111: out_case_r <= out110_r;
        8'd112: out_case_r <= out111_r;
        8'd113: out_case_r <= out112_r;
        8'd114: out_case_r <= out113_r;
        8'd115: out_case_r <= out114_r;
        8'd116: out_case_r <= out115_r;
        8'd117: out_case_r <= out116_r;
        8'd118: out_case_r <= out117_r;
        8'd119: out_case_r <= out118_r;
        8'd120: out_case_r <= out119_r;
        8'd121: out_case_r <= out120_r;
        8'd122: out_case_r <= out121_r;
        8'd123: out_case_r <= out122_r;
        8'd124: out_case_r <= out123_r;
        8'd125: out_case_r <= out124_r;
        8'd126: out_case_r <= out125_r;
        8'd127: out_case_r <= out126_r;
        8'd128: out_case_r <= out127_r;
        default: out_case_r <= 0; // or whatever default behavior is needed
    endcase
end




always@(posedge clk) begin
    case (j)
        8'd1: out_case_i <= out0_i;
        8'd2: out_case_i <= out1_i;
        8'd3: out_case_i <= out2_i;
        8'd4: out_case_i <= out3_i;
        8'd5: out_case_i <= out4_i;
        8'd6: out_case_i <= out5_i;
        8'd7: out_case_i <= out6_i;
        8'd8: out_case_i <= out7_i;
        8'd9: out_case_i <= out8_i;
        8'd10: out_case_i <= out9_i;
        8'd11: out_case_i <= out10_i;
        8'd12: out_case_i <= out11_i;
        8'd13: out_case_i <= out12_i;
        8'd14: out_case_i <= out13_i;
        8'd15: out_case_i <= out14_i;
        8'd16: out_case_i <= out15_i;
        8'd17: out_case_i <= out16_i;
        8'd18: out_case_i <= out17_i;
        8'd19: out_case_i <= out18_i;
        8'd20: out_case_i <= out19_i;
        8'd21: out_case_i <= out20_i;
        8'd22: out_case_i <= out21_i;
        8'd23: out_case_i <= out22_i;
        8'd24: out_case_i <= out23_i;
        8'd25: out_case_i <= out24_i;
        8'd26: out_case_i <= out25_i;
        8'd27: out_case_i <= out26_i;
        8'd28: out_case_i <= out27_i;
        8'd29: out_case_i <= out28_i;
        8'd30: out_case_i <= out29_i;
        8'd31: out_case_i <= out30_i;
        8'd32: out_case_i <= out31_i;
        8'd33: out_case_i <= out32_i;
        8'd34: out_case_i <= out33_i;
        8'd35: out_case_i <= out34_i;
        8'd36: out_case_i <= out35_i;
        8'd37: out_case_i <= out36_i;
        8'd38: out_case_i <= out37_i;
        8'd39: out_case_i <= out38_i;
        8'd40: out_case_i <= out39_i;
        8'd41: out_case_i <= out40_i;
        8'd42: out_case_i <= out41_i;
        8'd43: out_case_i <= out42_i;
        8'd44: out_case_i <= out43_i;
        8'd45: out_case_i <= out44_i;
        8'd46: out_case_i <= out45_i;
        8'd47: out_case_i <= out46_i;
        8'd48: out_case_i <= out47_i;
        8'd49: out_case_i <= out48_i;
        8'd50: out_case_i <= out49_i;
        8'd51: out_case_i <= out50_i;
        8'd52: out_case_i <= out51_i;
        8'd53: out_case_i <= out52_i;
        8'd54: out_case_i <= out53_i;
        8'd55: out_case_i <= out54_i;
        8'd56: out_case_i <= out55_i;
        8'd57: out_case_i <= out56_i;
        8'd58: out_case_i <= out57_i;
        8'd59: out_case_i <= out58_i;
        8'd60: out_case_i <= out59_i;
        8'd61: out_case_i <= out60_i;
        8'd62: out_case_i <= out61_i;
        8'd63: out_case_i <= out62_i;
        8'd64: out_case_i <= out63_i;
        8'd65: out_case_i <= out64_i;
        8'd66: out_case_i <= out65_i;
        8'd67: out_case_i <= out66_i;
        8'd68: out_case_i <= out67_i;
        8'd69: out_case_i <= out68_i;
        8'd70: out_case_i <= out69_i;
        8'd71: out_case_i <= out70_i;
        8'd72: out_case_i <= out71_i;
        8'd73: out_case_i <= out72_i;
        8'd74: out_case_i <= out73_i;
        8'd75: out_case_i <= out74_i;
        8'd76: out_case_i <= out75_i;
        8'd77: out_case_i <= out76_i;
        8'd78: out_case_i <= out77_i;
        8'd79: out_case_i <= out78_i;
        8'd80: out_case_i <= out79_i;
        8'd81: out_case_i <= out80_i;
        8'd82: out_case_i <= out81_i;
        8'd83: out_case_i <= out82_i;
        8'd84: out_case_i <= out83_i;
        8'd85: out_case_i <= out84_i;
        8'd86: out_case_i <= out85_i;
        8'd87: out_case_i <= out86_i;
        8'd88: out_case_i <= out87_i;
        8'd89: out_case_i <= out88_i;
        8'd90: out_case_i <= out89_i;
        8'd91: out_case_i <= out90_i;
        8'd92: out_case_i <= out91_i;
        8'd93: out_case_i <= out92_i;
        8'd94: out_case_i <= out93_i;
        8'd95: out_case_i <= out94_i;
        8'd96: out_case_i <= out95_i;
        8'd97: out_case_i <= out96_i;
        8'd98: out_case_i <= out97_i;
        8'd99: out_case_i <= out98_i;
        8'd100: out_case_i <= out99_i;
        8'd101: out_case_i <= out100_i;
        8'd102: out_case_i <= out101_i;
        8'd103: out_case_i <= out102_i;
        8'd104: out_case_i <= out103_i;
        8'd105: out_case_i <= out104_i;
        8'd106: out_case_i <= out105_i;
        8'd107: out_case_i <= out106_i;
        8'd108: out_case_i <= out107_i;
        8'd109: out_case_i <= out108_i;
        8'd110: out_case_i <= out109_i;
        8'd111: out_case_i <= out110_i;
        8'd112: out_case_i <= out111_i;
        8'd113: out_case_i <= out112_i;
        8'd114: out_case_i <= out113_i;
        8'd115: out_case_i <= out114_i;
        8'd116: out_case_i <= out115_i;
        8'd117: out_case_i <= out116_i;
        8'd118: out_case_i <= out117_i;
        8'd119: out_case_i <= out118_i;
        8'd120: out_case_i <= out119_i;
        8'd121: out_case_i <= out120_i;
        8'd122: out_case_i <= out121_i;
        8'd123: out_case_i <= out122_i;
        8'd124: out_case_i <= out123_i;
        8'd125: out_case_i <= out124_i;
        8'd126: out_case_i <= out125_i;
        8'd127: out_case_i <= out126_i;
        8'd128: out_case_i <= out127_i;
        default: out_case_i <= 0; // or whatever default behavior is needed
    endcase
end

    
endmodule










