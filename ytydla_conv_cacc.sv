//ytydla_conv_cacc.sv

`include "ytydla_define.svh"

module ytydla_conv_cacc(ytydla_core_clk,
                        ytydla_core_rst_n,
                        cmac2cacc_dat_0,
                        cmac2cacc_dat_1,
                        cmac2cacc_dat_2,
                        cmac2cacc_dat_3,
                        cmac2cacc_dat_4,
                        cmac2cacc_dat_5,
                        cmac2cacc_dat_6,
                        cmac2cacc_dat_7,
                        cmac2cacc_dat_8,
                        cmac2cacc_dat_9,
                        cmac2cacc_dat_10,
                        cmac2cacc_dat_11,
                        cmac2cacc_dat_12,
                        cmac2cacc_dat_13,
                        cmac2cacc_dat_14,
                        cmac2cacc_dat_15,
                        cmac2cacc_dat_bitmap,
                        mem2cacc_bias,
                        cacc2cact_dat,
                        cacc2cact_valid);
    input           [`YTYDLA_DATA_LENGTH - 1:0]     cmac2cacc_dat_0;
    input           [`YTYDLA_DATA_LENGTH - 1:0]     cmac2cacc_dat_1;
    input           [`YTYDLA_DATA_LENGTH - 1:0]     cmac2cacc_dat_2;
    input           [`YTYDLA_DATA_LENGTH - 1:0]     cmac2cacc_dat_3;
    input           [`YTYDLA_DATA_LENGTH - 1:0]     cmac2cacc_dat_4;
    input           [`YTYDLA_DATA_LENGTH - 1:0]     cmac2cacc_dat_5;
    input           [`YTYDLA_DATA_LENGTH - 1:0]     cmac2cacc_dat_6;
    input           [`YTYDLA_DATA_LENGTH - 1:0]     cmac2cacc_dat_7;
    input           [`YTYDLA_DATA_LENGTH - 1:0]     cmac2cacc_dat_8;
    input           [`YTYDLA_DATA_LENGTH - 1:0]     cmac2cacc_dat_9;
    input           [`YTYDLA_DATA_LENGTH - 1:0]     cmac2cacc_dat_10;
    input           [`YTYDLA_DATA_LENGTH - 1:0]     cmac2cacc_dat_11;
    input           [`YTYDLA_DATA_LENGTH - 1:0]     cmac2cacc_dat_12;
    input           [`YTYDLA_DATA_LENGTH - 1:0]     cmac2cacc_dat_13;
    input           [`YTYDLA_DATA_LENGTH - 1:0]     cmac2cacc_dat_14;
    input           [`YTYDLA_DATA_LENGTH - 1:0]     cmac2cacc_dat_15;
    input           [15:0]                          cmac2cacc_dat_bitmap;
    input           [`YTYDLA_DATA_LENGTH - 1:0]     mem2cacc_bias;
    output  logic   [`YTYDLA_DATA_LENGTH - 1:0]     cacc2cact_dat;
    output  logic                                   cacc2cact_valid;

    logic       [`YTYDLA_DATA_LENGTH - 1:0]         in_data_0;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         in_data_1;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         in_data_2;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         in_data_3;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         in_data_4;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         in_data_5;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         in_data_6;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         in_data_7;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         in_data_8;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         in_data_9;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         in_data_10;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         in_data_11;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         in_data_12;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         in_data_13;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         in_data_14;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         in_data_15;

    logic       [`YTYDLA_DATA_LENGTH - 1:0]         sum_level1_0;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         sum_level1_1;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         sum_level1_2;
    logic       [`YTYDLA_DATA_LENGTH - 1:0]         sum_level1_3;


    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            in_data_0 <= 0;
        end
        else begin
            if (cmac2cacc_data_bitmap[0]) begin
                in_data_0 <= cmac2cacc_dat_0;
            end
            else begin
                in_data_0 <= 0;
            end
        end
    end
    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            in_data_1 <= 0;
        end
        else begin
            if (cmac2cacc_data_bitmap[1]) begin
                in_data_1 <= cmac2cacc_dat_1;
            end
            else begin
                in_data_1 <= 0;
            end
        end
    end
    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            in_data_2 <= 0;
        end
        else begin
            if (cmac2cacc_data_bitmap[2]) begin
                in_data_2 <= cmac2cacc_dat_2;
            end
            else begin
                in_data_2 <= 0;
            end
        end
    end
    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            in_data_3 <= 0;
        end
        else begin
            if (cmac2cacc_data_bitmap[3]) begin
                in_data_3 <= cmac2cacc_dat_3;
            end
            else begin
                in_data_3 <= 0;
            end
        end
    end
    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            in_data_4 <= 0;
        end
        else begin
            if (cmac2cacc_data_bitmap[4]) begin
                in_data_4 <= cmac2cacc_dat_4;
            end
            else begin
                in_data_4 <= 0;
            end
        end
    end
    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            in_data_5 <= 0;
        end
        else begin
            if (cmac2cacc_data_bitmap[5]) begin
                in_data_5 <= cmac2cacc_dat_5;
            end
            else begin
                in_data_5 <= 0;
            end
        end
    end
    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            in_data_6 <= 0;
        end
        else begin
            if (cmac2cacc_data_bitmap[6]) begin
                in_data_6 <= cmac2cacc_dat_6;
            end
            else begin
                in_data_6 <= 0;
            end
        end
    end
    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            in_data_7 <= 0;
        end
        else begin
            if (cmac2cacc_data_bitmap[7]) begin
                in_data_7 <= cmac2cacc_dat_7;
            end
            else begin
                in_data_7 <= 0;
            end
        end
    end
    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            in_data_8 <= 0;
        end
        else begin
            if (cmac2cacc_data_bitmap[8]) begin
                in_data_8 <= cmac2cacc_dat_8;
            end
            else begin
                in_data_8 <= 0;
            end
        end
    end
    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            in_data_9 <= 0;
        end
        else begin
            if (cmac2cacc_data_bitmap[9]) begin
                in_data_9 <= cmac2cacc_dat_9;
            end
            else begin
                in_data_9 <= 0;
            end
        end
    end
    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            in_data_10 <= 0;
        end
        else begin
            if (cmac2cacc_data_bitmap[10]) begin
                in_data_10 <= cmac2cacc_dat_10;
            end
            else begin
                in_data_10 <= 0;
            end
        end
    end
    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            in_data_11 <= 0;
        end
        else begin
            if (cmac2cacc_data_bitmap[11]) begin
                in_data_11 <= cmac2cacc_dat_11;
            end
            else begin
                in_data_11 <= 0;
            end
        end
    end
    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            in_data_12 <= 0;
        end
        else begin
            if (cmac2cacc_data_bitmap[12]) begin
                in_data_12 <= cmac2cacc_dat_12;
            end
            else begin
                in_data_12 <= 0;
            end
        end
    end
    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            in_data_13 <= 0;
        end
        else begin
            if (cmac2cacc_data_bitmap[13]) begin
                in_data_13 <= cmac2cacc_dat_13;
            end
            else begin
                in_data_13 <= 0;
            end
        end
    end
    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            in_data_14 <= 0;
        end
        else begin
            if (cmac2cacc_data_bitmap[14]) begin
                in_data_14 <= cmac2cacc_dat_14;
            end
            else begin
                in_data_14 <= 0;
            end
        end
    end
    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            in_data_15 <= 0;
        end
        else begin
            if (cmac2cacc_data_bitmap[15]) begin
                in_data_15 <= cmac2cacc_dat_15;
            end
            else begin
                in_data_15 <= 0;
            end
        end
    end

    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            sum_level1_0 <= 0;
            sum_level1_1 <= 0;
            sum_level1_2 <= 0;
            sum_level1_3 <= 0;
        end
        else begin
            sum_level1_0 <= cmac2cacc_dat_0 + cmac2cacc_dat_1 + cmac2cacc_dat_2 + cmac2cacc_dat_3;
            sum_level1_1 <= cmac2cacc_dat_4 + cmac2cacc_dat_5 + cmac2cacc_dat_6 + cmac2cacc_dat_7;
            sum_level1_2 <= cmac2cacc_dat_8 + cmac2cacc_dat_9 + cmac2cacc_dat_10 + cmac2cacc_dat_11;
            sum_level1_3 <= cmac2cacc_dat_12 + cmac2cacc_dat_13 + cmac2cacc_dat_14 + cmac2cacc_dat_15;
        end
    end

    always_ff @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        if (~ytydla_core_rst_n) begin
            cacc2cact_dat <= 0;
        end
        else begin
            cacc2cact_dat <= sum_level1_0 + sum_level1_1 + sum_level1_2 + sum_level1_3;
        end
    end
endmodule
