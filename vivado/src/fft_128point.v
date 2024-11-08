    `timescale 1ns / 1ps
    
    module fft_128point #(
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
        input signed [N-1:0]    in32_r,
        input signed [N-1:0]    in32_i,
        input signed [N-1:0]    in33_r,
        input signed [N-1:0]    in33_i,
        input signed [N-1:0]    in34_r,
        input signed [N-1:0]    in34_i,
        input signed [N-1:0]    in35_r,
        input signed [N-1:0]    in35_i,
        input signed [N-1:0]    in36_r,
        input signed [N-1:0]    in36_i,
        input signed [N-1:0]    in37_r,
        input signed [N-1:0]    in37_i,
        input signed [N-1:0]    in38_r,
        input signed [N-1:0]    in38_i,
        input signed [N-1:0]    in39_r,
        input signed [N-1:0]    in39_i,
        input signed [N-1:0]    in40_r,
        input signed [N-1:0]    in40_i,
        input signed [N-1:0]    in41_r,
        input signed [N-1:0]    in41_i,
        input signed [N-1:0]    in42_r,
        input signed [N-1:0]    in42_i,
        input signed [N-1:0]    in43_r,
        input signed [N-1:0]    in43_i,
        input signed [N-1:0]    in44_r,
        input signed [N-1:0]    in44_i,
        input signed [N-1:0]    in45_r,
        input signed [N-1:0]    in45_i,
        input signed [N-1:0]    in46_r,
        input signed [N-1:0]    in46_i,
        input signed [N-1:0]    in47_r,
        input signed [N-1:0]    in47_i,
        input signed [N-1:0]    in48_r,
        input signed [N-1:0]    in48_i,
        input signed [N-1:0]    in49_r,
        input signed [N-1:0]    in49_i,
        input signed [N-1:0]    in50_r,
        input signed [N-1:0]    in50_i,
        input signed [N-1:0]    in51_r,
        input signed [N-1:0]    in51_i,
        input signed [N-1:0]    in52_r,
        input signed [N-1:0]    in52_i,
        input signed [N-1:0]    in53_r,
        input signed [N-1:0]    in53_i,
        input signed [N-1:0]    in54_r,
        input signed [N-1:0]    in54_i,
        input signed [N-1:0]    in55_r,
        input signed [N-1:0]    in55_i,
        input signed [N-1:0]    in56_r,
        input signed [N-1:0]    in56_i,
        input signed [N-1:0]    in57_r,
        input signed [N-1:0]    in57_i,
        input signed [N-1:0]    in58_r,
        input signed [N-1:0]    in58_i,
        input signed [N-1:0]    in59_r,
        input signed [N-1:0]    in59_i,
        input signed [N-1:0]    in60_r,
        input signed [N-1:0]    in60_i,
        input signed [N-1:0]    in61_r,
        input signed [N-1:0]    in61_i,
        input signed [N-1:0]    in62_r,
        input signed [N-1:0]    in62_i,
        input signed [N-1:0]    in63_r,
        input signed [N-1:0]    in63_i,
        input signed [N-1:0]    in64_r,
            input signed [N-1:0]    in64_i,
            input signed [N-1:0]    in65_r,
            input signed [N-1:0]    in65_i,
            input signed [N-1:0]    in66_r,
            input signed [N-1:0]    in66_i,
            input signed [N-1:0]    in67_r,
            input signed [N-1:0]    in67_i,
            input signed [N-1:0]    in68_r,
            input signed [N-1:0]    in68_i,
            input signed [N-1:0]    in69_r,
            input signed [N-1:0]    in69_i,
            input signed [N-1:0]    in70_r,
            input signed [N-1:0]    in70_i,
            input signed [N-1:0]    in71_r,
            input signed [N-1:0]    in71_i,
            input signed [N-1:0]    in72_r,
            input signed [N-1:0]    in72_i,
            input signed [N-1:0]    in73_r,
            input signed [N-1:0]    in73_i,
            input signed [N-1:0]    in74_r,
            input signed [N-1:0]    in74_i,
            input signed [N-1:0]    in75_r,
            input signed [N-1:0]    in75_i,
            input signed [N-1:0]    in76_r,
            input signed [N-1:0]    in76_i,
            input signed [N-1:0]    in77_r,
            input signed [N-1:0]    in77_i,
            input signed [N-1:0]    in78_r,
            input signed [N-1:0]    in78_i,
            input signed [N-1:0]    in79_r,
            input signed [N-1:0]    in79_i,
            input signed [N-1:0]    in80_r,
            input signed [N-1:0]    in80_i,
            input signed [N-1:0]    in81_r,
            input signed [N-1:0]    in81_i,
            input signed [N-1:0]    in82_r,
            input signed [N-1:0]    in82_i,
            input signed [N-1:0]    in83_r,
            input signed [N-1:0]    in83_i,
            input signed [N-1:0]    in84_r,
            input signed [N-1:0]    in84_i,
            input signed [N-1:0]    in85_r,
            input signed [N-1:0]    in85_i,
            input signed [N-1:0]    in86_r,
            input signed [N-1:0]    in86_i,
            input signed [N-1:0]    in87_r,
            input signed [N-1:0]    in87_i,
            input signed [N-1:0]    in88_r,
            input signed [N-1:0]    in88_i,
            input signed [N-1:0]    in89_r,
            input signed [N-1:0]    in89_i,
            input signed [N-1:0]    in90_r,
            input signed [N-1:0]    in90_i,
            input signed [N-1:0]    in91_r,
            input signed [N-1:0]    in91_i,
            input signed [N-1:0]    in92_r,
            input signed [N-1:0]    in92_i,
            input signed [N-1:0]    in93_r,
            input signed [N-1:0]    in93_i,
            input signed [N-1:0]    in94_r,
            input signed [N-1:0]    in94_i,
            input signed [N-1:0]    in95_r,
            input signed [N-1:0]    in95_i,
            input signed [N-1:0]    in96_r,
            input signed [N-1:0]    in96_i,
            input signed [N-1:0]    in97_r,
            input signed [N-1:0]    in97_i,
            input signed [N-1:0]    in98_r,
            input signed [N-1:0]    in98_i,
            input signed [N-1:0]    in99_r,
            input signed [N-1:0]    in99_i,
            input signed [N-1:0]    in100_r,
            input signed [N-1:0]    in100_i,
            input signed [N-1:0]    in101_r,
            input signed [N-1:0]    in101_i,
            input signed [N-1:0]    in102_r,
            input signed [N-1:0]    in102_i,
            input signed [N-1:0]    in103_r,
            input signed [N-1:0]    in103_i,
            input signed [N-1:0]    in104_r,
            input signed [N-1:0]    in104_i,
            input signed [N-1:0]    in105_r,
            input signed [N-1:0]    in105_i,
            input signed [N-1:0]    in106_r,
            input signed [N-1:0]    in106_i,
            input signed [N-1:0]    in107_r,
            input signed [N-1:0]    in107_i,
            input signed [N-1:0]    in108_r,
            input signed [N-1:0]    in108_i,
            input signed [N-1:0]    in109_r,
            input signed [N-1:0]    in109_i,
            input signed [N-1:0]    in110_r,
            input signed [N-1:0]    in110_i,
            input signed [N-1:0]    in111_r,
            input signed [N-1:0]    in111_i,
            input signed [N-1:0]    in112_r,
            input signed [N-1:0]    in112_i,
            input signed [N-1:0]    in113_r,
            input signed [N-1:0]    in113_i,
            input signed [N-1:0]    in114_r,
            input signed [N-1:0]    in114_i,
            input signed [N-1:0]    in115_r,
            input signed [N-1:0]    in115_i,
            input signed [N-1:0]    in116_r,
            input signed [N-1:0]    in116_i,
            input signed [N-1:0]    in117_r,
            input signed [N-1:0]    in117_i,
            input signed [N-1:0]    in118_r,
            input signed [N-1:0]    in118_i,
            input signed [N-1:0]    in119_r,
            input signed [N-1:0]    in119_i,
            input signed [N-1:0]    in120_r,
            input signed [N-1:0]    in120_i,
            input signed [N-1:0]    in121_r,
            input signed [N-1:0]    in121_i,
            input signed [N-1:0]    in122_r,
            input signed [N-1:0]    in122_i,
            input signed [N-1:0]    in123_r,
            input signed [N-1:0]    in123_i,
            input signed [N-1:0]    in124_r,
            input signed [N-1:0]    in124_i,
            input signed [N-1:0]    in125_r,
            input signed [N-1:0]    in125_i,
            input signed [N-1:0]    in126_r,
            input signed [N-1:0]    in126_i,
            input signed [N-1:0]    in127_r,
            input signed [N-1:0]    in127_i,
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
        output signed [N:0]    out32_r,
        output signed [N:0]    out32_i,
        output signed [N:0]    out33_r,
        output signed [N:0]    out33_i,
        output signed [N:0]    out34_r,
        output signed [N:0]    out34_i,
        output signed [N:0]    out35_r,
        output signed [N:0]    out35_i,
        output signed [N:0]    out36_r,
        output signed [N:0]    out36_i,
        output signed [N:0]    out37_r,
        output signed [N:0]    out37_i,
        output signed [N:0]    out38_r,
        output signed [N:0]    out38_i,
        output signed [N:0]    out39_r,
        output signed [N:0]    out39_i,
        output signed [N:0]    out40_r,
        output signed [N:0]    out40_i,
        output signed [N:0]    out41_r,
        output signed [N:0]    out41_i,
        output signed [N:0]    out42_r,
        output signed [N:0]    out42_i,
        output signed [N:0]    out43_r,
        output signed [N:0]    out43_i,
        output signed [N:0]    out44_r,
        output signed [N:0]    out44_i,
        output signed [N:0]    out45_r,
        output signed [N:0]    out45_i,
        output signed [N:0]    out46_r,
        output signed [N:0]    out46_i,
        output signed [N:0]    out47_r,
        output signed [N:0]    out47_i,
        output signed [N:0]    out48_r,
        output signed [N:0]    out48_i,
        output signed [N:0]    out49_r,
        output signed [N:0]    out49_i,
        output signed [N:0]    out50_r,
        output signed [N:0]    out50_i,
        output signed [N:0]    out51_r,
        output signed [N:0]    out51_i,
        output signed [N:0]    out52_r,
        output signed [N:0]    out52_i,
        output signed [N:0]    out53_r,
        output signed [N:0]    out53_i,
        output signed [N:0]    out54_r,
        output signed [N:0]    out54_i,
        output signed [N:0]    out55_r,
        output signed [N:0]    out55_i,
        output signed [N:0]    out56_r,
        output signed [N:0]    out56_i,
        output signed [N:0]    out57_r,
        output signed [N:0]    out57_i,
        output signed [N:0]    out58_r,
        output signed [N:0]    out58_i,
        output signed [N:0]    out59_r,
        output signed [N:0]    out59_i,
        output signed [N:0]    out60_r,
        output signed [N:0]    out60_i,
        output signed [N:0]    out61_r,
        output signed [N:0]    out61_i,
        output signed [N:0]    out62_r,
        output signed [N:0]    out62_i,
        output signed [N:0]    out63_r,
        output signed [N:0]    out63_i,
        output signed [N:0]    out64_r,
        output signed [N:0]    out64_i,
        output signed [N:0]    out65_r,
        output signed [N:0]    out65_i,
        output signed [N:0]    out66_r,
        output signed [N:0]    out66_i,
        output signed [N:0]    out67_r,
        output signed [N:0]    out67_i,
        output signed [N:0]    out68_r,
        output signed [N:0]    out68_i,
        output signed [N:0]    out69_r,
        output signed [N:0]    out69_i,
        output signed [N:0]    out70_r,
        output signed [N:0]    out70_i,
        output signed [N:0]    out71_r,
        output signed [N:0]    out71_i,
        output signed [N:0]    out72_r,
        output signed [N:0]    out72_i,
        output signed [N:0]    out73_r,
        output signed [N:0]    out73_i,
        output signed [N:0]    out74_r,
        output signed [N:0]    out74_i,
        output signed [N:0]    out75_r,
        output signed [N:0]    out75_i,
        output signed [N:0]    out76_r,
        output signed [N:0]    out76_i,
        output signed [N:0]    out77_r,
        output signed [N:0]    out77_i,
        output signed [N:0]    out78_r,
        output signed [N:0]    out78_i,
        output signed [N:0]    out79_r,
        output signed [N:0]    out79_i,
        output signed [N:0]    out80_r,
        output signed [N:0]    out80_i,
        output signed [N:0]    out81_r,
        output signed [N:0]    out81_i,
        output signed [N:0]    out82_r,
        output signed [N:0]    out82_i,
        output signed [N:0]    out83_r,
        output signed [N:0]    out83_i,
        output signed [N:0]    out84_r,
        output signed [N:0]    out84_i,
        output signed [N:0]    out85_r,
        output signed [N:0]    out85_i,
        output signed [N:0]    out86_r,
        output signed [N:0]    out86_i,
        output signed [N:0]    out87_r,
        output signed [N:0]    out87_i,
        output signed [N:0]    out88_r,
        output signed [N:0]    out88_i,
        output signed [N:0]    out89_r,
        output signed [N:0]    out89_i,
        output signed [N:0]    out90_r,
        output signed [N:0]    out90_i,
        output signed [N:0]    out91_r,
        output signed [N:0]    out91_i,
        output signed [N:0]    out92_r,
        output signed [N:0]    out92_i,
        output signed [N:0]    out93_r,
        output signed [N:0]    out93_i,
        output signed [N:0]    out94_r,
        output signed [N:0]    out94_i,
        output signed [N:0]    out95_r,
        output signed [N:0]    out95_i,
        output signed [N:0]    out96_r,
        output signed [N:0]    out96_i,
        output signed [N:0]    out97_r,
        output signed [N:0]    out97_i,
        output signed [N:0]    out98_r,
        output signed [N:0]    out98_i,
        output signed [N:0]    out99_r,
        output signed [N:0]    out99_i,
        output signed [N:0]    out100_r,
        output signed [N:0]    out100_i,
        output signed [N:0]    out101_r,
        output signed [N:0]    out101_i,
        output signed [N:0]    out102_r,
        output signed [N:0]    out102_i,
        output signed [N:0]    out103_r,
        output signed [N:0]    out103_i,
        output signed [N:0]    out104_r,
        output signed [N:0]    out104_i,
        output signed [N:0]    out105_r,
        output signed [N:0]    out105_i,
        output signed [N:0]    out106_r,
        output signed [N:0]    out106_i,
        output signed [N:0]    out107_r,
        output signed [N:0]    out107_i,
        output signed [N:0]    out108_r,
        output signed [N:0]    out108_i,
        output signed [N:0]    out109_r,
        output signed [N:0]    out109_i,
        output signed [N:0]    out110_r,
        output signed [N:0]    out110_i,
        output signed [N:0]    out111_r,
        output signed [N:0]    out111_i,
        output signed [N:0]    out112_r,
        output signed [N:0]    out112_i,
        output signed [N:0]    out113_r,
        output signed [N:0]    out113_i,
        output signed [N:0]    out114_r,
        output signed [N:0]    out114_i,
        output signed [N:0]    out115_r,
        output signed [N:0]    out115_i,
        output signed [N:0]    out116_r,
        output signed [N:0]    out116_i,
        output signed [N:0]    out117_r,
        output signed [N:0]    out117_i,
        output signed [N:0]    out118_r,
        output signed [N:0]    out118_i,
        output signed [N:0]    out119_r,
        output signed [N:0]    out119_i,
        output signed [N:0]    out120_r,
        output signed [N:0]    out120_i,
        output signed [N:0]    out121_r,
        output signed [N:0]    out121_i,
        output signed [N:0]    out122_r,
        output signed [N:0]    out122_i,
        output signed [N:0]    out123_r,
        output signed [N:0]    out123_i,
        output signed [N:0]    out124_r,
        output signed [N:0]    out124_i,
        output signed [N:0]    out125_r,
        output signed [N:0]    out125_i,
        output signed [N:0]    out126_r,
        output signed [N:0]    out126_i,
        output signed [N:0]    out127_r,
        output signed [N:0]    out127_i,
        output reg done,
        input start,
        output wire signed [18:0] f2out0_r, f2out0_i,
        output wire signed [18:0] f2out1_r, f2out1_i,
        output reg [6:0] stage,
        output reg [6:0] butterfly_count,
        output fft_done, butterfly_done
    );
    
        // States and counters
    //    reg [5:0] stage;
    //    reg [5:0] butterfly_count;
        
        reg fft_start, butterfly_start;
    
        // FFT 8-point output wires and done signals
        wire signed [17:0] fft_out_r [0:63];
        wire signed [17:0] fft_out_i [0:63];
    //    wire fft_done;
    
        // Butterfly output wires
    //    wire signed [18:0] f2out0_r, f2out0_i;
    //    wire signed [18:0] f2out1_r, f2out1_i;
    //    wire butterfly_done;
    
        // Registers to hold intermediate FFT results
        reg signed [17:0] even_r [0:63];
        reg signed [17:0] even_i [0:63];
        reg signed [17:0] odd_r [0:63];
        reg signed [17:0] odd_i [0:63];
        
        reg signed [17:0] fft_in_r [0:63];
        reg signed [17:0] fft_in_i [0:63];
        
        // Declare and directly assign twiddle factor values in arrays
    // Declare twiddle factor arrays
        wire signed [17:0] twiddle_r [0:63];
        wire signed [17:0] twiddle_i [0:63];
        
        // Assign each element of the array individually
        assign twiddle_r[0] = 18'd16384;
        assign twiddle_i[0] = 18'd0;
        assign twiddle_r[1] = 18'd16364;
        assign twiddle_i[1] = -18'd803;
        assign twiddle_r[2] = 18'd16305;
        assign twiddle_i[2] = -18'd1605;
        assign twiddle_r[3] = 18'd16206;
        assign twiddle_i[3] = -18'd2404;
        assign twiddle_r[4] = 18'd16069;
        assign twiddle_i[4] = -18'd3196;
        assign twiddle_r[5] = 18'd15892;
        assign twiddle_i[5] = -18'd3980;
        assign twiddle_r[6] = 18'd15678;
        assign twiddle_i[6] = -18'd4756;
        assign twiddle_r[7] = 18'd15426;
        assign twiddle_i[7] = -18'd5519;
        assign twiddle_r[8] = 18'd15136;
        assign twiddle_i[8] = -18'd6269;
        assign twiddle_r[9] = 18'd14810;
        assign twiddle_i[9] = -18'd7005;
        assign twiddle_r[10] = 18'd14449;
        assign twiddle_i[10] = -18'd7723;
        assign twiddle_r[11] = 18'd14053;
        assign twiddle_i[11] = -18'd8423;
        assign twiddle_r[12] = 18'd13622;
        assign twiddle_i[12] = -18'd9102;
        assign twiddle_r[13] = 18'd13159;
        assign twiddle_i[13] = -18'd9759;
        assign twiddle_r[14] = 18'd12664;
        assign twiddle_i[14] = -18'd10393;
        assign twiddle_r[15] = 18'd12139;
        assign twiddle_i[15] = -18'd11002;
        assign twiddle_r[16] = 18'd11585;
        assign twiddle_i[16] = -18'd11585;
        assign twiddle_r[17] = 18'd11002;
        assign twiddle_i[17] = -18'd12139;
        assign twiddle_r[18] = 18'd10393;
        assign twiddle_i[18] = -18'd12664;
        assign twiddle_r[19] = 18'd9759;
        assign twiddle_i[19] = -18'd13159;
        assign twiddle_r[20] = 18'd9102;
        assign twiddle_i[20] = -18'd13622;
        assign twiddle_r[21] = 18'd8423;
        assign twiddle_i[21] = -18'd14053;
        assign twiddle_r[22] = 18'd7723;
        assign twiddle_i[22] = -18'd14449;
        assign twiddle_r[23] = 18'd7005;
        assign twiddle_i[23] = -18'd14810;
        assign twiddle_r[24] = 18'd6269;
        assign twiddle_i[24] = -18'd15136;
        assign twiddle_r[25] = 18'd5519;
        assign twiddle_i[25] = -18'd15426;
        assign twiddle_r[26] = 18'd4756;
        assign twiddle_i[26] = -18'd15678;
        assign twiddle_r[27] = 18'd3980;
        assign twiddle_i[27] = -18'd15892;
        assign twiddle_r[28] = 18'd3196;
        assign twiddle_i[28] = -18'd16069;
        assign twiddle_r[29] = 18'd2404;
        assign twiddle_i[29] = -18'd16206;
        assign twiddle_r[30] = 18'd1605;
        assign twiddle_i[30] = -18'd16305;
        assign twiddle_r[31] = 18'd803;
        assign twiddle_i[31] = -18'd16364;
        assign twiddle_r[32] = 18'd0;
        assign twiddle_i[32] = -18'd16384;
        assign twiddle_r[33] = -18'd803;
        assign twiddle_i[33] = -18'd16364;
        assign twiddle_r[34] = -18'd1605;
        assign twiddle_i[34] = -18'd16305;
        assign twiddle_r[35] = -18'd2404;
        assign twiddle_i[35] = -18'd16206;
        assign twiddle_r[36] = -18'd3196;
        assign twiddle_i[36] = -18'd16069;
        assign twiddle_r[37] = -18'd3980;
        assign twiddle_i[37] = -18'd15892;
        assign twiddle_r[38] = -18'd4756;
        assign twiddle_i[38] = -18'd15678;
        assign twiddle_r[39] = -18'd5519;
        assign twiddle_i[39] = -18'd15426;
        assign twiddle_r[40] = -18'd6269;
        assign twiddle_i[40] = -18'd15136;
        assign twiddle_r[41] = -18'd7005;
        assign twiddle_i[41] = -18'd14810;
        assign twiddle_r[42] = -18'd7723;
        assign twiddle_i[42] = -18'd14449;
        assign twiddle_r[43] = -18'd8423;
        assign twiddle_i[43] = -18'd14053;
        assign twiddle_r[44] = -18'd9102;
        assign twiddle_i[44] = -18'd13622;
        assign twiddle_r[45] = -18'd9759;
        assign twiddle_i[45] = -18'd13159;
        assign twiddle_r[46] = -18'd10393;
        assign twiddle_i[46] = -18'd12664;
        assign twiddle_r[47] = -18'd11002;
        assign twiddle_i[47] = -18'd12139;
        assign twiddle_r[48] = -18'd11585;
        assign twiddle_i[48] = -18'd11585;
        assign twiddle_r[49] = -18'd12139;
        assign twiddle_i[49] = -18'd11002;
        assign twiddle_r[50] = -18'd12664;
        assign twiddle_i[50] = -18'd10393;
        assign twiddle_r[51] = -18'd13159;
        assign twiddle_i[51] = -18'd9759;
        assign twiddle_r[52] = -18'd13622;
        assign twiddle_i[52] = -18'd9102;
        assign twiddle_r[53] = -18'd14053;
        assign twiddle_i[53] = -18'd8423;
        assign twiddle_r[54] = -18'd14449;
        assign twiddle_i[54] = -18'd7723;
        assign twiddle_r[55] = -18'd14810;
        assign twiddle_i[55] = -18'd7005;
        assign twiddle_r[56] = -18'd15136;
        assign twiddle_i[56] = -18'd6269;
        assign twiddle_r[57] = -18'd15426;
        assign twiddle_i[57] = -18'd5519;
        assign twiddle_r[58] = -18'd15678;
        assign twiddle_i[58] = -18'd4756;
        assign twiddle_r[59] = -18'd15892;
        assign twiddle_i[59] = -18'd3980;
        assign twiddle_r[60] = -18'd16069;
        assign twiddle_i[60] = -18'd3196;
        assign twiddle_r[61] = -18'd16206;
        assign twiddle_i[61] = -18'd2404;
        assign twiddle_r[62] = -18'd16305;
        assign twiddle_i[62] = -18'd1605;
        assign twiddle_r[63] = -18'd16364;
        assign twiddle_i[63] = -18'd803;
        
        
        reg signed [N:0]temp_r[0:127];
        reg signed [N:0]temp_i[0:127];
    
    
    
        // FFT 8-point instance
        fft_64point #(.N(N)) fft_instance (
            .clk(clk),
            .rst(rst),
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
            .in16_r(fft_in_r[16]), .in16_i(fft_in_i[16]),
            .in17_r(fft_in_r[17]), .in17_i(fft_in_i[17]),
            .in18_r(fft_in_r[18]), .in18_i(fft_in_i[18]),
            .in19_r(fft_in_r[19]), .in19_i(fft_in_i[19]),
            .in20_r(fft_in_r[20]), .in20_i(fft_in_i[20]),
            .in21_r(fft_in_r[21]), .in21_i(fft_in_i[21]),
            .in22_r(fft_in_r[22]), .in22_i(fft_in_i[22]),
            .in23_r(fft_in_r[23]), .in23_i(fft_in_i[23]),
            .in24_r(fft_in_r[24]), .in24_i(fft_in_i[24]),
            .in25_r(fft_in_r[25]), .in25_i(fft_in_i[25]),
            .in26_r(fft_in_r[26]), .in26_i(fft_in_i[26]),
            .in27_r(fft_in_r[27]), .in27_i(fft_in_i[27]),
            .in28_r(fft_in_r[28]), .in28_i(fft_in_i[28]),
            .in29_r(fft_in_r[29]), .in29_i(fft_in_i[29]),
            .in30_r(fft_in_r[30]), .in30_i(fft_in_i[30]),
            .in31_r(fft_in_r[31]), .in31_i(fft_in_i[31]),
            .in32_r(fft_in_r[32]), .in32_i(fft_in_i[32]),
            .in33_r(fft_in_r[33]), .in33_i(fft_in_i[33]),
            .in34_r(fft_in_r[34]), .in34_i(fft_in_i[34]),
            .in35_r(fft_in_r[35]), .in35_i(fft_in_i[35]),
            .in36_r(fft_in_r[36]), .in36_i(fft_in_i[36]),
            .in37_r(fft_in_r[37]), .in37_i(fft_in_i[37]),
            .in38_r(fft_in_r[38]), .in38_i(fft_in_i[38]),
            .in39_r(fft_in_r[39]), .in39_i(fft_in_i[39]),
            .in40_r(fft_in_r[40]), .in40_i(fft_in_i[40]),
            .in41_r(fft_in_r[41]), .in41_i(fft_in_i[41]),
            .in42_r(fft_in_r[42]), .in42_i(fft_in_i[42]),
            .in43_r(fft_in_r[43]), .in43_i(fft_in_i[43]),
            .in44_r(fft_in_r[44]), .in44_i(fft_in_i[44]),
            .in45_r(fft_in_r[45]), .in45_i(fft_in_i[45]),
            .in46_r(fft_in_r[46]), .in46_i(fft_in_i[46]),
            .in47_r(fft_in_r[47]), .in47_i(fft_in_i[47]),
            .in48_r(fft_in_r[48]), .in48_i(fft_in_i[48]),
            .in49_r(fft_in_r[49]), .in49_i(fft_in_i[49]),
            .in50_r(fft_in_r[50]), .in50_i(fft_in_i[50]),
            .in51_r(fft_in_r[51]), .in51_i(fft_in_i[51]),
            .in52_r(fft_in_r[52]), .in52_i(fft_in_i[52]),
            .in53_r(fft_in_r[53]), .in53_i(fft_in_i[53]),
            .in54_r(fft_in_r[54]), .in54_i(fft_in_i[54]),
            .in55_r(fft_in_r[55]), .in55_i(fft_in_i[55]),
            .in56_r(fft_in_r[56]), .in56_i(fft_in_i[56]),
            .in57_r(fft_in_r[57]), .in57_i(fft_in_i[57]),
            .in58_r(fft_in_r[58]), .in58_i(fft_in_i[58]),
            .in59_r(fft_in_r[59]), .in59_i(fft_in_i[59]),
            .in60_r(fft_in_r[60]), .in60_i(fft_in_i[60]),
            .in61_r(fft_in_r[61]), .in61_i(fft_in_i[61]),
            .in62_r(fft_in_r[62]), .in62_i(fft_in_i[62]),
            .in63_r(fft_in_r[63]), .in63_i(fft_in_i[63]),
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
            .out16_r(fft_out_r[16]), .out16_i(fft_out_i[16]),
            .out17_r(fft_out_r[17]), .out17_i(fft_out_i[17]),
            .out18_r(fft_out_r[18]), .out18_i(fft_out_i[18]),
            .out19_r(fft_out_r[19]), .out19_i(fft_out_i[19]),
            .out20_r(fft_out_r[20]), .out20_i(fft_out_i[20]),
            .out21_r(fft_out_r[21]), .out21_i(fft_out_i[21]),
            .out22_r(fft_out_r[22]), .out22_i(fft_out_i[22]),
            .out23_r(fft_out_r[23]), .out23_i(fft_out_i[23]),
            .out24_r(fft_out_r[24]), .out24_i(fft_out_i[24]),
            .out25_r(fft_out_r[25]), .out25_i(fft_out_i[25]),
            .out26_r(fft_out_r[26]), .out26_i(fft_out_i[26]),
            .out27_r(fft_out_r[27]), .out27_i(fft_out_i[27]),
            .out28_r(fft_out_r[28]), .out28_i(fft_out_i[28]),
            .out29_r(fft_out_r[29]), .out29_i(fft_out_i[29]),
            .out30_r(fft_out_r[30]), .out30_i(fft_out_i[30]),
            .out31_r(fft_out_r[31]), .out31_i(fft_out_i[31]),
            .out32_r(fft_out_r[32]), .out32_i(fft_out_i[32]),
            .out33_r(fft_out_r[33]), .out33_i(fft_out_i[33]),
            .out34_r(fft_out_r[34]), .out34_i(fft_out_i[34]),
            .out35_r(fft_out_r[35]), .out35_i(fft_out_i[35]),
            .out36_r(fft_out_r[36]), .out36_i(fft_out_i[36]),
            .out37_r(fft_out_r[37]), .out37_i(fft_out_i[37]),
            .out38_r(fft_out_r[38]), .out38_i(fft_out_i[38]),
            .out39_r(fft_out_r[39]), .out39_i(fft_out_i[39]),
            .out40_r(fft_out_r[40]), .out40_i(fft_out_i[40]),
            .out41_r(fft_out_r[41]), .out41_i(fft_out_i[41]),
            .out42_r(fft_out_r[42]), .out42_i(fft_out_i[42]),
            .out43_r(fft_out_r[43]), .out43_i(fft_out_i[43]),
            .out44_r(fft_out_r[44]), .out44_i(fft_out_i[44]),
            .out45_r(fft_out_r[45]), .out45_i(fft_out_i[45]),
            .out46_r(fft_out_r[46]), .out46_i(fft_out_i[46]),
            .out47_r(fft_out_r[47]), .out47_i(fft_out_i[47]),
            .out48_r(fft_out_r[48]), .out48_i(fft_out_i[48]),
            .out49_r(fft_out_r[49]), .out49_i(fft_out_i[49]),
            .out50_r(fft_out_r[50]), .out50_i(fft_out_i[50]),
            .out51_r(fft_out_r[51]), .out51_i(fft_out_i[51]),
            .out52_r(fft_out_r[52]), .out52_i(fft_out_i[52]),
            .out53_r(fft_out_r[53]), .out53_i(fft_out_i[53]),
            .out54_r(fft_out_r[54]), .out54_i(fft_out_i[54]),
            .out55_r(fft_out_r[55]), .out55_i(fft_out_i[55]),
            .out56_r(fft_out_r[56]), .out56_i(fft_out_i[56]),
            .out57_r(fft_out_r[57]), .out57_i(fft_out_i[57]),
            .out58_r(fft_out_r[58]), .out58_i(fft_out_i[58]),
            .out59_r(fft_out_r[59]), .out59_i(fft_out_i[59]),
            .out60_r(fft_out_r[60]), .out60_i(fft_out_i[60]),
            .out61_r(fft_out_r[61]), .out61_i(fft_out_i[61]),
            .out62_r(fft_out_r[62]), .out62_i(fft_out_i[62]),
            .out63_r(fft_out_r[63]), .out63_i(fft_out_i[63]),
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
                            
                            // Real inputs assignments
                            fft_in_r[16] <= in32_r;
                            fft_in_r[17] <= in34_r;
                            fft_in_r[18] <= in36_r;
                            fft_in_r[19] <= in38_r;
                            fft_in_r[20] <= in40_r;
                            fft_in_r[21] <= in42_r;
                            fft_in_r[22] <= in44_r;
                            fft_in_r[23] <= in46_r;
                            fft_in_r[24] <= in48_r;
                            fft_in_r[25] <= in50_r;
                            fft_in_r[26] <= in52_r;
                            fft_in_r[27] <= in54_r;
                            fft_in_r[28] <= in56_r;
                            fft_in_r[29] <= in58_r;
                            fft_in_r[30] <= in60_r;
                            fft_in_r[31] <= in62_r;
                            
                            fft_in_r[32] <= in64_r;
                            fft_in_r[33] <= in66_r;
                            fft_in_r[34] <= in68_r;
                            fft_in_r[35] <= in70_r;
                            fft_in_r[36] <= in72_r;
                            fft_in_r[37] <= in74_r;
                            fft_in_r[38] <= in76_r;
                            fft_in_r[39] <= in78_r;
                            fft_in_r[40] <= in80_r;
                            fft_in_r[41] <= in82_r;
                            fft_in_r[42] <= in84_r;
                            fft_in_r[43] <= in86_r;
                            fft_in_r[44] <= in88_r;
                            fft_in_r[45] <= in90_r;
                            fft_in_r[46] <= in92_r;
                            fft_in_r[47] <= in94_r;
                            fft_in_r[48] <= in96_r;
                            fft_in_r[49] <= in98_r;
                            fft_in_r[50] <= in100_r;
                            fft_in_r[51] <= in102_r;
                            fft_in_r[52] <= in104_r;
                            fft_in_r[53] <= in106_r;
                            fft_in_r[54] <= in108_r;
                            fft_in_r[55] <= in110_r;
                            fft_in_r[56] <= in112_r;
                            fft_in_r[57] <= in114_r;
                            fft_in_r[58] <= in116_r;
                            fft_in_r[59] <= in118_r;
                            fft_in_r[60] <= in120_r;
                            fft_in_r[61] <= in122_r;
                            fft_in_r[62] <= in124_r;
                            fft_in_r[63] <= in126_r;
                            
                            // Imaginary inputs assignments
                            
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
                            
                            // Real inputs assignments
                            fft_in_i[16] <= in32_i;
                            fft_in_i[17] <= in34_i;
                            fft_in_i[18] <= in36_i;
                            fft_in_i[19] <= in38_i;
                            fft_in_i[20] <= in40_i;
                            fft_in_i[21] <= in42_i;
                            fft_in_i[22] <= in44_i;
                            fft_in_i[23] <= in46_i;
                            fft_in_i[24] <= in48_i;
                            fft_in_i[25] <= in50_i;
                            fft_in_i[26] <= in52_i;
                            fft_in_i[27] <= in54_i;
                            fft_in_i[28] <= in56_i;
                            fft_in_i[29] <= in58_i;
                            fft_in_i[30] <= in60_i;
                            fft_in_i[31] <= in62_i;
                            
                            fft_in_i[32] <= in64_i;
                            fft_in_i[33] <= in66_i;
                            fft_in_i[34] <= in68_i;
                            fft_in_i[35] <= in70_i;
                            fft_in_i[36] <= in72_i;
                            fft_in_i[37] <= in74_i;
                            fft_in_i[38] <= in76_i;
                            fft_in_i[39] <= in78_i;
                            fft_in_i[40] <= in80_i;
                            fft_in_i[41] <= in82_i;
                            fft_in_i[42] <= in84_i;
                            fft_in_i[43] <= in86_i;
                            fft_in_i[44] <= in88_i;
                            fft_in_i[45] <= in90_i;
                            fft_in_i[46] <= in92_i;
                            fft_in_i[47] <= in94_i;
                            fft_in_i[48] <= in96_i;
                            fft_in_i[49] <= in98_i;
                            fft_in_i[50] <= in100_i;
                            fft_in_i[51] <= in102_i;
                            fft_in_i[52] <= in104_i;
                            fft_in_i[53] <= in106_i;
                            fft_in_i[54] <= in108_i;
                            fft_in_i[55] <= in110_i;
                            fft_in_i[56] <= in112_i;
                            fft_in_i[57] <= in114_i;
                            fft_in_i[58] <= in116_i;
                            fft_in_i[59] <= in118_i;
                            fft_in_i[60] <= in120_i;
                            fft_in_i[61] <= in122_i;
                            fft_in_i[62] <= in124_i;
                            fft_in_i[63] <= in126_i;
                            
                            
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
                            even_r[8] <= fft_out_r[8];
                            even_i[8] <= fft_out_i[8];
                            
                            even_r[9] <= fft_out_r[9];
                            even_i[9] <= fft_out_i[9];
                            
                            even_r[10] <= fft_out_r[10];
                            even_i[10] <= fft_out_i[10];
                            
                            even_r[11] <= fft_out_r[11];
                            even_i[11] <= fft_out_i[11];
                            
                            even_r[12] <= fft_out_r[12];
                            even_i[12] <= fft_out_i[12];
                            
                            even_r[13] <= fft_out_r[13];
                            even_i[13] <= fft_out_i[13];
                            
                            even_r[14] <= fft_out_r[14];
                            even_i[14] <= fft_out_i[14];
                            
                            even_r[15] <= fft_out_r[15];
                            even_i[15] <= fft_out_i[15];
                            
                            even_r[16] <= fft_out_r[16];
                            even_i[16] <= fft_out_i[16];
                            
                            even_r[17] <= fft_out_r[17];
                            even_i[17] <= fft_out_i[17];
                            
                            even_r[18] <= fft_out_r[18];
                            even_i[18] <= fft_out_i[18];
                            
                            even_r[19] <= fft_out_r[19];
                            even_i[19] <= fft_out_i[19];
                            
                            even_r[20] <= fft_out_r[20];
                            even_i[20] <= fft_out_i[20];
                            
                            even_r[21] <= fft_out_r[21];
                            even_i[21] <= fft_out_i[21];
                            
                            even_r[22] <= fft_out_r[22];
                            even_i[22] <= fft_out_i[22];
                            
                            even_r[23] <= fft_out_r[23];
                            even_i[23] <= fft_out_i[23];
                            
                            even_r[24] <= fft_out_r[24];
                            even_i[24] <= fft_out_i[24];
                            
                            even_r[25] <= fft_out_r[25];
                            even_i[25] <= fft_out_i[25];
                            
                            even_r[26] <= fft_out_r[26];
                            even_i[26] <= fft_out_i[26];
                            
                            even_r[27] <= fft_out_r[27];
                            even_i[27] <= fft_out_i[27];
                            
                            even_r[28] <= fft_out_r[28];
                            even_i[28] <= fft_out_i[28];
                            
                            even_r[29] <= fft_out_r[29];
                            even_i[29] <= fft_out_i[29];
                            
                            even_r[30] <= fft_out_r[30];
                            even_i[30] <= fft_out_i[30];
                            
                            even_r[31] <= fft_out_r[31];
                            even_i[31] <= fft_out_i[31]; // New assignment
                            
                            even_r[32] <= fft_out_r[32];
                            even_i[32] <= fft_out_i[32];

                            even_r[33] <= fft_out_r[33];
                            even_i[33] <= fft_out_i[33];

                            even_r[34] <= fft_out_r[34];
                            even_i[34] <= fft_out_i[34];

                            even_r[35] <= fft_out_r[35];
                            even_i[35] <= fft_out_i[35];

                            even_r[36] <= fft_out_r[36];
                            even_i[36] <= fft_out_i[36];

                            even_r[37] <= fft_out_r[37];
                            even_i[37] <= fft_out_i[37];

                            even_r[38] <= fft_out_r[38];
                            even_i[38] <= fft_out_i[38];

                            even_r[39] <= fft_out_r[39];
                            even_i[39] <= fft_out_i[39];

                            even_r[40] <= fft_out_r[40];
                            even_i[40] <= fft_out_i[40];

                            even_r[41] <= fft_out_r[41];
                            even_i[41] <= fft_out_i[41];

                            even_r[42] <= fft_out_r[42];
                            even_i[42] <= fft_out_i[42];

                            even_r[43] <= fft_out_r[43];
                            even_i[43] <= fft_out_i[43];

                            even_r[44] <= fft_out_r[44];
                            even_i[44] <= fft_out_i[44];

                            even_r[45] <= fft_out_r[45];
                            even_i[45] <= fft_out_i[45];

                            even_r[46] <= fft_out_r[46];
                            even_i[46] <= fft_out_i[46];

                            even_r[47] <= fft_out_r[47];
                            even_i[47] <= fft_out_i[47];

                            even_r[48] <= fft_out_r[48];
                            even_i[48] <= fft_out_i[48];

                            even_r[49] <= fft_out_r[49];
                            even_i[49] <= fft_out_i[49];

                            even_r[50] <= fft_out_r[50];
                            even_i[50] <= fft_out_i[50];

                            even_r[51] <= fft_out_r[51];
                            even_i[51] <= fft_out_i[51];

                            even_r[52] <= fft_out_r[52];
                            even_i[52] <= fft_out_i[52];

                            even_r[53] <= fft_out_r[53];
                            even_i[53] <= fft_out_i[53];

                            even_r[54] <= fft_out_r[54];
                            even_i[54] <= fft_out_i[54];

                            even_r[55] <= fft_out_r[55];
                            even_i[55] <= fft_out_i[55];

                            even_r[56] <= fft_out_r[56];
                            even_i[56] <= fft_out_i[56];

                            even_r[57] <= fft_out_r[57];
                            even_i[57] <= fft_out_i[57];

                            even_r[58] <= fft_out_r[58];
                            even_i[58] <= fft_out_i[58];

                            even_r[59] <= fft_out_r[59];
                            even_i[59] <= fft_out_i[59];

                            even_r[60] <= fft_out_r[60];
                            even_i[60] <= fft_out_i[60];

                            even_r[61] <= fft_out_r[61];
                            even_i[61] <= fft_out_i[61];

                            even_r[62] <= fft_out_r[62];
                            even_i[62] <= fft_out_i[62];

                            even_r[63] <= fft_out_r[63];
                            even_i[63] <= fft_out_i[63];

                            
    
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
                            
                            // Real inputs assignments
                            fft_in_r[16] <= in33_r;
                            fft_in_r[17] <= in35_r;
                            fft_in_r[18] <= in37_r;
                            fft_in_r[19] <= in39_r;
                            fft_in_r[20] <= in41_r;
                            fft_in_r[21] <= in43_r;
                            fft_in_r[22] <= in45_r;
                            fft_in_r[23] <= in47_r;
                            fft_in_r[24] <= in49_r;
                            fft_in_r[25] <= in51_r;
                            fft_in_r[26] <= in53_r;
                            fft_in_r[27] <= in55_r;
                            fft_in_r[28] <= in57_r;
                            fft_in_r[29] <= in59_r;
                            fft_in_r[30] <= in61_r;
                            fft_in_r[31] <= in63_r;
                            
                            fft_in_r[32] <= in65_r;
                            fft_in_r[33] <= in67_r;
                            fft_in_r[34] <= in69_r;
                            fft_in_r[35] <= in71_r;
                            fft_in_r[36] <= in73_r;
                            fft_in_r[37] <= in75_r;
                            fft_in_r[38] <= in77_r;
                            fft_in_r[39] <= in79_r;
                            fft_in_r[40] <= in81_r;
                            fft_in_r[41] <= in83_r;
                            fft_in_r[42] <= in85_r;
                            fft_in_r[43] <= in87_r;
                            fft_in_r[44] <= in89_r;
                            fft_in_r[45] <= in91_r;
                            fft_in_r[46] <= in93_r;
                            fft_in_r[47] <= in95_r;
                            fft_in_r[48] <= in97_r;
                            fft_in_r[49] <= in99_r;
                            fft_in_r[50] <= in101_r;
                            fft_in_r[51] <= in103_r;
                            fft_in_r[52] <= in105_r;
                            fft_in_r[53] <= in107_r;
                            fft_in_r[54] <= in109_r;
                            fft_in_r[55] <= in111_r;
                            fft_in_r[56] <= in113_r;
                            fft_in_r[57] <= in115_r;
                            fft_in_r[58] <= in117_r;
                            fft_in_r[59] <= in119_r;
                            fft_in_r[60] <= in121_r;
                            fft_in_r[61] <= in123_r;
                            fft_in_r[62] <= in125_r;
                            fft_in_r[63] <= in127_r;
                            
                            
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
                            
                            // Real inputs assignments
                            fft_in_i[16] <= in33_i;
                            fft_in_i[17] <= in35_i;
                            fft_in_i[18] <= in37_i;
                            fft_in_i[19] <= in39_i;
                            fft_in_i[20] <= in41_i;
                            fft_in_i[21] <= in43_i;
                            fft_in_i[22] <= in45_i;
                            fft_in_i[23] <= in47_i;
                            fft_in_i[24] <= in49_i;
                            fft_in_i[25] <= in51_i;
                            fft_in_i[26] <= in53_i;
                            fft_in_i[27] <= in55_i;
                            fft_in_i[28] <= in57_i;
                            fft_in_i[29] <= in59_i;
                            fft_in_i[30] <= in61_i;
                            fft_in_i[31] <= in63_i;
                            
                            fft_in_i[32] <= in65_i;
                            fft_in_i[33] <= in67_i;
                            fft_in_i[34] <= in69_i;
                            fft_in_i[35] <= in71_i;
                            fft_in_i[36] <= in73_i;
                            fft_in_i[37] <= in75_i;
                            fft_in_i[38] <= in77_i;
                            fft_in_i[39] <= in79_i;
                            fft_in_i[40] <= in81_i;
                            fft_in_i[41] <= in83_i;
                            fft_in_i[42] <= in85_i;
                            fft_in_i[43] <= in87_i;
                            fft_in_i[44] <= in89_i;
                            fft_in_i[45] <= in91_i;
                            fft_in_i[46] <= in93_i;
                            fft_in_i[47] <= in95_i;
                            fft_in_i[48] <= in97_i;
                            fft_in_i[49] <= in99_i;
                            fft_in_i[50] <= in101_i;
                            fft_in_i[51] <= in103_i;
                            fft_in_i[52] <= in105_i;
                            fft_in_i[53] <= in107_i;
                            fft_in_i[54] <= in109_i;
                            fft_in_i[55] <= in111_i;
                            fft_in_i[56] <= in113_i;
                            fft_in_i[57] <= in115_i;
                            fft_in_i[58] <= in117_i;
                            fft_in_i[59] <= in119_i;
                            fft_in_i[60] <= in121_i;
                            fft_in_i[61] <= in123_i;
                            fft_in_i[62] <= in125_i;
                            fft_in_i[63] <= in127_i;
                            
    
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
                            
                            odd_r[16] <= fft_out_r[16];
                            odd_i[16] <= fft_out_i[16];
                            
                            odd_r[17] <= fft_out_r[17];
                            odd_i[17] <= fft_out_i[17];
                            
                            odd_r[18] <= fft_out_r[18];
                            odd_i[18] <= fft_out_i[18];
                            
                            odd_r[19] <= fft_out_r[19];
                            odd_i[19] <= fft_out_i[19];
                            
                            odd_r[20] <= fft_out_r[20];
                            odd_i[20] <= fft_out_i[20];
                            
                            odd_r[21] <= fft_out_r[21];
                            odd_i[21] <= fft_out_i[21];
                            
                            odd_r[22] <= fft_out_r[22];
                            odd_i[22] <= fft_out_i[22];
                            
                            odd_r[23] <= fft_out_r[23];
                            odd_i[23] <= fft_out_i[23];
                            
                            odd_r[24] <= fft_out_r[24];
                            odd_i[24] <= fft_out_i[24];
                            
                            odd_r[25] <= fft_out_r[25];
                            odd_i[25] <= fft_out_i[25];
                            
                            odd_r[26] <= fft_out_r[26];
                            odd_i[26] <= fft_out_i[26];
                            
                            odd_r[27] <= fft_out_r[27];
                            odd_i[27] <= fft_out_i[27];
                            
                            odd_r[28] <= fft_out_r[28];
                            odd_i[28] <= fft_out_i[28];
                            
                            odd_r[29] <= fft_out_r[29];
                            odd_i[29] <= fft_out_i[29];
                            
                            odd_r[30] <= fft_out_r[30];
                            odd_i[30] <= fft_out_i[30];
                            
                            odd_r[31] <= fft_out_r[31];
                            odd_i[31] <= fft_out_i[31]; // New assignment
                            
                            odd_r[32] <= fft_out_r[32];
                            odd_i[32] <= fft_out_i[32];

                            odd_r[33] <= fft_out_r[33];
                            odd_i[33] <= fft_out_i[33];

                            odd_r[34] <= fft_out_r[34];
                            odd_i[34] <= fft_out_i[34];

                            odd_r[35] <= fft_out_r[35];
                            odd_i[35] <= fft_out_i[35];

                            odd_r[36] <= fft_out_r[36];
                            odd_i[36] <= fft_out_i[36];

                            odd_r[37] <= fft_out_r[37];
                            odd_i[37] <= fft_out_i[37];

                            odd_r[38] <= fft_out_r[38];
                            odd_i[38] <= fft_out_i[38];

                            odd_r[39] <= fft_out_r[39];
                            odd_i[39] <= fft_out_i[39];

                            odd_r[40] <= fft_out_r[40];
                            odd_i[40] <= fft_out_i[40];

                            odd_r[41] <= fft_out_r[41];
                            odd_i[41] <= fft_out_i[41];

                            odd_r[42] <= fft_out_r[42];
                            odd_i[42] <= fft_out_i[42];

                            odd_r[43] <= fft_out_r[43];
                            odd_i[43] <= fft_out_i[43];

                            odd_r[44] <= fft_out_r[44];
                            odd_i[44] <= fft_out_i[44];

                            odd_r[45] <= fft_out_r[45];
                            odd_i[45] <= fft_out_i[45];

                            odd_r[46] <= fft_out_r[46];
                            odd_i[46] <= fft_out_i[46];

                            odd_r[47] <= fft_out_r[47];
                            odd_i[47] <= fft_out_i[47];

                            odd_r[48] <= fft_out_r[48];
                            odd_i[48] <= fft_out_i[48];

                            odd_r[49] <= fft_out_r[49];
                            odd_i[49] <= fft_out_i[49];

                            odd_r[50] <= fft_out_r[50];
                            odd_i[50] <= fft_out_i[50];

                            odd_r[51] <= fft_out_r[51];
                            odd_i[51] <= fft_out_i[51];

                            odd_r[52] <= fft_out_r[52];
                            odd_i[52] <= fft_out_i[52];

                            odd_r[53] <= fft_out_r[53];
                            odd_i[53] <= fft_out_i[53];

                            odd_r[54] <= fft_out_r[54];
                            odd_i[54] <= fft_out_i[54];

                            odd_r[55] <= fft_out_r[55];
                            odd_i[55] <= fft_out_i[55];

                            odd_r[56] <= fft_out_r[56];
                            odd_i[56] <= fft_out_i[56];

                            odd_r[57] <= fft_out_r[57];
                            odd_i[57] <= fft_out_i[57];

                            odd_r[58] <= fft_out_r[58];
                            odd_i[58] <= fft_out_i[58];

                            odd_r[59] <= fft_out_r[59];
                            odd_i[59] <= fft_out_i[59];

                            odd_r[60] <= fft_out_r[60];
                            odd_i[60] <= fft_out_i[60];

                            odd_r[61] <= fft_out_r[61];
                            odd_i[61] <= fft_out_i[61];

                            odd_r[62] <= fft_out_r[62];
                            odd_i[62] <= fft_out_i[62];

                            odd_r[63] <= fft_out_r[63];
                            odd_i[63] <= fft_out_i[63];
                            // Start butterfly operations
                            fft_start <= 0;
                        //    butterfly_start <= 1;
                            stage <= 6'd4;
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
                        temp_r[butterfly_count + 64] <= f2out1_r;
                        temp_i[butterfly_count + 64] <= f2out1_i;
                
                        // Advance butterfly count or finish
                        if (butterfly_count == 6'b111111) begin
                            done <= 1;           // Set done signal when all operations are complete
                            stage <= 6'b000000;          // Reset stage
                        end
                        else begin
                            butterfly_count <= butterfly_count + 1;
                            butterfly_start <= 1;  // Restart butterfly for the next set
//                            stage<= 6;
                        end
                    end
                end
//                    6: begin
//                            butterfly_start <=1;
//                            stage <=5;
//                        if(!butterfly_done) begin
//                            end
//                    end
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
    // Real outputs assignments
    assign out32_r = temp_r[32];
    assign out33_r = temp_r[33];
    assign out34_r = temp_r[34];
    assign out35_r = temp_r[35];
    assign out36_r = temp_r[36];
    assign out37_r = temp_r[37];
    assign out38_r = temp_r[38];
    assign out39_r = temp_r[39];
    assign out40_r = temp_r[40];
    assign out41_r = temp_r[41];
    assign out42_r = temp_r[42];
    assign out43_r = temp_r[43];
    assign out44_r = temp_r[44];
    assign out45_r = temp_r[45];
    assign out46_r = temp_r[46];
    assign out47_r = temp_r[47];
    assign out48_r = temp_r[48];
    assign out49_r = temp_r[49];
    assign out50_r = temp_r[50];
    assign out51_r = temp_r[51];
    assign out52_r = temp_r[52];
    assign out53_r = temp_r[53];
    assign out54_r = temp_r[54];
    assign out55_r = temp_r[55];
    assign out56_r = temp_r[56];
    assign out57_r = temp_r[57];
    assign out58_r = temp_r[58];
    assign out59_r = temp_r[59];
    assign out60_r = temp_r[60];
    assign out61_r = temp_r[61];
    assign out62_r = temp_r[62];
    assign out63_r = temp_r[63];
    
    assign out64_r = temp_r[64];
assign out65_r = temp_r[65];
assign out66_r = temp_r[66];
assign out67_r = temp_r[67];
assign out68_r = temp_r[68];
assign out69_r = temp_r[69];
assign out70_r = temp_r[70];
assign out71_r = temp_r[71];
assign out72_r = temp_r[72];
assign out73_r = temp_r[73];
assign out74_r = temp_r[74];
assign out75_r = temp_r[75];
assign out76_r = temp_r[76];
assign out77_r = temp_r[77];
assign out78_r = temp_r[78];
assign out79_r = temp_r[79];
assign out80_r = temp_r[80];
assign out81_r = temp_r[81];
assign out82_r = temp_r[82];
assign out83_r = temp_r[83];
assign out84_r = temp_r[84];
assign out85_r = temp_r[85];
assign out86_r = temp_r[86];
assign out87_r = temp_r[87];
assign out88_r = temp_r[88];
assign out89_r = temp_r[89];
assign out90_r = temp_r[90];
assign out91_r = temp_r[91];
assign out92_r = temp_r[92];
assign out93_r = temp_r[93];
assign out94_r = temp_r[94];
assign out95_r = temp_r[95];
assign out96_r = temp_r[96];
assign out97_r = temp_r[97];
assign out98_r = temp_r[98];
assign out99_r = temp_r[99];
assign out100_r = temp_r[100];
assign out101_r = temp_r[101];
assign out102_r = temp_r[102];
assign out103_r = temp_r[103];
assign out104_r = temp_r[104];
assign out105_r = temp_r[105];
assign out106_r = temp_r[106];
assign out107_r = temp_r[107];
assign out108_r = temp_r[108];
assign out109_r = temp_r[109];
assign out110_r = temp_r[110];
assign out111_r = temp_r[111];
assign out112_r = temp_r[112];
assign out113_r = temp_r[113];
assign out114_r = temp_r[114];
assign out115_r = temp_r[115];
assign out116_r = temp_r[116];
assign out117_r = temp_r[117];
assign out118_r = temp_r[118];
assign out119_r = temp_r[119];
assign out120_r = temp_r[120];
assign out121_r = temp_r[121];
assign out122_r = temp_r[122];
assign out123_r = temp_r[123];
assign out124_r = temp_r[124];
assign out125_r = temp_r[125];
assign out126_r = temp_r[126];
assign out127_r = temp_r[127];

   
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
// Real outputs assignments
assign out32_i = temp_i[32];
assign out33_i = temp_i[33];
assign out34_i = temp_i[34];
assign out35_i = temp_i[35];
assign out36_i = temp_i[36];
assign out37_i = temp_i[37];
assign out38_i = temp_i[38];
assign out39_i = temp_i[39];
assign out40_i = temp_i[40];
assign out41_i = temp_i[41];
assign out42_i = temp_i[42];
assign out43_i = temp_i[43];
assign out44_i = temp_i[44];
assign out45_i = temp_i[45];
assign out46_i = temp_i[46];
assign out47_i = temp_i[47];
assign out48_i = temp_i[48];
assign out49_i = temp_i[49];
assign out50_i = temp_i[50];
assign out51_i = temp_i[51];
assign out52_i = temp_i[52];
assign out53_i = temp_i[53];
assign out54_i = temp_i[54];
assign out55_i = temp_i[55];
assign out56_i = temp_i[56];
assign out57_i = temp_i[57];
assign out58_i = temp_i[58];
assign out59_i = temp_i[59];
assign out60_i = temp_i[60];
assign out61_i = temp_i[61];
assign out62_i = temp_i[62];
assign out63_i = temp_i[63];

assign out64_i = temp_i[64];
assign out65_i = temp_i[65];
assign out66_i = temp_i[66];
assign out67_i = temp_i[67];
assign out68_i = temp_i[68];
assign out69_i = temp_i[69];
assign out70_i = temp_i[70];
assign out71_i = temp_i[71];
assign out72_i = temp_i[72];
assign out73_i = temp_i[73];
assign out74_i = temp_i[74];
assign out75_i = temp_i[75];
assign out76_i = temp_i[76];
assign out77_i = temp_i[77];
assign out78_i = temp_i[78];
assign out79_i = temp_i[79];
assign out80_i = temp_i[80];
assign out81_i = temp_i[81];
assign out82_i = temp_i[82];
assign out83_i = temp_i[83];
assign out84_i = temp_i[84];
assign out85_i = temp_i[85];
assign out86_i = temp_i[86];
assign out87_i = temp_i[87];
assign out88_i = temp_i[88];
assign out89_i = temp_i[89];
assign out90_i = temp_i[90];
assign out91_i = temp_i[91];
assign out92_i = temp_i[92];
assign out93_i = temp_i[93];
assign out94_i = temp_i[94];
assign out95_i = temp_i[95];
assign out96_i = temp_i[96];
assign out97_i = temp_i[97];
assign out98_i = temp_i[98];
assign out99_i = temp_i[99];
assign out100_i = temp_i[100];
assign out101_i = temp_i[101];
assign out102_i = temp_i[102];
assign out103_i = temp_i[103];
assign out104_i = temp_i[104];
assign out105_i = temp_i[105];
assign out106_i = temp_i[106];
assign out107_i = temp_i[107];
assign out108_i = temp_i[108];
assign out109_i = temp_i[109];
assign out110_i = temp_i[110];
assign out111_i = temp_i[111];
assign out112_i = temp_i[112];
assign out113_i = temp_i[113];
assign out114_i = temp_i[114];
assign out115_i = temp_i[115];
assign out116_i = temp_i[116];
assign out117_i = temp_i[117];
assign out118_i = temp_i[118];
assign out119_i = temp_i[119];
assign out120_i = temp_i[120];
assign out121_i = temp_i[121];
assign out122_i = temp_i[122];
assign out123_i = temp_i[123];
assign out124_i = temp_i[124];
assign out125_i = temp_i[125];
assign out126_i = temp_i[126];
assign out127_i = temp_i[127];       
        
    endmodule
