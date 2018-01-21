// ytydla_conv_cmac.sv
`include "ytydla_define.svh"

module ytydla_conv_cmac(ls2cmac_dat0,
                        ls2cmac_dat1,
                        ls2cmac_dat2,
                        ls2cmac_dat3,
                        ls2cmac_dat4,
                        ls2cmac_dat5,
                        ls2cmac_dat6,
                        ls2cmac_dat7,
                        ls2cmac_dat8,
                        ls2cmac_dat9,
                        ls2cmac_dat10,
                        ls2cmac_dat11,
                        ls2cmac_dat12,
                        ls2cmac_dat13,
                        ls2cmac_dat14,
                        ls2cmac_dat15,
                        ls2cmac_dat16,
                        ls2cmac_dat17,
                        ls2cmac_dat18,
                        ls2cmac_dat19,
                        ls2cmac_dat20,
                        ls2cmac_dat21,
                        ls2cmac_dat22,
                        ls2cmac_dat23,
                        ls2cmac_dat24,
                        ls2cmac_dat_bitmap,
                        ls2cmac_wt0,
                        ls2cmac_wt1,
                        ls2cmac_wt2,
                        ls2cmac_wt3,
                        ls2cmac_wt4,
                        ls2cmac_wt5,
                        ls2cmac_wt6,
                        ls2cmac_wt7,
                        ls2cmac_wt8,
                        ls2cmac_wt9,
                        ls2cmac_wt10,
                        ls2cmac_wt11,
                        ls2cmac_wt12,
                        ls2cmac_wt13,
                        ls2cmac_wt14,
                        ls2cmac_wt15,
                        ls2cmac_wt16,
                        ls2cmac_wt17,
                        ls2cmac_wt18,
                        ls2cmac_wt19,
                        ls2cmac_wt20,
                        ls2cmac_wt21,
                        ls2cmac_wt22,
                        ls2cmac_wt23,
                        ls2cmac_wt24,
                        ls2cmac_wt_bitmap,
                        ls2cmac_result);
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat0;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat1;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat2;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat3;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat4;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat5;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat6;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat7;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat8;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat9;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat10;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat11;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat12;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat13;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat14;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat15;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat16;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat17;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat18;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat19;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat20;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat21;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat22;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat23;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_dat24;
    input       [24:0]                       ls2cmac_dat_bitmap;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt0;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt1;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt2;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt3;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt4;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt5;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt6;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt7;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt8;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt9;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt10;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt11;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt12;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt13;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt14;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt15;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt16;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt17;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt18;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt19;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt20;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt21;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt22;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt23;
    input       [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_wt24;
    input       [24:0]                       ls2cmac_wt_bitmap;
    output      [YTYDLA_DATA_LENGTH * 25 - 1:0]  cmac2ls_result;


    logic         [YTYDLA_DATA_LENGTH - 1:0]  ls2cmac_result;

    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat0;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat1;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat2;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat3;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat4;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat5;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat6;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat7;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat8;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat9;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat10;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat11;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat12;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat13;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat14;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat15;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat16;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat17;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat18;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat19;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat20;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat21;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat22;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat23;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_dat24;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt0;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt1;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt2;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt3;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt4;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt5;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt6;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt7;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt8;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt9;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt10;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt11;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt12;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt13;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt14;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt15;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt16;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt17;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt18;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt19;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt20;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt21;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt22;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt23;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_wt24;

    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result0;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result1;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result2;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result3;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result4;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result5;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result6;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result7;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result8;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result9;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result10;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result11;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result12;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result13;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result14;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result15;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result16;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result17;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result18;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result19;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result20;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result21;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result22;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result23;
    logic         [YTYDLA_DATA_LENGTH - 1:0]  cmac_result24;

    logic           [24:0]                    cmac_accu_bitmap;
    
    assign  cmac2ls_result = {cmac_result0,
        cmac_result1,
        cmac_result2,
        cmac_result3,
        cmac_result4,
        cmac_result5,
        cmac_result6,
        cmac_result7,
        cmac_result8,
        cmac_result9,
        cmac_result10,
        cmac_result11,
        cmac_result12,
        cmac_result13,
        cmac_result14,
        cmac_result15,
        cmac_result16,
        cmac_result17,
        cmac_result18,
        cmac_result19,
        cmac_result20,
        cmac_result21,
        cmac_result22,
        cmac_result23,
        cmac_result24};

always_comb @(ls2cmac_dat_bitmap,
              ls2cmac_dat0,
              ls2cmac_dat1,
              ls2cmac_dat2,
              ls2cmac_dat3,
              ls2cmac_dat4,
              ls2cmac_dat5,
              ls2cmac_dat6,
              ls2cmac_dat7,
              ls2cmac_dat8,
              ls2cmac_dat9,
              ls2cmac_dat10,
              ls2cmac_dat11,
              ls2cmac_dat12,
              ls2cmac_dat13,
              ls2cmac_dat14,
              ls2cmac_dat15,
              ls2cmac_dat16,
              ls2cmac_dat17,
              ls2cmac_dat18,
              ls2cmac_dat19,
              ls2cmac_dat20,
              ls2cmac_dat21,
              ls2cmac_dat22,
              ls2cmac_dat23,
              ls2cmac_dat24,
              ls2cmac_wt0,
              ls2cmac_wt1,
              ls2cmac_wt2,
              ls2cmac_wt3,
              ls2cmac_wt4,
              ls2cmac_wt5,
              ls2cmac_wt6,
              ls2cmac_wt7,
              ls2cmac_wt8,
              ls2cmac_wt9,
              ls2cmac_wt10,
              ls2cmac_wt11,
              ls2cmac_wt12,
              ls2cmac_wt13,
              ls2cmac_wt14,
              ls2cmac_wt15,
              ls2cmac_wt16,
              ls2cmac_wt17,
              ls2cmac_wt18,
              ls2cmac_wt19,
              ls2cmac_wt20,
              ls2cmac_wt21,
              ls2cmac_wt22,
              ls2cmac_wt23,
              ls2cmac_wt24,
              ls2cmac_wt_bitmap) begin
                  cmac_dat0 = ls2cmac_dat_bitmap[0] ? ls2cmac_dat0 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat1 = ls2cmac_dat_bitmap[1] ? ls2cmac_dat1 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat2 = ls2cmac_dat_bitmap[2] ? ls2cmac_dat2 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat3 = ls2cmac_dat_bitmap[3] ? ls2cmac_dat3 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat4 = ls2cmac_dat_bitmap[4] ? ls2cmac_dat4 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat5 = ls2cmac_dat_bitmap[5] ? ls2cmac_dat5 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat6 = ls2cmac_dat_bitmap[6] ? ls2cmac_dat6 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat7 = ls2cmac_dat_bitmap[7] ? ls2cmac_dat7 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat8 = ls2cmac_dat_bitmap[8] ? ls2cmac_dat8 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat9 = ls2cmac_dat_bitmap[9] ? ls2cmac_dat9 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat10 = ls2cmac_dat_bitmap[10] ? ls2cmac_dat10 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat11 = ls2cmac_dat_bitmap[11] ? ls2cmac_dat11 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat12 = ls2cmac_dat_bitmap[12] ? ls2cmac_dat12 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat13 = ls2cmac_dat_bitmap[13] ? ls2cmac_dat13 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat14 = ls2cmac_dat_bitmap[14] ? ls2cmac_dat14 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat15 = ls2cmac_dat_bitmap[15] ? ls2cmac_dat15 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat16 = ls2cmac_dat_bitmap[16] ? ls2cmac_dat16 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat17 = ls2cmac_dat_bitmap[17] ? ls2cmac_dat17 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat18 = ls2cmac_dat_bitmap[18] ? ls2cmac_dat18 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat19 = ls2cmac_dat_bitmap[19] ? ls2cmac_dat19 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat20 = ls2cmac_dat_bitmap[20] ? ls2cmac_dat20 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat21 = ls2cmac_dat_bitmap[21] ? ls2cmac_dat21 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat22 = ls2cmac_dat_bitmap[22] ? ls2cmac_dat22 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat23 = ls2cmac_dat_bitmap[23] ? ls2cmac_dat23 : YTYDLA_DATA_LENGTH'b0;
                  cmac_dat24 = ls2cmac_dat_bitmap[24] ? ls2cmac_dat24 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt0 = ls2cmac_wt_bitmap[0] ? ls2cmac_wt0 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt1 = ls2cmac_wt_bitmap[1] ? ls2cmac_wt1 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt2 = ls2cmac_wt_bitmap[2] ? ls2cmac_wt2 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt3 = ls2cmac_wt_bitmap[3] ? ls2cmac_wt3 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt4 = ls2cmac_wt_bitmap[4] ? ls2cmac_wt4 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt5 = ls2cmac_wt_bitmap[5] ? ls2cmac_wt5 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt6 = ls2cmac_wt_bitmap[6] ? ls2cmac_wt6 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt7 = ls2cmac_wt_bitmap[7] ? ls2cmac_wt7 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt8 = ls2cmac_wt_bitmap[8] ? ls2cmac_wt8 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt9 = ls2cmac_wt_bitmap[9] ? ls2cmac_wt9 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt10 = ls2cmac_wt_bitmap[10] ? ls2cmac_wt10 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt11 = ls2cmac_wt_bitmap[11] ? ls2cmac_wt11 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt12 = ls2cmac_wt_bitmap[12] ? ls2cmac_wt12 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt13 = ls2cmac_wt_bitmap[13] ? ls2cmac_wt13 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt14 = ls2cmac_wt_bitmap[14] ? ls2cmac_wt14 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt15 = ls2cmac_wt_bitmap[15] ? ls2cmac_wt15 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt16 = ls2cmac_wt_bitmap[16] ? ls2cmac_wt16 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt17 = ls2cmac_wt_bitmap[17] ? ls2cmac_wt17 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt18 = ls2cmac_wt_bitmap[18] ? ls2cmac_wt18 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt19 = ls2cmac_wt_bitmap[19] ? ls2cmac_wt19 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt20 = ls2cmac_wt_bitmap[20] ? ls2cmac_wt20 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt21 = ls2cmac_wt_bitmap[21] ? ls2cmac_wt21 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt22 = ls2cmac_wt_bitmap[22] ? ls2cmac_wt22 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt23 = ls2cmac_wt_bitmap[23] ? ls2cmac_wt23 : YTYDLA_DATA_LENGTH'b0;
                  cmac_wt24 = ls2cmac_wt_bitmap[24] ? ls2cmac_wt24 : YTYDLA_DATA_LENGTH'b0;
              end
ytydla_conv_cmac_mul    cmac_mul0(
                                                .data   cmac_dat0
                                                .weight cmac_wt0,
                                                .result cmac_result0);
ytydla_conv_cmac_mul    cmac_mul1(
                                                .data   cmac_dat1
                                                .weight cmac_wt1,
                                                .result cmac_result1);
ytydla_conv_cmac_mul    cmac_mul2(
                                                .data   cmac_dat2
                                                .weight cmac_wt2,
                                                .result cmac_result2);
ytydla_conv_cmac_mul    cmac_mul3(
                                                .data   cmac_dat3
                                                .weight cmac_wt3,
                                                .result cmac_result3);
ytydla_conv_cmac_mul    cmac_mul4(
                                                .data   cmac_dat4
                                                .weight cmac_wt4,
                                                .result cmac_result4);
ytydla_conv_cmac_mul    cmac_mul5(
                                                .data   cmac_dat5
                                                .weight cmac_wt5,
                                                .result cmac_result5);
ytydla_conv_cmac_mul    cmac_mul6(
                                                .data   cmac_dat6
                                                .weight cmac_wt6,
                                                .result cmac_result6);
ytydla_conv_cmac_mul    cmac_mul7(
                                                .data   cmac_dat7
                                                .weight cmac_wt7,
                                                .result cmac_result7);
ytydla_conv_cmac_mul    cmac_mul8(
                                                .data   cmac_dat8
                                                .weight cmac_wt8,
                                                .result cmac_result8);
ytydla_conv_cmac_mul    cmac_mul9(
                                                .data   cmac_dat9
                                                .weight cmac_wt9,
                                                .result cmac_result9);
ytydla_conv_cmac_mul    cmac_mul10(
                                                .data   cmac_dat10
                                                .weight cmac_wt10,
                                                .result cmac_result10);
ytydla_conv_cmac_mul    cmac_mul11(
                                                .data   cmac_dat11
                                                .weight cmac_wt11,
                                                .result cmac_result11);
ytydla_conv_cmac_mul    cmac_mul12(
                                                .data   cmac_dat12
                                                .weight cmac_wt12,
                                                .result cmac_result12);
ytydla_conv_cmac_mul    cmac_mul13(
                                                .data   cmac_dat13
                                                .weight cmac_wt13,
                                                .result cmac_result13);
ytydla_conv_cmac_mul    cmac_mul14(
                                                .data   cmac_dat14
                                                .weight cmac_wt14,
                                                .result cmac_result14);
ytydla_conv_cmac_mul    cmac_mul15(
                                                .data   cmac_dat15
                                                .weight cmac_wt15,
                                                .result cmac_result15);
ytydla_conv_cmac_mul    cmac_mul16(
                                                .data   cmac_dat16
                                                .weight cmac_wt16,
                                                .result cmac_result16);
ytydla_conv_cmac_mul    cmac_mul17(
                                                .data   cmac_dat17
                                                .weight cmac_wt17,
                                                .result cmac_result17);
ytydla_conv_cmac_mul    cmac_mul18(
                                                .data   cmac_dat18
                                                .weight cmac_wt18,
                                                .result cmac_result18);
ytydla_conv_cmac_mul    cmac_mul19(
                                                .data   cmac_dat19
                                                .weight cmac_wt19,
                                                .result cmac_result19);
ytydla_conv_cmac_mul    cmac_mul20(
                                                .data   cmac_dat20
                                                .weight cmac_wt20,
                                                .result cmac_result20);
ytydla_conv_cmac_mul    cmac_mul21(
                                                .data   cmac_dat21
                                                .weight cmac_wt21,
                                                .result cmac_result21);
ytydla_conv_cmac_mul    cmac_mul22(
                                                .data   cmac_dat22
                                                .weight cmac_wt22,
                                                .result cmac_result22);
ytydla_conv_cmac_mul    cmac_mul23(
                                                .data   cmac_dat23
                                                .weight cmac_wt23,
                                                .result cmac_result23);
ytydla_conv_cmac_mul    cmac_mul24(
                                                .data   cmac_dat24
                                                .weight cmac_wt24,
                                                .result cmac_result24);

ytydla_conv_cmac_accu   cmac_accu(
    .cmac2accu_adder_0  cmac_result0,
    .cmac2accu_adder_1  cmac_result1,
    .cmac2accu_adder_2  cmac_result2,
    .cmac2accu_adder_3  cmac_result3,
    .cmac2accu_adder_4  cmac_result4,
    .cmac2accu_adder_5  cmac_result5,
    .cmac2accu_adder_6  cmac_result6,
    .cmac2accu_adder_7  cmac_result7,
    .cmac2accu_adder_8  cmac_result8,
    .cmac2accu_adder_9  cmac_result9,
    .cmac2accu_adder_10  cmac_result10,
    .cmac2accu_adder_11  cmac_result11,
    .cmac2accu_adder_12  cmac_result12,
    .cmac2accu_adder_13  cmac_result13,
    .cmac2accu_adder_14  cmac_result14,
    .cmac2accu_adder_15  cmac_result15,
    .cmac2accu_adder_16  cmac_result16,
    .cmac2accu_adder_17  cmac_result17,
    .cmac2accu_adder_18  cmac_result18,
    .cmac2accu_adder_19  cmac_result19,
    .cmac2accu_adder_20  cmac_result20,
    .cmac2accu_adder_21  cmac_result21,
    .cmac2accu_adder_22  cmac_result22,
    .cmac2accu_adder_23  cmac_result23,
    .cmac2accu_adder_24  cmac_result24,
    .cmac2accu_adder_bitmap cmac_accu_bitmap,
    .cmac2accu_adder_result cmac2ls_result);




endmodule
