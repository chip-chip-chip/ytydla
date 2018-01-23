//ytydla.sv


module ytydla_tb();
    integer i;
    logic   ytydla_core_clk;
    logic   ytydla_core_rst_n;
    logic   [7:0] memory_byte[0:65535];
    logic [31:0] memory[0:16383];
    logic [31:0] data_size = 25;
    logic   [31:0] ytydla_output;


    initial begin
        $readmemh("data/memory.lists", memory_byte);
        for (i = 0; i < 16384; i++) begin
            memory[i] = {memory_byte[i * 4 + 3], memory_byte[i * 4 + 2], memory_byte[i * 4 + 1], memory_byte[i * 4]};
        end
        ytydla_core_clk = 0;
        ytydla_core_rst_n = 0;
        #1 ytydla_core_rst_n = 1;
        for (i = 0; i < 100; i = i + 1)begin
            #1 ytydla_core_clk = ~ytydla_core_clk;
        end
        $display("Result: %d\n", ytydla_output);
        $finish();
    end


    ytydla_cmac cmac_0(.ytydla_core_clk     (ytydla_core_clk),
                       .ytydla_core_rst_n   (ytydla_core_rst_n),
                       .mem2cmac_dat_0      (memory[202]),
                       .mem2cmac_dat_1      (memory[203]),
                       .mem2cmac_dat_2      (memory[204]),
                       .mem2cmac_dat_3      (memory[205]),
                       .mem2cmac_dat_4      (memory[206]),
                       .mem2cmac_dat_5      (memory[207]),
                       .mem2cmac_dat_6      (memory[208]),
                       .mem2cmac_dat_7      (memory[209]),
                       .mem2cmac_dat_8      (memory[210]),
                       .mem2cmac_dat_9      (memory[211]),
                       .mem2cmac_dat_10      (memory[212]),
                       .mem2cmac_dat_11      (memory[213]),
                       .mem2cmac_dat_12      (memory[214]),
                       .mem2cmac_dat_13      (memory[215]),
                       .mem2cmac_dat_14      (memory[216]),
                       .mem2cmac_dat_15      (memory[217]),
                       .mem2cmac_dat_16      (memory[218]),
                       .mem2cmac_dat_17      (memory[219]),
                       .mem2cmac_dat_18      (memory[220]),
                       .mem2cmac_dat_19      (memory[221]),
                       .mem2cmac_dat_20      (memory[222]),
                       .mem2cmac_dat_21      (memory[223]),
                       .mem2cmac_dat_22      (memory[224]),
                       .mem2cmac_dat_23      (memory[225]),
                       .mem2cmac_dat_24      (memory[226]),
                       .mem2cmac_dat_25      (),
                       .mem2cmac_dat_26      (),
                       .mem2cmac_dat_27      (),
                       .mem2cmac_dat_28      (),
                       .mem2cmac_dat_29      (),
                       .mem2cmac_dat_30      (),
                       .mem2cmac_dat_31      (),
                       .mem2cmac_dat_32      (),
                       .mem2cmac_dat_33      (),
                       .mem2cmac_dat_34      (),
                       .mem2cmac_dat_35      (),
                       .mem2cmac_dat_36      (),
                       .mem2cmac_dat_37      (),
                       .mem2cmac_dat_38      (),
                       .mem2cmac_dat_39      (),
                       .mem2cmac_dat_40      (),
                       .mem2cmac_dat_41      (),
                       .mem2cmac_dat_42      (),
                       .mem2cmac_dat_43      (),
                       .mem2cmac_dat_44      (),
                       .mem2cmac_dat_45      (),
                       .mem2cmac_dat_46      (),
                       .mem2cmac_dat_47      (),
                       .mem2cmac_dat_48      (),
                       .mem2cmac_dat_49      (),
                       .mem2cmac_dat_50      (),
                       .mem2cmac_dat_51      (),
                       .mem2cmac_dat_52      (),
                       .mem2cmac_dat_53      (),
                       .mem2cmac_dat_54      (),
                       .mem2cmac_dat_55      (),
                       .mem2cmac_dat_56      (),
                       .mem2cmac_dat_57      (),
                       .mem2cmac_dat_58      (),
                       .mem2cmac_dat_59      (),
                       .mem2cmac_dat_60      (),
                       .mem2cmac_dat_61      (),
                       .mem2cmac_dat_62      (),
                       .mem2cmac_dat_63      (),
                       .mem2cmac_dat_size    (data_size),
                       .mem2cmac_wt_0      (memory[784]),
                       .mem2cmac_wt_1      (memory[785]),
                       .mem2cmac_wt_2      (memory[786]),
                       .mem2cmac_wt_3      (memory[787]),
                       .mem2cmac_wt_4      (memory[788]),
                       .mem2cmac_wt_5      (memory[789]),
                       .mem2cmac_wt_6      (memory[790]),
                       .mem2cmac_wt_7      (memory[791]),
                       .mem2cmac_wt_8      (memory[792]),
                       .mem2cmac_wt_9      (memory[793]),
                       .mem2cmac_wt_10      (memory[794]),
                       .mem2cmac_wt_11      (memory[795]),
                       .mem2cmac_wt_12      (memory[796]),
                       .mem2cmac_wt_13      (memory[797]),
                       .mem2cmac_wt_14      (memory[798]),
                       .mem2cmac_wt_15      (memory[799]),
                       .mem2cmac_wt_16      (memory[800]),
                       .mem2cmac_wt_17      (memory[801]),
                       .mem2cmac_wt_18      (memory[802]),
                       .mem2cmac_wt_19      (memory[803]),
                       .mem2cmac_wt_20      (memory[804]),
                       .mem2cmac_wt_21      (memory[805]),
                       .mem2cmac_wt_22      (memory[806]),
                       .mem2cmac_wt_23      (memory[807]),
                       .mem2cmac_wt_24      (memory[808]),
                       .mem2cmac_wt_25      (),
                       .mem2cmac_wt_26      (),
                       .mem2cmac_wt_27      (),
                       .mem2cmac_wt_28      (),
                       .mem2cmac_wt_29      (),
                       .mem2cmac_wt_30      (),
                       .mem2cmac_wt_31      (),
                       .mem2cmac_wt_32      (),
                       .mem2cmac_wt_33      (),
                       .mem2cmac_wt_34      (),
                       .mem2cmac_wt_35      (),
                       .mem2cmac_wt_36      (),
                       .mem2cmac_wt_37      (),
                       .mem2cmac_wt_38      (),
                       .mem2cmac_wt_39      (),
                       .mem2cmac_wt_40      (),
                       .mem2cmac_wt_41      (),
                       .mem2cmac_wt_42      (),
                       .mem2cmac_wt_43      (),
                       .mem2cmac_wt_44      (),
                       .mem2cmac_wt_45      (),
                       .mem2cmac_wt_46      (),
                       .mem2cmac_wt_47      (),
                       .mem2cmac_wt_48      (),
                       .mem2cmac_wt_49      (),
                       .mem2cmac_wt_50      (),
                       .mem2cmac_wt_51      (),
                       .mem2cmac_wt_52      (),
                       .mem2cmac_wt_53      (),
                       .mem2cmac_wt_54      (),
                       .mem2cmac_wt_55      (),
                       .mem2cmac_wt_56      (),
                       .mem2cmac_wt_57      (),
                       .mem2cmac_wt_58      (),
                       .mem2cmac_wt_59      (),
                       .mem2cmac_wt_60      (),
                       .mem2cmac_wt_61      (),
                       .mem2cmac_wt_62      (),
                       .mem2cmac_wt_63      (),
                       .cmac2mem_result     (ytydla_output));








endmodule : ytydla_tb
