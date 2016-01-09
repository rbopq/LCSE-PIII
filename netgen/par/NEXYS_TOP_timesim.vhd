--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: NEXYS_TOP_timesim.vhd
-- /___/   /\     Timestamp: Tue Jan 05 20:11:02 2016
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
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en : STD_LOGIC; 
  signal clk_nexys : STD_LOGIC; 
  signal Ready_OBUF_883 : STD_LOGIC; 
  signal DMA_ACK_IBUF_0 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_885 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_886 : STD_LOGIC; 
  signal Reset_IBUF_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd1_896 : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd2_897 : STD_LOGIC; 
  signal top_Receiver_width_count_7_PWR_11_o_equal_4_o : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd1_900 : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd2_901 : STD_LOGIC; 
  signal top_Transmitter_width_count_7_PWR_10_o_equal_16_o : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_910 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_911 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_912 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_914 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_915 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_916 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb_0 : STD_LOGIC; 
  signal rst_nexys : STD_LOGIC; 
  signal top_Transmitter_en_width_count_0 : STD_LOGIC; 
  signal top_Transmitter_EOT_920 : STD_LOGIC; 
  signal DMA_RQ_OBUF_921 : STD_LOGIC; 
  signal empty : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0_0 : STD_LOGIC; 
  signal top_Transmitter_width_count_7_PWR_10_o_equal_16_o_inv : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal RD_IBUF_0 : STD_LOGIC; 
  signal top_Transmitter_TX_970 : STD_LOGIC; 
  signal Send_IBUF_0 : STD_LOGIC; 
  signal clk0_clkin1_0 : STD_LOGIC; 
  signal clk0_clkfb : STD_LOGIC; 
  signal clk0_dcm_sp_inst_ML_NEW_O : STD_LOGIC; 
  signal clk0_dcm_sp_inst_ML_NEW_DIVCLK : STD_LOGIC; 
  signal clk0_clkdv : STD_LOGIC; 
  signal clk0_clk0 : STD_LOGIC; 
  signal top_Receiver_n0076_inv : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal top_Receiver_width_count_7_GND_16_o_equal_8_o : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal top_Receiver_Madd_width_count_7_GND_16_o_add_26_OUT_xor_5_13 : STD_LOGIC; 
  signal top_Receiver_Madd_width_count_7_GND_16_o_add_26_OUT_xor_6_11 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41 : STD_LOGIC; 
  signal top_StartTX_994 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal top_Receiver_Store_out_997 : STD_LOGIC; 
  signal N25_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_999 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_0 : STD_LOGIC; 
  signal data_read : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_1004 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_1005 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal top_LineRD_in_1007 : STD_LOGIC; 
  signal top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_1011 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_1012 : STD_LOGIC; 
  signal top_Internal_memory_BU2_N6 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o : STD_LOGIC; 
  signal dma_top_n0086_inv : STD_LOGIC; 
  signal top_Internal_memory_BU2_N4 : STD_LOGIC; 
  signal top_Internal_memory_BU2_N2 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT103 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81_1019 : STD_LOGIC; 
  signal ProtoComp11_CYINITVCC_1 : STD_LOGIC; 
  signal ProtoComp13_CYINITVCC_1_36 : STD_LOGIC; 
  signal ProtoComp14_CYINITVCC_1 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet_3_ProtoComp13_CYINITVCC_1 : STD_LOGIC; 
  signal top_Transmitter_width_count_0_rt_157 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_1_Q_148 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_2_Q_139 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count1 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count2 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count3 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_3_Q_123 : STD_LOGIC; 
  signal top_Transmitter_width_count_4_rt_191 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_5_Q_183 : STD_LOGIC; 
  signal top_Transmitter_width_count_6_rt_178 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count4 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count5 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count6 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count7 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_7_Q_163 : STD_LOGIC; 
  signal RD_IBUF_201 : STD_LOGIC; 
  signal Reset_IBUF_206 : STD_LOGIC; 
  signal Send_IBUF_209 : STD_LOGIC; 
  signal clk0_clkin1 : STD_LOGIC; 
  signal DMA_ACK_IBUF_215 : STD_LOGIC; 
  signal clk0_dcm_sp_inst_STATUS0 : STD_LOGIC; 
  signal clk0_dcm_sp_inst_STATUS1 : STD_LOGIC; 
  signal clk0_dcm_sp_inst_STATUS2 : STD_LOGIC; 
  signal clk0_dcm_sp_inst_STATUS3 : STD_LOGIC; 
  signal clk0_dcm_sp_inst_STATUS4 : STD_LOGIC; 
  signal clk0_dcm_sp_inst_STATUS5 : STD_LOGIC; 
  signal clk0_dcm_sp_inst_STATUS6 : STD_LOGIC; 
  signal clk0_dcm_sp_inst_STATUS7 : STD_LOGIC; 
  signal clk0_dcm_sp_inst_LOCKED : STD_LOGIC; 
  signal clk0_dcm_sp_inst_CLK90 : STD_LOGIC; 
  signal clk0_dcm_sp_inst_PSDONE : STD_LOGIC; 
  signal clk0_dcm_sp_inst_CLKFX180 : STD_LOGIC; 
  signal clk0_dcm_sp_inst_CLK270 : STD_LOGIC; 
  signal clk0_dcm_sp_inst_CLK180 : STD_LOGIC; 
  signal clk0_dcm_sp_inst_CLKFX : STD_LOGIC; 
  signal clk0_dcm_sp_inst_CLK2X : STD_LOGIC; 
  signal clk0_dcm_sp_inst_CLK2X180 : STD_LOGIC; 
  signal clk0_dcm_sp_inst_PSEN_INT : STD_LOGIC; 
  signal clk0_dcm_sp_inst_CLKFB_INT : STD_LOGIC; 
  signal clk0_dcm_sp_inst_CLKIN_INT : STD_LOGIC; 
  signal clk0_dcm_sp_inst_PSINCDEC_INT : STD_LOGIC; 
  signal clk0_dcm_sp_inst_RST_INT : STD_LOGIC; 
  signal clk0_dcm_sp_inst_PSCLK_INT : STD_LOGIC; 
  signal clk0_dcm_sp_inst_DSSEN : STD_LOGIC; 
  signal top_Transmitter_en_width_count : STD_LOGIC; 
  signal top_Transmitter_EOT_tmp : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd2_In_260 : STD_LOGIC; 
  signal top_Transmitter_TX_tmp : STD_LOGIC; 
  signal top_Transmitter_data_count_1_pack_3 : STD_LOGIC; 
  signal top_Transmitter_data_count_1_rstpot_292 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd2_In_316 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1 : STD_LOGIC; 
  signal top_Transmitter_data_count_2_rstpot_370 : STD_LOGIC; 
  signal top_Transmitter_data_count_0_rstpot_363 : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_GND_11_o_MUX_2_o : STD_LOGIC; 
  signal top_Receiver_data_count_1_rstpot_435 : STD_LOGIC; 
  signal top_Receiver_data_count_1_pack_12 : STD_LOGIC; 
  signal top_Receiver_data_count_2_rstpot_427 : STD_LOGIC; 
  signal top_Receiver_data_count_0_rstpot_419 : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_PWR_37_o_MUX_16_o : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_rt_499 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_497 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_7_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_8_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_GND_11_o_MUX_1_o : STD_LOGIC; 
  signal dma_top_Mcount_data_count : STD_LOGIC; 
  signal dma_top_Mcount_data_count1 : STD_LOGIC; 
  signal dma_top_data_count_1_pack_5 : STD_LOGIC; 
  signal top_Receiver_Store_out_rstpot1_661 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_9_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_N4_pack_8 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_8_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_pack_9 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_6_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_9_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt_703 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_In : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_pack_1 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_pack_1 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_5_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_4_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_pack_11 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rd_pntr_plus1_0_inv : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_pack_13 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_pack_9 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_4_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_5_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_7_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_6_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_2_Q : STD_LOGIC; 
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
  signal NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I : STD_LOGIC; 
  signal NlwBufferSignal_SP6_BUFIO_INSERT_ML_BUFIO2_0_I : STD_LOGIC; 
  signal NlwBufferSignal_clk0_clkout1_buf_IN : STD_LOGIC; 
  signal NlwBufferSignal_clk0_clkf_buf_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_StartTX_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_StartTX_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_EOT_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_TX_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_data_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_LineRD_in_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_LineRD_in_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_data_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_data_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_data_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_data_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_data_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_data_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_data_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_Store_out_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_CurrentState_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_CurrentState_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_CLK : STD_LOGIC; 
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
  signal NLW_top_Data_FF_0_7_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_xor_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_xor_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_xor_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_xor_7_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Transmitter_Mcount_width_count_xor_7_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Data_FF_0_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Data_FF_0_3_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_IOCLK_UNCONNECTED : STD_LOGIC; 
  signal NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_SERDESSTROBE_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
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
  signal dma_top_data_count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal top_Transmitter_data_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Transmitter_width_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Transmitter_Mcount_width_count_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Receiver_width_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Receiver_data_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
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
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(6),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(7),
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
  ProtoComp11_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X14Y14"
    )
    port map (
      O => ProtoComp11_CYINITVCC_1
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y14"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp11_CYINITVCC_1,
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
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(4),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
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
      INIT => X"A0500A05A0500A05"
    )
    port map (
      ADR1 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
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
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"A00A5005A00A5005"
    )
    port map (
      ADR1 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(7),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(6),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(3)
    );
  top_Internal_memory_BU2_dbiterr_15_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y15",
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
  ProtoComp13_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X12Y15"
    )
    port map (
      O => ProtoComp13_CYINITVCC_1_36
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y15"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp13_CYINITVCC_1_36,
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
      LOC => "SLICE_X12Y15",
      INIT => X"A50000A5A50000A5"
    )
    port map (
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(4),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(2)
    );
  top_Internal_memory_BU2_dbiterr_16_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y15",
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
      LOC => "SLICE_X12Y15",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(1)
    );
  top_Internal_memory_BU2_dbiterr_17_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y15",
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
      LOC => "SLICE_X12Y15",
      INIT => X"00C3C30000C3C300"
    )
    port map (
      ADR0 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_18_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y15",
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
      LOC => "SLICE_X10Y16",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(3)
    );
  top_Internal_memory_BU2_dbiterr_10_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y16",
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
  ProtoComp14_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X10Y16"
    )
    port map (
      O => ProtoComp14_CYINITVCC_1
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y16"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp14_CYINITVCC_1,
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
      LOC => "SLICE_X10Y16",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(2)
    );
  top_Internal_memory_BU2_dbiterr_11_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y16",
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
      LOC => "SLICE_X10Y16",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(1)
    );
  top_Internal_memory_BU2_dbiterr_12_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y16",
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
      LOC => "SLICE_X10Y16",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_13_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y16",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"A00A5005A00A5005"
    )
    port map (
      ADR1 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(7),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(6),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(3)
    );
  top_Internal_memory_BU2_dbiterr_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y15",
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
  ProtoComp13_CYINITVCC_1 : X_ONE
    generic map(
      LOC => "SLICE_X16Y15"
    )
    port map (
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet_3_ProtoComp13_CYINITVCC_1
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y15"
    )
    port map (
      CI => '0',
      CYINIT => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet_3_ProtoComp13_CYINITVCC_1,
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
      LOC => "SLICE_X16Y15",
      INIT => X"A50000A5A50000A5"
    )
    port map (
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(4),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(2)
    );
  top_Internal_memory_BU2_dbiterr_6_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y15",
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
      LOC => "SLICE_X16Y15",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(1)
    );
  top_Internal_memory_BU2_dbiterr_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y15",
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
      LOC => "SLICE_X16Y15",
      INIT => X"3C00003C3C00003C"
    )
    port map (
      ADR0 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_8_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y15",
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
      LOC => "SLICE_X8Y6",
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
      LOC => "SLICE_X8Y6",
      INIT => X"FF7FFFFF00000000"
    )
    port map (
      ADR2 => top_Transmitter_width_count(7),
      ADR0 => top_Transmitter_width_count(5),
      ADR1 => top_Transmitter_width_count(2),
      ADR5 => top_Transmitter_width_count(3),
      ADR4 => top_Transmitter_width_count(1),
      ADR3 => N2,
      O => top_Transmitter_Mcount_width_count_lut_3_Q_123
    );
  top_Transmitter_width_count_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y6",
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
      LOC => "SLICE_X8Y6"
    )
    port map (
      CI => '0',
      CYINIT => top_Transmitter_width_count_7_PWR_10_o_equal_16_o_inv,
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
      S(3) => top_Transmitter_Mcount_width_count_lut_3_Q_123,
      S(2) => top_Transmitter_Mcount_width_count_lut_2_Q_139,
      S(1) => top_Transmitter_Mcount_width_count_lut_1_Q_148,
      S(0) => top_Transmitter_width_count_0_rt_157
    );
  top_Transmitter_Mcount_width_count_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => X"FFFF00007FFF0000"
    )
    port map (
      ADR2 => top_Transmitter_width_count(7),
      ADR3 => top_Transmitter_width_count(5),
      ADR1 => top_Transmitter_width_count(3),
      ADR4 => top_Transmitter_width_count(2),
      ADR0 => top_Transmitter_width_count(1),
      ADR5 => N2,
      O => top_Transmitter_Mcount_width_count_lut_2_Q_139
    );
  top_Transmitter_width_count_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y6",
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
      LOC => "SLICE_X8Y6",
      INIT => X"BFFF0000FFFF0000"
    )
    port map (
      ADR1 => top_Transmitter_width_count(7),
      ADR3 => top_Transmitter_width_count(5),
      ADR2 => top_Transmitter_width_count(3),
      ADR4 => top_Transmitter_width_count(1),
      ADR5 => top_Transmitter_width_count(2),
      ADR0 => N2,
      O => top_Transmitter_Mcount_width_count_lut_1_Q_148
    );
  top_Transmitter_width_count_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y6",
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
      LOC => "SLICE_X8Y6",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Transmitter_width_count(0),
      ADR3 => '1',
      ADR5 => '1',
      O => top_Transmitter_width_count_0_rt_157
    );
  top_Data_FF_0_7_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Data_FF_0_7_A5LUT_O_UNCONNECTED
    );
  top_Transmitter_width_count_7 : X_FF
    generic map(
      LOC => "SLICE_X8Y7",
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
      LOC => "SLICE_X8Y7",
      INIT => X"F7FFFFFF00000000"
    )
    port map (
      ADR1 => top_Transmitter_width_count(2),
      ADR0 => top_Transmitter_width_count(1),
      ADR3 => top_Transmitter_width_count(5),
      ADR5 => top_Transmitter_width_count(7),
      ADR4 => top_Transmitter_width_count(3),
      ADR2 => N2,
      O => top_Transmitter_Mcount_width_count_lut_7_Q_163
    );
  top_Transmitter_width_count_6 : X_FF
    generic map(
      LOC => "SLICE_X8Y7",
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
      LOC => "SLICE_X8Y7"
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
      S(3) => top_Transmitter_Mcount_width_count_lut_7_Q_163,
      S(2) => top_Transmitter_width_count_6_rt_178,
      S(1) => top_Transmitter_Mcount_width_count_lut_5_Q_183,
      S(0) => top_Transmitter_width_count_4_rt_191
    );
  top_Transmitter_width_count_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X8Y7",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Transmitter_width_count(6),
      ADR3 => '1',
      ADR5 => '1',
      O => top_Transmitter_width_count_6_rt_178
    );
  top_Data_FF_0_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Data_FF_0_C5LUT_O_UNCONNECTED
    );
  top_Transmitter_width_count_5 : X_FF
    generic map(
      LOC => "SLICE_X8Y7",
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
      LOC => "SLICE_X8Y7",
      INIT => X"FFFF00007FFF0000"
    )
    port map (
      ADR2 => top_Transmitter_width_count(7),
      ADR3 => top_Transmitter_width_count(3),
      ADR1 => top_Transmitter_width_count(2),
      ADR4 => top_Transmitter_width_count(5),
      ADR0 => top_Transmitter_width_count(1),
      ADR5 => N2,
      O => top_Transmitter_Mcount_width_count_lut_5_Q_183
    );
  top_Transmitter_width_count_4 : X_FF
    generic map(
      LOC => "SLICE_X8Y7",
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
      LOC => "SLICE_X8Y7",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Transmitter_width_count(4),
      ADR3 => '1',
      ADR5 => '1',
      O => top_Transmitter_width_count_4_rt_191
    );
  top_Data_FF_0_3_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Data_FF_0_3_A5LUT_O_UNCONNECTED
    );
  Ready_OBUF : X_OBUF
    generic map(
      LOC => "PAD164"
    )
    port map (
      I => NlwBufferSignal_Ready_OBUF_I,
      O => Ready
    );
  DMA_RQ_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_DMA_RQ_OBUF_I,
      O => DMA_RQ
    );
  RD_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      O => RD_IBUF_201,
      I => RD
    );
  ProtoComp18_IMUX : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      I => RD_IBUF_201,
      O => RD_IBUF_0
    );
  TD_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => NlwBufferSignal_TD_OBUF_I,
      O => TD
    );
  Reset_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      O => Reset_IBUF_206,
      I => Reset
    );
  ProtoComp18_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      I => Reset_IBUF_206,
      O => Reset_IBUF_0
    );
  Send_IBUF : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 202 ps
    )
    port map (
      O => Send_IBUF_209,
      I => Send
    );
  ProtoComp18_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 202 ps
    )
    port map (
      I => Send_IBUF_209,
      O => Send_IBUF_0
    );
  clk0_clkin1_buf : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => clk0_clkin1,
      I => Clk
    );
  ProtoComp18_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk0_clkin1,
      O => clk0_clkin1_0
    );
  DMA_ACK_IBUF : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      O => DMA_ACK_IBUF_215,
      I => DMA_ACK
    );
  ProtoComp18_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      I => DMA_ACK_IBUF_215,
      O => DMA_ACK_IBUF_0
    );
  SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1 : X_BUFIO2FB
    generic map(
      DIVIDE_BYPASS => TRUE,
      LOC => "BUFIO2FB_X1Y15"
    )
    port map (
      I => NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I,
      O => clk0_dcm_sp_inst_ML_NEW_O
    );
  SP6_BUFIO_INSERT_ML_BUFIO2_0 : X_BUFIO2
    generic map(
      DIVIDE => 1,
      DIVIDE_BYPASS => TRUE,
      I_INVERT => FALSE,
      USE_DOUBLER => FALSE,
      LOC => "BUFIO2_X1Y15"
    )
    port map (
      DIVCLK => clk0_dcm_sp_inst_ML_NEW_DIVCLK,
      I => NlwBufferSignal_SP6_BUFIO_INSERT_ML_BUFIO2_0_I,
      IOCLK => NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_IOCLK_UNCONNECTED,
      SERDESSTROBE => NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_SERDESSTROBE_UNCONNECTED
    );
  clk0_clkout1_buf : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_clk0_clkout1_buf_IN,
      O => clk_nexys
    );
  clk0_clkf_buf : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X2Y3",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_clk0_clkf_buf_IN,
      O => clk0_clkfb
    );
  clk0_dcm_sp_inst_PSENINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => clk0_dcm_sp_inst_PSEN_INT
    );
  clk0_dcm_sp_inst_CLKFB : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk0_dcm_sp_inst_ML_NEW_O,
      O => clk0_dcm_sp_inst_CLKFB_INT
    );
  clk0_dcm_sp_inst_CLKIN : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk0_dcm_sp_inst_ML_NEW_DIVCLK,
      O => clk0_dcm_sp_inst_CLKIN_INT
    );
  clk0_dcm_sp_inst_PSINCDECINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => clk0_dcm_sp_inst_PSINCDEC_INT
    );
  clk0_dcm_sp_inst_RSTINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => clk0_dcm_sp_inst_RST_INT
    );
  clk0_dcm_sp_inst_PSCLKINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 202 ps
    )
    port map (
      I => GND,
      O => clk0_dcm_sp_inst_PSCLK_INT
    );
  clk0_dcm_sp_inst : X_DCM_SP
    generic map(
      CLKDV_DIVIDE => 5.000000,
      DLL_FREQUENCY_MODE => "LOW",
      DFS_FREQUENCY_MODE => "LOW",
      CLKIN_DIVIDE_BY_2 => FALSE,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "1X",
      STARTUP_WAIT => FALSE,
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      DESKEW_ADJUST => "5",
      CLKFX_MULTIPLY => 4,
      CLKFX_DIVIDE => 1,
      PHASE_SHIFT => 0,
      CLKIN_PERIOD => 10.000000,
      LOC => "DCM_X0Y1"
    )
    port map (
      PSCLK => clk0_dcm_sp_inst_PSCLK_INT,
      RST => clk0_dcm_sp_inst_RST_INT,
      PSINCDEC => clk0_dcm_sp_inst_PSINCDEC_INT,
      CLKIN => clk0_dcm_sp_inst_CLKIN_INT,
      CLKFB => clk0_dcm_sp_inst_CLKFB_INT,
      PSEN => clk0_dcm_sp_inst_PSEN_INT,
      DSSEN => clk0_dcm_sp_inst_DSSEN,
      CLK2X180 => clk0_dcm_sp_inst_CLK2X180,
      CLK2X => clk0_dcm_sp_inst_CLK2X,
      CLKFX => clk0_dcm_sp_inst_CLKFX,
      CLK180 => clk0_dcm_sp_inst_CLK180,
      CLK270 => clk0_dcm_sp_inst_CLK270,
      CLK0 => clk0_clk0,
      CLKFX180 => clk0_dcm_sp_inst_CLKFX180,
      CLKDV => clk0_clkdv,
      PSDONE => clk0_dcm_sp_inst_PSDONE,
      CLK90 => clk0_dcm_sp_inst_CLK90,
      LOCKED => clk0_dcm_sp_inst_LOCKED,
      STATUS(7) => clk0_dcm_sp_inst_STATUS7,
      STATUS(6) => clk0_dcm_sp_inst_STATUS6,
      STATUS(5) => clk0_dcm_sp_inst_STATUS5,
      STATUS(4) => clk0_dcm_sp_inst_STATUS4,
      STATUS(3) => clk0_dcm_sp_inst_STATUS3,
      STATUS(2) => clk0_dcm_sp_inst_STATUS2,
      STATUS(1) => clk0_dcm_sp_inst_STATUS1,
      STATUS(0) => clk0_dcm_sp_inst_STATUS0
    );
  top_StartTX : X_FF
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => '0'
    )
    port map (
      CE => rst_nexys,
      CLK => NlwBufferSignal_top_StartTX_CLK,
      I => NlwBufferSignal_top_StartTX_IN,
      O => top_StartTX_994,
      RST => GND,
      SET => GND
    );
  top_Transmitter_EOT_top_Transmitter_EOT_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Transmitter_en_width_count,
      O => top_Transmitter_en_width_count_0
    );
  top_Transmitter_EOT : X_FF
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => '0'
    )
    port map (
      CE => rst_nexys,
      CLK => NlwBufferSignal_top_Transmitter_EOT_CLK,
      I => top_Transmitter_EOT_tmp,
      O => top_Transmitter_EOT_920,
      RST => GND,
      SET => GND
    );
  top_Transmitter_CurrentState_n0058_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => X"000F000F000F000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_901,
      ADR3 => top_Transmitter_CurrentState_FSM_FFd1_900,
      ADR5 => '1',
      O => top_Transmitter_EOT_tmp
    );
  top_Transmitter_CurrentState_n0058_1_1 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => X"FFF0FFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_901,
      ADR3 => top_Transmitter_CurrentState_FSM_FFd1_900,
      O => top_Transmitter_en_width_count
    );
  top_Transmitter_width_count_7_PWR_10_o_equal_16_o_7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y6",
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
  top_Transmitter_width_count_7_PWR_10_o_equal_16_o_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y6",
      INIT => X"DFFFFFFFFFFFFFFF"
    )
    port map (
      ADR3 => top_Transmitter_width_count(1),
      ADR5 => top_Transmitter_width_count(2),
      ADR4 => top_Transmitter_width_count(7),
      ADR2 => top_Transmitter_width_count(3),
      ADR0 => top_Transmitter_width_count(5),
      ADR1 => N2,
      O => top_Transmitter_width_count_7_PWR_10_o_equal_16_o_inv
    );
  top_Transmitter_CurrentState_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X9Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd2_CLK,
      I => top_Transmitter_CurrentState_FSM_FFd2_In_260,
      O => top_Transmitter_CurrentState_FSM_FFd2_901,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_CurrentState_FSM_FFd2_In : X_LUT6
    generic map(
      LOC => "SLICE_X9Y7",
      INIT => X"7FFF55557FFF0000"
    )
    port map (
      ADR5 => top_StartTX_994,
      ADR3 => top_Transmitter_data_count(2),
      ADR0 => top_Transmitter_CurrentState_FSM_FFd1_900,
      ADR4 => top_Transmitter_CurrentState_FSM_FFd2_901,
      ADR2 => N0,
      ADR1 => top_Transmitter_width_count_7_PWR_10_o_equal_16_o,
      O => top_Transmitter_CurrentState_FSM_FFd2_In_260
    );
  top_Transmitter_CurrentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X9Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd1_CLK,
      I => top_Transmitter_CurrentState_FSM_FFd1_In,
      O => top_Transmitter_CurrentState_FSM_FFd1_900,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_CurrentState_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y7",
      INIT => X"F0F0F0F0FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => top_Transmitter_CurrentState_FSM_FFd1_900,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_901,
      ADR5 => top_Transmitter_width_count_7_PWR_10_o_equal_16_o,
      O => top_Transmitter_CurrentState_FSM_FFd1_In
    );
  top_Transmitter_width_count_7_PWR_10_o_equal_16_o_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X9Y7",
      INIT => X"0000000080000000"
    )
    port map (
      ADR4 => top_Transmitter_width_count(5),
      ADR2 => top_Transmitter_width_count(3),
      ADR3 => top_Transmitter_width_count(7),
      ADR1 => top_Transmitter_width_count(2),
      ADR0 => top_Transmitter_width_count(1),
      ADR5 => N2,
      O => top_Transmitter_width_count_7_PWR_10_o_equal_16_o
    );
  top_Transmitter_TX : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => rst_nexys,
      CLK => NlwBufferSignal_top_Transmitter_TX_CLK,
      I => top_Transmitter_TX_tmp,
      O => top_Transmitter_TX_970,
      RST => GND,
      SET => GND
    );
  top_Transmitter_TX_tmp1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_901,
      O => top_Transmitter_TX_tmp
    );
  top_Receiver_n0076_inv_top_Receiver_n0076_inv_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Transmitter_data_count_1_pack_3,
      O => top_Transmitter_data_count(1)
    );
  top_Receiver_n0076_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => top_Receiver_CurrentState_FSM_FFd2_897,
      ADR4 => top_Receiver_CurrentState_FSM_FFd1_896,
      O => top_Receiver_n0076_inv
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"A0A0A0A0A0A0A0A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => top_Receiver_CurrentState_FSM_FFd2_897,
      ADR2 => top_Receiver_CurrentState_FSM_FFd1_896,
      O => N12
    );
  top_Transmitter_CurrentState_FSM_FFd2_In_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"8888888888888888"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR0 => top_Transmitter_data_count(1),
      ADR1 => top_Transmitter_data_count(0),
      ADR5 => '1',
      O => N0
    );
  top_Transmitter_data_count_1_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"6AAAAAAA"
    )
    port map (
      ADR3 => top_Transmitter_CurrentState_FSM_FFd1_900,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_901,
      ADR4 => top_Transmitter_width_count_7_PWR_10_o_equal_16_o,
      ADR0 => top_Transmitter_data_count(1),
      ADR1 => top_Transmitter_data_count(0),
      O => top_Transmitter_data_count_1_rstpot_292
    );
  top_Transmitter_data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_data_count_1_CLK,
      I => top_Transmitter_data_count_1_rstpot_292,
      O => top_Transmitter_data_count_1_pack_3,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_CurrentState_FSM_FFd2_top_Receiver_CurrentState_FSM_FFd2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N25,
      O => N25_0
    );
  top_Receiver_Madd_width_count_7_GND_16_o_add_26_OUT_xor_5_131 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y8",
      INIT => X"0C00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR5 => top_Receiver_width_count(4),
      ADR2 => top_Receiver_width_count(5),
      ADR1 => top_Receiver_width_count(2),
      ADR3 => top_Receiver_width_count(0),
      ADR4 => top_Receiver_width_count(1),
      O => top_Receiver_Madd_width_count_7_GND_16_o_add_26_OUT_xor_5_13
    );
  top_Receiver_CurrentState_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X10Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd2_CLK,
      I => top_Receiver_CurrentState_FSM_FFd2_In_316,
      O => top_Receiver_CurrentState_FSM_FFd2_897,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_CurrentState_FSM_FFd2_In : X_LUT6
    generic map(
      LOC => "SLICE_X10Y8",
      INIT => X"77FF0303FFFF0303"
    )
    port map (
      ADR0 => top_Receiver_data_count(2),
      ADR2 => top_LineRD_in_1007,
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_896,
      ADR4 => top_Receiver_CurrentState_FSM_FFd2_897,
      ADR3 => N6,
      ADR5 => top_Receiver_width_count_7_PWR_11_o_equal_4_o,
      O => top_Receiver_CurrentState_FSM_FFd2_In_316
    );
  top_Receiver_CurrentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X10Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd1_CLK,
      I => top_Receiver_CurrentState_FSM_FFd1_In,
      O => top_Receiver_CurrentState_FSM_FFd1_896,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_CurrentState_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y8",
      INIT => X"F3FF3000F3FF3000"
    )
    port map (
      ADR0 => '1',
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_897,
      ADR1 => top_LineRD_in_1007,
      ADR4 => top_Receiver_CurrentState_FSM_FFd1_896,
      ADR3 => top_Receiver_width_count_7_GND_16_o_equal_8_o,
      ADR5 => '1',
      O => top_Receiver_CurrentState_FSM_FFd1_In
    );
  top_Receiver_Reset_OR_DriverANDClockEnable1_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y8",
      INIT => X"F7F7F7F7"
    )
    port map (
      ADR0 => top_Receiver_width_count(6),
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_897,
      ADR1 => top_LineRD_in_1007,
      ADR3 => '1',
      ADR4 => '1',
      O => N25
    );
  top_LineRD_in : X_FF
    generic map(
      LOC => "SLICE_X10Y8",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_LineRD_in_CLK,
      I => NlwBufferSignal_top_LineRD_in_IN,
      O => top_LineRD_in_1007,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Receiver_width_count_7_GND_16_o_equal_8_o_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y8",
      INIT => X"000000000000C0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR5 => top_Receiver_width_count(7),
      ADR1 => top_Receiver_width_count(6),
      ADR4 => top_Receiver_width_count(3),
      ADR2 => top_Receiver_Madd_width_count_7_GND_16_o_add_26_OUT_xor_5_13,
      O => top_Receiver_width_count_7_GND_16_o_equal_8_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y15",
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
      LOC => "SLICE_X10Y15",
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
      LOC => "SLICE_X10Y15",
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
      LOC => "SLICE_X10Y15",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X10Y17",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_914,
      RST => GND,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X10Y17",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_916,
      RST => GND,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y17"
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
      LOC => "SLICE_X10Y17",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0,
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(9),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(8),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(4)
    );
  top_Internal_memory_BU2_dbiterr_9_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y17",
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
  rst_nexys1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y5",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => Reset_IBUF_0,
      O => rst_nexys
    );
  top_Transmitter_data_count_2 : X_FF
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_data_count_2_CLK,
      I => top_Transmitter_data_count_2_rstpot_370,
      O => top_Transmitter_data_count(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_data_count_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => X"7F80FF00FF00FF00"
    )
    port map (
      ADR5 => top_Transmitter_data_count(1),
      ADR0 => top_Transmitter_data_count(0),
      ADR1 => top_Transmitter_CurrentState_FSM_FFd1_900,
      ADR3 => top_Transmitter_data_count(2),
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_901,
      ADR4 => top_Transmitter_width_count_7_PWR_10_o_equal_16_o,
      O => top_Transmitter_data_count_2_rstpot_370
    );
  top_Transmitter_data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_data_count_0_CLK,
      I => top_Transmitter_data_count_0_rstpot_363,
      O => top_Transmitter_data_count(0),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_data_count_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => X"0FFFFFFFF0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => top_Transmitter_CurrentState_FSM_FFd1_900,
      ADR5 => top_Transmitter_data_count(0),
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_901,
      ADR4 => top_Transmitter_width_count_7_PWR_10_o_equal_16_o,
      O => top_Transmitter_data_count_0_rstpot_363
    );
  top_Receiver_width_count_2 : X_FF
    generic map(
      LOC => "SLICE_X11Y8",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0076_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_2_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q,
      O => top_Receiver_width_count(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y8",
      INIT => X"12003000125A30F0"
    )
    port map (
      ADR0 => top_Receiver_width_count(1),
      ADR4 => top_Receiver_width_count(0),
      ADR3 => N12,
      ADR2 => top_Receiver_width_count(2),
      ADR1 => top_Receiver_width_count_7_PWR_11_o_equal_4_o,
      ADR5 => top_Receiver_width_count_7_GND_16_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q
    );
  top_Receiver_width_count_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y8",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0076_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_1_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q,
      O => top_Receiver_width_count(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y8",
      INIT => X"03330CCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Receiver_width_count(0),
      ADR5 => top_Receiver_CurrentState_FSM_FFd1_896,
      ADR4 => top_Receiver_width_count(1),
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_897,
      ADR3 => top_Receiver_width_count_7_PWR_11_o_equal_4_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q
    );
  top_Receiver_width_count_7_PWR_11_o_equal_4_o_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y8",
      INIT => X"0000000000004000"
    )
    port map (
      ADR4 => top_Receiver_width_count(4),
      ADR3 => top_Receiver_width_count(5),
      ADR1 => top_Receiver_width_count(3),
      ADR2 => top_Receiver_width_count(2),
      ADR0 => top_Receiver_width_count(0),
      ADR5 => N8,
      O => top_Receiver_width_count_7_PWR_11_o_equal_4_o
    );
  top_Receiver_width_count_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y8",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0076_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_0_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q,
      O => top_Receiver_width_count(0),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y8",
      INIT => X"0000000033FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => top_Receiver_CurrentState_FSM_FFd1_896,
      ADR5 => top_Receiver_width_count(0),
      ADR1 => top_Receiver_CurrentState_FSM_FFd2_897,
      ADR4 => top_Receiver_width_count_7_PWR_11_o_equal_4_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q
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
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_915,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_Mmux_rd_rst_asreg_GND_11_o_MUX_2_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y17",
      INIT => X"3333000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_915,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_916,
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
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_914,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_915,
      ADR3 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb
    );
  top_Receiver_data_count_2_top_Receiver_data_count_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Receiver_data_count_1_pack_12,
      O => top_Receiver_data_count(1)
    );
  top_Receiver_CurrentState_FSM_FFd2_In_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"A0A0A0A0A0A0A0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => top_Receiver_data_count(1),
      ADR2 => top_Receiver_data_count(0),
      ADR5 => '1',
      O => N6
    );
  top_Receiver_data_count_1_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"6AAAAAAA"
    )
    port map (
      ADR3 => top_Receiver_CurrentState_FSM_FFd1_896,
      ADR1 => top_Receiver_CurrentState_FSM_FFd2_897,
      ADR4 => top_Receiver_width_count_7_PWR_11_o_equal_4_o,
      ADR0 => top_Receiver_data_count(1),
      ADR2 => top_Receiver_data_count(0),
      O => top_Receiver_data_count_1_rstpot_435
    );
  top_Receiver_data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_data_count_1_CLK,
      I => top_Receiver_data_count_1_rstpot_435,
      O => top_Receiver_data_count_1_pack_12,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_data_count_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_data_count_2_CLK,
      I => top_Receiver_data_count_2_rstpot_427,
      O => top_Receiver_data_count(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_data_count_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      ADR5 => top_Receiver_data_count(1),
      ADR1 => top_Receiver_data_count(0),
      ADR2 => top_Receiver_CurrentState_FSM_FFd1_896,
      ADR0 => top_Receiver_data_count(2),
      ADR3 => top_Receiver_CurrentState_FSM_FFd2_897,
      ADR4 => top_Receiver_width_count_7_PWR_11_o_equal_4_o,
      O => top_Receiver_data_count_2_rstpot_427
    );
  top_Receiver_data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_data_count_0_CLK,
      I => top_Receiver_data_count_0_rstpot_419,
      O => top_Receiver_data_count(0),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_data_count_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"0FFFFFFFF0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => top_Receiver_CurrentState_FSM_FFd1_896,
      ADR5 => top_Receiver_data_count(0),
      ADR3 => top_Receiver_CurrentState_FSM_FFd2_897,
      ADR4 => top_Receiver_width_count_7_PWR_11_o_equal_4_o,
      O => top_Receiver_data_count_0_rstpot_419
    );
  top_Receiver_width_count_5 : X_FF
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0076_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_5_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q,
      O => top_Receiver_width_count(5),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT6 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"AA2AAAAAAA000000"
    )
    port map (
      ADR1 => top_Receiver_width_count(4),
      ADR4 => top_Receiver_width_count(3),
      ADR2 => N4,
      ADR5 => top_Receiver_width_count(5),
      ADR3 => top_Receiver_Madd_width_count_7_GND_16_o_add_26_OUT_xor_5_13,
      ADR0 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q
    );
  top_Receiver_width_count_4 : X_FF
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0076_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_4_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q,
      O => top_Receiver_width_count(4),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT52 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"6A00AA00AA00AA00"
    )
    port map (
      ADR2 => top_Receiver_width_count(3),
      ADR4 => top_Receiver_width_count(2),
      ADR5 => top_Receiver_width_count(1),
      ADR0 => top_Receiver_width_count(4),
      ADR1 => top_Receiver_width_count(0),
      ADR3 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"FFFFF3F3EEFFE2F3"
    )
    port map (
      ADR0 => top_Receiver_width_count(7),
      ADR1 => top_Receiver_width_count(3),
      ADR2 => N8,
      ADR5 => N17,
      ADR4 => N16,
      ADR3 => top_Receiver_Madd_width_count_7_GND_16_o_add_26_OUT_xor_5_13,
      O => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51
    );
  top_Receiver_width_count_3 : X_FF
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0076_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_3_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q,
      O => top_Receiver_width_count(3),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"3FFF0000C0000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => top_Receiver_width_count(2),
      ADR1 => top_Receiver_width_count(1),
      ADR5 => top_Receiver_width_count(3),
      ADR2 => top_Receiver_width_count(0),
      ADR4 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_ram_wr_en_i1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"00F000F000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => top_Receiver_Store_out_997,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_999,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_ram_rd_en_i1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"00000000CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => data_read,
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_1004,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i : X_FF
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_PWR_37_o_MUX_16_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_999,
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_1005,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_PWR_37_o_MUX_16_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"005500005555C0C0"
    )
    port map (
      ADR1 => top_Receiver_Store_out_997,
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_0,
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_999,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0_0,
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1_0,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_PWR_37_o_MUX_16_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_497,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X12Y14",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_1011,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X12Y14",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_1005,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X12Y14",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_CLK,
      I => '0',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_1012,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_1011,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_rt_499
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN : X_FF
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_rt_499,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_497,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_7_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_7_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_7 : X_FF
    generic map(
      LOC => "SLICE_X12Y16",
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
      LOC => "SLICE_X12Y16",
      INIT => X"DFFFFFFF20000000"
    )
    port map (
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_7_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y16"
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT91_F : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      O => top_Internal_memory_BU2_N6
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_8 : X_FF
    generic map(
      LOC => "SLICE_X12Y16",
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
      LOC => "SLICE_X12Y16",
      INIT => X"FFF00F00FFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      ADR3 => top_Internal_memory_BU2_N6,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_8_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"C00C3003C00C3003"
    )
    port map (
      ADR0 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(9),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(8),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(8),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(4)
    );
  top_Internal_memory_BU2_dbiterr_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y16",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8 : X_FF
    generic map(
      LOC => "SLICE_X12Y17",
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
      LOC => "SLICE_X12Y17",
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
      LOC => "SLICE_X12Y17",
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
      LOC => "SLICE_X12Y17",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X12Y18",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_910,
      RST => GND,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X12Y18",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_912,
      RST => GND,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => X"FBFFFFFFFFFFFFFF"
    )
    port map (
      ADR1 => top_Receiver_width_count(5),
      ADR0 => top_Receiver_width_count(4),
      ADR5 => top_Receiver_width_count(2),
      ADR2 => top_Receiver_width_count(0),
      ADR3 => top_Receiver_CurrentState_FSM_FFd1_896,
      ADR4 => top_Receiver_CurrentState_FSM_FFd2_897,
      O => N16
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT6_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => X"C000C000C000C000"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => top_Receiver_width_count(2),
      ADR1 => top_Receiver_width_count(0),
      ADR3 => top_Receiver_width_count(1),
      O => N4
    );
  top_Receiver_Madd_width_count_7_GND_16_o_add_26_OUT_xor_6_111 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR4 => top_Receiver_width_count(5),
      ADR5 => top_Receiver_width_count(2),
      ADR0 => top_Receiver_width_count(3),
      ADR2 => top_Receiver_width_count(0),
      ADR3 => top_Receiver_width_count(1),
      ADR1 => top_Receiver_width_count(4),
      O => top_Receiver_Madd_width_count_7_GND_16_o_add_26_OUT_xor_6_11
    );
  top_Receiver_width_count_7_PWR_11_o_equal_4_o_7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => X"FFFFFFFF00FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Receiver_width_count(7),
      ADR5 => top_Receiver_width_count(6),
      ADR3 => top_Receiver_width_count(1),
      O => N8
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => X"F0F0FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => top_Receiver_width_count(6),
      ADR5 => top_Receiver_CurrentState_FSM_FFd2_897,
      ADR2 => top_Receiver_CurrentState_FSM_FFd1_896,
      O => N17
    );
  top_Receiver_width_count_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0076_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_7_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q,
      O => top_Receiver_width_count(7),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => X"00310002C4F5080A"
    )
    port map (
      ADR0 => top_Receiver_width_count(6),
      ADR1 => N12,
      ADR2 => top_Receiver_Madd_width_count_7_GND_16_o_add_26_OUT_xor_6_11,
      ADR4 => top_Receiver_width_count(7),
      ADR5 => top_Receiver_width_count_7_PWR_11_o_equal_4_o,
      ADR3 => top_Receiver_width_count_7_GND_16_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q
    );
  top_Receiver_width_count_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0076_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_6_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q,
      O => top_Receiver_width_count(6),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => X"000041C38200C3C3"
    )
    port map (
      ADR3 => top_Receiver_CurrentState_FSM_FFd1_896,
      ADR0 => top_Receiver_CurrentState_FSM_FFd2_897,
      ADR2 => top_Receiver_Madd_width_count_7_GND_16_o_add_26_OUT_xor_6_11,
      ADR1 => top_Receiver_width_count(6),
      ADR5 => top_Receiver_width_count_7_PWR_11_o_equal_4_o,
      ADR4 => top_Receiver_width_count_7_GND_16_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q
    );
  dma_top_Data_Read1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => X"FF00FF00F000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => DMA_ACK_IBUF_0,
      ADR5 => dma_top_CurrentState_FSM_FFd2_886,
      ADR3 => dma_top_CurrentState_FSM_FFd1_885,
      O => data_read
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i : X_FF
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_1004,
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_32_o_MUX_14_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => X"AF8CEFCC8C8CCCCC"
    )
    port map (
      ADR2 => top_Receiver_Store_out_997,
      ADR3 => data_read,
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_999,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_1004,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0_0,
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1_0,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i : X_FF
    generic map(
      LOC => "SLICE_X13Y13",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9 : X_FF
    generic map(
      LOC => "SLICE_X13Y15",
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
      LOC => "SLICE_X13Y15",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y16",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y16",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y16",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y16",
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
      LOC => "SLICE_X13Y16",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR4 => '1',
      ADR3 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wr_pntr_plus1(0)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y17",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_AMUX_Delay : 
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
      LOC => "SLICE_X13Y18",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_GND_11_o_MUX_1_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_911,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_Mmux_wr_rst_asreg_GND_11_o_MUX_1_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => X"5500550055005500"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_911,
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_912,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_GND_11_o_MUX_1_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => X"0000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_910,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_911,
      ADR2 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb
    );
  dma_top_data_count_0_dma_top_data_count_0_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dma_top_data_count_1_pack_5,
      O => dma_top_data_count(1)
    );
  dma_top_n0086_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y4",
      INIT => X"FFFF00005500C0C0"
    )
    port map (
      ADR4 => dma_top_CurrentState_FSM_FFd2_886,
      ADR5 => dma_top_CurrentState_FSM_FFd1_885,
      ADR0 => dma_top_data_count(0),
      ADR3 => dma_top_data_count(1),
      ADR1 => empty,
      ADR2 => Send_IBUF_0,
      O => dma_top_n0086_inv
    );
  dma_top_data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y4",
      INIT => '0'
    )
    port map (
      CE => dma_top_n0086_inv,
      CLK => NlwBufferSignal_dma_top_data_count_0_CLK,
      I => dma_top_Mcount_data_count,
      O => dma_top_data_count(0),
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_Mcount_data_count_xor_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y4",
      INIT => X"0000FF770000FF77"
    )
    port map (
      ADR2 => '1',
      ADR0 => dma_top_data_count(1),
      ADR1 => dma_top_CurrentState_FSM_FFd2_886,
      ADR4 => dma_top_data_count(0),
      ADR3 => dma_top_CurrentState_FSM_FFd1_885,
      ADR5 => '1',
      O => dma_top_Mcount_data_count
    );
  dma_top_Mcount_data_count_xor_1_11 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y4",
      INIT => X"5555AA22"
    )
    port map (
      ADR2 => '1',
      ADR0 => dma_top_data_count(1),
      ADR1 => dma_top_CurrentState_FSM_FFd2_886,
      ADR4 => dma_top_data_count(0),
      ADR3 => dma_top_CurrentState_FSM_FFd1_885,
      O => dma_top_Mcount_data_count1
    );
  dma_top_data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y4",
      INIT => '0'
    )
    port map (
      CE => dma_top_n0086_inv,
      CLK => NlwBufferSignal_dma_top_data_count_1_CLK,
      I => dma_top_Mcount_data_count1,
      O => dma_top_data_count_1_pack_5,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Store_out : X_FF
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_Store_out_CLK,
      I => top_Receiver_Store_out_rstpot1_661,
      O => top_Receiver_Store_out_997,
      RST => GND,
      SET => GND
    );
  top_Receiver_Store_out_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"FF020002FF000000"
    )
    port map (
      ADR5 => top_Receiver_Madd_width_count_7_GND_16_o_add_26_OUT_xor_5_13,
      ADR0 => N23,
      ADR1 => top_Receiver_width_count(7),
      ADR4 => top_Receiver_Store_out_997,
      ADR3 => Reset_IBUF_0,
      ADR2 => N25_0,
      O => top_Receiver_Store_out_rstpot1_661
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_N4_pack_8,
      O => top_Internal_memory_BU2_N4
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT91_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"3333FFFF3333FFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR5 => '1',
      O => top_Internal_memory_BU2_N2
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT101_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"3F3FFFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      O => top_Internal_memory_BU2_N4_pack_8
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8 : X_FF
    generic map(
      LOC => "SLICE_X14Y15",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT91 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"AAAAAAAA9AAAAAAA"
    )
    port map (
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      ADR5 => top_Internal_memory_BU2_N2,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_8_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9 : X_FF
    generic map(
      LOC => "SLICE_X14Y15",
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
      LOC => "SLICE_X14Y15",
      INIT => X"FBFFFFFF04000000"
    )
    port map (
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(9),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      ADR0 => top_Internal_memory_BU2_N4,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_9_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"C00C3003C00C3003"
    )
    port map (
      ADR0 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(9),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
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
      LOC => "SLICE_X14Y16",
      INIT => X"0000800000008000"
    )
    port map (
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT103
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT71 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"AAAA6AAA"
    )
    port map (
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_6_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6 : X_FF
    generic map(
      LOC => "SLICE_X14Y16",
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
      LOC => "SLICE_X14Y16",
      INIT => X"0FFF0FFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT811 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"FFFFFFFF7F7FFFFF"
    )
    port map (
      ADR3 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81_1019
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9 : X_FF
    generic map(
      LOC => "SLICE_X14Y16",
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
      LOC => "SLICE_X14Y16",
      INIT => X"FF807780FF807780"
    )
    port map (
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT103,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81_1019,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_9_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      ADR4 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt_703
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9 : X_FF
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt_703,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(9),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y18",
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
  Ready_OBUF_Ready_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dma_top_CurrentState_FSM_FFd2_pack_1,
      O => dma_top_CurrentState_FSM_FFd2_886
    );
  dma_top_Mmux_READY11 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => X"0400040004000400"
    )
    port map (
      ADR4 => '1',
      ADR2 => dma_top_CurrentState_FSM_FFd1_885,
      ADR1 => dma_top_CurrentState_FSM_FFd2_886,
      ADR3 => dma_top_data_count(1),
      ADR0 => dma_top_data_count(0),
      ADR5 => '1',
      O => Ready_OBUF_883
    );
  dma_top_CurrentState_FSM_FFd2_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => X"74FC44CC"
    )
    port map (
      ADR4 => DMA_ACK_IBUF_0,
      ADR2 => dma_top_CurrentState_FSM_FFd1_885,
      ADR1 => dma_top_CurrentState_FSM_FFd2_886,
      ADR3 => dma_top_data_count(1),
      ADR0 => dma_top_data_count(0),
      O => dma_top_CurrentState_FSM_FFd2_In
    );
  dma_top_CurrentState_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_dma_top_CurrentState_FSM_FFd2_CLK,
      I => dma_top_CurrentState_FSM_FFd2_In,
      O => dma_top_CurrentState_FSM_FFd2_pack_1,
      RST => Reset_IBUF_0,
      SET => GND
    );
  DMA_RQ_OBUF_DMA_RQ_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dma_top_CurrentState_FSM_FFd1_pack_1,
      O => dma_top_CurrentState_FSM_FFd1_885
    );
  dma_top_Mmux_DMA_RQ11 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y4",
      INIT => X"0000030300000303"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => empty,
      ADR1 => dma_top_CurrentState_FSM_FFd1_885,
      ADR4 => dma_top_CurrentState_FSM_FFd2_886,
      ADR5 => '1',
      O => DMA_RQ_OBUF_921
    );
  dma_top_CurrentState_FSM_FFd1_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y4",
      INIT => X"57FFCFCF"
    )
    port map (
      ADR3 => dma_top_data_count(1),
      ADR0 => dma_top_data_count(0),
      ADR2 => empty,
      ADR1 => dma_top_CurrentState_FSM_FFd1_885,
      ADR4 => dma_top_CurrentState_FSM_FFd2_886,
      O => dma_top_CurrentState_FSM_FFd1_In
    );
  dma_top_CurrentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X15Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_dma_top_CurrentState_FSM_FFd1_CLK,
      I => dma_top_CurrentState_FSM_FFd1_In,
      O => dma_top_CurrentState_FSM_FFd1_pack_1,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_width_count_7_GND_16_o_equal_8_o_7_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y8",
      INIT => X"5555000055550000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => top_Receiver_CurrentState_FSM_FFd1_896,
      ADR0 => top_Receiver_width_count(3),
      O => N23
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
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_5_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_5_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_5_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
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
      LOC => "SLICE_X15Y14",
      INIT => X"5FFFA0005FFFA000"
    )
    port map (
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_3_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT51 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"6CCCCCCC"
    )
    port map (
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_4_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
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
      LOC => "SLICE_X15Y14",
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
      LOC => "SLICE_X15Y14",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_1_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"6666CCCC"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_2_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
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
      LOC => "SLICE_X15Y14",
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
      LOC => "SLICE_X15Y14",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(7),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(6),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(5),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_IN,
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
      LOC => "SLICE_X15Y16",
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
      LOC => "SLICE_X15Y16",
      INIT => X"FF7F0080FFFF0000"
    )
    port map (
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_5_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y16",
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
      LOC => "SLICE_X15Y16",
      INIT => X"F0F05AF0F0F05AF0"
    )
    port map (
      ADR1 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_3_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT51 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y16",
      INIT => X"CCCC6CCC"
    )
    port map (
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_4_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y16",
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
      LOC => "SLICE_X15Y16",
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
      LOC => "SLICE_X15Y16",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR3 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_1_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2 : X_FF
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_2_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT411 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => X"F5F5FFFFF5F5FFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => X"F5F50A0A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_2_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6 : X_FF
    generic map(
      LOC => "SLICE_X16Y16",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y16"
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => X"FF00FF003FC0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_6_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7 : X_FF
    generic map(
      LOC => "SLICE_X16Y16",
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
      LOC => "SLICE_X16Y16",
      INIT => X"BFFF4000FFFF0000"
    )
    port map (
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_7_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => X"C00C3003C00C3003"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(9),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(8),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(8),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(4)
    );
  top_Internal_memory_BU2_dbiterr_4_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y16",
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
  NlwBufferBlock_top_Transmitter_width_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Transmitter_width_count_3_CLK
    );
  NlwBufferBlock_top_Transmitter_width_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Transmitter_width_count_2_CLK
    );
  NlwBufferBlock_top_Transmitter_width_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Transmitter_width_count_1_CLK
    );
  NlwBufferBlock_top_Transmitter_width_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Transmitter_width_count_0_CLK
    );
  NlwBufferBlock_top_Transmitter_width_count_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Transmitter_width_count_7_CLK
    );
  NlwBufferBlock_top_Transmitter_width_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Transmitter_width_count_6_CLK
    );
  NlwBufferBlock_top_Transmitter_width_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Transmitter_width_count_5_CLK
    );
  NlwBufferBlock_top_Transmitter_width_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Transmitter_width_count_4_CLK
    );
  NlwBufferBlock_Ready_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Ready_OBUF_883,
      O => NlwBufferSignal_Ready_OBUF_I
    );
  NlwBufferBlock_DMA_RQ_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DMA_RQ_OBUF_921,
      O => NlwBufferSignal_DMA_RQ_OBUF_I
    );
  NlwBufferBlock_TD_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Transmitter_TX_970,
      O => NlwBufferSignal_TD_OBUF_I
    );
  NlwBufferBlock_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk0_clkfb,
      O => NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I
    );
  NlwBufferBlock_SP6_BUFIO_INSERT_ML_BUFIO2_0_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk0_clkin1_0,
      O => NlwBufferSignal_SP6_BUFIO_INSERT_ML_BUFIO2_0_I
    );
  NlwBufferBlock_clk0_clkout1_buf_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk0_clkdv,
      O => NlwBufferSignal_clk0_clkout1_buf_IN
    );
  NlwBufferBlock_clk0_clkf_buf_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk0_clk0,
      O => NlwBufferSignal_clk0_clkf_buf_IN
    );
  NlwBufferBlock_top_StartTX_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_StartTX_CLK
    );
  NlwBufferBlock_top_StartTX_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Transmitter_EOT_920,
      O => NlwBufferSignal_top_StartTX_IN
    );
  NlwBufferBlock_top_Transmitter_EOT_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Transmitter_EOT_CLK
    );
  NlwBufferBlock_top_Transmitter_CurrentState_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd2_CLK
    );
  NlwBufferBlock_top_Transmitter_CurrentState_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd1_CLK
    );
  NlwBufferBlock_top_Transmitter_TX_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Transmitter_TX_CLK
    );
  NlwBufferBlock_top_Transmitter_data_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Transmitter_data_count_1_CLK
    );
  NlwBufferBlock_top_Receiver_CurrentState_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd2_CLK
    );
  NlwBufferBlock_top_Receiver_CurrentState_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd1_CLK
    );
  NlwBufferBlock_top_LineRD_in_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
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
      I => clk_nexys,
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
      I => clk_nexys,
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
      I => clk_nexys,
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_916,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_915,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_IN
    );
  NlwBufferBlock_top_Transmitter_data_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Transmitter_data_count_2_CLK
    );
  NlwBufferBlock_top_Transmitter_data_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Transmitter_data_count_0_CLK
    );
  NlwBufferBlock_top_Receiver_width_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Receiver_width_count_2_CLK
    );
  NlwBufferBlock_top_Receiver_width_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Receiver_width_count_1_CLK
    );
  NlwBufferBlock_top_Receiver_width_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Receiver_width_count_0_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_CLK
    );
  NlwBufferBlock_top_Receiver_data_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Receiver_data_count_1_CLK
    );
  NlwBufferBlock_top_Receiver_data_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Receiver_data_count_2_CLK
    );
  NlwBufferBlock_top_Receiver_data_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Receiver_data_count_0_CLK
    );
  NlwBufferBlock_top_Receiver_width_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Receiver_width_count_5_CLK
    );
  NlwBufferBlock_top_Receiver_width_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Receiver_width_count_4_CLK
    );
  NlwBufferBlock_top_Receiver_width_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Receiver_width_count_3_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_1005,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_1012,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_7_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_8_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
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
      I => clk_nexys,
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
      I => clk_nexys,
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
      I => clk_nexys,
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_912,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_911,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_IN
    );
  NlwBufferBlock_top_Receiver_width_count_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Receiver_width_count_7_CLK
    );
  NlwBufferBlock_top_Receiver_width_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Receiver_width_count_6_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
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
      I => clk_nexys,
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
      I => clk_nexys,
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_CLK
    );
  NlwBufferBlock_dma_top_data_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_dma_top_data_count_0_CLK
    );
  NlwBufferBlock_dma_top_data_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_dma_top_data_count_1_CLK
    );
  NlwBufferBlock_top_Receiver_Store_out_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Receiver_Store_out_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK
    );
  NlwBufferBlock_dma_top_CurrentState_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_dma_top_CurrentState_FSM_FFd2_CLK
    );
  NlwBufferBlock_dma_top_CurrentState_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_dma_top_CurrentState_FSM_FFd1_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_5_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_3_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_1_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_0_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_1_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_nexys,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_CLK
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

