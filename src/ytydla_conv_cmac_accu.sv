//ytydla_conv_cmac_accu.sv

module ytydla_conv_cmac_accu(ytydla_core_clk,
                             ytydla_core_rst_n,
                             cmac2accu_adder_0,
                             cmac2accu_adder_1,
                             cmac2accu_adder_2,
                             cmac2accu_adder_3,
                             cmac2accu_adder_4,
                             cmac2accu_adder_5,
                             cmac2accu_adder_6,
                             cmac2accu_adder_7,
                             cmac2accu_adder_8,
                             cmac2accu_adder_9,
                             cmac2accu_adder_10,
                             cmac2accu_adder_11,
                             cmac2accu_adder_12,
                             cmac2accu_adder_13,
                             cmac2accu_adder_14,
                             cmac2accu_adder_15,
                             cmac2accu_adder_16,
                             cmac2accu_adder_17,
                             cmac2accu_adder_18,
                             cmac2accu_adder_19,
                             cmac2accu_adder_20,
                             cmac2accu_adder_21,
                             cmac2accu_adder_22,
                             cmac2accu_adder_23,
                             cmac2accu_adder_24,
                             cmac2accu_adder_bitmap,
                             accu2cmac_aggregation);
    input                               ytydla_core_clk;
    input                               ytydla_core_rst_n;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_0;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_1;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_2;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_3;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_4;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_5;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_6;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_7;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_8;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_9;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_10;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_11;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_12;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_13;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_14;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_15;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_16;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_17;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_18;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_19;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_20;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_21;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_22;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_23;
    input    [YTYDLA_DATA_LENGTH - 1:0] cmac2accu_adder_24;
    input    [23:0]                     cmac2accu_adder_bitmap;
    output   [YTYDLA_DATA_LENGTH - 1:0] accu2cmac_aggregation;



    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level1_0;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level1_1;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level1_2;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level1_3;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level1_4;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level1_5;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level1_6;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level1_7;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level1_8;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level1_9;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level1_10;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level1_11;

    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level2_0;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level2_1;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level2_2;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level2_3;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level2_4;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level2_5;

    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level3_0;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level3_1;
    logic   [YTYDLA_DATA_LENGTH - 1:0] accu_level3_2;


    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level1_0 = cmac2accu_adder_0 + cmac2accu_adder_1;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level1_1 = cmac2accu_adder_2 + cmac2accu_adder_3;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level1_2 = cmac2accu_adder_4 + cmac2accu_adder_5;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level1_3 = cmac2accu_adder_6 + cmac2accu_adder_7;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level1_4 = cmac2accu_adder_8 + cmac2accu_adder_9;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level1_5 = cmac2accu_adder_10 + cmac2accu_adder_11;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level1_6 = cmac2accu_adder_12 + cmac2accu_adder_13;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level1_7 = cmac2accu_adder_14 + cmac2accu_adder_15;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level1_8 = cmac2accu_adder_16 + cmac2accu_adder_17;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level1_9 = cmac2accu_adder_18 + cmac2accu_adder_19;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level1_10 = cmac2accu_adder_20 + cmac2accu_adder_21;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level1_11 = cmac2accu_adder_22 + cmac2accu_adder_23;
    end


    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level2_0 = accu_level1_0 + accu_level1_1;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level2_1 = accu_level1_2 + accu_level1_3;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level2_2 = accu_level1_4 + accu_level1_5;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level2_3 = accu_level1_6 + accu_level1_7;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level2_4 = accu_level1_8 + accu_level1_9;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level2_5 = accu_level1_10 + accu_level1_11;
    end


    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level3_0 = accu_level2_0 + accu_level2_1;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level3_1 = accu_level2_2 + accu_level2_3;
    end
    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu_level3_2 = accu_level2_4 + accu_level2_5;
    end

    always_ff   @(posedge ytydla_core_clk or negedge ytydla_core_rst_n) begin
        accu2cmac_aggregation = accu_level3_0 + accu_level3_1 + accu_level3_2;
    end

endmodule
