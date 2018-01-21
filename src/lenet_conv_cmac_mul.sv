//lenet_conv_cmac_mul.sv

`include    "ytydla_define.svh"

//TODO: Use booth to calculate multiply instead of *
module ytydla_conv_cmac_mul(
    data,
    weight,
    result);
    input   signed           [YTYDLA_DATA_LENGTH - 1:0]   data;
    input   signed           [YTYDLA_DATA_LENGTH - 1:0]   weight;
    output  signed           [YTYDLA_DATA_LENGTH - 1:0]   result;

    logic   signed           [2 * YTYDLA_DATA_LENGTH - 1:0] temp;

    assign  output = logic[YTYDLA_DATA_LENGTH - 1:0];
    always_comb @(data, weight)begin
        temp = (data * weight) >> YTYDLA_DATA_DOTPOT;
    end

endmodule
