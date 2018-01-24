//ytydla_memory_tb.sv

`include "ytydla_define.svh"

//AXI Bus for ytydla memory

module ytydla_memory_tb #(
    parameter SIZE  = 1 * 65536,
    parameter N_IF  = 2,
    parameter W_ID  = 4,
    parameter W_ADR = 32,
    parameter W_DATA = 32
)
(                       clk,
                        rst_n,
                        awid,
                        awaddr,
                        awlen,
                        awsize,
                        awvalid,
                        awready,
                        wid,
                        wdata,
                        wstrb,
                        wlast,
                        wvalid,
                        wready,
                        bid,
                        bresp,
                        buser,
                        bvalid,
                        bready,
                        arid,
                        araddr,
                        arlen,
                        arsize,
                        arvalid,
                        arready,
                        rid,
                        rdata,
                        rresp,
                        rlast,
                        rvalid,
                        rready;

// Global Clock
    input                                   clk;
    input                                       rst_n;


// Write Address Channel Signal
    input                                       awid;
    input       [`YTYDLA_MEMORY_POWER - 1:0]    awaddr;
    input       [7:0]                           awlen;
    input       [2:0]                           awsize;
    input        [N_IF - 1:0]                   awvalid;
    output   logic                              awready;

// Write Data Channel Signal
    input                                       wid;
    input       [`YTYDLA_DATA_LENGTH - 1:0]     wdata;
    input       [3 : 0]                         wstrb;
    input                                       wlast;
    input                                       wvalid;
    output   logic                              wready;


// Write Response Channel Signal
    output   logic                              bid;
    output   logic                              bresp;
    output   logic                              buser;
    output   logic                              bvalid;
    input                                       bready;


// Read Address Channel Signal
    input                                       arid;
    input       [`YTYDLA_MEMORY_POWER - 1:0]    araddr;
    input       [7:0]                           arlen;
    input       [2:0]                           arsize;
    input                                       arvalid;
    output   logic                              arready;


// Read Data Channel Signal
    output   logic                              rid;
    output   logic  [`YTYDLA_MEMORY_POWER - 1:0]    rdata;
    output   logic                                  rresp;
    output   logic                                  rlast;
    output   logic                                  rvalid;
    input                                           rready;

//-------------------------------------------------------------------------------
//  Local signal
//-------------------------------------------------------------------------------
    logic   [7:0]                                   memory[0:SIZE - 1];
    logic   [N_IF - 1:0] [W_ADR - 1:0]              awaddr_hold;
    logic   [N_IF - 1:0] [2:0]                      awsize_hold;
    genvar                                          gi;
    genvar                                          gz;



//-------------------------------------------------------------------------------
//  Local functions
//-------------------------------------------------------------------------------

function automatic logic [W_DATA - 1: 0] mem_read(
    logic   [W_ADR : 0] adr,
    int                 bytes_num,
    int                 bytes_max
    );

    logic   [W_ADR : 0] byte_lane;

    mem_read = 'x;
    byte_lane = 0;

    for(int i = 0; i < $clog2(bytes_max); ++i) begin
        byte_lane[i] = adr[i];
    end

    for(int i = byte_lane; i < bytes_max & bytes_num != 0; ++i) begin
        mem_read[(i * 8) +: 8] = memory[adr];
        adr = adr + 1'b1;
        bytes_num = bytes_num - 1'b1;
    end
endfunction : mem_read

function automatic void mem_write (
    logic   [W_ADR - 1:0]   adr,
    logic   [W_DATA - 1:0]  data,
    logic   [(W_DATA / 8) - 1:0]    bytes_en,
    int                             bytes_num,
    int                             bytes_max
    );

    logic   [W_ADR : 0]         byte_lane;

    byte_lane = 0;

    for(int i = 0; i < $clog2(bytes_max); ++i) begin
        byte_lane[i] = adr[i]
    end

    for(int i = byte_lane; i < bytes_max; & bytes_num != 0; ++i) begin
        if(bytes_en[i]) begin
            memory[adr] = data[(i * 8) +: 8];
        end
        adr  = adr + 1'b1;
        bytes_num = bytes_num - 1'b1;
    end
endfunction






generate for(gi = 0; gi < N_IF; ++gi) begin : rw_if

//-------------------------------------------------------------------------------
//  Read Operation
//-------------------------------------------------------------------------------
    always_ff   @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            arready[gi]     <=      1'b1;
            rvalid[gi]      <=      1'b0;
            rresp[gi]       <=      2'b3;
            rdata[gi]       <=      'x;
            rlast[gi]       <=      1'b0;
            rid[gi]         <=      '0;
        end
        else begin
            // Read data: acked
            if(rvalid[gi] & rready[gi]) begin
                arready[gi] <=  1'b1;
                rvalid[gi]  <=  1'b0;
            end
            else if(rvalid[gi] & !rready[gi]) begin
                arready[gi] <= 1'b0;
            end


            // Read data: valid
            if (arvalid[gi] & arready[gi] & ~(rvalid[gi] & !rready[gi])) begin
                rvalid[gi] <= 1'b1;
                rresp[gi]  <= '0;
                rlast[gi]  <= 1'b1;
                rid[gi]    <= arid[gi];

                rdata[gi] <= mem_read(araddr[gi], 2**arsize[gi], W_DATA/8);
            end
        end
    end


//-------------------------------------------------------------------------------
//  Write Operation
//-------------------------------------------------------------------------------
    always_ff @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            bvalid[gi]      <= '0;
            bresp[gi]       <= 2'd3;
            awready[gi]     <=  1'b1;
            wready[gi]      <=  1'b1;
        end else begin
        // Write data: response
        if( bvalid[gi] & bready[gi] ) begin
            bvalid[gi]  <= 1'b0;
            awready[gi] <= 1'b1;
            wready[gi]  <= 1'b1;
        end else if( bvalid[gi] & !bready[gi] ) begin
            awready[gi] <= 1'b0;
            wready[gi]  <= 1'b0;
        end

        // Write data: get address
        if( awvalid[gi] & awready[gi] & ~(bvalid[gi] & !bready[gi]) ) begin
            bid <= awid[gi];
            if( ~wvalid[gi] ) begin
                awaddr_hold[gi] <= awaddr[gi];
                awsize_hold[gi] <= awsize[gi];
                awready[gi] <= 1'b0;
            end
        end

        // Write data: get data
        if( wvalid[gi] & wready[gi] & wlast[gi] ) begin
            bvalid[gi] <= 1'b1;
            bresp[gi]  <= '0;

            mem_write( awready[gi] ? awaddr[gi] : awaddr_hold[gi],
                       wdata[gi],
                       wstrb[gi],
                       2**(awready[gi] ? awsize[gi] : awsize_hold[gi]),
                       W_DATA/8 );
        end
    end

endgenerate

endmodule
