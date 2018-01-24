// ytydla_define.svh


`define YTYDLA_DATA_LENGTH  32
`define YTYDLA_DATA_DOTPOT  12


`define YTYDLA_MEMORY_POWER 16


typedef enum logic[1:0]{
    ACCU_FSM_IDLE = 2'b00,
    ACCU_FSM_CAL,
    ACCU_FSM_VLD
}cmac_accu_fsm_e;
