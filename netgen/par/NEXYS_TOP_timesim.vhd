--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: NEXYS_TOP_timesim.vhd
-- /___/   /\     Timestamp: Tue Jan 19 18:19:10 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf NEXYS_TOP.pcf -rpw 100 -tpw 0 -ar Structure -tm NEXYS_TOP -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim NEXYS_TOP.ncd NEXYS_TOP_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: NEXYS_TOP.ncd
-- Output file	: C:\Users\rboq\Documents\LCSE\PRACTICAIII\LCSE-PIII\netgen\par\NEXYS_TOP_timesim.vhd
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
  signal Clk_BUFGP : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb_0 : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd1_918 : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd2_919 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal Reset_IBUF_0 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_927 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_930 : STD_LOGIC; 
  signal DMA_ACK_IBUF_0 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_932 : STD_LOGIC; 
  signal Send_IBUF_0 : STD_LOGIC; 
  signal empty : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_935 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_936 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_937 : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd1_938 : STD_LOGIC; 
  signal top_Transmitter_width_count_7_PWR_6_o_equal_16_o : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd2_941 : STD_LOGIC; 
  signal top_StartTX_942 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en : STD_LOGIC; 
  signal data_read : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_947 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o : STD_LOGIC; 
  signal top_Fifo_write : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_950 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1_0 : STD_LOGIC; 
  signal top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41 : STD_LOGIC; 
  signal top_Ack_in_972 : STD_LOGIC; 
  signal TD_OBUF_973 : STD_LOGIC; 
  signal top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13 : STD_LOGIC; 
  signal top_LineRD_in_978 : STD_LOGIC; 
  signal top_Receiver_width_count_7_GND_7_o_equal_8_o : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb_0 : STD_LOGIC; 
  signal top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11 : STD_LOGIC; 
  signal top_Receiver_width_count_7_PWR_7_o_equal_4_o : STD_LOGIC; 
  signal top_Receiver_n0066_inv : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal tx_rdy : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal RD_IBUF_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_1002 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_1016 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_1017 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_1018 : STD_LOGIC; 
  signal top_Transmitter_en_width_count_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41 : STD_LOGIC; 
  signal Ready_OBUF_1026 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N21_0 : STD_LOGIC; 
  signal DMA_RQ_OBUF_1030 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0_0 : STD_LOGIC; 
  signal Clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_1044 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_1045 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_In1_1049 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT103 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81_1054 : STD_LOGIC; 
  signal rst_nexys : STD_LOGIC; 
  signal top_Internal_memory_BU2_N4 : STD_LOGIC; 
  signal top_Internal_memory_BU2_N2 : STD_LOGIC; 
  signal top_Internal_memory_BU2_N6 : STD_LOGIC; 
  signal ProtoComp36_CYINITVCC_1 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1 : STD_LOGIC; 
  signal ProtoComp38_CYINITVCC_1_45 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0 : STD_LOGIC; 
  signal ProtoComp39_CYINITVCC_1 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet_3_ProtoComp38_CYINITVCC_1 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0 : STD_LOGIC; 
  signal top_Transmitter_width_count_0_rt_193 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_1_Q_184 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_2_Q_175 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count1 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count2 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count3 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_3_Q_159 : STD_LOGIC; 
  signal top_Transmitter_width_count_4_rt_227 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_5_Q_219 : STD_LOGIC; 
  signal top_Transmitter_width_count_6_rt_214 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count4 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count5 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count6 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count7 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_7_Q_199 : STD_LOGIC; 
  signal RD_IBUF_253 : STD_LOGIC; 
  signal Reset_IBUF_258 : STD_LOGIC; 
  signal Send_IBUF_261 : STD_LOGIC; 
  signal Clk_BUFGP_IBUFG_264 : STD_LOGIC; 
  signal DMA_ACK_IBUF_267 : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_329 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_rt_327 : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q : STD_LOGIC; 
  signal N23_pack_11 : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd2_In_371 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rd_pntr_plus1_0_inv : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_pack_11 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_4_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_pack_13 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_5_Q : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd2_In_465 : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal top_Receiver_data_count_1_rstpot_495 : STD_LOGIC; 
  signal top_Receiver_data_count_0_pack_5 : STD_LOGIC; 
  signal top_Receiver_data_count_0_rstpot_490 : STD_LOGIC; 
  signal top_Receiver_data_count_2_rstpot_476 : STD_LOGIC; 
  signal top_Receiver_width_count_5_pack_3 : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_PWR_37_o_MUX_16_o : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_GND_11_o_MUX_2_o : STD_LOGIC; 
  signal top_Data_FF_7_rstpot_577 : STD_LOGIC; 
  signal top_Data_FF_7_pack_10 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_In : STD_LOGIC; 
  signal top_Transmitter_data_count_0_rstpot_611 : STD_LOGIC; 
  signal top_Transmitter_data_count_0_pack_8 : STD_LOGIC; 
  signal top_Transmitter_data_count_2_rstpot_606 : STD_LOGIC; 
  signal top_Transmitter_data_count_1_rstpot_598 : STD_LOGIC; 
  signal top_Valid_D_INV_19_o : STD_LOGIC; 
  signal top_Transmitter_en_width_count : STD_LOGIC; 
  signal dma_top_data_count_1_rstpot_636 : STD_LOGIC; 
  signal dma_top_data_count_0_rstpot_621 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_6_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_pack_7 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_7_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_6_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_pack_9 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt_680 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_9_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_GND_11_o_MUX_1_o : STD_LOGIC; 
  signal top_Valid_D_TX_RDY_i_AND_20_o : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_In : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_pack_10 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_pack_11 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal top_Internal_memory_BU2_N4_pack_8 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_8_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_9_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_7_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_8_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_rt_857 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_rt_852 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6_rt_847 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_rt_840 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_pack_9 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_4_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_5_Q : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_width_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_width_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_width_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_width_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_width_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_width_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_width_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_width_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Ready_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DMA_RQ_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TD_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_LineRD_in_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_LineRD_in_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_data_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_data_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_data_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Data_FF_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_CurrentState_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Ack_in_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_data_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_data_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_data_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_data_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_data_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_StartTX_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_CurrentState_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_CurrentState_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5_IN : STD_LOGIC; 
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
  signal GND : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_switches_0_OBUF_1_7_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_xor_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_xor_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_xor_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_xor_7_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_xor_7_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_switches_0_OBUF_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_switches_0_OBUF_1_3_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal top_Receiver_data_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal top_Receiver_width_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal dma_top_data_count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal top_Transmitter_data_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal top_Transmitter_width_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Transmitter_Mcount_width_count_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Data_FF : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wr_pntr_plus1 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_0,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_0,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
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
  ProtoComp36_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X14Y14"
    )
    port map (
      O => ProtoComp36_CYINITVCC_1
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y14"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp36_CYINITVCC_1,
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
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_0,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_0,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
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
      INIT => X"C00C3003C00C3003"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
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
      INIT => X"C00C3003C00C3003"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
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
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(9),
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
      LOC => "SLICE_X16Y11",
      INIT => X"A0500A05A0500A05"
    )
    port map (
      ADR1 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_0,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_0,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(3)
    );
  top_Internal_memory_BU2_dbiterr_15_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y11",
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
  ProtoComp38_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X16Y11"
    )
    port map (
      O => ProtoComp38_CYINITVCC_1_45
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y11"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp38_CYINITVCC_1_45,
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
      LOC => "SLICE_X16Y11",
      INIT => X"A50000A5A50000A5"
    )
    port map (
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_0,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_0,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(2)
    );
  top_Internal_memory_BU2_dbiterr_16_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y11",
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
      LOC => "SLICE_X16Y11",
      INIT => X"C00C3003C00C3003"
    )
    port map (
      ADR0 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(1)
    );
  top_Internal_memory_BU2_dbiterr_17_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y11",
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
      LOC => "SLICE_X16Y11",
      INIT => X"5005A00A5005A00A"
    )
    port map (
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_18_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y11",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y12"
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
      LOC => "SLICE_X16Y12",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(9),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(8),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(8),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(4)
    );
  top_Internal_memory_BU2_dbiterr_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y12",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y11",
      INIT => X"8822441188224411"
    )
    port map (
      ADR2 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(3)
    );
  top_Internal_memory_BU2_dbiterr_10_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y11",
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
  ProtoComp39_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X12Y11"
    )
    port map (
      O => ProtoComp39_CYINITVCC_1
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y11"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp39_CYINITVCC_1,
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
      LOC => "SLICE_X12Y11",
      INIT => X"A0500A05A0500A05"
    )
    port map (
      ADR1 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(2)
    );
  top_Internal_memory_BU2_dbiterr_11_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y11",
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
      LOC => "SLICE_X12Y11",
      INIT => X"9009900990099009"
    )
    port map (
      ADR4 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(1)
    );
  top_Internal_memory_BU2_dbiterr_12_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y11",
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
      LOC => "SLICE_X12Y11",
      INIT => X"8282414182824141"
    )
    port map (
      ADR3 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_13_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y11",
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
      LOC => "SLICE_X12Y12"
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
      LOC => "SLICE_X12Y12",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(9),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(8),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(4)
    );
  top_Internal_memory_BU2_dbiterr_9_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y12",
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
      LOC => "SLICE_X14Y11",
      INIT => X"9900009999000099"
    )
    port map (
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_0,
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_0,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(3)
    );
  top_Internal_memory_BU2_dbiterr_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y11",
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
  ProtoComp38_CYINITVCC_1 : X_ONE
    generic map(
      LOC => "SLICE_X14Y11"
    )
    port map (
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet_3_ProtoComp38_CYINITVCC_1
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y11"
    )
    port map (
      CI => '0',
      CYINIT => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet_3_ProtoComp38_CYINITVCC_1,
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
      LOC => "SLICE_X14Y11",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_0,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_0,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(2)
    );
  top_Internal_memory_BU2_dbiterr_6_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y11",
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
      LOC => "SLICE_X14Y11",
      INIT => X"A0500A05A0500A05"
    )
    port map (
      ADR1 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(1)
    );
  top_Internal_memory_BU2_dbiterr_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y11",
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
      LOC => "SLICE_X14Y11",
      INIT => X"3003C00C3003C00C"
    )
    port map (
      ADR0 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_8_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y11",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y12"
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => X"C00C3003C00C3003"
    )
    port map (
      ADR0 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(9),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(8),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(8),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(4)
    );
  top_Internal_memory_BU2_dbiterr_4_A5LUT : X_LUT5
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
      O => NLW_top_Internal_memory_BU2_dbiterr_4_A5LUT_O_UNCONNECTED
    );
  top_Transmitter_width_count_3 : X_FF
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => '0'
    )
    port map (
      CE => top_Transmitter_en_width_count_0,
      CLK => NlwBufferSignal_top_Transmitter_width_count_3_CLK,
      I => top_Transmitter_Mcount_width_count3,
      O => top_Transmitter_width_count(3),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_Mcount_width_count_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"FF7FFFFF00000000"
    )
    port map (
      ADR2 => top_Transmitter_width_count(7),
      ADR0 => top_Transmitter_width_count(5),
      ADR1 => top_Transmitter_width_count(2),
      ADR5 => top_Transmitter_width_count(3),
      ADR4 => top_Transmitter_width_count(1),
      ADR3 => N2,
      O => top_Transmitter_Mcount_width_count_lut_3_Q_159
    );
  top_Transmitter_width_count_2 : X_FF
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => '0'
    )
    port map (
      CE => top_Transmitter_en_width_count_0,
      CLK => NlwBufferSignal_top_Transmitter_width_count_2_CLK,
      I => top_Transmitter_Mcount_width_count2,
      O => top_Transmitter_width_count(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_Mcount_width_count_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y4"
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
      S(3) => top_Transmitter_Mcount_width_count_lut_3_Q_159,
      S(2) => top_Transmitter_Mcount_width_count_lut_2_Q_175,
      S(1) => top_Transmitter_Mcount_width_count_lut_1_Q_184,
      S(0) => top_Transmitter_width_count_0_rt_193
    );
  top_Transmitter_Mcount_width_count_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"FFFF00007FFF0000"
    )
    port map (
      ADR2 => top_Transmitter_width_count(7),
      ADR3 => top_Transmitter_width_count(5),
      ADR1 => top_Transmitter_width_count(3),
      ADR4 => top_Transmitter_width_count(2),
      ADR0 => top_Transmitter_width_count(1),
      ADR5 => N2,
      O => top_Transmitter_Mcount_width_count_lut_2_Q_175
    );
  top_Transmitter_width_count_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => '0'
    )
    port map (
      CE => top_Transmitter_en_width_count_0,
      CLK => NlwBufferSignal_top_Transmitter_width_count_1_CLK,
      I => top_Transmitter_Mcount_width_count1,
      O => top_Transmitter_width_count(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_Mcount_width_count_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"FF007F00FF00FF00"
    )
    port map (
      ADR1 => top_Transmitter_width_count(7),
      ADR0 => top_Transmitter_width_count(5),
      ADR2 => top_Transmitter_width_count(3),
      ADR3 => top_Transmitter_width_count(1),
      ADR5 => top_Transmitter_width_count(2),
      ADR4 => N2,
      O => top_Transmitter_Mcount_width_count_lut_1_Q_184
    );
  top_Transmitter_width_count_0 : X_FF
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => '0'
    )
    port map (
      CE => top_Transmitter_en_width_count_0,
      CLK => NlwBufferSignal_top_Transmitter_width_count_0_CLK,
      I => top_Transmitter_Mcount_width_count,
      O => top_Transmitter_width_count(0),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_width_count_0_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Transmitter_width_count(0),
      ADR3 => '1',
      ADR5 => '1',
      O => top_Transmitter_width_count_0_rt_193
    );
  switches_0_OBUF_1_7_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_switches_0_OBUF_1_7_A5LUT_O_UNCONNECTED
    );
  top_Transmitter_width_count_7 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => top_Transmitter_en_width_count_0,
      CLK => NlwBufferSignal_top_Transmitter_width_count_7_CLK,
      I => top_Transmitter_Mcount_width_count7,
      O => top_Transmitter_width_count(7),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_Mcount_width_count_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"F7FFFFFF00000000"
    )
    port map (
      ADR1 => top_Transmitter_width_count(2),
      ADR0 => top_Transmitter_width_count(1),
      ADR3 => top_Transmitter_width_count(5),
      ADR5 => top_Transmitter_width_count(7),
      ADR4 => top_Transmitter_width_count(3),
      ADR2 => N2,
      O => top_Transmitter_Mcount_width_count_lut_7_Q_199
    );
  top_Transmitter_width_count_6 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => top_Transmitter_en_width_count_0,
      CLK => NlwBufferSignal_top_Transmitter_width_count_6_CLK,
      I => top_Transmitter_Mcount_width_count6,
      O => top_Transmitter_width_count(6),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_Mcount_width_count_xor_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y5"
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
      S(3) => top_Transmitter_Mcount_width_count_lut_7_Q_199,
      S(2) => top_Transmitter_width_count_6_rt_214,
      S(1) => top_Transmitter_Mcount_width_count_lut_5_Q_219,
      S(0) => top_Transmitter_width_count_4_rt_227
    );
  top_Transmitter_width_count_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Transmitter_width_count(6),
      ADR3 => '1',
      ADR5 => '1',
      O => top_Transmitter_width_count_6_rt_214
    );
  switches_0_OBUF_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_switches_0_OBUF_C5LUT_O_UNCONNECTED
    );
  top_Transmitter_width_count_5 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => top_Transmitter_en_width_count_0,
      CLK => NlwBufferSignal_top_Transmitter_width_count_5_CLK,
      I => top_Transmitter_Mcount_width_count5,
      O => top_Transmitter_width_count(5),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_Mcount_width_count_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"FFFF00007FFF0000"
    )
    port map (
      ADR2 => top_Transmitter_width_count(7),
      ADR3 => top_Transmitter_width_count(3),
      ADR1 => top_Transmitter_width_count(2),
      ADR4 => top_Transmitter_width_count(5),
      ADR0 => top_Transmitter_width_count(1),
      ADR5 => N2,
      O => top_Transmitter_Mcount_width_count_lut_5_Q_219
    );
  top_Transmitter_width_count_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => top_Transmitter_en_width_count_0,
      CLK => NlwBufferSignal_top_Transmitter_width_count_4_CLK,
      I => top_Transmitter_Mcount_width_count4,
      O => top_Transmitter_width_count(4),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_width_count_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Transmitter_width_count(4),
      ADR3 => '1',
      ADR5 => '1',
      O => top_Transmitter_width_count_4_rt_227
    );
  switches_0_OBUF_1_3_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_switches_0_OBUF_1_3_A5LUT_O_UNCONNECTED
    );
  Ready_OBUF : X_OBUF
    generic map(
      LOC => "PAD164"
    )
    port map (
      I => NlwBufferSignal_Ready_OBUF_I,
      O => Ready
    );
  switches_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD158"
    )
    port map (
      I => '0',
      O => switches(0)
    );
  DMA_RQ_OBUF : X_OBUF
    generic map(
      LOC => "PAD176"
    )
    port map (
      I => NlwBufferSignal_DMA_RQ_OBUF_I,
      O => DMA_RQ
    );
  switches_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => '0',
      O => switches(1)
    );
  switches_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => '0',
      O => switches(2)
    );
  switches_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD157"
    )
    port map (
      I => '0',
      O => switches(3)
    );
  switches_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => '0',
      O => switches(4)
    );
  switches_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD163"
    )
    port map (
      I => '0',
      O => switches(5)
    );
  switches_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD161"
    )
    port map (
      I => '0',
      O => switches(6)
    );
  switches_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD167"
    )
    port map (
      I => '0',
      O => switches(7)
    );
  RD_IBUF : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 202 ps
    )
    port map (
      O => RD_IBUF_253,
      I => RD
    );
  ProtoComp43_IMUX : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 202 ps
    )
    port map (
      I => RD_IBUF_253,
      O => RD_IBUF_0
    );
  TD_OBUF : X_OBUF
    generic map(
      LOC => "PAD172"
    )
    port map (
      I => NlwBufferSignal_TD_OBUF_I,
      O => TD
    );
  Reset_IBUF : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 202 ps
    )
    port map (
      O => Reset_IBUF_258,
      I => Reset
    );
  ProtoComp43_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 202 ps
    )
    port map (
      I => Reset_IBUF_258,
      O => Reset_IBUF_0
    );
  Send_IBUF : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 202 ps
    )
    port map (
      O => Send_IBUF_261,
      I => Send
    );
  ProtoComp43_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 202 ps
    )
    port map (
      I => Send_IBUF_261,
      O => Send_IBUF_0
    );
  Clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => Clk_BUFGP_IBUFG_264,
      I => Clk
    );
  ProtoComp43_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP_IBUFG_264,
      O => Clk_BUFGP_IBUFG_0
    );
  DMA_ACK_IBUF : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 202 ps
    )
    port map (
      O => DMA_ACK_IBUF_267,
      I => DMA_ACK
    );
  ProtoComp43_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 202 ps
    )
    port map (
      I => DMA_ACK_IBUF_267,
      O => DMA_ACK_IBUF_0
    );
  Clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_Clk_BUFGP_BUFG_IN,
      O => Clk_BUFGP
    );
  top_Receiver_width_count_7 : X_FF
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_7_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q,
      O => top_Receiver_width_count(7),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => X"00B00BBB00400444"
    )
    port map (
      ADR1 => top_Receiver_width_count(6),
      ADR2 => N23,
      ADR0 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11,
      ADR5 => top_Receiver_width_count(7),
      ADR3 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR4 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q
    );
  top_Receiver_width_count_6 : X_FF
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_6_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q,
      O => top_Receiver_width_count(6),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => X"2070020700F0000F"
    )
    port map (
      ADR0 => top_Receiver_CurrentState_FSM_FFd1_918,
      ADR5 => top_Receiver_CurrentState_FSM_FFd2_919,
      ADR2 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11,
      ADR4 => top_Receiver_width_count(6),
      ADR1 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR3 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q
    );
  top_Receiver_width_count_4 : X_FF
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_4_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q,
      O => top_Receiver_width_count(4),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT52 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => X"400070F00400070F"
    )
    port map (
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_918,
      ADR3 => top_Receiver_CurrentState_FSM_FFd2_919,
      ADR5 => N21_0,
      ADR2 => top_Receiver_width_count(4),
      ADR0 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR4 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q
    );
  top_Receiver_width_count_3 : X_FF
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_3_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q,
      O => top_Receiver_width_count(3),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y9",
      INIT => X"08002AAA04001555"
    )
    port map (
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_918,
      ADR3 => top_Receiver_CurrentState_FSM_FFd2_919,
      ADR5 => N19,
      ADR0 => top_Receiver_width_count(3),
      ADR2 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR4 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q
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
      LOC => "SLICE_X9Y9",
      INIT => X"3FFF3FFF3FFF3FFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => top_Receiver_width_count(2),
      ADR2 => top_Receiver_width_count(1),
      ADR3 => top_Receiver_width_count(0),
      ADR5 => '1',
      O => N19
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y9",
      INIT => X"7FFF7FFF"
    )
    port map (
      ADR4 => '1',
      ADR0 => top_Receiver_width_count(3),
      ADR1 => top_Receiver_width_count(2),
      ADR2 => top_Receiver_width_count(1),
      ADR3 => top_Receiver_width_count(0),
      O => N21
    );
  top_LineRD_in : X_FF
    generic map(
      LOC => "SLICE_X9Y10",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_LineRD_in_CLK,
      I => NlwBufferSignal_top_LineRD_in_IN,
      O => top_LineRD_in_978,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Receiver_width_count_7_GND_7_o_equal_8_o_7_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y10",
      INIT => X"0000FFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_LineRD_in_978,
      ADR3 => '1',
      ADR5 => top_Receiver_CurrentState_FSM_FFd1_918,
      O => N12
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_329,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X9Y11",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_1044,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X9Y11",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_1002,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X9Y11",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_CLK,
      I => '0',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_1045,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y11",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_1044,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_rt_327
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN : X_FF
    generic map(
      LOC => "SLICE_X9Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_rt_327,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_329,
      RST => Reset_IBUF_0,
      SET => GND
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
      LOC => "SLICE_X10Y9",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_2_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q,
      O => top_Receiver_width_count(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y9",
      INIT => X"020A0800135F4C00"
    )
    port map (
      ADR1 => top_Receiver_width_count(1),
      ADR3 => top_Receiver_width_count(0),
      ADR0 => N23,
      ADR4 => top_Receiver_width_count(2),
      ADR2 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR5 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q
    );
  top_Receiver_width_count_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y9",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_1_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q,
      O => top_Receiver_width_count(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y9",
      INIT => X"0000533353330000"
    )
    port map (
      ADR5 => top_Receiver_width_count(0),
      ADR3 => top_Receiver_CurrentState_FSM_FFd1_918,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_919,
      ADR4 => top_Receiver_width_count(1),
      ADR0 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR1 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q
    );
  top_Receiver_width_count_0 : X_FF
    generic map(
      LOC => "SLICE_X10Y9",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_0_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q,
      O => top_Receiver_width_count(0),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y9",
      INIT => X"000077FF000077FF"
    )
    port map (
      ADR2 => '1',
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_918,
      ADR0 => top_Receiver_CurrentState_FSM_FFd2_919,
      ADR4 => top_Receiver_width_count(0),
      ADR3 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR5 => '1',
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW2 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y9",
      INIT => X"88888888"
    )
    port map (
      ADR2 => '1',
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_918,
      ADR0 => top_Receiver_CurrentState_FSM_FFd2_919,
      ADR3 => '1',
      ADR4 => '1',
      O => N23_pack_11
    );
  top_Receiver_width_count_7_PWR_7_o_equal_4_o_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y9",
      INIT => X"0008000000000000"
    )
    port map (
      ADR5 => top_Receiver_width_count(5),
      ADR4 => top_Receiver_width_count(3),
      ADR2 => top_Receiver_width_count(4),
      ADR0 => top_Receiver_width_count(7),
      ADR1 => top_Receiver_width_count(2),
      ADR3 => N6,
      O => top_Receiver_width_count_7_PWR_7_o_equal_4_o
    );
  top_Receiver_CurrentState_FSM_FFd2_In_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y10",
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
      LOC => "SLICE_X10Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd2_CLK,
      I => top_Receiver_CurrentState_FSM_FFd2_In_371,
      O => top_Receiver_CurrentState_FSM_FFd2_919,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_CurrentState_FSM_FFd2_In : X_LUT6
    generic map(
      LOC => "SLICE_X10Y10",
      INIT => X"7F007F0FFF00FF0F"
    )
    port map (
      ADR1 => top_Receiver_data_count(0),
      ADR2 => top_Receiver_CurrentState_FSM_FFd1_918,
      ADR0 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR3 => top_Receiver_CurrentState_FSM_FFd2_919,
      ADR5 => N10,
      ADR4 => top_LineRD_in_978,
      O => top_Receiver_CurrentState_FSM_FFd2_In_371
    );
  top_Receiver_width_count_7_GND_7_o_equal_8_o_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y10",
      INIT => X"000000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => top_Receiver_width_count(3),
      ADR3 => top_Receiver_width_count(6),
      ADR2 => top_Receiver_width_count(7),
      ADR4 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      O => top_Receiver_width_count_7_GND_7_o_equal_8_o
    );
  top_Receiver_CurrentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X10Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd1_CLK,
      I => top_Receiver_CurrentState_FSM_FFd1_In,
      O => top_Receiver_CurrentState_FSM_FFd1_918,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_CurrentState_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y10",
      INIT => X"FF33FFFF33000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => top_Receiver_CurrentState_FSM_FFd2_919,
      ADR5 => top_Receiver_CurrentState_FSM_FFd1_918,
      ADR1 => top_LineRD_in_978,
      ADR4 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_CurrentState_FSM_FFd1_In
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y11",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3 : X_FF
    generic map(
      LOC => "SLICE_X10Y11",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2 : X_FF
    generic map(
      LOC => "SLICE_X10Y11",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y11",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_IN,
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
      LOC => "SLICE_X10Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_5_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_5_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_5_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_3 : X_FF
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_3_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_3_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT42 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"3FFFC0003FFFC000"
    )
    port map (
      ADR0 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_3_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT51 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"6AAAAAAA"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_4_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_4_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_pack_13,
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_1_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_1_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"3333CCCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_1_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"6666AAAA"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_2_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2 : X_FF
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_2_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_pack_11,
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_0 : X_FF
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => '1'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_0_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rd_pntr_plus1_0_inv,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR4 => '1',
      ADR3 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rd_pntr_plus1_0_inv
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X10Y17",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_CLK,
      I => '0',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb_0,
      RST => GND
    );
  top_Transmitter_width_count_7_PWR_6_o_equal_16_o_7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => X"FFFFFFFFFFFFF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => top_Transmitter_width_count(6),
      ADR4 => top_Transmitter_width_count(4),
      ADR5 => top_Transmitter_width_count(0),
      O => N2
    );
  top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => X"DFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => top_Transmitter_width_count(5),
      ADR2 => top_Transmitter_width_count(3),
      ADR4 => top_Transmitter_width_count(7),
      ADR5 => top_Transmitter_width_count(2),
      ADR1 => N2,
      ADR3 => top_Transmitter_width_count(1),
      O => top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv
    );
  top_Transmitter_CurrentState_FSM_FFd2_In_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y5",
      INIT => X"FF00FF0000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => top_Transmitter_data_count(1),
      ADR5 => top_Transmitter_data_count(0),
      O => N0
    );
  top_Transmitter_CurrentState_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X11Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd2_CLK,
      I => top_Transmitter_CurrentState_FSM_FFd2_In_465,
      O => top_Transmitter_CurrentState_FSM_FFd2_941,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_CurrentState_FSM_FFd2_In : X_LUT6
    generic map(
      LOC => "SLICE_X11Y5",
      INIT => X"77FF5050FFFF5050"
    )
    port map (
      ADR0 => top_Transmitter_CurrentState_FSM_FFd1_938,
      ADR3 => top_Transmitter_data_count(2),
      ADR1 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR4 => top_Transmitter_CurrentState_FSM_FFd2_941,
      ADR5 => N0,
      ADR2 => top_StartTX_942,
      O => top_Transmitter_CurrentState_FSM_FFd2_In_465
    );
  top_Transmitter_CurrentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X11Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd1_CLK,
      I => top_Transmitter_CurrentState_FSM_FFd1_In,
      O => top_Transmitter_CurrentState_FSM_FFd1_938,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_CurrentState_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y5",
      INIT => X"AAAAAAAAFFFF0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Transmitter_CurrentState_FSM_FFd1_938,
      ADR5 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR0 => top_Transmitter_CurrentState_FSM_FFd2_941,
      O => top_Transmitter_CurrentState_FSM_FFd1_In
    );
  top_Transmitter_width_count_7_PWR_6_o_equal_16_o_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y5",
      INIT => X"0000000080000000"
    )
    port map (
      ADR4 => top_Transmitter_width_count(5),
      ADR3 => top_Transmitter_width_count(3),
      ADR2 => top_Transmitter_width_count(7),
      ADR1 => top_Transmitter_width_count(2),
      ADR0 => top_Transmitter_width_count(1),
      ADR5 => N2,
      O => top_Transmitter_width_count_7_PWR_6_o_equal_16_o
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
      LOC => "SLICE_X11Y9",
      INIT => X"0000800000000000"
    )
    port map (
      ADR5 => top_Receiver_width_count(7),
      ADR1 => top_Receiver_width_count(2),
      ADR3 => top_Receiver_width_count(3),
      ADR0 => top_Receiver_data_count(1),
      ADR2 => top_Receiver_width_count(5),
      ADR4 => top_Receiver_width_count(4),
      O => N43
    );
  top_Receiver_width_count_7_PWR_7_o_equal_4_o_7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y9",
      INIT => X"FFAFFFAFFFAFFFAF"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR0 => top_Receiver_width_count(6),
      ADR3 => top_Receiver_width_count(0),
      ADR2 => top_Receiver_width_count(1),
      O => N6
    );
  top_Receiver_data_count_2 : X_FF
    generic map(
      LOC => "SLICE_X11Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_data_count_2_CLK,
      I => top_Receiver_data_count_2_rstpot_476,
      O => top_Receiver_data_count(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_data_count_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y9",
      INIT => X"FF7F0080FFFF0000"
    )
    port map (
      ADR1 => N43,
      ADR0 => top_Receiver_CurrentState_FSM_FFd1_918,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_919,
      ADR4 => top_Receiver_data_count(2),
      ADR5 => top_Receiver_data_count(0),
      ADR3 => N6,
      O => top_Receiver_data_count_2_rstpot_476
    );
  top_Receiver_data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_data_count_1_CLK,
      I => top_Receiver_data_count_1_rstpot_495,
      O => top_Receiver_data_count(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_data_count_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y9",
      INIT => X"7FFF80007FFF8000"
    )
    port map (
      ADR3 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR0 => top_Receiver_CurrentState_FSM_FFd1_918,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_919,
      ADR4 => top_Receiver_data_count(1),
      ADR1 => top_Receiver_data_count(0),
      ADR5 => '1',
      O => top_Receiver_data_count_1_rstpot_495
    );
  top_Receiver_data_count_0_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X11Y9",
      INIT => X"6CCC6CCC"
    )
    port map (
      ADR3 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR0 => top_Receiver_CurrentState_FSM_FFd1_918,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_919,
      ADR4 => '1',
      ADR1 => top_Receiver_data_count(0),
      O => top_Receiver_data_count_0_rstpot_490
    );
  top_Receiver_data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_data_count_0_CLK,
      I => top_Receiver_data_count_0_rstpot_490,
      O => top_Receiver_data_count_0_pack_5,
      RST => Reset_IBUF_0,
      SET => GND
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
      LOC => "SLICE_X11Y10",
      INIT => X"0C00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => top_Receiver_width_count(5),
      ADR4 => top_Receiver_width_count(1),
      ADR3 => top_Receiver_width_count(4),
      ADR1 => top_Receiver_width_count(0),
      ADR5 => top_Receiver_width_count(2),
      O => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13
    );
  top_Receiver_n0066_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y10",
      INIT => X"FFFFCCCCFFFFCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => top_Receiver_CurrentState_FSM_FFd2_919,
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_918,
      ADR5 => '1',
      O => top_Receiver_n0066_inv
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT6 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y10",
      INIT => X"1D005500"
    )
    port map (
      ADR3 => N27,
      ADR0 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      ADR2 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR4 => top_Receiver_CurrentState_FSM_FFd2_919,
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_918,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q
    );
  top_Receiver_width_count_5 : X_FF
    generic map(
      LOC => "SLICE_X11Y10",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_5_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q,
      O => top_Receiver_width_count_5_pack_3,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_Store_out11 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y10",
      INIT => X"0000000000040000"
    )
    port map (
      ADR4 => top_Receiver_width_count(6),
      ADR3 => top_Receiver_width_count(7),
      ADR0 => top_Receiver_width_count(3),
      ADR5 => top_Receiver_CurrentState_FSM_FFd2_919,
      ADR2 => N12,
      ADR1 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      O => top_Fifo_write
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_ram_wr_en_i1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y10",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => top_Fifo_write,
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_950,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i : X_FF
    generic map(
      LOC => "SLICE_X11Y11",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_PWR_37_o_MUX_16_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_950,
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_1002,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_PWR_37_o_MUX_16_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y11",
      INIT => X"005000505C5C5050"
    )
    port map (
      ADR4 => top_Fifo_write,
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_0,
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_950,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0_0,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1_0,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_PWR_37_o_MUX_16_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_AMUX_Delay : 
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
      LOC => "SLICE_X11Y17",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_GND_11_o_MUX_2_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_936,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_Mmux_rd_rst_asreg_GND_11_o_MUX_2_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y17",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_936,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_935,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_GND_11_o_MUX_2_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y17",
      INIT => X"0F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_937,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_936,
      ADR3 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X11Y18",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_937,
      RST => GND,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X11Y18",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_935,
      RST => GND,
      SET => GND
    );
  dma_top_CurrentState_FSM_FFd3_dma_top_CurrentState_FSM_FFd3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Data_FF_7_pack_10,
      O => top_Data_FF(7)
    );
  top_Transmitter_TX1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"AF0FAF0FAF0FAF0F"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_941,
      ADR0 => top_Data_FF(7),
      ADR3 => top_Transmitter_CurrentState_FSM_FFd1_938,
      ADR5 => '1',
      O => TD_OBUF_973
    );
  top_Data_FF_7_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"AAAEAAA2"
    )
    port map (
      ADR1 => dma_top_CurrentState_FSM_FFd3_930,
      ADR4 => N35,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_941,
      ADR0 => top_Data_FF(7),
      ADR3 => top_Transmitter_CurrentState_FSM_FFd1_938,
      O => top_Data_FF_7_rstpot_577
    );
  top_Data_FF_7 : X_FF
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Data_FF_7_CLK,
      I => top_Data_FF_7_rstpot_577,
      O => top_Data_FF_7_pack_10,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_7_rstpot_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"CE00FF31FF00FF00"
    )
    port map (
      ADR3 => top_Data_FF(7),
      ADR5 => top_Ack_in_972,
      ADR0 => dma_top_data_count(1),
      ADR2 => dma_top_data_count(0),
      ADR1 => dma_top_CurrentState_FSM_FFd2_927,
      ADR4 => dma_top_CurrentState_FSM_FFd1_932,
      O => N35
    );
  dma_top_CurrentState_FSM_FFd3_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"0C0C0C0C00000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => dma_top_CurrentState_FSM_FFd1_932,
      ADR1 => Send_IBUF_0,
      ADR5 => empty,
      O => dma_top_CurrentState_FSM_FFd3_In1_1049
    );
  dma_top_CurrentState_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_dma_top_CurrentState_FSM_FFd3_CLK,
      I => dma_top_CurrentState_FSM_FFd3_In,
      O => dma_top_CurrentState_FSM_FFd3_930,
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_CurrentState_FSM_FFd3_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"55D855D800D855D8"
    )
    port map (
      ADR0 => dma_top_CurrentState_FSM_FFd2_927,
      ADR4 => dma_top_data_count(1),
      ADR5 => dma_top_data_count(0),
      ADR3 => dma_top_CurrentState_FSM_FFd3_930,
      ADR2 => dma_top_CurrentState_FSM_FFd3_In1_1049,
      ADR1 => DMA_ACK_IBUF_0,
      O => dma_top_CurrentState_FSM_FFd3_In
    );
  top_Ack_in_top_Ack_in_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Transmitter_en_width_count,
      O => top_Transmitter_en_width_count_0
    );
  top_Ack_in_top_Ack_in_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Transmitter_data_count_0_pack_8,
      O => top_Transmitter_data_count(0)
    );
  top_Transmitter_CurrentState_n0054_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"0033003300330033"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => top_Transmitter_CurrentState_FSM_FFd2_941,
      ADR1 => top_Transmitter_CurrentState_FSM_FFd1_938,
      ADR5 => '1',
      O => tx_rdy
    );
  top_Transmitter_CurrentState_n0054_1_1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"FFCCFFCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => top_Transmitter_CurrentState_FSM_FFd2_941,
      ADR1 => top_Transmitter_CurrentState_FSM_FFd1_938,
      O => top_Transmitter_en_width_count
    );
  top_Ack_in : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Ack_in_CLK,
      I => top_Valid_D_INV_19_o,
      O => top_Ack_in_972,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Valid_D_INV_19_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"AFEFFFFFFFFFFFFF"
    )
    port map (
      ADR5 => tx_rdy,
      ADR0 => dma_top_CurrentState_FSM_FFd2_927,
      ADR1 => dma_top_data_count(1),
      ADR4 => top_Ack_in_972,
      ADR3 => dma_top_data_count(0),
      ADR2 => dma_top_CurrentState_FSM_FFd3_930,
      O => top_Valid_D_INV_19_o
    );
  top_Transmitter_data_count_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_data_count_2_CLK,
      I => top_Transmitter_data_count_2_rstpot_606,
      O => top_Transmitter_data_count(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_data_count_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR1 => top_Transmitter_data_count(1),
      ADR3 => top_Transmitter_data_count(0),
      ADR0 => top_Transmitter_data_count(2),
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_941,
      ADR5 => top_Transmitter_CurrentState_FSM_FFd1_938,
      O => top_Transmitter_data_count_2_rstpot_606
    );
  top_Transmitter_data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_data_count_1_CLK,
      I => top_Transmitter_data_count_1_rstpot_598,
      O => top_Transmitter_data_count(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_data_count_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"6CCCCCCC6CCCCCCC"
    )
    port map (
      ADR4 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_941,
      ADR3 => top_Transmitter_CurrentState_FSM_FFd1_938,
      ADR1 => top_Transmitter_data_count(1),
      ADR0 => top_Transmitter_data_count(0),
      ADR5 => '1',
      O => top_Transmitter_data_count_1_rstpot_598
    );
  top_Transmitter_data_count_0_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"5AAAAAAA"
    )
    port map (
      ADR4 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_941,
      ADR3 => top_Transmitter_CurrentState_FSM_FFd1_938,
      ADR1 => '1',
      ADR0 => top_Transmitter_data_count(0),
      O => top_Transmitter_data_count_0_rstpot_611
    );
  top_Transmitter_data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_data_count_0_CLK,
      I => top_Transmitter_data_count_0_rstpot_611,
      O => top_Transmitter_data_count_0_pack_8,
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_Mmux_TX_Data611_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => dma_top_CurrentState_FSM_FFd2_927,
      ADR0 => dma_top_CurrentState_FSM_FFd3_930,
      O => N33
    );
  dma_top_data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_dma_top_data_count_1_CLK,
      I => dma_top_data_count_1_rstpot_636,
      O => dma_top_data_count(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_data_count_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"3777C88877778888"
    )
    port map (
      ADR0 => dma_top_CurrentState_FSM_FFd1_932,
      ADR2 => tx_rdy,
      ADR3 => N33,
      ADR4 => dma_top_data_count(1),
      ADR5 => top_Ack_in_972,
      ADR1 => dma_top_data_count(0),
      O => dma_top_data_count_1_rstpot_636
    );
  dma_top_data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_dma_top_data_count_0_CLK,
      I => dma_top_data_count_0_rstpot_621,
      O => dma_top_data_count(0),
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_data_count_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"050F0F0FF2F0F0F0"
    )
    port map (
      ADR2 => dma_top_CurrentState_FSM_FFd1_932,
      ADR0 => N33,
      ADR4 => tx_rdy,
      ADR5 => dma_top_data_count(0),
      ADR3 => top_Ack_in_972,
      ADR1 => dma_top_data_count(1),
      O => dma_top_data_count_0_rstpot_621
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      ADR5 => top_Receiver_width_count(5),
      ADR2 => top_Receiver_width_count(1),
      ADR3 => top_Receiver_width_count(0),
      ADR4 => top_Receiver_width_count(4),
      ADR0 => top_Receiver_width_count(3),
      ADR1 => top_Receiver_width_count(2),
      O => N27
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
      LOC => "SLICE_X12Y13",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_7_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"CC6CCCCCCCCCCCCC"
    )
    port map (
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_7_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT411 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"FFFF5F5FFFFF5F5F"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"AAAA5A5A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_2_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_2_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_pack_7,
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6 : X_FF
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_6_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"FFFF77FF00008800"
    )
    port map (
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_6_Q
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(9),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT1031 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"0000800000008000"
    )
    port map (
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT103
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT71 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"AAAA6AAA"
    )
    port map (
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_6_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6 : X_FF
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_6_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_pack_9,
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT411 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"0FFFFFFF0FFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT811 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"FF5FFFFFFFFFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81_1054
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9 : X_FF
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_9_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT101 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"FF807780FF807780"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT103,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81_1054,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_9_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      ADR4 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt_680
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9 : X_FF
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt_680,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(9),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_DMUX_Delay : 
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
      LOC => "SLICE_X12Y15",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_GND_11_o_MUX_1_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_1017,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_Mmux_wr_rst_asreg_GND_11_o_MUX_1_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"5555000055550000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_1017,
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_1016,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_GND_11_o_MUX_1_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"33330000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_1018,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_1017,
      ADR3 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X12Y16",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_1018,
      RST => GND,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X12Y16",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_1016,
      RST => GND,
      SET => GND
    );
  top_StartTX : X_FF
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => '0'
    )
    port map (
      CE => rst_nexys,
      CLK => NlwBufferSignal_top_StartTX_CLK,
      I => top_Valid_D_TX_RDY_i_AND_20_o,
      O => top_StartTX_942,
      RST => GND,
      SET => GND
    );
  top_Valid_D_TX_RDY_i_AND_20_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => X"5010000000000000"
    )
    port map (
      ADR2 => dma_top_CurrentState_FSM_FFd3_930,
      ADR4 => top_Ack_in_972,
      ADR0 => dma_top_CurrentState_FSM_FFd2_927,
      ADR5 => tx_rdy,
      ADR1 => dma_top_data_count(1),
      ADR3 => dma_top_data_count(0),
      O => top_Valid_D_TX_RDY_i_AND_20_o
    );
  rst_nexys1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => Reset_IBUF_0,
      O => rst_nexys
    );
  Ready_OBUF_Ready_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dma_top_CurrentState_FSM_FFd1_pack_11,
      O => dma_top_CurrentState_FSM_FFd1_932
    );
  Ready_OBUF_Ready_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dma_top_CurrentState_FSM_FFd2_pack_10,
      O => dma_top_CurrentState_FSM_FFd2_927
    );
  dma_top_Mmux_READY11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"F0FAFFFFF0FAFFFF"
    )
    port map (
      ADR1 => '1',
      ADR2 => dma_top_CurrentState_FSM_FFd2_927,
      ADR4 => dma_top_CurrentState_FSM_FFd3_930,
      ADR0 => dma_top_data_count(1),
      ADR3 => dma_top_data_count(0),
      ADR5 => '1',
      O => Ready_OBUF_1026
    );
  dma_top_CurrentState_FSM_FFd1_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"F4FC44CC"
    )
    port map (
      ADR1 => dma_top_CurrentState_FSM_FFd1_932,
      ADR2 => dma_top_CurrentState_FSM_FFd2_927,
      ADR4 => dma_top_CurrentState_FSM_FFd3_930,
      ADR0 => dma_top_data_count(1),
      ADR3 => dma_top_data_count(0),
      O => dma_top_CurrentState_FSM_FFd1_In
    );
  dma_top_CurrentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_dma_top_CurrentState_FSM_FFd1_CLK,
      I => dma_top_CurrentState_FSM_FFd1_In,
      O => dma_top_CurrentState_FSM_FFd1_pack_11,
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_CurrentState_DMA_RQ1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => dma_top_CurrentState_FSM_FFd3_930,
      ADR1 => dma_top_CurrentState_FSM_FFd2_927,
      ADR5 => '1',
      O => DMA_RQ_OBUF_1030
    );
  dma_top_CurrentState_FSM_FFd2_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"0C0C0C0F"
    )
    port map (
      ADR0 => '1',
      ADR3 => dma_top_CurrentState_FSM_FFd1_932,
      ADR4 => empty,
      ADR2 => dma_top_CurrentState_FSM_FFd3_930,
      ADR1 => dma_top_CurrentState_FSM_FFd2_927,
      O => dma_top_CurrentState_FSM_FFd2_In
    );
  dma_top_CurrentState_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_dma_top_CurrentState_FSM_FFd2_CLK,
      I => dma_top_CurrentState_FSM_FFd2_In,
      O => dma_top_CurrentState_FSM_FFd2_pack_10,
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_Mmux_Data_Read11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"3FFF30F030F030F0"
    )
    port map (
      ADR0 => '1',
      ADR2 => dma_top_CurrentState_FSM_FFd1_932,
      ADR3 => dma_top_data_count(0),
      ADR1 => dma_top_data_count(1),
      ADR5 => dma_top_CurrentState_FSM_FFd3_930,
      ADR4 => dma_top_CurrentState_FSM_FFd2_927,
      O => data_read
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_ram_rd_en_i1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => data_read,
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_947,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i : X_FF
    generic map(
      LOC => "SLICE_X13Y9",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_IN,
      O => empty,
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      RST => GND
    );
  top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_111 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y9",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR5 => top_Receiver_width_count(5),
      ADR1 => top_Receiver_width_count(2),
      ADR0 => top_Receiver_width_count(3),
      ADR3 => top_Receiver_width_count(0),
      ADR2 => top_Receiver_width_count(1),
      ADR4 => top_Receiver_width_count(4),
      O => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i : X_FF
    generic map(
      LOC => "SLICE_X13Y10",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_947,
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_32_o_MUX_14_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y10",
      INIT => X"C888FAAAEAAAFAAA"
    )
    port map (
      ADR4 => top_Fifo_write,
      ADR2 => data_read,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_950,
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_947,
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0_0,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1_0,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o
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
      LOC => "SLICE_X13Y13",
      INIT => X"3F3F3F3F3F3F3F3F"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR5 => '1',
      O => top_Internal_memory_BU2_N2
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT101_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => X"7F7F7F7F"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      O => top_Internal_memory_BU2_N4_pack_8
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8 : X_FF
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_8_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT91 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => X"F0F0F078F0F0F0F0"
    )
    port map (
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      ADR3 => top_Internal_memory_BU2_N2,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_8_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9 : X_FF
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_9_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(9),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT101 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => X"EFFFFFFF10000000"
    )
    port map (
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(9),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      ADR1 => top_Internal_memory_BU2_N4,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_9_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT91_F : X_LUT6
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"6CCCCCCCCCCCCCCC"
    )
    port map (
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      O => top_Internal_memory_BU2_N6
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_8 : X_FF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_8_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_8_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT911 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"FFAA5500FFAA5500"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      ADR3 => top_Internal_memory_BU2_N6,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_8_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_7_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_7_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"FF7FFFFF00800000"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_7_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK,
      I => '0',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9 : X_FF
    generic map(
      LOC => "SLICE_X14Y13",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(9),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_8 : X_FF
    generic map(
      LOC => "SLICE_X14Y13",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_8_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_8_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(8),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
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
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_rt_840
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_rt_840,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(7),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6_rt_847
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6_rt_847,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(6),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_rt_852
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_rt_852,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(5),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wr_pntr_plus1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_wr_pntr_0_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR3 => '1',
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wr_pntr_plus1(0)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_rt_857
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y11",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_rt_857,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(4),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
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
      LOC => "SLICE_X15Y13",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_5_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y13",
      INIT => X"F7FF0800FFFF0000"
    )
    port map (
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_5_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y13",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_3_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT42 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y13",
      INIT => X"F5FF0A00F5FF0A00"
    )
    port map (
      ADR1 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_3_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT51 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y13",
      INIT => X"C6CCCCCC"
    )
    port map (
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_4_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y13",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_4_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_pack_9,
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y13",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_1_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_1_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y13",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR3 => '1',
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_1_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(8),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  NlwBufferBlock_top_Transmitter_width_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Transmitter_width_count_3_CLK
    );
  NlwBufferBlock_top_Transmitter_width_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Transmitter_width_count_2_CLK
    );
  NlwBufferBlock_top_Transmitter_width_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Transmitter_width_count_1_CLK
    );
  NlwBufferBlock_top_Transmitter_width_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Transmitter_width_count_0_CLK
    );
  NlwBufferBlock_top_Transmitter_width_count_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Transmitter_width_count_7_CLK
    );
  NlwBufferBlock_top_Transmitter_width_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Transmitter_width_count_6_CLK
    );
  NlwBufferBlock_top_Transmitter_width_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Transmitter_width_count_5_CLK
    );
  NlwBufferBlock_top_Transmitter_width_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Transmitter_width_count_4_CLK
    );
  NlwBufferBlock_Ready_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Ready_OBUF_1026,
      O => NlwBufferSignal_Ready_OBUF_I
    );
  NlwBufferBlock_DMA_RQ_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DMA_RQ_OBUF_1030,
      O => NlwBufferSignal_DMA_RQ_OBUF_I
    );
  NlwBufferBlock_TD_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TD_OBUF_973,
      O => NlwBufferSignal_TD_OBUF_I
    );
  NlwBufferBlock_Clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_Clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_top_Receiver_width_count_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Receiver_width_count_7_CLK
    );
  NlwBufferBlock_top_Receiver_width_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Receiver_width_count_6_CLK
    );
  NlwBufferBlock_top_Receiver_width_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Receiver_width_count_4_CLK
    );
  NlwBufferBlock_top_Receiver_width_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Receiver_width_count_3_CLK
    );
  NlwBufferBlock_top_LineRD_in_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_LineRD_in_CLK
    );
  NlwBufferBlock_top_LineRD_in_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RD_IBUF_0,
      O => NlwBufferSignal_top_LineRD_in_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_1002,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_1045,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_CLK
    );
  NlwBufferBlock_top_Receiver_width_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Receiver_width_count_2_CLK
    );
  NlwBufferBlock_top_Receiver_width_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Receiver_width_count_1_CLK
    );
  NlwBufferBlock_top_Receiver_width_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Receiver_width_count_0_CLK
    );
  NlwBufferBlock_top_Receiver_CurrentState_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd2_CLK
    );
  NlwBufferBlock_top_Receiver_CurrentState_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd1_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_5_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_3_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_1_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_0_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_CLK
    );
  NlwBufferBlock_top_Transmitter_CurrentState_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd2_CLK
    );
  NlwBufferBlock_top_Transmitter_CurrentState_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd1_CLK
    );
  NlwBufferBlock_top_Receiver_data_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Receiver_data_count_2_CLK
    );
  NlwBufferBlock_top_Receiver_data_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Receiver_data_count_1_CLK
    );
  NlwBufferBlock_top_Receiver_data_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Receiver_data_count_0_CLK
    );
  NlwBufferBlock_top_Receiver_width_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Receiver_width_count_5_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_935,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_936,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_IN
    );
  NlwBufferBlock_top_Data_FF_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Data_FF_7_CLK
    );
  NlwBufferBlock_dma_top_CurrentState_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_dma_top_CurrentState_FSM_FFd3_CLK
    );
  NlwBufferBlock_top_Ack_in_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Ack_in_CLK
    );
  NlwBufferBlock_top_Transmitter_data_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Transmitter_data_count_2_CLK
    );
  NlwBufferBlock_top_Transmitter_data_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Transmitter_data_count_1_CLK
    );
  NlwBufferBlock_top_Transmitter_data_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Transmitter_data_count_0_CLK
    );
  NlwBufferBlock_dma_top_data_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_dma_top_data_count_1_CLK
    );
  NlwBufferBlock_dma_top_data_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_dma_top_data_count_0_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_1016,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_1017,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_IN
    );
  NlwBufferBlock_top_StartTX_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_StartTX_CLK
    );
  NlwBufferBlock_dma_top_CurrentState_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_dma_top_CurrentState_FSM_FFd1_CLK
    );
  NlwBufferBlock_dma_top_CurrentState_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_dma_top_CurrentState_FSM_FFd2_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_8_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_7_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(9),
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_8_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_8_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_1_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5_IN
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

