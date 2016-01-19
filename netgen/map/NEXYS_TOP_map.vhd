--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: NEXYS_TOP_map.vhd
-- /___/   /\     Timestamp: Mon Jan 18 23:48:48 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf NEXYS_TOP.pcf -rpw 100 -tpw 0 -ar Structure -tm NEXYS_TOP -w -dir netgen/map -ofmt vhdl -sim NEXYS_TOP_map.ncd NEXYS_TOP_map.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: NEXYS_TOP_map.ncd
-- Output file	: C:\Users\rboq\Documents\LCSE\PRACTICAIII\LCSE-PIII\netgen\map\NEXYS_TOP_map.vhd
-- # of Entities	: 1
-- Design Name	: NEXYS_TOP
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity NEXYS_TOP is
  port (
    Reset : in STD_LOGIC := 'X'; 
    Clk : in STD_LOGIC := 'X'; 
    Send : in STD_LOGIC := 'X'; 
    RD : in STD_LOGIC := 'X'; 
    DMA_ACK : in STD_LOGIC := 'X'; 
    TD : out STD_LOGIC; 
    Ready : out STD_LOGIC; 
    DMA_RQ : out STD_LOGIC; 
    switches : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    temp_l : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    temp_h : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end NEXYS_TOP;

architecture Structure of NEXYS_TOP is
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en : STD_LOGIC; 
  signal Clk_BUFGP : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en : STD_LOGIC; 
  signal top_Transmitter_width_count_7_PWR_6_o_equal_16_o : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd2_883 : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd1_884 : STD_LOGIC; 
  signal Reset_IBUF_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_893 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_894 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_895 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_897 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_898 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_899 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb_0 : STD_LOGIC; 
  signal top_Receiver_n0066_inv : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal top_Receiver_width_count_7_GND_7_o_equal_8_o : STD_LOGIC; 
  signal top_Receiver_width_count_7_PWR_7_o_equal_4_o : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd2_905 : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd1_906 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N21_0 : STD_LOGIC; 
  signal address_1_LogicTrst1 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_918 : STD_LOGIC; 
  signal DMA_RQ_OBUF_921 : STD_LOGIC; 
  signal top_Ack_in_922 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_923 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_924 : STD_LOGIC; 
  signal Ready_OBUF_0 : STD_LOGIC; 
  signal DMA_ACK_IBUF_0 : STD_LOGIC; 
  signal Send_IBUF_0 : STD_LOGIC; 
  signal empty : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0_0 : STD_LOGIC; 
  signal top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal top_Transmitter_en_width_count_0 : STD_LOGIC; 
  signal RD_IBUF_0 : STD_LOGIC; 
  signal TD_OBUF_976 : STD_LOGIC; 
  signal Clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal top_StartTX_980 : STD_LOGIC; 
  signal top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41 : STD_LOGIC; 
  signal top_Fifo_write : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_986 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_987 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_988 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal top_LineRD_in_991 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal data_read : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_995 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o : STD_LOGIC; 
  signal top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13 : STD_LOGIC; 
  signal top_Internal_memory_BU2_N4 : STD_LOGIC; 
  signal top_Internal_memory_BU2_N2 : STD_LOGIC; 
  signal rst_nexys : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal top_Internal_memory_BU2_N6 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT103 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81_1006 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_In1_1007 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_1008 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_1009 : STD_LOGIC; 
  signal dma_top_CurrentState_2_PWR_12_o_Mux_21_o : STD_LOGIC; 
  signal ProtoComp12_CYINITVCC_1 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1 : STD_LOGIC; 
  signal ProtoComp14_CYINITVCC_1_45 : STD_LOGIC; 
  signal ProtoComp15_CYINITVCC_1 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet_3_ProtoComp14_CYINITVCC_1 : STD_LOGIC; 
  signal top_Transmitter_width_count_0_rt_175 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_1_Q_166 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_2_Q_157 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count1 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count2 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count3 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_3_Q_141 : STD_LOGIC; 
  signal top_Transmitter_width_count_4_rt_209 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_5_Q_201 : STD_LOGIC; 
  signal top_Transmitter_width_count_6_rt_196 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count4 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count5 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count6 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count7 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_7_Q_181 : STD_LOGIC; 
  signal RD_IBUF_219 : STD_LOGIC; 
  signal Reset_IBUF_224 : STD_LOGIC; 
  signal Send_IBUF_227 : STD_LOGIC; 
  signal Clk_BUFGP_IBUFG_230 : STD_LOGIC; 
  signal DMA_ACK_IBUF_233 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_6_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_pack_7 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_7_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_9_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_8_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_N4_pack_8 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_GND_11_o_MUX_2_o : STD_LOGIC; 
  signal top_Valid_D_INV_19_o : STD_LOGIC; 
  signal N23_pack_11 : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_GND_11_o_MUX_1_o : STD_LOGIC; 
  signal top_Valid_D_TX_RDY_i_AND_20_o : STD_LOGIC; 
  signal top_Receiver_data_count_0_pack_5 : STD_LOGIC; 
  signal top_Receiver_data_count_0_rstpot_412 : STD_LOGIC; 
  signal top_Receiver_data_count_1_rstpot_411 : STD_LOGIC; 
  signal top_Receiver_data_count_2_rstpot_402 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_rt_436 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6_rt_432 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_rt_429 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_rt_423 : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd2_In_459 : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q : STD_LOGIC; 
  signal top_Receiver_width_count_5_pack_3 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_pack_9 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_4_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_5_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_PWR_37_o_MUX_16_o : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_7_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_8_Q : STD_LOGIC; 
  signal top_Transmitter_en_width_count : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd2_In_578 : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt_670 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_9_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_pack_9 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_6_Q : STD_LOGIC; 
  signal Ready_OBUF_733 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_In : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_In : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_In1_pack_10 : STD_LOGIC; 
  signal top_Transmitter_data_count_0_pack_6 : STD_LOGIC; 
  signal top_Transmitter_data_count_0_rstpot_750 : STD_LOGIC; 
  signal top_Transmitter_data_count_1_rstpot_748 : STD_LOGIC; 
  signal top_Transmitter_data_count_2_rstpot_746 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0 : STD_LOGIC; 
  signal dma_top_Mcount_data_count : STD_LOGIC; 
  signal address_1_LogicTrst1_pack_5 : STD_LOGIC; 
  signal dma_top_Mcount_data_count1 : STD_LOGIC; 
  signal dma_top_CurrentState_2_PWR_12_o_Mux_21_o_pack_3 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rd_pntr_plus1_0_inv : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_pack_11 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_pack_13 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_4_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_5_Q : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_20_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_21_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_22_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_23_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_19_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_15_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_16_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_17_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_18_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_10_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_11_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_12_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_13_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_9_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_5_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_6_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_7_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_8_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ram_top_periph_ram_contents_ram_0_0_7_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_xor_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_xor_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_xor_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_xor_7_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_xor_7_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ram_top_periph_ram_contents_ram_0_0_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ram_top_periph_ram_contents_ram_0_0_3_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_14_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_4_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal top_Transmitter_data_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal top_Receiver_width_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal dma_top_data_count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal top_Receiver_data_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Transmitter_width_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Transmitter_Mcount_width_count_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wr_pntr_plus1 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"C00C3003C00C3003"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_0,
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_0,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(3)
    );
  top_Internal_memory_BU2_dbiterr_20_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_20_D5LUT_O_UNCONNECTED
    );
  ProtoComp12_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X14Y14"
    )
    port map (
      O => ProtoComp12_CYINITVCC_1
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y14"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp12_CYINITVCC_1,
      CO(3) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_carrynet(3),
      CO(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_CO_2_UNCONNECTED,
      CO(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_CO_1_UNCONNECTED,
      CO(0) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_O_3_UNCONNECTED,
      O(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_O_2_UNCONNECTED,
      O(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_O_1_UNCONNECTED,
      O(0) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_O_0_UNCONNECTED,
      S(3) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(3),
      S(2) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(2),
      S(1) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(1),
      S(0) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(0)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"C00C3003C00C3003"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_0,
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_0,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(2)
    );
  top_Internal_memory_BU2_dbiterr_21_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_21_C5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(1)
    );
  top_Internal_memory_BU2_dbiterr_22_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_22_B5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_23_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_23_A5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y15"
    )
    port map (
      CI => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_carrynet(3),
      CYINIT => '0',
      CO(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_CO_3_UNCONNECTED,
      CO(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_CO_2_UNCONNECTED,
      CO(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_CO_1_UNCONNECTED,
      CO(0) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1,
      DI(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_DI_3_UNCONNECTED,
      DI(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_DI_2_UNCONNECTED,
      DI(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_O_3_UNCONNECTED,
      O(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_O_2_UNCONNECTED,
      O(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_O_1_UNCONNECTED,
      O(0) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_O_0_UNCONNECTED,
      S(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_S_3_UNCONNECTED,
      S(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_S_2_UNCONNECTED,
      S(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms_S_1_UNCONNECTED,
      S(0) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(4)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(9),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(8),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(4)
    );
  top_Internal_memory_BU2_dbiterr_19_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_19_A5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_0,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_0,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(3)
    );
  top_Internal_memory_BU2_dbiterr_15_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_15_D5LUT_O_UNCONNECTED
    );
  ProtoComp14_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X10Y12"
    )
    port map (
      O => ProtoComp14_CYINITVCC_1_45
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y12"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp14_CYINITVCC_1_45,
      CO(3) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_carrynet(3),
      CO(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_CO_2_UNCONNECTED,
      CO(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_CO_1_UNCONNECTED,
      CO(0) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_O_3_UNCONNECTED,
      O(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_O_2_UNCONNECTED,
      O(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_O_1_UNCONNECTED,
      O(0) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_O_0_UNCONNECTED,
      S(3) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(3),
      S(2) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(2),
      S(1) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(1),
      S(0) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(0)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_0,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_0,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(2)
    );
  top_Internal_memory_BU2_dbiterr_16_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_16_C5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(1)
    );
  top_Internal_memory_BU2_dbiterr_17_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_17_B5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"00C3C30000C3C300"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_18_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_18_A5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y12",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(3)
    );
  top_Internal_memory_BU2_dbiterr_10_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_10_D5LUT_O_UNCONNECTED
    );
  ProtoComp15_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X8Y12"
    )
    port map (
      O => ProtoComp15_CYINITVCC_1
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y12"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp15_CYINITVCC_1,
      CO(3) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_carrynet(3),
      CO(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_CO_2_UNCONNECTED,
      CO(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_CO_1_UNCONNECTED,
      CO(0) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_O_3_UNCONNECTED,
      O(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_O_2_UNCONNECTED,
      O(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_O_1_UNCONNECTED,
      O(0) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_O_0_UNCONNECTED,
      S(3) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(3),
      S(2) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(2),
      S(1) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(1),
      S(0) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(0)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y12",
      INIT => X"C00C3003C00C3003"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(2)
    );
  top_Internal_memory_BU2_dbiterr_11_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_11_C5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y12",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(1)
    );
  top_Internal_memory_BU2_dbiterr_12_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_12_B5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y12",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_13_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_13_A5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y13"
    )
    port map (
      CI => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_carrynet(3),
      CYINIT => '0',
      CO(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_CO_3_UNCONNECTED,
      CO(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_CO_2_UNCONNECTED,
      CO(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_CO_1_UNCONNECTED,
      CO(0) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1,
      DI(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_DI_3_UNCONNECTED,
      DI(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_DI_2_UNCONNECTED,
      DI(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_O_3_UNCONNECTED,
      O(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_O_2_UNCONNECTED,
      O(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_O_1_UNCONNECTED,
      O(0) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_O_0_UNCONNECTED,
      S(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_S_3_UNCONNECTED,
      S(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_S_2_UNCONNECTED,
      S(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms_S_1_UNCONNECTED,
      S(0) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(4)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y13",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0,
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(9),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(8),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(4)
    );
  top_Internal_memory_BU2_dbiterr_9_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y13",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_9_A5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_0,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_0,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(3)
    );
  top_Internal_memory_BU2_dbiterr_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_5_D5LUT_O_UNCONNECTED
    );
  ProtoComp14_CYINITVCC_1 : X_ONE
    generic map(
      LOC => "SLICE_X14Y12"
    )
    port map (
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet_3_ProtoComp14_CYINITVCC_1
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y12"
    )
    port map (
      CI => '0',
      CYINIT => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet_3_ProtoComp14_CYINITVCC_1,
      CO(3) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet(3),
      CO(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_CO_2_UNCONNECTED,
      CO(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_CO_1_UNCONNECTED,
      CO(0) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_O_3_UNCONNECTED,
      O(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_O_2_UNCONNECTED,
      O(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_O_1_UNCONNECTED,
      O(0) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_O_0_UNCONNECTED,
      S(3) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(3),
      S(2) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(2),
      S(1) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(1),
      S(0) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(0)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_0,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_0,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(2)
    );
  top_Internal_memory_BU2_dbiterr_6_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_6_C5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(1)
    );
  top_Internal_memory_BU2_dbiterr_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_7_B5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => X"00C3C30000C3C300"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_8_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_8_A5LUT_O_UNCONNECTED
    );
  top_Transmitter_width_count_3 : X_FF
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => '0'
    )
    port map (
      CE => top_Transmitter_en_width_count_0,
      CLK => Clk_BUFGP,
      I => top_Transmitter_Mcount_width_count3,
      O => top_Transmitter_width_count(3),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_Mcount_width_count_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"FF00FF007F00FF00"
    )
    port map (
      ADR0 => top_Transmitter_width_count(7),
      ADR1 => top_Transmitter_width_count(5),
      ADR2 => top_Transmitter_width_count(2),
      ADR3 => top_Transmitter_width_count(3),
      ADR4 => top_Transmitter_width_count(1),
      ADR5 => N2,
      O => top_Transmitter_Mcount_width_count_lut_3_Q_141
    );
  top_Transmitter_width_count_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => '0'
    )
    port map (
      CE => top_Transmitter_en_width_count_0,
      CLK => Clk_BUFGP,
      I => top_Transmitter_Mcount_width_count2,
      O => top_Transmitter_width_count(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_Mcount_width_count_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y6"
    )
    port map (
      CI => '0',
      CYINIT => top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv,
      CO(3) => top_Transmitter_Mcount_width_count_cy(3),
      CO(2) => NLW_top_Transmitter_Mcount_width_count_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_top_Transmitter_Mcount_width_count_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_top_Transmitter_Mcount_width_count_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => top_Transmitter_Mcount_width_count3,
      O(2) => top_Transmitter_Mcount_width_count2,
      O(1) => top_Transmitter_Mcount_width_count1,
      O(0) => top_Transmitter_Mcount_width_count,
      S(3) => top_Transmitter_Mcount_width_count_lut_3_Q_141,
      S(2) => top_Transmitter_Mcount_width_count_lut_2_Q_157,
      S(1) => top_Transmitter_Mcount_width_count_lut_1_Q_166,
      S(0) => top_Transmitter_width_count_0_rt_175
    );
  top_Transmitter_Mcount_width_count_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"FF00FF007F00FF00"
    )
    port map (
      ADR0 => top_Transmitter_width_count(7),
      ADR1 => top_Transmitter_width_count(5),
      ADR2 => top_Transmitter_width_count(3),
      ADR3 => top_Transmitter_width_count(2),
      ADR4 => top_Transmitter_width_count(1),
      ADR5 => N2,
      O => top_Transmitter_Mcount_width_count_lut_2_Q_157
    );
  top_Transmitter_width_count_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => '0'
    )
    port map (
      CE => top_Transmitter_en_width_count_0,
      CLK => Clk_BUFGP,
      I => top_Transmitter_Mcount_width_count1,
      O => top_Transmitter_width_count(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_Mcount_width_count_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"FF00FF007F00FF00"
    )
    port map (
      ADR0 => top_Transmitter_width_count(7),
      ADR1 => top_Transmitter_width_count(5),
      ADR2 => top_Transmitter_width_count(3),
      ADR3 => top_Transmitter_width_count(1),
      ADR4 => top_Transmitter_width_count(2),
      ADR5 => N2,
      O => top_Transmitter_Mcount_width_count_lut_1_Q_166
    );
  top_Transmitter_width_count_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => '0'
    )
    port map (
      CE => top_Transmitter_en_width_count_0,
      CLK => Clk_BUFGP,
      I => top_Transmitter_Mcount_width_count,
      O => top_Transmitter_width_count(0),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_width_count_0_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Transmitter_width_count(0),
      ADR4 => '1',
      ADR5 => '1',
      O => top_Transmitter_width_count_0_rt_175
    );
  ram_top_periph_ram_contents_ram_0_0_7_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ram_top_periph_ram_contents_ram_0_0_7_A5LUT_O_UNCONNECTED
    );
  top_Transmitter_width_count_7 : X_FF
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => '0'
    )
    port map (
      CE => top_Transmitter_en_width_count_0,
      CLK => Clk_BUFGP,
      I => top_Transmitter_Mcount_width_count7,
      O => top_Transmitter_width_count(7),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_Mcount_width_count_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"FF00FF007F00FF00"
    )
    port map (
      ADR0 => top_Transmitter_width_count(2),
      ADR1 => top_Transmitter_width_count(1),
      ADR2 => top_Transmitter_width_count(5),
      ADR3 => top_Transmitter_width_count(7),
      ADR4 => top_Transmitter_width_count(3),
      ADR5 => N2,
      O => top_Transmitter_Mcount_width_count_lut_7_Q_181
    );
  top_Transmitter_width_count_6 : X_FF
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => '0'
    )
    port map (
      CE => top_Transmitter_en_width_count_0,
      CLK => Clk_BUFGP,
      I => top_Transmitter_Mcount_width_count6,
      O => top_Transmitter_width_count(6),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_Mcount_width_count_xor_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y7"
    )
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(3),
      CYINIT => '0',
      CO(3) => NLW_top_Transmitter_Mcount_width_count_xor_7_CO_3_UNCONNECTED,
      CO(2) => NLW_top_Transmitter_Mcount_width_count_xor_7_CO_2_UNCONNECTED,
      CO(1) => NLW_top_Transmitter_Mcount_width_count_xor_7_CO_1_UNCONNECTED,
      CO(0) => NLW_top_Transmitter_Mcount_width_count_xor_7_CO_0_UNCONNECTED,
      DI(3) => NLW_top_Transmitter_Mcount_width_count_xor_7_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => top_Transmitter_Mcount_width_count7,
      O(2) => top_Transmitter_Mcount_width_count6,
      O(1) => top_Transmitter_Mcount_width_count5,
      O(0) => top_Transmitter_Mcount_width_count4,
      S(3) => top_Transmitter_Mcount_width_count_lut_7_Q_181,
      S(2) => top_Transmitter_width_count_6_rt_196,
      S(1) => top_Transmitter_Mcount_width_count_lut_5_Q_201,
      S(0) => top_Transmitter_width_count_4_rt_209
    );
  top_Transmitter_width_count_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Transmitter_width_count(6),
      ADR4 => '1',
      ADR5 => '1',
      O => top_Transmitter_width_count_6_rt_196
    );
  ram_top_periph_ram_contents_ram_0_0_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ram_top_periph_ram_contents_ram_0_0_C5LUT_O_UNCONNECTED
    );
  top_Transmitter_width_count_5 : X_FF
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => '0'
    )
    port map (
      CE => top_Transmitter_en_width_count_0,
      CLK => Clk_BUFGP,
      I => top_Transmitter_Mcount_width_count5,
      O => top_Transmitter_width_count(5),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_Mcount_width_count_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"FF00FF007F00FF00"
    )
    port map (
      ADR0 => top_Transmitter_width_count(7),
      ADR1 => top_Transmitter_width_count(3),
      ADR2 => top_Transmitter_width_count(2),
      ADR3 => top_Transmitter_width_count(5),
      ADR4 => top_Transmitter_width_count(1),
      ADR5 => N2,
      O => top_Transmitter_Mcount_width_count_lut_5_Q_201
    );
  top_Transmitter_width_count_4 : X_FF
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => '0'
    )
    port map (
      CE => top_Transmitter_en_width_count_0,
      CLK => Clk_BUFGP,
      I => top_Transmitter_Mcount_width_count4,
      O => top_Transmitter_width_count(4),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_width_count_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Transmitter_width_count(4),
      ADR4 => '1',
      ADR5 => '1',
      O => top_Transmitter_width_count_4_rt_209
    );
  ram_top_periph_ram_contents_ram_0_0_3_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ram_top_periph_ram_contents_ram_0_0_3_A5LUT_O_UNCONNECTED
    );
  Ready_OBUF : X_OBUF
    generic map(
      LOC => "PAD164"
    )
    port map (
      I => Ready_OBUF_0,
      O => Ready
    );
  DMA_RQ_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => DMA_RQ_OBUF_921,
      O => DMA_RQ
    );
  RD_IBUF : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      O => RD_IBUF_219,
      I => RD
    );
  ProtoComp19_IMUX : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      I => RD_IBUF_219,
      O => RD_IBUF_0
    );
  TD_OBUF : X_OBUF
    generic map(
      LOC => "PAD163"
    )
    port map (
      I => TD_OBUF_976,
      O => TD
    );
  Reset_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      O => Reset_IBUF_224,
      I => Reset
    );
  ProtoComp19_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      I => Reset_IBUF_224,
      O => Reset_IBUF_0
    );
  Send_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      O => Send_IBUF_227,
      I => Send
    );
  ProtoComp19_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      I => Send_IBUF_227,
      O => Send_IBUF_0
    );
  Clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => Clk_BUFGP_IBUFG_230,
      I => Clk
    );
  ProtoComp19_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP_IBUFG_230,
      O => Clk_BUFGP_IBUFG_0
    );
  DMA_ACK_IBUF : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      O => DMA_ACK_IBUF_233,
      I => DMA_ACK
    );
  ProtoComp19_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      I => DMA_ACK_IBUF_233,
      O => DMA_ACK_IBUF_0
    );
  Clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP_IBUFG_0,
      O => Clk_BUFGP
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => '0',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_pack_7,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7 : X_FF
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_7_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => X"FF00FF007F80FF00"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_7_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT411 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => X"FFFF0FFFFFFF0FFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => X"FF000FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_2_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_2_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_pack_7,
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6 : X_FF
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_6_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => X"FF00FF003FC0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_6_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_N4_pack_8,
      O => top_Internal_memory_BU2_N4
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT91_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => X"00FFFFFF00FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR5 => '1',
      O => top_Internal_memory_BU2_N2
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT101_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => X"0FFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      O => top_Internal_memory_BU2_N4_pack_8
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8 : X_FF
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_8_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT91 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => X"FF00FF00FF007F80"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      ADR5 => top_Internal_memory_BU2_N2,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_8_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9 : X_FF
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_9_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(9),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT101 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => X"FF00FF00FF007F80"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(9),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      ADR5 => top_Internal_memory_BU2_N4,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_9_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X9Y15",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_GND_11_o_MUX_2_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_898,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_Mmux_rd_rst_asreg_GND_11_o_MUX_2_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y15",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_898,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_899,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_GND_11_o_MUX_2_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb1 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y15",
      INIT => X"0F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_897,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_898,
      ADR4 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X9Y16",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_899,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_897,
      RST => GND,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X9Y16",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_898,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_899,
      RST => GND,
      SET => GND
    );
  top_Ack_in : X_FF
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Valid_D_INV_19_o,
      O => top_Ack_in_922,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Valid_D_INV_19_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"FFFFFFFFFCFCFFFC"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Transmitter_CurrentState_FSM_FFd1_884,
      ADR2 => address_1_LogicTrst1,
      ADR3 => dma_top_data_count(1),
      ADR4 => dma_top_data_count(0),
      ADR5 => top_Transmitter_CurrentState_FSM_FFd2_883,
      O => top_Valid_D_INV_19_o
    );
  top_Receiver_width_count_2_top_Receiver_width_count_2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N23_pack_11,
      O => N23
    );
  top_Receiver_width_count_2 : X_FF
    generic map(
      LOC => "SLICE_X10Y11",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => Clk_BUFGP,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q,
      O => top_Receiver_width_count(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y11",
      INIT => X"0000708007087788"
    )
    port map (
      ADR0 => top_Receiver_width_count(1),
      ADR1 => top_Receiver_width_count(0),
      ADR2 => N23,
      ADR3 => top_Receiver_width_count(2),
      ADR4 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR5 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q
    );
  top_Receiver_width_count_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y11",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => Clk_BUFGP,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q,
      O => top_Receiver_width_count(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y11",
      INIT => X"00004080152A55AA"
    )
    port map (
      ADR0 => top_Receiver_width_count(0),
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_906,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_905,
      ADR3 => top_Receiver_width_count(1),
      ADR4 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR5 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q
    );
  top_Receiver_width_count_0 : X_FF
    generic map(
      LOC => "SLICE_X10Y11",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => Clk_BUFGP,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q,
      O => top_Receiver_width_count(0),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y11",
      INIT => X"003F00FF003F00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_906,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_905,
      ADR3 => top_Receiver_width_count(0),
      ADR4 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR5 => '1',
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW2 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y11",
      INIT => X"C0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_906,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_905,
      ADR3 => '1',
      ADR4 => '1',
      O => N23_pack_11
    );
  top_Receiver_width_count_7_PWR_7_o_equal_4_o_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y11",
      INIT => X"0000000008000000"
    )
    port map (
      ADR0 => top_Receiver_width_count(5),
      ADR1 => top_Receiver_width_count(3),
      ADR2 => top_Receiver_width_count(4),
      ADR3 => top_Receiver_width_count(7),
      ADR4 => top_Receiver_width_count(2),
      ADR5 => N6,
      O => top_Receiver_width_count_7_PWR_7_o_equal_4_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9 : X_FF
    generic map(
      LOC => "SLICE_X10Y13",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(9),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(9),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_8 : X_FF
    generic map(
      LOC => "SLICE_X10Y13",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(8),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y13"
    )
    port map (
      CI => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_carrynet(3),
      CYINIT => '0',
      CO(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_CO_3_UNCONNECTED,
      CO(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_CO_2_UNCONNECTED,
      CO(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_CO_1_UNCONNECTED,
      CO(0) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0,
      DI(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_DI_3_UNCONNECTED,
      DI(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_DI_2_UNCONNECTED,
      DI(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_O_3_UNCONNECTED,
      O(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_O_2_UNCONNECTED,
      O(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_O_1_UNCONNECTED,
      O(0) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_O_0_UNCONNECTED,
      S(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_S_3_UNCONNECTED,
      S(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_S_2_UNCONNECTED,
      S(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms_S_1_UNCONNECTED,
      S(0) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(4)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y13",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0,
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(9),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(8),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(8),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(4)
    );
  top_Internal_memory_BU2_dbiterr_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y13",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_14_A5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X10Y15",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_GND_11_o_MUX_1_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_894,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_Mmux_wr_rst_asreg_GND_11_o_MUX_1_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y15",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_894,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_895,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_GND_11_o_MUX_1_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y15",
      INIT => X"0F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_893,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_894,
      ADR4 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X10Y16",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_895,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_893,
      RST => GND,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X10Y16",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_894,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_895,
      RST => GND,
      SET => GND
    );
  rst_nexys1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => Reset_IBUF_0,
      O => rst_nexys
    );
  top_StartTX : X_FF
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => '0'
    )
    port map (
      CE => rst_nexys,
      CLK => Clk_BUFGP,
      I => top_Valid_D_TX_RDY_i_AND_20_o,
      O => top_StartTX_980,
      RST => GND,
      SET => GND
    );
  top_Valid_D_TX_RDY_i_AND_20_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => X"0003000000030003"
    )
    port map (
      ADR0 => '1',
      ADR1 => address_1_LogicTrst1,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_883,
      ADR3 => top_Transmitter_CurrentState_FSM_FFd1_884,
      ADR4 => dma_top_data_count(0),
      ADR5 => dma_top_data_count(1),
      O => top_Valid_D_TX_RDY_i_AND_20_o
    );
  top_Receiver_data_count_2_top_Receiver_data_count_2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Receiver_data_count_0_pack_5,
      O => top_Receiver_data_count(0)
    );
  top_Receiver_data_count_2_rstpot_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y11",
      INIT => X"0000000080000000"
    )
    port map (
      ADR0 => top_Receiver_width_count(7),
      ADR1 => top_Receiver_width_count(2),
      ADR2 => top_Receiver_width_count(3),
      ADR3 => top_Receiver_data_count(1),
      ADR4 => top_Receiver_width_count(5),
      ADR5 => top_Receiver_width_count(4),
      O => N39
    );
  top_Receiver_width_count_7_PWR_7_o_equal_4_o_7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y11",
      INIT => X"FFFFFF00FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Receiver_width_count(6),
      ADR4 => top_Receiver_width_count(0),
      ADR5 => top_Receiver_width_count(1),
      O => N6
    );
  top_Receiver_data_count_2 : X_FF
    generic map(
      LOC => "SLICE_X11Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Receiver_data_count_2_rstpot_402,
      O => top_Receiver_data_count(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_data_count_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y11",
      INIT => X"FF00FF007F80FF00"
    )
    port map (
      ADR0 => N39,
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_906,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_905,
      ADR3 => top_Receiver_data_count(2),
      ADR4 => top_Receiver_data_count(0),
      ADR5 => N6,
      O => top_Receiver_data_count_2_rstpot_402
    );
  top_Receiver_data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Receiver_data_count_1_rstpot_411,
      O => top_Receiver_data_count(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_data_count_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y11",
      INIT => X"7F80FF007F80FF00"
    )
    port map (
      ADR0 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_906,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_905,
      ADR3 => top_Receiver_data_count(1),
      ADR4 => top_Receiver_data_count(0),
      ADR5 => '1',
      O => top_Receiver_data_count_1_rstpot_411
    );
  top_Receiver_data_count_0_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X11Y11",
      INIT => X"7F7F8080"
    )
    port map (
      ADR0 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_906,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_905,
      ADR3 => '1',
      ADR4 => top_Receiver_data_count(0),
      O => top_Receiver_data_count_0_rstpot_412
    );
  top_Receiver_data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Receiver_data_count_0_rstpot_412,
      O => top_Receiver_data_count_0_pack_5,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(7),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(6),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(5),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(4),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3 : X_FF
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_rt_423
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7 : X_FF
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_rt_423,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(7),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2 : X_FF
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6_rt_432
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6 : X_FF
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6_rt_432,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(6),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_rt_429
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5 : X_FF
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_rt_429,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(5),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wr_pntr_plus1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_wr_pntr_0_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR4 => '1',
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wr_pntr_plus1(0)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_rt_436
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4 : X_FF
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_rt_436,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(4),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y15",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => '0',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb_0,
      RST => GND
    );
  top_Receiver_CurrentState_FSM_FFd2_In_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y10",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => top_Receiver_data_count(2),
      ADR5 => top_Receiver_data_count(1),
      O => N10
    );
  top_Receiver_CurrentState_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X12Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Receiver_CurrentState_FSM_FFd2_In_459,
      O => top_Receiver_CurrentState_FSM_FFd2_905,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_CurrentState_FSM_FFd2_In : X_LUT6
    generic map(
      LOC => "SLICE_X12Y10",
      INIT => X"7F00FF007F33FF33"
    )
    port map (
      ADR0 => top_Receiver_data_count(0),
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_906,
      ADR2 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR3 => top_Receiver_CurrentState_FSM_FFd2_905,
      ADR4 => N10,
      ADR5 => top_LineRD_in_991,
      O => top_Receiver_CurrentState_FSM_FFd2_In_459
    );
  top_Receiver_width_count_7_GND_7_o_equal_8_o_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y10",
      INIT => X"00000F0000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => top_Receiver_width_count(3),
      ADR3 => top_Receiver_width_count(6),
      ADR4 => top_Receiver_width_count(7),
      ADR5 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      O => top_Receiver_width_count_7_GND_7_o_equal_8_o
    );
  top_Receiver_CurrentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X12Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Receiver_CurrentState_FSM_FFd1_In,
      O => top_Receiver_CurrentState_FSM_FFd1_906,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_CurrentState_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y10",
      INIT => X"F000FFF0FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_905,
      ADR3 => top_Receiver_CurrentState_FSM_FFd1_906,
      ADR4 => top_LineRD_in_991,
      ADR5 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_CurrentState_FSM_FFd1_In
    );
  top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13_top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Receiver_width_count_5_pack_3,
      O => top_Receiver_width_count(5)
    );
  top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_131 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y11",
      INIT => X"3000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Receiver_width_count(5),
      ADR2 => top_Receiver_width_count(1),
      ADR3 => top_Receiver_width_count(4),
      ADR4 => top_Receiver_width_count(0),
      ADR5 => top_Receiver_width_count(2),
      O => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13
    );
  top_Receiver_n0066_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y11",
      INIT => X"FFFFFF00FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Receiver_CurrentState_FSM_FFd2_905,
      ADR4 => top_Receiver_CurrentState_FSM_FFd1_906,
      ADR5 => '1',
      O => top_Receiver_n0066_inv
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT6 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y11",
      INIT => X"0A222222"
    )
    port map (
      ADR0 => N27,
      ADR1 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      ADR2 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR3 => top_Receiver_CurrentState_FSM_FFd2_905,
      ADR4 => top_Receiver_CurrentState_FSM_FFd1_906,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q
    );
  top_Receiver_width_count_5 : X_FF
    generic map(
      LOC => "SLICE_X12Y11",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => Clk_BUFGP,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q,
      O => top_Receiver_width_count_5_pack_3,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_Store_out11 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y11",
      INIT => X"0000000200000000"
    )
    port map (
      ADR0 => top_Receiver_width_count(6),
      ADR1 => top_Receiver_width_count(7),
      ADR2 => top_Receiver_width_count(3),
      ADR3 => top_Receiver_CurrentState_FSM_FFd2_905,
      ADR4 => N12,
      ADR5 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      O => top_Fifo_write
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_ram_wr_en_i1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y11",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => top_Fifo_write,
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_987,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_pack_9,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5 : X_FF
    generic map(
      LOC => "SLICE_X12Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_5_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y12",
      INIT => X"FF00FF007F80FF00"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_5_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3 : X_FF
    generic map(
      LOC => "SLICE_X12Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_3_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT42 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y12",
      INIT => X"FF003FC0FF003FC0"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_3_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT51 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y12",
      INIT => X"AAAA6AAA"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_4_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4 : X_FF
    generic map(
      LOC => "SLICE_X12Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_4_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_pack_9,
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_1_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y12",
      INIT => X"FF00FF0000FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR4 => '1',
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_1_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i : X_FF
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_PWR_37_o_MUX_16_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_987,
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_988,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_PWR_37_o_MUX_16_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"030A330A03003300"
    )
    port map (
      ADR0 => top_Fifo_write,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_986,
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_987,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0_0,
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1_0,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_PWR_37_o_MUX_16_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT91_F : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      O => top_Internal_memory_BU2_N6
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_8 : X_FF
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_8_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT911 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      ADR5 => top_Internal_memory_BU2_N6,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_8_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_7 : X_FF
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_7_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"FF00FF007F80FF00"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_7_Q
    );
  top_Transmitter_TX1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => top_Transmitter_CurrentState_FSM_FFd2_883,
      O => TD_OBUF_976
    );
  top_Transmitter_width_count_7_PWR_6_o_equal_16_o_7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"FFFFFFFFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Transmitter_width_count(6),
      ADR4 => top_Transmitter_width_count(4),
      ADR5 => top_Transmitter_width_count(0),
      O => N2
    );
  top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"FFFF7FFFFFFFFFFF"
    )
    port map (
      ADR0 => top_Transmitter_width_count(5),
      ADR1 => top_Transmitter_width_count(3),
      ADR2 => top_Transmitter_width_count(7),
      ADR3 => top_Transmitter_width_count(2),
      ADR4 => N2,
      ADR5 => top_Transmitter_width_count(1),
      O => top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv
    );
  top_Transmitter_CurrentState_FSM_FFd2_top_Transmitter_CurrentState_FSM_FFd2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Transmitter_en_width_count,
      O => top_Transmitter_en_width_count_0
    );
  top_Transmitter_CurrentState_FSM_FFd2_In_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => top_Transmitter_data_count(1),
      ADR5 => top_Transmitter_data_count(0),
      O => N0
    );
  top_Transmitter_CurrentState_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Transmitter_CurrentState_FSM_FFd2_In_578,
      O => top_Transmitter_CurrentState_FSM_FFd2_883,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_CurrentState_FSM_FFd2_In : X_LUT6
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => X"7F55FF557F00FF00"
    )
    port map (
      ADR0 => top_Transmitter_CurrentState_FSM_FFd1_884,
      ADR1 => top_Transmitter_data_count(2),
      ADR2 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR3 => top_Transmitter_CurrentState_FSM_FFd2_883,
      ADR4 => N0,
      ADR5 => top_StartTX_980,
      O => top_Transmitter_CurrentState_FSM_FFd2_In_578
    );
  top_Transmitter_CurrentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Transmitter_CurrentState_FSM_FFd1_In,
      O => top_Transmitter_CurrentState_FSM_FFd1_884,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_CurrentState_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => X"FFF00F00FFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR3 => top_Transmitter_CurrentState_FSM_FFd1_884,
      ADR4 => top_Transmitter_CurrentState_FSM_FFd2_883,
      ADR5 => '1',
      O => top_Transmitter_CurrentState_FSM_FFd1_In
    );
  top_Transmitter_CurrentState_n0054_1_1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => X"FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Transmitter_CurrentState_FSM_FFd1_884,
      ADR4 => top_Transmitter_CurrentState_FSM_FFd2_883,
      O => top_Transmitter_en_width_count
    );
  top_Transmitter_width_count_7_PWR_6_o_equal_16_o_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => X"0000000080000000"
    )
    port map (
      ADR0 => top_Transmitter_width_count(5),
      ADR1 => top_Transmitter_width_count(3),
      ADR2 => top_Transmitter_width_count(7),
      ADR3 => top_Transmitter_width_count(2),
      ADR4 => top_Transmitter_width_count(1),
      ADR5 => N2,
      O => top_Transmitter_width_count_7_PWR_6_o_equal_16_o
    );
  top_Receiver_width_count_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y10",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => Clk_BUFGP,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q,
      O => top_Receiver_width_count(7),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y10",
      INIT => X"0000C4083102F50A"
    )
    port map (
      ADR0 => top_Receiver_width_count(6),
      ADR1 => N23,
      ADR2 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11,
      ADR3 => top_Receiver_width_count(7),
      ADR4 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR5 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q
    );
  top_Receiver_width_count_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y10",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => Clk_BUFGP,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q,
      O => top_Receiver_width_count(6),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y10",
      INIT => X"000080087007F00F"
    )
    port map (
      ADR0 => top_Receiver_CurrentState_FSM_FFd1_906,
      ADR1 => top_Receiver_CurrentState_FSM_FFd2_905,
      ADR2 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11,
      ADR3 => top_Receiver_width_count(6),
      ADR4 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR5 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q
    );
  top_Receiver_width_count_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y10",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => Clk_BUFGP,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q,
      O => top_Receiver_width_count(4),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT52 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y10",
      INIT => X"000080087007F00F"
    )
    port map (
      ADR0 => top_Receiver_CurrentState_FSM_FFd1_906,
      ADR1 => top_Receiver_CurrentState_FSM_FFd2_905,
      ADR2 => N21_0,
      ADR3 => top_Receiver_width_count(4),
      ADR4 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR5 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q
    );
  top_Receiver_width_count_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y10",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => Clk_BUFGP,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q,
      O => top_Receiver_width_count(3),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y10",
      INIT => X"000080087007F00F"
    )
    port map (
      ADR0 => top_Receiver_CurrentState_FSM_FFd1_906,
      ADR1 => top_Receiver_CurrentState_FSM_FFd2_905,
      ADR2 => N19,
      ADR3 => top_Receiver_width_count(3),
      ADR4 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR5 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q
    );
  top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_111 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y11",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => top_Receiver_width_count(5),
      ADR1 => top_Receiver_width_count(2),
      ADR2 => top_Receiver_width_count(3),
      ADR3 => top_Receiver_width_count(0),
      ADR4 => top_Receiver_width_count(1),
      ADR5 => top_Receiver_width_count(4),
      O => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i : X_FF
    generic map(
      LOC => "SLICE_X13Y11",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_995,
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      RST => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y11",
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => top_Receiver_width_count(5),
      ADR1 => top_Receiver_width_count(1),
      ADR2 => top_Receiver_width_count(0),
      ADR3 => top_Receiver_width_count(4),
      ADR4 => top_Receiver_width_count(3),
      ADR5 => top_Receiver_width_count(2),
      O => N27
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(9),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8 : X_FF
    generic map(
      LOC => "SLICE_X13Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(8),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  dma_top_Mmux_Data_Read11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y12",
      INIT => X"3FFF0CCC0CCC0CCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => dma_top_CurrentState_FSM_FFd1_918,
      ADR2 => dma_top_data_count(0),
      ADR3 => dma_top_data_count(1),
      ADR4 => dma_top_CurrentState_FSM_FFd3_923,
      ADR5 => dma_top_CurrentState_FSM_FFd2_924,
      O => data_read
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_ram_rd_en_i1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y12",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => data_read,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_995,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y12",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      ADR3 => '1',
      ADR4 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt_670
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9 : X_FF
    generic map(
      LOC => "SLICE_X13Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt_670,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(9),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i : X_FF
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o,
      O => empty,
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_32_o_MUX_14_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => X"F5C4FFC4F500FF00"
    )
    port map (
      ADR0 => top_Fifo_write,
      ADR1 => data_read,
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_987,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_995,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0_0,
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1_0,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_pack_9,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT1031 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"0000800000008000"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT103
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT71 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"CCCC6CCC"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_6_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_6_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_pack_9,
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT411 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"00FFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT811 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"FFFFFFFF3FFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81_1006
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9 : X_FF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_9_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT101 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"FFC0FF003FC03F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT103,
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81_1006,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_9_Q
    );
  dma_top_CurrentState_FSM_FFd2_dma_top_CurrentState_FSM_FFd2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dma_top_CurrentState_FSM_FFd3_In1_pack_10,
      O => dma_top_CurrentState_FSM_FFd3_In1_1007
    );
  dma_top_CurrentState_FSM_FFd2_dma_top_CurrentState_FSM_FFd2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Ready_OBUF_733,
      O => Ready_OBUF_0
    );
  dma_top_CurrentState_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => dma_top_CurrentState_FSM_FFd2_In,
      O => dma_top_CurrentState_FSM_FFd2_924,
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_CurrentState_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"3300330333003303"
    )
    port map (
      ADR0 => '1',
      ADR1 => dma_top_CurrentState_FSM_FFd3_923,
      ADR2 => dma_top_CurrentState_FSM_FFd1_918,
      ADR3 => dma_top_CurrentState_FSM_FFd2_924,
      ADR4 => empty,
      ADR5 => '1',
      O => dma_top_CurrentState_FSM_FFd2_In
    );
  dma_top_CurrentState_FSM_FFd3_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"0A0A0000"
    )
    port map (
      ADR0 => Send_IBUF_0,
      ADR1 => '1',
      ADR2 => dma_top_CurrentState_FSM_FFd1_918,
      ADR3 => '1',
      ADR4 => empty,
      O => dma_top_CurrentState_FSM_FFd3_In1_pack_10
    );
  dma_top_CurrentState_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => dma_top_CurrentState_FSM_FFd3_In,
      O => dma_top_CurrentState_FSM_FFd3_923,
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_CurrentState_FSM_FFd3_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"51FF51AA51555100"
    )
    port map (
      ADR0 => dma_top_CurrentState_FSM_FFd2_924,
      ADR1 => dma_top_data_count(1),
      ADR2 => dma_top_data_count(0),
      ADR3 => dma_top_CurrentState_FSM_FFd3_923,
      ADR4 => dma_top_CurrentState_FSM_FFd3_In1_1007,
      ADR5 => DMA_ACK_IBUF_0,
      O => dma_top_CurrentState_FSM_FFd3_In
    );
  dma_top_CurrentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => dma_top_CurrentState_FSM_FFd1_In,
      O => dma_top_CurrentState_FSM_FFd1_918,
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_CurrentState_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"F7F07700F7F07700"
    )
    port map (
      ADR0 => dma_top_data_count(0),
      ADR1 => dma_top_data_count(1),
      ADR2 => dma_top_CurrentState_FSM_FFd3_923,
      ADR3 => dma_top_CurrentState_FSM_FFd1_918,
      ADR4 => dma_top_CurrentState_FSM_FFd2_924,
      ADR5 => '1',
      O => dma_top_CurrentState_FSM_FFd1_In
    );
  dma_top_Mmux_READY11 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"FFFF4F4F"
    )
    port map (
      ADR0 => dma_top_data_count(0),
      ADR1 => dma_top_data_count(1),
      ADR2 => dma_top_CurrentState_FSM_FFd3_923,
      ADR3 => '1',
      ADR4 => dma_top_CurrentState_FSM_FFd2_924,
      O => Ready_OBUF_733
    );
  top_Transmitter_data_count_2_top_Transmitter_data_count_2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Transmitter_data_count_0_pack_6,
      O => top_Transmitter_data_count(0)
    );
  top_Transmitter_data_count_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Transmitter_data_count_2_rstpot_746,
      O => top_Transmitter_data_count(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_data_count_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"7F80FF00FF00FF00"
    )
    port map (
      ADR0 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR1 => top_Transmitter_data_count(1),
      ADR2 => top_Transmitter_data_count(0),
      ADR3 => top_Transmitter_data_count(2),
      ADR4 => top_Transmitter_CurrentState_FSM_FFd2_883,
      ADR5 => top_Transmitter_CurrentState_FSM_FFd1_884,
      O => top_Transmitter_data_count_2_rstpot_746
    );
  top_Transmitter_data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Transmitter_data_count_1_rstpot_748,
      O => top_Transmitter_data_count(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_data_count_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"7F80FF007F80FF00"
    )
    port map (
      ADR0 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR1 => top_Transmitter_CurrentState_FSM_FFd2_883,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd1_884,
      ADR3 => top_Transmitter_data_count(1),
      ADR4 => top_Transmitter_data_count(0),
      ADR5 => '1',
      O => top_Transmitter_data_count_1_rstpot_748
    );
  top_Transmitter_data_count_0_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"7F7F8080"
    )
    port map (
      ADR0 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR1 => top_Transmitter_CurrentState_FSM_FFd2_883,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd1_884,
      ADR3 => '1',
      ADR4 => top_Transmitter_data_count(0),
      O => top_Transmitter_data_count_0_rstpot_750
    );
  top_Transmitter_data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Transmitter_data_count_0_rstpot_750,
      O => top_Transmitter_data_count_0_pack_6,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_LineRD_in : X_FF
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => RD_IBUF_0,
      O => top_LineRD_in_991,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Receiver_width_count_7_GND_7_o_equal_8_o_7_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => X"00FF00FFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_LineRD_in_991,
      ADR4 => '1',
      ADR5 => top_Receiver_CurrentState_FSM_FFd1_906,
      O => N12
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN : X_FF
    generic map(
      LOC => "SLICE_X14Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_1009,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_986,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X14Y13",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_988,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_1009,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y13"
    )
    port map (
      CI => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet(3),
      CYINIT => '0',
      CO(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_CO_3_UNCONNECTED,
      CO(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_CO_2_UNCONNECTED,
      CO(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_CO_1_UNCONNECTED,
      CO(0) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0,
      DI(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_DI_3_UNCONNECTED,
      DI(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_DI_2_UNCONNECTED,
      DI(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_O_3_UNCONNECTED,
      O(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_O_2_UNCONNECTED,
      O(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_O_1_UNCONNECTED,
      O(0) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_O_0_UNCONNECTED,
      S(3) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_S_3_UNCONNECTED,
      S(2) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_S_2_UNCONNECTED,
      S(1) => NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms_S_1_UNCONNECTED,
      S(0) => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(4)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X14Y13",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_1008,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_988,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X14Y13",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => Clk_BUFGP,
      I => '0',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_1008,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y13",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0,
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(9),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(8),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(8),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(4)
    );
  top_Internal_memory_BU2_dbiterr_4_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y13",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_4_A5LUT_O_UNCONNECTED
    );
  dma_top_data_count_1_dma_top_data_count_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address_1_LogicTrst1_pack_5,
      O => address_1_LogicTrst1
    );
  dma_top_data_count_1_dma_top_data_count_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dma_top_CurrentState_2_PWR_12_o_Mux_21_o_pack_3,
      O => dma_top_CurrentState_2_PWR_12_o_Mux_21_o
    );
  dma_top_CurrentState_DMA_RQ1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y6",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => dma_top_CurrentState_FSM_FFd3_923,
      ADR4 => dma_top_CurrentState_FSM_FFd2_924,
      ADR5 => '1',
      O => DMA_RQ_OBUF_921
    );
  address_1_LogicTrst11 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y6",
      INIT => X"FFFFFDFF"
    )
    port map (
      ADR0 => top_Ack_in_922,
      ADR1 => top_Transmitter_CurrentState_FSM_FFd2_883,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd1_884,
      ADR3 => dma_top_CurrentState_FSM_FFd3_923,
      ADR4 => dma_top_CurrentState_FSM_FFd2_924,
      O => address_1_LogicTrst1_pack_5
    );
  dma_top_data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y6",
      INIT => '0'
    )
    port map (
      CE => dma_top_CurrentState_2_PWR_12_o_Mux_21_o,
      CLK => Clk_BUFGP,
      I => dma_top_Mcount_data_count1,
      O => dma_top_data_count(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_Mcount_data_count_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y6",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => dma_top_data_count(1),
      ADR4 => dma_top_data_count(0),
      ADR5 => '1',
      O => dma_top_Mcount_data_count1
    );
  dma_top_Mmux_CurrentState_2_PWR_12_o_Mux_21_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y6",
      INIT => X"F3F3F0F3"
    )
    port map (
      ADR0 => '1',
      ADR1 => address_1_LogicTrst1,
      ADR2 => dma_top_CurrentState_FSM_FFd1_918,
      ADR3 => dma_top_data_count(1),
      ADR4 => dma_top_data_count(0),
      O => dma_top_CurrentState_2_PWR_12_o_Mux_21_o_pack_3
    );
  dma_top_data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y6",
      INIT => '0'
    )
    port map (
      CE => dma_top_CurrentState_2_PWR_12_o_Mux_21_o,
      CLK => Clk_BUFGP,
      I => dma_top_Mcount_data_count,
      O => dma_top_data_count(0),
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_Mcount_data_count_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y6",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => dma_top_data_count(0),
      ADR4 => '1',
      ADR5 => '1',
      O => dma_top_Mcount_data_count
    );
  N19_N19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N21,
      O => N21_0
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"0FFFFFFF0FFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => top_Receiver_width_count(2),
      ADR3 => top_Receiver_width_count(1),
      ADR4 => top_Receiver_width_count(0),
      ADR5 => '1',
      O => N19
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"3FFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Receiver_width_count(3),
      ADR2 => top_Receiver_width_count(2),
      ADR3 => top_Receiver_width_count(1),
      ADR4 => top_Receiver_width_count(0),
      O => N21
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y12",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_5_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_5_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_pack_13,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_5_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_5_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_pack_11,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_5_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"7F80FF00FF00FF00"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_5_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_3_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT42 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"3FC0FF003FC0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_3_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT51 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"6AAAAAAA"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_4_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_4_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_pack_13,
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_1_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_1_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"0FF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_2_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_2_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_pack_11,
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '1'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => Clk_BUFGP,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rd_pntr_plus1_0_inv,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR4 => '1',
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rd_pntr_plus1_0_inv
    );
  NlwBlock_NEXYS_TOP_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_NEXYS_TOP_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

