--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: NEXYS_TOP_timesim.vhd
-- /___/   /\     Timestamp: Tue Jan 19 01:41:09 2016
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
  signal Clk_BUFGP : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd1_1606 : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd2_1607 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal Reset_IBUF_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q : STD_LOGIC; 
  signal top_Transmitter_width_count_7_PWR_6_o_equal_16_o : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd2_1623 : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd1_1624 : STD_LOGIC; 
  signal dma_top_n0170_inv : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_1630 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_7_0 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_1632 : STD_LOGIC; 
  signal N26_0 : STD_LOGIC; 
  signal dma_top_TX_RDY_ACK_out_AND_21_o : STD_LOGIC; 
  signal tx_rdy : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_1638 : STD_LOGIC; 
  signal rst_nexys : STD_LOGIC; 
  signal top_StartTX_1640 : STD_LOGIC; 
  signal top_Transmitter_en_width_count_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41 : STD_LOGIC; 
  signal Ready_OBUF_1645 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_1646 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_1647 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_1648 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb_0 : STD_LOGIC; 
  signal oe : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_0_0 : STD_LOGIC; 
  signal top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_1655 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_1656 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_1657 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb_0 : STD_LOGIC; 
  signal DMA_RQ_OBUF_1659 : STD_LOGIC; 
  signal empty : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal top_LineRD_in_1665 : STD_LOGIC; 
  signal top_Valid_out : STD_LOGIC; 
  signal top_Code_out : STD_LOGIC; 
  signal N28_0 : STD_LOGIC; 
  signal top_Receiver_width_count_7_PWR_7_o_equal_4_o : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rd_pntr_plus1_0_inv : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0_0 : STD_LOGIC; 
  signal top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal RD_IBUF_0 : STD_LOGIC; 
  signal TD_OBUF_1734 : STD_LOGIC; 
  signal Send_IBUF_0 : STD_LOGIC; 
  signal Clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal DMA_ACK_IBUF_0 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_3_0 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_2_0 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_1_0 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_6_0 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_5_0 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_4_0 : STD_LOGIC; 
  signal top_Transmitter_data_count_2_Data_7_Mux_6_o_0 : STD_LOGIC; 
  signal top_Receiver_n0066_inv : STD_LOGIC; 
  signal top_Receiver_width_count_7_GND_7_o_equal_8_o : STD_LOGIC; 
  signal top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51 : STD_LOGIC; 
  signal top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41 : STD_LOGIC; 
  signal top_Fifo_write : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_1774 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_1775 : STD_LOGIC; 
  signal top_Ack_in_1776 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal data_read : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_1780 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT103 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81_1788 : STD_LOGIC; 
  signal top_Internal_memory_BU2_N4 : STD_LOGIC; 
  signal top_Internal_memory_BU2_N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal top_Internal_memory_BU2_N6 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_In1_1799 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_1801 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_1802 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO8 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO9 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO10 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO11 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO12 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO13 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO14 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO15 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOPBDOP0 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOPBDOP1 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOPADOP0 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOPADOP1 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO0 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO1 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO2 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO3 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO4 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO5 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO6 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO7 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO8 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO9 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO10 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO11 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO12 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO13 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO14 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO15 : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEBWEU0_INT : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEBWEU1_INT : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEAWEL0_INT : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEAWEL1_INT : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_RSTA_INT : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_REGCEBREGCE_INT : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_CLKBRDCLK_INT : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_CLKAWRCLK_INT : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ENAWREN_INT : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_REGCEA_INT : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ENBRDEN_INT : STD_LOGIC;
 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_RSTBRST_INT : STD_LOGIC;
 
  signal ProtoComp16_CYINITVCC_1 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1 : STD_LOGIC; 
  signal ProtoComp18_CYINITVCC_1_127 : STD_LOGIC; 
  signal ProtoComp19_CYINITVCC_1 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet_3_ProtoComp18_CYINITVCC_1 : STD_LOGIC; 
  signal top_Transmitter_width_count_0_rt_257 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_1_Q_248 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_2_Q_239 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count1 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count2 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count3 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_3_Q_223 : STD_LOGIC; 
  signal top_Transmitter_width_count_4_rt_291 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_5_Q_283 : STD_LOGIC; 
  signal top_Transmitter_width_count_6_rt_278 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count4 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count5 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count6 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count7 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_7_Q_263 : STD_LOGIC; 
  signal RD_IBUF_317 : STD_LOGIC; 
  signal Reset_IBUF_322 : STD_LOGIC; 
  signal Send_IBUF_325 : STD_LOGIC; 
  signal Clk_BUFGP_IBUFG_328 : STD_LOGIC; 
  signal DMA_ACK_IBUF_331 : STD_LOGIC; 
  signal top_Receiver_data_count_0_rstpot_366 : STD_LOGIC; 
  signal top_Receiver_data_count_0_pack_6 : STD_LOGIC; 
  signal top_Receiver_data_count_1_rstpot_362 : STD_LOGIC; 
  signal N8_pack_9 : STD_LOGIC; 
  signal top_Receiver_data_count_2_rstpot_343 : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q : STD_LOGIC; 
  signal top_Receiver_width_count_2_pack_11 : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_6_INV_ram_top_gp_ram_Mram_contents_ram7_DWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_6_INV_ram_top_gp_ram_Mram_contents_ram7_DWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_6_INV_ram_top_gp_ram_Mram_contents_ram7_CWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_6_INV_ram_top_gp_ram_Mram_contents_ram7_BWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram7_A_442 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram7_B_434 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram7_C_426 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram7_D_416 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram7_F7_A_414 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram7_F7_B_413 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_5_INV_ram_top_gp_ram_Mram_contents_ram6_DWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_5_INV_ram_top_gp_ram_Mram_contents_ram6_DWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_5_INV_ram_top_gp_ram_Mram_contents_ram6_CWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_5_INV_ram_top_gp_ram_Mram_contents_ram6_BWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram6_A_479 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram6_B_471 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram6_C_463 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram6_D_453 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram6_F7_A_451 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram6_F7_B_450 : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q : STD_LOGIC; 
  signal top_Receiver_n0066_inv_pack_6 : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal N44_pack_7 : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd2_In_540 : STD_LOGIC; 
  signal N38_pack_5 : STD_LOGIC; 
  signal top_Shift_Q_7_D_MUX_25_o : STD_LOGIC; 
  signal top_Shift_Q_4_D_MUX_28_o : STD_LOGIC; 
  signal top_Shift_Q_5_D_MUX_27_o : STD_LOGIC; 
  signal top_Shift_Q_6_D_MUX_26_o : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_6_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_pack_4 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt_669 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_tmp_ram_rd_en : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_rt_700 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_rt_692 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_7_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_6_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_pack_7 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal top_Shift_Q_1_D_MUX_31_o : STD_LOGIC; 
  signal top_Shift_Q_0_D_MUX_32_o : STD_LOGIC; 
  signal top_Shift_Q_2_D_MUX_30_o : STD_LOGIC; 
  signal top_Shift_Q_3_D_MUX_29_o : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_9_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_5_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_4_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_pack_9 : STD_LOGIC; 
  signal top_Internal_memory_BU2_N4_pack_8 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_9_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_8_Q : STD_LOGIC; 
  signal top_Data_FF_4_dpot_878 : STD_LOGIC; 
  signal top_Data_FF_5_dpot_860 : STD_LOGIC; 
  signal top_Data_FF_7_dpot_906 : STD_LOGIC; 
  signal top_Data_FF_6_dpot_901 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_7_INV_ram_top_gp_ram_Mram_contents_ram8_DWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_7_INV_ram_top_gp_ram_Mram_contents_ram8_DWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_7_INV_ram_top_gp_ram_Mram_contents_ram8_CWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_7_INV_ram_top_gp_ram_Mram_contents_ram8_BWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram8_A_937 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram8_B_929 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram8_C_921 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram8_D_911 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram8_F7_A_909 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram8_F7_B_908 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_0_INV_ram_top_gp_ram_Mram_contents_ram1_DWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_0_INV_ram_top_gp_ram_Mram_contents_ram1_DWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_0_INV_ram_top_gp_ram_Mram_contents_ram1_CWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_0_INV_ram_top_gp_ram_Mram_contents_ram1_BWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram1_A_974 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram1_B_966 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram1_C_958 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram1_D_948 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram1_F7_A_946 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram1_F7_B_945 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_3_INV_ram_top_gp_ram_Mram_contents_ram4_DWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_3_INV_ram_top_gp_ram_Mram_contents_ram4_DWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_3_INV_ram_top_gp_ram_Mram_contents_ram4_CWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_3_INV_ram_top_gp_ram_Mram_contents_ram4_BWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram4_A_1011 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram4_B_1003 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram4_C_995 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram4_D_985 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram4_F7_A_983 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram4_F7_B_982 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_4_INV_ram_top_gp_ram_Mram_contents_ram5_DWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_4_INV_ram_top_gp_ram_Mram_contents_ram5_DWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_4_INV_ram_top_gp_ram_Mram_contents_ram5_CWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_4_INV_ram_top_gp_ram_Mram_contents_ram5_BWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram5_A_1048 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram5_B_1040 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram5_C_1032 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram5_D_1022 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram5_F7_A_1020 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram5_F7_B_1019 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_1_INV_ram_top_gp_ram_Mram_contents_ram2_DWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_1_INV_ram_top_gp_ram_Mram_contents_ram2_DWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_1_INV_ram_top_gp_ram_Mram_contents_ram2_CWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_1_INV_ram_top_gp_ram_Mram_contents_ram2_BWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram2_A_1085 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram2_B_1077 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram2_C_1069 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram2_D_1059 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram2_F7_A_1057 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram2_F7_B_1056 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_2_INV_ram_top_gp_ram_Mram_contents_ram3_DWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_2_INV_ram_top_gp_ram_Mram_contents_ram3_DWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_2_INV_ram_top_gp_ram_Mram_contents_ram3_CWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_2_INV_ram_top_gp_ram_Mram_contents_ram3_BWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram3_A_1122 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram3_B_1114 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram3_C_1106 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram3_D_1096 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram3_F7_A_1094 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram3_F7_B_1093 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_5_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_4_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_pack_13 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_pack_11 : STD_LOGIC; 
  signal top_Data_FF_0_dpot_1188 : STD_LOGIC; 
  signal top_Data_FF_1_dpot_1170 : STD_LOGIC; 
  signal top_Data_FF_2_dpot_1219 : STD_LOGIC; 
  signal top_Data_FF_3_dpot_1201 : STD_LOGIC; 
  signal dma_top_Mcount_data_count : STD_LOGIC; 
  signal dma_top_Mcount_data_count1 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal top_Valid_D_TX_RDY_i_AND_20_o1_cepot_1262 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_8_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_7_Q : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_In : STD_LOGIC; 
  signal top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_3_1373 : STD_LOGIC; 
  signal top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_4_1365 : STD_LOGIC; 
  signal top_Transmitter_data_count_2_Data_7_Mux_6_o : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_In : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_pack_14 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_pack_15 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal top_Transmitter_data_count_0_pack_12 : STD_LOGIC; 
  signal top_Transmitter_data_count_0_rstpot_1454 : STD_LOGIC; 
  signal top_Transmitter_data_count_1_rstpot_1453 : STD_LOGIC; 
  signal top_Transmitter_data_count_2_rstpot_1445 : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd2_In_1437 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_PWR_37_o_MUX_16_o : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd1_pack_4 : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal top_Valid_D_TX_RDY_i_AND_20_o : STD_LOGIC; 
  signal top_Transmitter_en_width_count : STD_LOGIC; 
  signal top_Valid_D_INV_19_o : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_1536 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_rt_1535 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_GND_11_o_MUX_1_o : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_GND_11_o_MUX_2_o : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_3_Q : STD_LOGIC;
 
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
  signal NlwBufferSignal_top_Receiver_data_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_data_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_data_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Shift_Q_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Shift_Q_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Shift_Q_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Shift_Q_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Shift_Q_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Shift_Q_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Shift_Q_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Shift_Q_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Data_FF_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Data_FF_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Data_FF_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Data_FF_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_IN : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Data_FF_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Data_FF_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Data_FF_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Data_FF_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_data_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_data_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_LineRD_in_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_LineRD_in_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_CurrentState_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_CurrentState_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_CurrentState_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_data_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_data_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_data_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_StartTX_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Ack_in_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_21_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_22_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_23_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_24_A5LUT_O_UNCONNECTED : STD_LOGIC; 
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
  signal NLW_top_Internal_memory_BU2_dbiterr_20_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_16_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_17_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_18_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_19_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_11_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_12_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_13_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_14_A5LUT_O_UNCONNECTED : STD_LOGIC; 
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
  signal NLW_top_Internal_memory_BU2_dbiterr_10_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_6_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_7_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_8_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_BU2_dbiterr_9_A5LUT_O_UNCONNECTED : STD_LOGIC; 
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
  signal NLW_top_Internal_memory_BU2_dbiterr_15_A5LUT_O_UNCONNECTED : STD_LOGIC; 
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
  signal NLW_top_Internal_memory_BU2_dbiterr_5_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal top_Receiver_data_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal top_Receiver_width_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal top_Transmitter_data_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal dma_top_data_count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal databus : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Shift_Q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Transmitter_width_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Transmitter_Mcount_width_count_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal address : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal top_Data_FF : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal ram_top_gp_ram_n0015 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wr_pntr_plus1 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEBWEU0INV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y8",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEBWEU0_INT

    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEBWEU1INV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y8",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEBWEU1_INT

    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEAWEL0INV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y8",
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      O => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEAWEL0_INT

    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEAWEL1INV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y8",
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      O => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEAWEL1_INT

    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_RSTAINV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y8",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_RSTA_INT

    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_REGCEBREGCEINV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y8",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_REGCEBREGCE_INT

    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_CLKBRDCLKINV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y8",
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_CLKBRDCLK_INT

    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_CLKAWRCLKINV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y8",
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_CLKAWRCLK_INT

    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ENAWRENINV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y8",
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      O => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ENAWREN_INT

    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_REGCEAINV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y8",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_REGCEA_INT

    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ENBRDENINV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y8",
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_tmp_ram_rd_en,
      O => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ENBRDEN_INT

    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_RSTBRSTINV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y8",
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_Q,
      O => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_RSTBRST_INT

    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram : 
X_RAMB8BWER
    generic map(
      DATA_WIDTH_A => 9,
      DATA_WIDTH_B => 9,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      RAM_MODE => "TDP",
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      INIT_FILE => "NONE",
      SIM_COLLISION_CHECK => "ALL",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      LOC => "RAMB8_X0Y8"
    )
    port map (
      RSTBRST => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_RSTBRST_INT
,
      ENBRDEN => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ENBRDEN_INT
,
      REGCEA => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_REGCEA_INT
,
      ENAWREN => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ENAWREN_INT
,
      CLKAWRCLK => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_CLKAWRCLK_INT
,
      CLKBRDCLK => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_CLKBRDCLK_INT
,
      REGCEBREGCE => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_REGCEBREGCE_INT
,
      RSTA => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_RSTA_INT
,
      WEAWEL(1) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEAWEL1_INT
,
      WEAWEL(0) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEAWEL0_INT
,
      WEBWEU(1) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEBWEU1_INT
,
      WEBWEU(0) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEBWEU0_INT
,
      ADDRAWRADDR(12) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_12_Q
,
      ADDRAWRADDR(11) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_11_Q
,
      ADDRAWRADDR(10) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_10_Q
,
      ADDRAWRADDR(9) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_9_Q
,
      ADDRAWRADDR(8) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_8_Q
,
      ADDRAWRADDR(7) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_7_Q
,
      ADDRAWRADDR(6) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_6_Q
,
      ADDRAWRADDR(5) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_5_Q
,
      ADDRAWRADDR(4) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_4_Q
,
      ADDRAWRADDR(3) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_3_Q
,
      ADDRAWRADDR(2) => GND,
      ADDRAWRADDR(1) => GND,
      ADDRAWRADDR(0) => GND,
      DIPBDIP(1) => GND,
      DIPBDIP(0) => GND,
      DIBDI(15) => GND,
      DIBDI(14) => GND,
      DIBDI(13) => GND,
      DIBDI(12) => GND,
      DIBDI(11) => GND,
      DIBDI(10) => GND,
      DIBDI(9) => GND,
      DIBDI(8) => GND,
      DIBDI(7) => GND,
      DIBDI(6) => GND,
      DIBDI(5) => GND,
      DIBDI(4) => GND,
      DIBDI(3) => GND,
      DIBDI(2) => GND,
      DIBDI(1) => GND,
      DIBDI(0) => GND,
      DIADI(15) => GND,
      DIADI(14) => GND,
      DIADI(13) => GND,
      DIADI(12) => GND,
      DIADI(11) => GND,
      DIADI(10) => GND,
      DIADI(9) => GND,
      DIADI(8) => GND,
      DIADI(7) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_7_Q
,
      DIADI(6) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_6_Q
,
      DIADI(5) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_5_Q
,
      DIADI(4) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_4_Q
,
      DIADI(3) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_3_Q
,
      DIADI(2) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_2_Q
,
      DIADI(1) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_1_Q
,
      DIADI(0) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_0_Q
,
      ADDRBRDADDR(12) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_12_Q
,
      ADDRBRDADDR(11) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_11_Q
,
      ADDRBRDADDR(10) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_10_Q
,
      ADDRBRDADDR(9) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_9_Q
,
      ADDRBRDADDR(8) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_8_Q
,
      ADDRBRDADDR(7) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_7_Q
,
      ADDRBRDADDR(6) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_6_Q
,
      ADDRBRDADDR(5) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_5_Q
,
      ADDRBRDADDR(4) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_4_Q
,
      ADDRBRDADDR(3) => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_3_Q
,
      ADDRBRDADDR(2) => GND,
      ADDRBRDADDR(1) => GND,
      ADDRBRDADDR(0) => GND,
      DIPADIP(1) => GND,
      DIPADIP(0) => GND,
      DOADO(15) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO15
,
      DOADO(14) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO14
,
      DOADO(13) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO13
,
      DOADO(12) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO12
,
      DOADO(11) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO11
,
      DOADO(10) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO10
,
      DOADO(9) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO9
,
      DOADO(8) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO8
,
      DOADO(7) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO7
,
      DOADO(6) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO6
,
      DOADO(5) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO5
,
      DOADO(4) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO4
,
      DOADO(3) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO3
,
      DOADO(2) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO2
,
      DOADO(1) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO1
,
      DOADO(0) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO0
,
      DOPADOP(1) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOPADOP1
,
      DOPADOP(0) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOPADOP0
,
      DOPBDOP(1) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOPBDOP1
,
      DOPBDOP(0) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOPBDOP0
,
      DOBDO(15) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO15
,
      DOBDO(14) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO14
,
      DOBDO(13) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO13
,
      DOBDO(12) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO12
,
      DOBDO(11) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO11
,
      DOBDO(10) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO10
,
      DOBDO(9) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO9
,
      DOBDO(8) => 
top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO8
,
      DOBDO(7) => data_out(7),
      DOBDO(6) => data_out(6),
      DOBDO(5) => data_out(5),
      DOBDO(4) => data_out(4),
      DOBDO(3) => data_out(3),
      DOBDO(2) => data_out(2),
      DOBDO(1) => data_out(1),
      DOBDO(0) => data_out(0)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y18",
      INIT => X"A00A5005A00A5005"
    )
    port map (
      ADR1 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(6),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(7),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(3)
    );
  top_Internal_memory_BU2_dbiterr_21_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_21_D5LUT_O_UNCONNECTED
    );
  ProtoComp16_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X6Y18"
    )
    port map (
      O => ProtoComp16_CYINITVCC_1
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y18"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp16_CYINITVCC_1,
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
      LOC => "SLICE_X6Y18",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_0,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_0,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(2)
    );
  top_Internal_memory_BU2_dbiterr_22_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_22_C5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y18",
      INIT => X"A0500A05A0500A05"
    )
    port map (
      ADR1 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(1)
    );
  top_Internal_memory_BU2_dbiterr_23_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_23_B5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y18",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_24_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_24_A5LUT_O_UNCONNECTED
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
      LOC => "SLICE_X6Y19"
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
      LOC => "SLICE_X6Y19",
      INIT => X"A0500A05A0500A05"
    )
    port map (
      ADR1 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(9),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(8),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(4)
    );
  top_Internal_memory_BU2_dbiterr_20_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_20_A5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(7),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(6),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(3)
    );
  top_Internal_memory_BU2_dbiterr_16_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_16_D5LUT_O_UNCONNECTED
    );
  ProtoComp18_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X4Y19"
    )
    port map (
      O => ProtoComp18_CYINITVCC_1_127
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y19"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp18_CYINITVCC_1_127,
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
      LOC => "SLICE_X4Y19",
      INIT => X"8282414182824141"
    )
    port map (
      ADR3 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_0,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_0,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(2)
    );
  top_Internal_memory_BU2_dbiterr_17_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_17_C5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"8844221188442211"
    )
    port map (
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(1)
    );
  top_Internal_memory_BU2_dbiterr_18_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_18_B5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"6060060660600606"
    )
    port map (
      ADR3 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_19_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y19",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"C00C3003C00C3003"
    )
    port map (
      ADR0 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(3)
    );
  top_Internal_memory_BU2_dbiterr_11_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_11_D5LUT_O_UNCONNECTED
    );
  ProtoComp19_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X6Y21"
    )
    port map (
      O => ProtoComp19_CYINITVCC_1
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y21"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp19_CYINITVCC_1,
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
      LOC => "SLICE_X6Y21",
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
  top_Internal_memory_BU2_dbiterr_12_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_12_C5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"9900009999000099"
    )
    port map (
      ADR2 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(1)
    );
  top_Internal_memory_BU2_dbiterr_13_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_13_B5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"9009900990099009"
    )
    port map (
      ADR4 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y21",
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
      LOC => "SLICE_X6Y22"
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
      LOC => "SLICE_X6Y22",
      INIT => X"9900009999000099"
    )
    port map (
      ADR2 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0,
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(9),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(8),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(4)
    );
  top_Internal_memory_BU2_dbiterr_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y22",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_10_A5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y19",
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
  top_Internal_memory_BU2_dbiterr_6_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_6_D5LUT_O_UNCONNECTED
    );
  ProtoComp18_CYINITVCC_1 : X_ONE
    generic map(
      LOC => "SLICE_X8Y19"
    )
    port map (
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet_3_ProtoComp18_CYINITVCC_1
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y19"
    )
    port map (
      CI => '0',
      CYINIT => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet_3_ProtoComp18_CYINITVCC_1,
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
      LOC => "SLICE_X8Y19",
      INIT => X"8241824182418241"
    )
    port map (
      ADR4 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_0,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_0,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(2)
    );
  top_Internal_memory_BU2_dbiterr_7_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_7_C5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y19",
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
  top_Internal_memory_BU2_dbiterr_8_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_8_B5LUT_O_UNCONNECTED
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y19",
      INIT => X"00C3C30000C3C300"
    )
    port map (
      ADR0 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_9_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y19",
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
  top_Transmitter_width_count_3 : X_FF
    generic map(
      LOC => "SLICE_X12Y3",
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
      LOC => "SLICE_X12Y3",
      INIT => X"FF7FFFFF00000000"
    )
    port map (
      ADR4 => top_Transmitter_width_count(7),
      ADR1 => top_Transmitter_width_count(5),
      ADR0 => top_Transmitter_width_count(2),
      ADR5 => top_Transmitter_width_count(3),
      ADR2 => top_Transmitter_width_count(1),
      ADR3 => N4,
      O => top_Transmitter_Mcount_width_count_lut_3_Q_223
    );
  top_Transmitter_width_count_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y3",
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
      LOC => "SLICE_X12Y3"
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
      S(3) => top_Transmitter_Mcount_width_count_lut_3_Q_223,
      S(2) => top_Transmitter_Mcount_width_count_lut_2_Q_239,
      S(1) => top_Transmitter_Mcount_width_count_lut_1_Q_248,
      S(0) => top_Transmitter_width_count_0_rt_257
    );
  top_Transmitter_Mcount_width_count_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"FF00FF007F00FF00"
    )
    port map (
      ADR2 => top_Transmitter_width_count(7),
      ADR4 => top_Transmitter_width_count(5),
      ADR1 => top_Transmitter_width_count(3),
      ADR3 => top_Transmitter_width_count(2),
      ADR0 => top_Transmitter_width_count(1),
      ADR5 => N4,
      O => top_Transmitter_Mcount_width_count_lut_2_Q_239
    );
  top_Transmitter_width_count_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y3",
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
      LOC => "SLICE_X12Y3",
      INIT => X"BFFF0000FFFF0000"
    )
    port map (
      ADR1 => top_Transmitter_width_count(7),
      ADR3 => top_Transmitter_width_count(5),
      ADR2 => top_Transmitter_width_count(3),
      ADR4 => top_Transmitter_width_count(1),
      ADR5 => top_Transmitter_width_count(2),
      ADR0 => N4,
      O => top_Transmitter_Mcount_width_count_lut_1_Q_248
    );
  top_Transmitter_width_count_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y3",
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
      LOC => "SLICE_X12Y3",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => top_Transmitter_width_count(0),
      ADR4 => '1',
      ADR5 => '1',
      O => top_Transmitter_width_count_0_rt_257
    );
  switches_0_OBUF_1_7_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y3",
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
      LOC => "SLICE_X12Y4",
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
      LOC => "SLICE_X12Y4",
      INIT => X"F7FFFFFF00000000"
    )
    port map (
      ADR1 => top_Transmitter_width_count(2),
      ADR0 => top_Transmitter_width_count(1),
      ADR3 => top_Transmitter_width_count(5),
      ADR5 => top_Transmitter_width_count(7),
      ADR4 => top_Transmitter_width_count(3),
      ADR2 => N4,
      O => top_Transmitter_Mcount_width_count_lut_7_Q_263
    );
  top_Transmitter_width_count_6 : X_FF
    generic map(
      LOC => "SLICE_X12Y4",
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
      LOC => "SLICE_X12Y4"
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
      S(3) => top_Transmitter_Mcount_width_count_lut_7_Q_263,
      S(2) => top_Transmitter_width_count_6_rt_278,
      S(1) => top_Transmitter_Mcount_width_count_lut_5_Q_283,
      S(0) => top_Transmitter_width_count_4_rt_291
    );
  top_Transmitter_width_count_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Transmitter_width_count(6),
      ADR3 => '1',
      ADR5 => '1',
      O => top_Transmitter_width_count_6_rt_278
    );
  switches_0_OBUF_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y4",
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
      LOC => "SLICE_X12Y4",
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
      LOC => "SLICE_X12Y4",
      INIT => X"FFFF00007FFF0000"
    )
    port map (
      ADR2 => top_Transmitter_width_count(7),
      ADR3 => top_Transmitter_width_count(3),
      ADR1 => top_Transmitter_width_count(2),
      ADR4 => top_Transmitter_width_count(5),
      ADR0 => top_Transmitter_width_count(1),
      ADR5 => N4,
      O => top_Transmitter_Mcount_width_count_lut_5_Q_283
    );
  top_Transmitter_width_count_4 : X_FF
    generic map(
      LOC => "SLICE_X12Y4",
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
      LOC => "SLICE_X12Y4",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Transmitter_width_count(4),
      ADR3 => '1',
      ADR5 => '1',
      O => top_Transmitter_width_count_4_rt_291
    );
  switches_0_OBUF_1_3_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y4",
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
      LOC => "PAD168"
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
      LOC => "PAD172"
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
      LOC => "PAD171",
      PATHPULSE => 202 ps
    )
    port map (
      O => RD_IBUF_317,
      I => RD
    );
  ProtoComp23_IMUX : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 202 ps
    )
    port map (
      I => RD_IBUF_317,
      O => RD_IBUF_0
    );
  TD_OBUF : X_OBUF
    generic map(
      LOC => "PAD170"
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
      O => Reset_IBUF_322,
      I => Reset
    );
  ProtoComp23_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 202 ps
    )
    port map (
      I => Reset_IBUF_322,
      O => Reset_IBUF_0
    );
  Send_IBUF : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 202 ps
    )
    port map (
      O => Send_IBUF_325,
      I => Send
    );
  ProtoComp23_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 202 ps
    )
    port map (
      I => Send_IBUF_325,
      O => Send_IBUF_0
    );
  Clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => Clk_BUFGP_IBUFG_328,
      I => Clk
    );
  ProtoComp23_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP_IBUFG_328,
      O => Clk_BUFGP_IBUFG_0
    );
  DMA_ACK_IBUF : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 202 ps
    )
    port map (
      O => DMA_ACK_IBUF_331,
      I => DMA_ACK
    );
  ProtoComp23_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 202 ps
    )
    port map (
      I => DMA_ACK_IBUF_331,
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
  top_Receiver_data_count_2_top_Receiver_data_count_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N8_pack_9,
      O => N8
    );
  top_Receiver_data_count_2_top_Receiver_data_count_2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Receiver_data_count_0_pack_6,
      O => top_Receiver_data_count(0)
    );
  top_Receiver_data_count_2_rstpot_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => X"0800000000000000"
    )
    port map (
      ADR4 => top_Receiver_width_count(7),
      ADR5 => top_Receiver_width_count(2),
      ADR0 => top_Receiver_width_count(3),
      ADR3 => top_Receiver_data_count(1),
      ADR1 => top_Receiver_width_count(5),
      ADR2 => top_Receiver_width_count(4),
      O => N50
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT6_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => X"C000C000C000C000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => top_Receiver_width_count(2),
      ADR3 => top_Receiver_width_count(1),
      ADR2 => top_Receiver_width_count(0),
      ADR5 => '1',
      O => N6
    );
  top_Receiver_width_count_7_PWR_7_o_equal_4_o_7_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => X"FAFFFAFF"
    )
    port map (
      ADR1 => '1',
      ADR0 => top_Receiver_width_count(6),
      ADR4 => '1',
      ADR3 => top_Receiver_width_count(1),
      ADR2 => top_Receiver_width_count(0),
      O => N8_pack_9
    );
  top_Receiver_data_count_2 : X_FF
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_data_count_2_CLK,
      I => top_Receiver_data_count_2_rstpot_343,
      O => top_Receiver_data_count(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_data_count_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => X"FFFF00007FFF8000"
    )
    port map (
      ADR0 => N50,
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_1606,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_1607,
      ADR4 => top_Receiver_data_count(2),
      ADR3 => top_Receiver_data_count(0),
      ADR5 => N8,
      O => top_Receiver_data_count_2_rstpot_343
    );
  top_Receiver_data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_data_count_1_CLK,
      I => top_Receiver_data_count_1_rstpot_362,
      O => top_Receiver_data_count(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_data_count_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => X"7FFF80007FFF8000"
    )
    port map (
      ADR1 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR3 => top_Receiver_CurrentState_FSM_FFd1_1606,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_1607,
      ADR4 => top_Receiver_data_count(1),
      ADR0 => top_Receiver_data_count(0),
      ADR5 => '1',
      O => top_Receiver_data_count_1_rstpot_362
    );
  top_Receiver_data_count_0_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => X"6AAA6AAA"
    )
    port map (
      ADR1 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR3 => top_Receiver_CurrentState_FSM_FFd1_1606,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_1607,
      ADR4 => '1',
      ADR0 => top_Receiver_data_count(0),
      O => top_Receiver_data_count_0_rstpot_366
    );
  top_Receiver_data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_data_count_0_CLK,
      I => top_Receiver_data_count_0_rstpot_366,
      O => top_Receiver_data_count_0_pack_6,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y13",
      INIT => X"DFFFFFFFFFFFFFFF"
    )
    port map (
      ADR4 => top_Receiver_width_count(5),
      ADR2 => top_Receiver_width_count(2),
      ADR0 => top_Receiver_width_count(3),
      ADR5 => top_Receiver_CurrentState_FSM_FFd2_1607,
      ADR1 => top_Receiver_width_count(4),
      ADR3 => top_Receiver_CurrentState_FSM_FFd1_1606,
      O => N34
    );
  top_Receiver_width_count_5_top_Receiver_width_count_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Receiver_width_count_2_pack_11,
      O => top_Receiver_width_count(2)
    );
  top_Receiver_width_count_5 : X_FF
    generic map(
      LOC => "SLICE_X1Y14",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_5_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q,
      O => top_Receiver_width_count(5),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT6 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y14",
      INIT => X"F070F0F0F0000000"
    )
    port map (
      ADR0 => top_Receiver_width_count(4),
      ADR4 => top_Receiver_width_count(3),
      ADR1 => N6,
      ADR5 => top_Receiver_width_count(5),
      ADR3 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      ADR2 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q
    );
  top_Receiver_width_count_4 : X_FF
    generic map(
      LOC => "SLICE_X1Y14",
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
      LOC => "SLICE_X1Y14",
      INIT => X"48C0C0C0C0C0C0C0"
    )
    port map (
      ADR4 => top_Receiver_width_count(1),
      ADR3 => top_Receiver_width_count(0),
      ADR5 => top_Receiver_width_count(2),
      ADR2 => top_Receiver_width_count(4),
      ADR0 => top_Receiver_width_count(3),
      ADR1 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q
    );
  top_Receiver_width_count_3 : X_FF
    generic map(
      LOC => "SLICE_X1Y14",
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
      LOC => "SLICE_X1Y14",
      INIT => X"2A80AA002A80AA00"
    )
    port map (
      ADR4 => top_Receiver_width_count(1),
      ADR2 => top_Receiver_width_count(0),
      ADR1 => top_Receiver_width_count(2),
      ADR3 => top_Receiver_width_count(3),
      ADR0 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      ADR5 => '1',
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y14",
      INIT => X"28288888"
    )
    port map (
      ADR4 => top_Receiver_width_count(1),
      ADR2 => top_Receiver_width_count(0),
      ADR1 => top_Receiver_width_count(2),
      ADR3 => '1',
      ADR0 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q
    );
  top_Receiver_width_count_2 : X_FF
    generic map(
      LOC => "SLICE_X1Y14",
      INIT => '0'
    )
    port map (
      CE => top_Receiver_n0066_inv,
      CLK => NlwBufferSignal_top_Receiver_width_count_2_CLK,
      I => top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q,
      O => top_Receiver_width_count_2_pack_11,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y14",
      INIT => X"FFAFFFFFDD8DDDDD"
    )
    port map (
      ADR2 => top_Receiver_width_count(6),
      ADR0 => top_Receiver_width_count(7),
      ADR5 => N8,
      ADR3 => N35,
      ADR1 => N34,
      ADR4 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      O => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51
    );
  INV_ram_top_gp_ram_Mram_contents_ram7_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_6_INV_ram_top_gp_ram_Mram_contents_ram7_DWE2
    );
  INV_ram_top_gp_ram_Mram_contents_ram7_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_6_INV_ram_top_gp_ram_Mram_contents_ram7_DWE1
    );
  INV_ram_top_gp_ram_Mram_contents_ram7_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_6_INV_ram_top_gp_ram_Mram_contents_ram7_CWE2
    );
  INV_ram_top_gp_ram_Mram_contents_ram7_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_6_INV_ram_top_gp_ram_Mram_contents_ram7_BWE1
    );
  ram_top_gp_ram_n0015_6_ram_top_gp_ram_n0015_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ram_top_gp_ram_n0015(6),
      O => ram_top_gp_ram_n0015_6_0
    );
  ram_top_gp_ram_Mram_contents_ram7_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y10"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram7_F7_B_413,
      IB => ram_top_gp_ram_Mram_contents_ram7_F7_A_414,
      O => ram_top_gp_ram_n0015(6),
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram7_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X2Y10"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram7_D_416,
      IB => ram_top_gp_ram_Mram_contents_ram7_C_426,
      O => ram_top_gp_ram_Mram_contents_ram7_F7_B_413,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram7_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X2Y10"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram7_B_434,
      IB => ram_top_gp_ram_Mram_contents_ram7_A_442,
      O => ram_top_gp_ram_Mram_contents_ram7_F7_A_414,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram7_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_IN,
      O => ram_top_gp_ram_Mram_contents_ram7_D_416,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR5,
      WE1 => ram_top_gp_ram_n0015_6_INV_ram_top_gp_ram_Mram_contents_ram7_DWE1,
      WE2 => ram_top_gp_ram_n0015_6_INV_ram_top_gp_ram_Mram_contents_ram7_DWE2,
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram7_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_IN,
      O => ram_top_gp_ram_Mram_contents_ram7_C_426,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR5,
      WE1 => address(2),
      WE2 => ram_top_gp_ram_n0015_6_INV_ram_top_gp_ram_Mram_contents_ram7_CWE2,
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram7_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_IN,
      O => ram_top_gp_ram_Mram_contents_ram7_B_434,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR5,
      WE1 => ram_top_gp_ram_n0015_6_INV_ram_top_gp_ram_Mram_contents_ram7_BWE1,
      WE2 => address(2),
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram7_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_IN,
      O => ram_top_gp_ram_Mram_contents_ram7_A_442,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR5,
      WE1 => address(2),
      WE2 => address(2),
      WE => '1'
    );
  INV_ram_top_gp_ram_Mram_contents_ram6_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_5_INV_ram_top_gp_ram_Mram_contents_ram6_DWE2
    );
  INV_ram_top_gp_ram_Mram_contents_ram6_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_5_INV_ram_top_gp_ram_Mram_contents_ram6_DWE1
    );
  INV_ram_top_gp_ram_Mram_contents_ram6_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_5_INV_ram_top_gp_ram_Mram_contents_ram6_CWE2
    );
  INV_ram_top_gp_ram_Mram_contents_ram6_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_5_INV_ram_top_gp_ram_Mram_contents_ram6_BWE1
    );
  ram_top_gp_ram_n0015_5_ram_top_gp_ram_n0015_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ram_top_gp_ram_n0015(5),
      O => ram_top_gp_ram_n0015_5_0
    );
  ram_top_gp_ram_Mram_contents_ram6_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y12"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram6_F7_B_450,
      IB => ram_top_gp_ram_Mram_contents_ram6_F7_A_451,
      O => ram_top_gp_ram_n0015(5),
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram6_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X2Y12"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram6_D_453,
      IB => ram_top_gp_ram_Mram_contents_ram6_C_463,
      O => ram_top_gp_ram_Mram_contents_ram6_F7_B_450,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram6_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X2Y12"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram6_B_471,
      IB => ram_top_gp_ram_Mram_contents_ram6_A_479,
      O => ram_top_gp_ram_Mram_contents_ram6_F7_A_451,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram6_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_IN,
      O => ram_top_gp_ram_Mram_contents_ram6_D_453,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR5,
      WE1 => ram_top_gp_ram_n0015_5_INV_ram_top_gp_ram_Mram_contents_ram6_DWE1,
      WE2 => ram_top_gp_ram_n0015_5_INV_ram_top_gp_ram_Mram_contents_ram6_DWE2,
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram6_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_IN,
      O => ram_top_gp_ram_Mram_contents_ram6_C_463,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR5,
      WE1 => address(2),
      WE2 => ram_top_gp_ram_n0015_5_INV_ram_top_gp_ram_Mram_contents_ram6_CWE2,
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram6_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_IN,
      O => ram_top_gp_ram_Mram_contents_ram6_B_471,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR5,
      WE1 => ram_top_gp_ram_n0015_5_INV_ram_top_gp_ram_Mram_contents_ram6_BWE1,
      WE2 => address(2),
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram6_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_IN,
      O => ram_top_gp_ram_Mram_contents_ram6_A_479,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR5,
      WE1 => address(2),
      WE2 => address(2),
      WE => '1'
    );
  top_Receiver_width_count_1_top_Receiver_width_count_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Receiver_n0066_inv_pack_6,
      O => top_Receiver_n0066_inv
    );
  top_Receiver_width_count_1 : X_FF
    generic map(
      LOC => "SLICE_X2Y13",
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
      LOC => "SLICE_X2Y13",
      INIT => X"0000407F407F0000"
    )
    port map (
      ADR3 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      ADR1 => top_Receiver_CurrentState_FSM_FFd2_1607,
      ADR2 => top_Receiver_CurrentState_FSM_FFd1_1606,
      ADR4 => top_Receiver_width_count(1),
      ADR0 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR5 => top_Receiver_width_count(0),
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q
    );
  top_Receiver_width_count_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y13",
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
      LOC => "SLICE_X2Y13",
      INIT => X"0555555505555555"
    )
    port map (
      ADR1 => '1',
      ADR3 => top_Receiver_CurrentState_FSM_FFd1_1606,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_1607,
      ADR0 => top_Receiver_width_count(0),
      ADR4 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR5 => '1',
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q
    );
  top_Receiver_n0066_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y13",
      INIT => X"FFF0FFF0"
    )
    port map (
      ADR0 => '1',
      ADR3 => top_Receiver_CurrentState_FSM_FFd1_1606,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_1607,
      ADR1 => '1',
      ADR4 => '1',
      O => top_Receiver_n0066_inv_pack_6
    );
  top_Receiver_width_count_7_PWR_7_o_equal_4_o_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y13",
      INIT => X"0000000000800000"
    )
    port map (
      ADR4 => top_Receiver_width_count(5),
      ADR2 => top_Receiver_width_count(3),
      ADR3 => top_Receiver_width_count(4),
      ADR0 => top_Receiver_width_count(7),
      ADR1 => top_Receiver_width_count(2),
      ADR5 => N8,
      O => top_Receiver_width_count_7_PWR_7_o_equal_4_o
    );
  top_Receiver_width_count_7 : X_FF
    generic map(
      LOC => "SLICE_X2Y14",
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
      LOC => "SLICE_X2Y14",
      INIT => X"FF0000000F00F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => top_Receiver_width_count(6),
      ADR4 => top_Receiver_width_count(7),
      ADR5 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11,
      ADR3 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q
    );
  top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_111 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y14",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR1 => top_Receiver_width_count(5),
      ADR0 => top_Receiver_width_count(2),
      ADR5 => top_Receiver_width_count(3),
      ADR4 => top_Receiver_width_count(0),
      ADR3 => top_Receiver_width_count(1),
      ADR2 => top_Receiver_width_count(4),
      O => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11
    );
  top_Receiver_width_count_6 : X_FF
    generic map(
      LOC => "SLICE_X2Y14",
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
      LOC => "SLICE_X2Y14",
      INIT => X"008070F00008070F"
    )
    port map (
      ADR4 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      ADR1 => top_Receiver_CurrentState_FSM_FFd2_1607,
      ADR0 => top_Receiver_CurrentState_FSM_FFd1_1606,
      ADR5 => top_Receiver_width_count(6),
      ADR3 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR2 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q
    );
  top_Receiver_CurrentState_FSM_FFd2_top_Receiver_CurrentState_FSM_FFd2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N44_pack_7,
      O => N44
    );
  top_Receiver_CurrentState_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd2_CLK,
      I => top_Receiver_CurrentState_FSM_FFd2_In_540,
      O => top_Receiver_CurrentState_FSM_FFd2_1607,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_CurrentState_FSM_FFd2_In : X_LUT6
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => X"7FFF00007FFF3333"
    )
    port map (
      ADR0 => top_Receiver_data_count(0),
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_1606,
      ADR2 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR4 => top_Receiver_CurrentState_FSM_FFd2_1607,
      ADR3 => N28_0,
      ADR5 => top_LineRD_in_1665,
      O => top_Receiver_CurrentState_FSM_FFd2_In_540
    );
  top_Receiver_CurrentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd1_CLK,
      I => top_Receiver_CurrentState_FSM_FFd1_In,
      O => top_Receiver_CurrentState_FSM_FFd1_1606,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_CurrentState_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => X"88AAEEAA88AAEEAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => top_Receiver_CurrentState_FSM_FFd2_1607,
      ADR4 => top_LineRD_in_1665,
      ADR0 => top_Receiver_CurrentState_FSM_FFd1_1606,
      ADR3 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      ADR5 => '1',
      O => top_Receiver_CurrentState_FSM_FFd1_In
    );
  top_Receiver_width_count_7_PWR_7_o_equal_4_o_7_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => X"80808080"
    )
    port map (
      ADR2 => top_Receiver_width_count(7),
      ADR1 => top_Receiver_CurrentState_FSM_FFd2_1607,
      ADR3 => '1',
      ADR0 => top_Receiver_CurrentState_FSM_FFd1_1606,
      ADR4 => '1',
      O => N44_pack_7
    );
  top_Receiver_width_count_7_GND_7_o_equal_8_o_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => X"0000303000000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => top_Receiver_width_count(3),
      ADR2 => top_Receiver_width_count(6),
      ADR1 => top_Receiver_width_count(7),
      ADR5 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      O => top_Receiver_width_count_7_GND_7_o_equal_8_o
    );
  top_Receiver_Valid_out1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => X"0000080000000000"
    )
    port map (
      ADR3 => top_Receiver_width_count(5),
      ADR4 => top_Receiver_width_count(4),
      ADR0 => top_Receiver_width_count(2),
      ADR5 => top_Receiver_width_count(3),
      ADR2 => N8,
      ADR1 => N44,
      O => top_Valid_out
    );
  top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_131 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y14",
      INIT => X"4000400000000000"
    )
    port map (
      ADR4 => '1',
      ADR3 => top_Receiver_width_count(1),
      ADR0 => top_Receiver_width_count(5),
      ADR5 => top_Receiver_width_count(0),
      ADR2 => top_Receiver_width_count(4),
      ADR1 => top_Receiver_width_count(2),
      O => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13
    );
  top_Shift_Q_7_top_Shift_Q_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N38_pack_5,
      O => N38
    );
  top_Shift_Q_7 : X_FF
    generic map(
      LOC => "SLICE_X3Y15",
      INIT => '0'
    )
    port map (
      CE => top_Valid_out,
      CLK => NlwBufferSignal_top_Shift_Q_7_CLK,
      I => top_Shift_Q_7_D_MUX_25_o,
      O => top_Shift_Q(7),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Shift_Mmux_Q_7_D_MUX_25_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y15",
      INIT => X"FFFF7F7F80800000"
    )
    port map (
      ADR3 => '1',
      ADR1 => top_Receiver_data_count(0),
      ADR0 => top_Receiver_data_count(1),
      ADR5 => top_Shift_Q(7),
      ADR2 => top_Receiver_data_count(2),
      ADR4 => top_Code_out,
      O => top_Shift_Q_7_D_MUX_25_o
    );
  top_Receiver_Mmux_Code_out11 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y15",
      INIT => X"0055303000003030"
    )
    port map (
      ADR5 => top_Receiver_width_count(5),
      ADR4 => top_Receiver_width_count(7),
      ADR0 => N8,
      ADR3 => N37,
      ADR2 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      ADR1 => N38,
      O => top_Code_out
    );
  top_Receiver_Mmux_Code_out11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y15",
      INIT => X"FFFF7FFFFFFFFFFF"
    )
    port map (
      ADR3 => top_LineRD_in_1665,
      ADR4 => top_Receiver_width_count(4),
      ADR2 => top_Receiver_width_count(2),
      ADR5 => top_Receiver_width_count(3),
      ADR0 => top_Receiver_CurrentState_FSM_FFd1_1606,
      ADR1 => top_Receiver_CurrentState_FSM_FFd2_1607,
      O => N37
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y15",
      INIT => X"EEEEAAAAEEEEAAAA"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => top_Receiver_width_count(3),
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_1606,
      ADR4 => top_Receiver_CurrentState_FSM_FFd2_1607,
      ADR5 => '1',
      O => N35
    );
  top_Receiver_Mmux_Code_out11_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y15",
      INIT => X"FFFFBFFF"
    )
    port map (
      ADR2 => top_Receiver_width_count(6),
      ADR3 => top_LineRD_in_1665,
      ADR0 => top_Receiver_width_count(3),
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_1606,
      ADR4 => top_Receiver_CurrentState_FSM_FFd2_1607,
      O => N38_pack_5
    );
  databus_5_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y12",
      INIT => X"FFECFFA0F5F5F5F5"
    )
    port map (
      ADR5 => dma_top_CurrentState_FSM_FFd1_1632,
      ADR4 => dma_top_data_count(0),
      ADR1 => dma_top_data_count(1),
      ADR3 => data_out(5),
      ADR0 => oe,
      ADR2 => ram_top_gp_ram_n0015_5_0,
      O => databus(5)
    );
  top_Receiver_width_count_7_GND_7_o_equal_8_o_7_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => X"00FFFFFF00FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => top_LineRD_in_1665,
      ADR4 => top_Receiver_CurrentState_FSM_FFd1_1606,
      O => N30
    );
  top_Receiver_Mmux_Store_out11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y15",
      INIT => X"0000001000000000"
    )
    port map (
      ADR2 => top_Receiver_width_count(6),
      ADR1 => top_Receiver_width_count(7),
      ADR3 => top_Receiver_width_count(3),
      ADR0 => top_Receiver_CurrentState_FSM_FFd2_1607,
      ADR4 => N30,
      ADR5 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      O => top_Fifo_write
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_ram_wr_en_i1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y15",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => top_Fifo_write,
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_1774,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en
    );
  top_Shift_Q_6 : X_FF
    generic map(
      LOC => "SLICE_X4Y16",
      INIT => '0'
    )
    port map (
      CE => top_Valid_out,
      CLK => NlwBufferSignal_top_Shift_Q_6_CLK,
      I => top_Shift_Q_6_D_MUX_26_o,
      O => top_Shift_Q(6),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Shift_Mmux_Q_6_D_MUX_26_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y16",
      INIT => X"FFFF00C0FF3F0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => top_Receiver_data_count(0),
      ADR1 => top_Receiver_data_count(1),
      ADR4 => top_Shift_Q(6),
      ADR2 => top_Receiver_data_count(2),
      ADR5 => top_Code_out,
      O => top_Shift_Q_6_D_MUX_26_o
    );
  top_Shift_Q_5 : X_FF
    generic map(
      LOC => "SLICE_X4Y16",
      INIT => '0'
    )
    port map (
      CE => top_Valid_out,
      CLK => NlwBufferSignal_top_Shift_Q_5_CLK,
      I => top_Shift_Q_5_D_MUX_27_o,
      O => top_Shift_Q(5),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Shift_Mmux_Q_5_D_MUX_27_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y16",
      INIT => X"FBFB4040FFFF0000"
    )
    port map (
      ADR3 => '1',
      ADR0 => top_Receiver_data_count(1),
      ADR5 => top_Receiver_data_count(2),
      ADR4 => top_Shift_Q(5),
      ADR1 => top_Receiver_data_count(0),
      ADR2 => top_Code_out,
      O => top_Shift_Q_5_D_MUX_27_o
    );
  top_Shift_Q_4 : X_FF
    generic map(
      LOC => "SLICE_X4Y16",
      INIT => '0'
    )
    port map (
      CE => top_Valid_out,
      CLK => NlwBufferSignal_top_Shift_Q_4_CLK,
      I => top_Shift_Q_4_D_MUX_28_o,
      O => top_Shift_Q(4),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Shift_Mmux_Q_4_D_MUX_28_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y16",
      INIT => X"FFFCFFFF03000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Receiver_data_count(0),
      ADR2 => top_Receiver_data_count(1),
      ADR5 => top_Shift_Q(4),
      ADR4 => top_Receiver_data_count(2),
      ADR3 => top_Code_out,
      O => top_Shift_Q_4_D_MUX_28_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_pack_4,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6)
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
      LOC => "SLICE_X4Y18",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(8),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_ram_rd_en_i1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => data_read,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_1780,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_tmp_ram_rd_en1 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => X"AAFFAAAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_Q,
      ADR4 => data_read,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_1780,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_tmp_ram_rd_en
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7 : X_FF
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  dma_top_Mmux_Data_Read11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => X"50FAFAFA00AAAAAA"
    )
    port map (
      ADR1 => '1',
      ADR2 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR5 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR0 => dma_top_CurrentState_FSM_FFd1_1632,
      ADR3 => dma_top_data_count(1),
      ADR4 => dma_top_data_count(0),
      O => data_read
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6 : X_FF
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT1031 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => X"0000800000008000"
    )
    port map (
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT103
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT71 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => X"F0F078F0"
    )
    port map (
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_6_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6 : X_FF
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_6_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_pack_4,
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5 : X_FF
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT411 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => X"33FFFFFF33FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt_669
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9 : X_FF
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt_669,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(9),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(5),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(4),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_0
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
      LOC => "SLICE_X4Y20",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y20",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_rt_692
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5 : X_FF
    generic map(
      LOC => "SLICE_X4Y20",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_rt_692,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(5),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_8 : X_FF
    generic map(
      LOC => "SLICE_X4Y20",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y20"
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y20",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_rt_700
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4 : X_FF
    generic map(
      LOC => "SLICE_X4Y20",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_rt_700,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(4),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7 : X_FF
    generic map(
      LOC => "SLICE_X4Y20",
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
      LOC => "SLICE_X4Y20",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y20",
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
  top_Internal_memory_BU2_dbiterr_15_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y20",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_15_A5LUT_O_UNCONNECTED
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
      LOC => "SLICE_X4Y21",
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
      LOC => "SLICE_X4Y21",
      INIT => X"FF7F0080FFFF0000"
    )
    port map (
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_7_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT411 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => X"DDDDFFFFDDDDFFFF"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => X"9999AAAA"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_2_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2 : X_FF
    generic map(
      LOC => "SLICE_X4Y21",
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
      LOC => "SLICE_X4Y21",
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
      LOC => "SLICE_X4Y21",
      INIT => X"FFFF7F7F00008080"
    )
    port map (
      ADR3 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_6_Q
    );
  top_Shift_Q_3_top_Shift_Q_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N28,
      O => N28_0
    );
  top_Shift_Q_3 : X_FF
    generic map(
      LOC => "SLICE_X5Y16",
      INIT => '0'
    )
    port map (
      CE => top_Valid_out,
      CLK => NlwBufferSignal_top_Shift_Q_3_CLK,
      I => top_Shift_Q_3_D_MUX_29_o,
      O => top_Shift_Q(3),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Shift_Mmux_Q_3_D_MUX_29_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y16",
      INIT => X"ACAAAAAAACAAAAAA"
    )
    port map (
      ADR2 => top_Receiver_data_count(2),
      ADR4 => top_Receiver_data_count(1),
      ADR3 => top_Receiver_data_count(0),
      ADR0 => top_Shift_Q(3),
      ADR1 => top_Code_out,
      ADR5 => '1',
      O => top_Shift_Q_3_D_MUX_29_o
    );
  top_Receiver_CurrentState_FSM_FFd2_In_SW0_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y16",
      INIT => X"F0F00000"
    )
    port map (
      ADR2 => top_Receiver_data_count(2),
      ADR4 => top_Receiver_data_count(1),
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => '1',
      O => N28
    );
  top_Shift_Q_2 : X_FF
    generic map(
      LOC => "SLICE_X5Y16",
      INIT => '0'
    )
    port map (
      CE => top_Valid_out,
      CLK => NlwBufferSignal_top_Shift_Q_2_CLK,
      I => top_Shift_Q_2_D_MUX_30_o,
      O => top_Shift_Q(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Shift_Mmux_Q_2_D_MUX_30_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y16",
      INIT => X"FFFF0202FDFD0000"
    )
    port map (
      ADR3 => '1',
      ADR2 => top_Receiver_data_count(2),
      ADR1 => top_Receiver_data_count(0),
      ADR4 => top_Shift_Q(2),
      ADR0 => top_Receiver_data_count(1),
      ADR5 => top_Code_out,
      O => top_Shift_Q_2_D_MUX_30_o
    );
  top_Shift_Q_1 : X_FF
    generic map(
      LOC => "SLICE_X5Y16",
      INIT => '0'
    )
    port map (
      CE => top_Valid_out,
      CLK => NlwBufferSignal_top_Shift_Q_1_CLK,
      I => top_Shift_Q_1_D_MUX_31_o,
      O => top_Shift_Q(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Shift_Mmux_Q_1_D_MUX_31_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y16",
      INIT => X"FFEE1100FFFF0000"
    )
    port map (
      ADR2 => '1',
      ADR0 => top_Receiver_data_count(2),
      ADR1 => top_Receiver_data_count(1),
      ADR4 => top_Shift_Q(1),
      ADR5 => top_Receiver_data_count(0),
      ADR3 => top_Code_out,
      O => top_Shift_Q_1_D_MUX_31_o
    );
  top_Shift_Q_0 : X_FF
    generic map(
      LOC => "SLICE_X5Y16",
      INIT => '0'
    )
    port map (
      CE => top_Valid_out,
      CLK => NlwBufferSignal_top_Shift_Q_0_CLK,
      I => top_Shift_Q_0_D_MUX_32_o,
      O => top_Shift_Q(0),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Shift_Mmux_Q_0_D_MUX_32_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y16",
      INIT => X"FFFF0000FEFE1010"
    )
    port map (
      ADR3 => '1',
      ADR0 => top_Receiver_data_count(0),
      ADR1 => top_Receiver_data_count(1),
      ADR4 => top_Shift_Q(0),
      ADR5 => top_Receiver_data_count(2),
      ADR2 => top_Code_out,
      O => top_Shift_Q_0_D_MUX_32_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT811 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y18",
      INIT => X"AFFFFFFFFFFFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81_1788
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9 : X_FF
    generic map(
      LOC => "SLICE_X5Y18",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_9_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT101 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y18",
      INIT => X"FFFF3F3F80808080"
    )
    port map (
      ADR3 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT103,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81_1788,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_9_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3 : X_FF
    generic map(
      LOC => "SLICE_X5Y19",
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
      LOC => "SLICE_X5Y19",
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
      LOC => "SLICE_X5Y19",
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
      LOC => "SLICE_X5Y19",
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
      LOC => "SLICE_X5Y19",
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
      LOC => "SLICE_X5Y21",
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
      LOC => "SLICE_X5Y21",
      INIT => X"F7FF0800FFFF0000"
    )
    port map (
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_5_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3 : X_FF
    generic map(
      LOC => "SLICE_X5Y21",
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
      LOC => "SLICE_X5Y21",
      INIT => X"FF5F00A0FF5F00A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_3_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT51 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y21",
      INIT => X"CC6CCCCC"
    )
    port map (
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_4_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4 : X_FF
    generic map(
      LOC => "SLICE_X5Y21",
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
      LOC => "SLICE_X5Y21",
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
      LOC => "SLICE_X5Y21",
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
      LOC => "SLICE_X5Y22",
      INIT => X"0F0FFFFF0F0FFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR5 => '1',
      O => top_Internal_memory_BU2_N2
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT101_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y22",
      INIT => X"5F5FFFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      O => top_Internal_memory_BU2_N4_pack_8
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8 : X_FF
    generic map(
      LOC => "SLICE_X5Y22",
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
      LOC => "SLICE_X5Y22",
      INIT => X"F0F0F078F0F0F0F0"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      ADR3 => top_Internal_memory_BU2_N2,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_8_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9 : X_FF
    generic map(
      LOC => "SLICE_X5Y22",
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
      LOC => "SLICE_X5Y22",
      INIT => X"EF10FF00FF00FF00"
    )
    port map (
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(9),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      ADR0 => top_Internal_memory_BU2_N4,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_9_Q
    );
  dma_top_Mmux_TX_Data61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y6",
      INIT => X"FFFFFFFFDDFFCCFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR4 => dma_top_data_count(1),
      ADR0 => dma_top_data_count(0),
      ADR3 => ram_top_gp_ram_n0015_5_0,
      ADR5 => dma_top_CurrentState_FSM_FFd1_1632,
      O => N22
    );
  top_Data_FF_5 : X_FF
    generic map(
      LOC => "SLICE_X6Y6",
      INIT => '0'
    )
    port map (
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0,
      CLK => NlwBufferSignal_top_Data_FF_5_CLK,
      I => top_Data_FF_5_dpot_860,
      O => top_Data_FF(5),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y6",
      INIT => X"FCFC0000FEFC0200"
    )
    port map (
      ADR1 => top_Transmitter_CurrentState_FSM_FFd2_1623,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd1_1624,
      ADR5 => N22,
      ADR4 => top_Data_FF(5),
      ADR3 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR0 => top_Ack_in_1776,
      O => top_Data_FF_5_dpot_860
    );
  dma_top_Mmux_TX_Data51_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y6",
      INIT => X"EFEFEFEFFFEFFFEF"
    )
    port map (
      ADR4 => '1',
      ADR0 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR3 => dma_top_data_count(1),
      ADR5 => dma_top_data_count(0),
      ADR2 => ram_top_gp_ram_n0015_4_0,
      ADR1 => dma_top_CurrentState_FSM_FFd1_1632,
      O => N20
    );
  top_Data_FF_4 : X_FF
    generic map(
      LOC => "SLICE_X6Y6",
      INIT => '0'
    )
    port map (
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0,
      CLK => NlwBufferSignal_top_Data_FF_4_CLK,
      I => top_Data_FF_4_dpot_878,
      O => top_Data_FF(4),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y6",
      INIT => X"FFAAFFEA00000040"
    )
    port map (
      ADR3 => top_Transmitter_CurrentState_FSM_FFd2_1623,
      ADR0 => top_Transmitter_CurrentState_FSM_FFd1_1624,
      ADR4 => N20,
      ADR5 => top_Data_FF(4),
      ADR2 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR1 => top_Ack_in_1776,
      O => top_Data_FF_4_dpot_878
    );
  top_Data_FF_7 : X_FF
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => '0'
    )
    port map (
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0,
      CLK => NlwBufferSignal_top_Data_FF_7_CLK,
      I => top_Data_FF_7_dpot_906,
      O => top_Data_FF(7),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => X"FFFFDCCC00001000"
    )
    port map (
      ADR4 => top_Transmitter_CurrentState_FSM_FFd2_1623,
      ADR1 => top_Transmitter_CurrentState_FSM_FFd1_1624,
      ADR0 => N26_0,
      ADR5 => top_Data_FF(7),
      ADR3 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR2 => top_Ack_in_1776,
      O => top_Data_FF_7_dpot_906
    );
  dma_top_Mmux_TX_Data71_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => X"FCFFFCFCFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR4 => dma_top_data_count(1),
      ADR3 => dma_top_data_count(0),
      ADR5 => ram_top_gp_ram_n0015_6_0,
      ADR2 => dma_top_CurrentState_FSM_FFd1_1632,
      O => N24
    );
  top_Data_FF_6 : X_FF
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => '0'
    )
    port map (
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0,
      CLK => NlwBufferSignal_top_Data_FF_6_CLK,
      I => top_Data_FF_6_dpot_901,
      O => top_Data_FF(6),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => X"FAFE0004FAFA0000"
    )
    port map (
      ADR0 => top_Transmitter_CurrentState_FSM_FFd2_1623,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd1_1624,
      ADR3 => N24,
      ADR4 => top_Data_FF(6),
      ADR1 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR5 => top_Ack_in_1776,
      O => top_Data_FF_6_dpot_901
    );
  INV_ram_top_gp_ram_Mram_contents_ram8_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_7_INV_ram_top_gp_ram_Mram_contents_ram8_DWE2
    );
  INV_ram_top_gp_ram_Mram_contents_ram8_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_7_INV_ram_top_gp_ram_Mram_contents_ram8_DWE1
    );
  INV_ram_top_gp_ram_Mram_contents_ram8_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_7_INV_ram_top_gp_ram_Mram_contents_ram8_CWE2
    );
  INV_ram_top_gp_ram_Mram_contents_ram8_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_7_INV_ram_top_gp_ram_Mram_contents_ram8_BWE1
    );
  ram_top_gp_ram_n0015_7_ram_top_gp_ram_n0015_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ram_top_gp_ram_n0015(7),
      O => ram_top_gp_ram_n0015_7_0
    );
  ram_top_gp_ram_Mram_contents_ram8_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y8"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram8_F7_B_908,
      IB => ram_top_gp_ram_Mram_contents_ram8_F7_A_909,
      O => ram_top_gp_ram_n0015(7),
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram8_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X6Y8"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram8_D_911,
      IB => ram_top_gp_ram_Mram_contents_ram8_C_921,
      O => ram_top_gp_ram_Mram_contents_ram8_F7_B_908,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram8_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X6Y8"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram8_B_929,
      IB => ram_top_gp_ram_Mram_contents_ram8_A_937,
      O => ram_top_gp_ram_Mram_contents_ram8_F7_A_909,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram8_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y8",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_IN,
      O => ram_top_gp_ram_Mram_contents_ram8_D_911,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR5,
      WE1 => ram_top_gp_ram_n0015_7_INV_ram_top_gp_ram_Mram_contents_ram8_DWE1,
      WE2 => ram_top_gp_ram_n0015_7_INV_ram_top_gp_ram_Mram_contents_ram8_DWE2,
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram8_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y8",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_IN,
      O => ram_top_gp_ram_Mram_contents_ram8_C_921,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR5,
      WE1 => address(2),
      WE2 => ram_top_gp_ram_n0015_7_INV_ram_top_gp_ram_Mram_contents_ram8_CWE2,
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram8_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y8",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_IN,
      O => ram_top_gp_ram_Mram_contents_ram8_B_929,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR5,
      WE1 => ram_top_gp_ram_n0015_7_INV_ram_top_gp_ram_Mram_contents_ram8_BWE1,
      WE2 => address(2),
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram8_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y8",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_IN,
      O => ram_top_gp_ram_Mram_contents_ram8_A_937,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR5,
      WE1 => address(2),
      WE2 => address(2),
      WE => '1'
    );
  INV_ram_top_gp_ram_Mram_contents_ram1_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_0_INV_ram_top_gp_ram_Mram_contents_ram1_DWE2
    );
  INV_ram_top_gp_ram_Mram_contents_ram1_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_0_INV_ram_top_gp_ram_Mram_contents_ram1_DWE1
    );
  INV_ram_top_gp_ram_Mram_contents_ram1_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_0_INV_ram_top_gp_ram_Mram_contents_ram1_CWE2
    );
  INV_ram_top_gp_ram_Mram_contents_ram1_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_0_INV_ram_top_gp_ram_Mram_contents_ram1_BWE1
    );
  ram_top_gp_ram_n0015_0_ram_top_gp_ram_n0015_0_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ram_top_gp_ram_n0015(0),
      O => ram_top_gp_ram_n0015_0_0
    );
  ram_top_gp_ram_Mram_contents_ram1_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y9"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram1_F7_B_945,
      IB => ram_top_gp_ram_Mram_contents_ram1_F7_A_946,
      O => ram_top_gp_ram_n0015(0),
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram1_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X6Y9"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram1_D_948,
      IB => ram_top_gp_ram_Mram_contents_ram1_C_958,
      O => ram_top_gp_ram_Mram_contents_ram1_F7_B_945,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram1_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X6Y9"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram1_B_966,
      IB => ram_top_gp_ram_Mram_contents_ram1_A_974,
      O => ram_top_gp_ram_Mram_contents_ram1_F7_A_946,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram1_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y9",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_IN,
      O => ram_top_gp_ram_Mram_contents_ram1_D_948,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR5,
      WE1 => ram_top_gp_ram_n0015_0_INV_ram_top_gp_ram_Mram_contents_ram1_DWE1,
      WE2 => ram_top_gp_ram_n0015_0_INV_ram_top_gp_ram_Mram_contents_ram1_DWE2,
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram1_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y9",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_IN,
      O => ram_top_gp_ram_Mram_contents_ram1_C_958,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR5,
      WE1 => address(2),
      WE2 => ram_top_gp_ram_n0015_0_INV_ram_top_gp_ram_Mram_contents_ram1_CWE2,
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram1_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y9",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_IN,
      O => ram_top_gp_ram_Mram_contents_ram1_B_966,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR5,
      WE1 => ram_top_gp_ram_n0015_0_INV_ram_top_gp_ram_Mram_contents_ram1_BWE1,
      WE2 => address(2),
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram1_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y9",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_IN,
      O => ram_top_gp_ram_Mram_contents_ram1_A_974,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR5,
      WE1 => address(2),
      WE2 => address(2),
      WE => '1'
    );
  INV_ram_top_gp_ram_Mram_contents_ram4_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_3_INV_ram_top_gp_ram_Mram_contents_ram4_DWE2
    );
  INV_ram_top_gp_ram_Mram_contents_ram4_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_3_INV_ram_top_gp_ram_Mram_contents_ram4_DWE1
    );
  INV_ram_top_gp_ram_Mram_contents_ram4_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_3_INV_ram_top_gp_ram_Mram_contents_ram4_CWE2
    );
  INV_ram_top_gp_ram_Mram_contents_ram4_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_3_INV_ram_top_gp_ram_Mram_contents_ram4_BWE1
    );
  ram_top_gp_ram_n0015_3_ram_top_gp_ram_n0015_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ram_top_gp_ram_n0015(3),
      O => ram_top_gp_ram_n0015_3_0
    );
  ram_top_gp_ram_Mram_contents_ram4_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y10"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram4_F7_B_982,
      IB => ram_top_gp_ram_Mram_contents_ram4_F7_A_983,
      O => ram_top_gp_ram_n0015(3),
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram4_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X6Y10"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram4_D_985,
      IB => ram_top_gp_ram_Mram_contents_ram4_C_995,
      O => ram_top_gp_ram_Mram_contents_ram4_F7_B_982,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram4_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X6Y10"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram4_B_1003,
      IB => ram_top_gp_ram_Mram_contents_ram4_A_1011,
      O => ram_top_gp_ram_Mram_contents_ram4_F7_A_983,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram4_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y10",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_IN,
      O => ram_top_gp_ram_Mram_contents_ram4_D_985,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR5,
      WE1 => ram_top_gp_ram_n0015_3_INV_ram_top_gp_ram_Mram_contents_ram4_DWE1,
      WE2 => ram_top_gp_ram_n0015_3_INV_ram_top_gp_ram_Mram_contents_ram4_DWE2,
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram4_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y10",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_IN,
      O => ram_top_gp_ram_Mram_contents_ram4_C_995,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR5,
      WE1 => address(2),
      WE2 => ram_top_gp_ram_n0015_3_INV_ram_top_gp_ram_Mram_contents_ram4_CWE2,
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram4_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y10",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_IN,
      O => ram_top_gp_ram_Mram_contents_ram4_B_1003,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR5,
      WE1 => ram_top_gp_ram_n0015_3_INV_ram_top_gp_ram_Mram_contents_ram4_BWE1,
      WE2 => address(2),
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram4_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y10",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_IN,
      O => ram_top_gp_ram_Mram_contents_ram4_A_1011,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR5,
      WE1 => address(2),
      WE2 => address(2),
      WE => '1'
    );
  INV_ram_top_gp_ram_Mram_contents_ram5_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_4_INV_ram_top_gp_ram_Mram_contents_ram5_DWE2
    );
  INV_ram_top_gp_ram_Mram_contents_ram5_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_4_INV_ram_top_gp_ram_Mram_contents_ram5_DWE1
    );
  INV_ram_top_gp_ram_Mram_contents_ram5_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_4_INV_ram_top_gp_ram_Mram_contents_ram5_CWE2
    );
  INV_ram_top_gp_ram_Mram_contents_ram5_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_4_INV_ram_top_gp_ram_Mram_contents_ram5_BWE1
    );
  ram_top_gp_ram_n0015_4_ram_top_gp_ram_n0015_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ram_top_gp_ram_n0015(4),
      O => ram_top_gp_ram_n0015_4_0
    );
  ram_top_gp_ram_Mram_contents_ram5_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y12"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram5_F7_B_1019,
      IB => ram_top_gp_ram_Mram_contents_ram5_F7_A_1020,
      O => ram_top_gp_ram_n0015(4),
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram5_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X6Y12"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram5_D_1022,
      IB => ram_top_gp_ram_Mram_contents_ram5_C_1032,
      O => ram_top_gp_ram_Mram_contents_ram5_F7_B_1019,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram5_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X6Y12"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram5_B_1040,
      IB => ram_top_gp_ram_Mram_contents_ram5_A_1048,
      O => ram_top_gp_ram_Mram_contents_ram5_F7_A_1020,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram5_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y12",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_IN,
      O => ram_top_gp_ram_Mram_contents_ram5_D_1022,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR5,
      WE1 => ram_top_gp_ram_n0015_4_INV_ram_top_gp_ram_Mram_contents_ram5_DWE1,
      WE2 => ram_top_gp_ram_n0015_4_INV_ram_top_gp_ram_Mram_contents_ram5_DWE2,
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram5_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y12",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_IN,
      O => ram_top_gp_ram_Mram_contents_ram5_C_1032,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR5,
      WE1 => address(2),
      WE2 => ram_top_gp_ram_n0015_4_INV_ram_top_gp_ram_Mram_contents_ram5_CWE2,
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram5_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y12",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_IN,
      O => ram_top_gp_ram_Mram_contents_ram5_B_1040,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR5,
      WE1 => ram_top_gp_ram_n0015_4_INV_ram_top_gp_ram_Mram_contents_ram5_BWE1,
      WE2 => address(2),
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram5_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y12",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_IN,
      O => ram_top_gp_ram_Mram_contents_ram5_A_1048,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR5,
      WE1 => address(2),
      WE2 => address(2),
      WE => '1'
    );
  INV_ram_top_gp_ram_Mram_contents_ram2_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_1_INV_ram_top_gp_ram_Mram_contents_ram2_DWE2
    );
  INV_ram_top_gp_ram_Mram_contents_ram2_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_1_INV_ram_top_gp_ram_Mram_contents_ram2_DWE1
    );
  INV_ram_top_gp_ram_Mram_contents_ram2_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_1_INV_ram_top_gp_ram_Mram_contents_ram2_CWE2
    );
  INV_ram_top_gp_ram_Mram_contents_ram2_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_1_INV_ram_top_gp_ram_Mram_contents_ram2_BWE1
    );
  ram_top_gp_ram_n0015_1_ram_top_gp_ram_n0015_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ram_top_gp_ram_n0015(1),
      O => ram_top_gp_ram_n0015_1_0
    );
  ram_top_gp_ram_Mram_contents_ram2_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y14"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram2_F7_B_1056,
      IB => ram_top_gp_ram_Mram_contents_ram2_F7_A_1057,
      O => ram_top_gp_ram_n0015(1),
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram2_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X6Y14"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram2_D_1059,
      IB => ram_top_gp_ram_Mram_contents_ram2_C_1069,
      O => ram_top_gp_ram_Mram_contents_ram2_F7_B_1056,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram2_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X6Y14"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram2_B_1077,
      IB => ram_top_gp_ram_Mram_contents_ram2_A_1085,
      O => ram_top_gp_ram_Mram_contents_ram2_F7_A_1057,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram2_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y14",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_IN,
      O => ram_top_gp_ram_Mram_contents_ram2_D_1059,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR5,
      WE1 => ram_top_gp_ram_n0015_1_INV_ram_top_gp_ram_Mram_contents_ram2_DWE1,
      WE2 => ram_top_gp_ram_n0015_1_INV_ram_top_gp_ram_Mram_contents_ram2_DWE2,
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram2_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y14",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_IN,
      O => ram_top_gp_ram_Mram_contents_ram2_C_1069,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR5,
      WE1 => address(2),
      WE2 => ram_top_gp_ram_n0015_1_INV_ram_top_gp_ram_Mram_contents_ram2_CWE2,
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram2_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y14",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_IN,
      O => ram_top_gp_ram_Mram_contents_ram2_B_1077,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR5,
      WE1 => ram_top_gp_ram_n0015_1_INV_ram_top_gp_ram_Mram_contents_ram2_BWE1,
      WE2 => address(2),
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram2_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y14",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_IN,
      O => ram_top_gp_ram_Mram_contents_ram2_A_1085,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR5,
      WE1 => address(2),
      WE2 => address(2),
      WE => '1'
    );
  INV_ram_top_gp_ram_Mram_contents_ram3_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_2_INV_ram_top_gp_ram_Mram_contents_ram3_DWE2
    );
  INV_ram_top_gp_ram_Mram_contents_ram3_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_2_INV_ram_top_gp_ram_Mram_contents_ram3_DWE1
    );
  INV_ram_top_gp_ram_Mram_contents_ram3_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_2_INV_ram_top_gp_ram_Mram_contents_ram3_CWE2
    );
  INV_ram_top_gp_ram_Mram_contents_ram3_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => ram_top_gp_ram_n0015_2_INV_ram_top_gp_ram_Mram_contents_ram3_BWE1
    );
  ram_top_gp_ram_n0015_2_ram_top_gp_ram_n0015_2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ram_top_gp_ram_n0015(2),
      O => ram_top_gp_ram_n0015_2_0
    );
  ram_top_gp_ram_Mram_contents_ram3_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y15"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram3_F7_B_1093,
      IB => ram_top_gp_ram_Mram_contents_ram3_F7_A_1094,
      O => ram_top_gp_ram_n0015(2),
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram3_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X6Y15"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram3_D_1096,
      IB => ram_top_gp_ram_Mram_contents_ram3_C_1106,
      O => ram_top_gp_ram_Mram_contents_ram3_F7_B_1093,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram3_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X6Y15"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram3_B_1114,
      IB => ram_top_gp_ram_Mram_contents_ram3_A_1122,
      O => ram_top_gp_ram_Mram_contents_ram3_F7_A_1094,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram3_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y15",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_IN,
      O => ram_top_gp_ram_Mram_contents_ram3_D_1096,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR5,
      WE1 => ram_top_gp_ram_n0015_2_INV_ram_top_gp_ram_Mram_contents_ram3_DWE1,
      WE2 => ram_top_gp_ram_n0015_2_INV_ram_top_gp_ram_Mram_contents_ram3_DWE2,
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram3_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y15",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_IN,
      O => ram_top_gp_ram_Mram_contents_ram3_C_1106,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR5,
      WE1 => address(2),
      WE2 => ram_top_gp_ram_n0015_2_INV_ram_top_gp_ram_Mram_contents_ram3_CWE2,
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram3_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y15",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_IN,
      O => ram_top_gp_ram_Mram_contents_ram3_B_1114,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR5,
      WE1 => ram_top_gp_ram_n0015_2_INV_ram_top_gp_ram_Mram_contents_ram3_BWE1,
      WE2 => address(2),
      WE => '1'
    );
  ram_top_gp_ram_Mram_contents_ram3_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y15",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR0,
      RADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR1,
      RADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR2,
      RADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR3,
      RADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR4,
      RADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR5,
      CLK => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_CLK,
      I => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_IN,
      O => ram_top_gp_ram_Mram_contents_ram3_A_1122,
      WADR0 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR0,
      WADR1 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR1,
      WADR2 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR2,
      WADR3 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR3,
      WADR4 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR4,
      WADR5 => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR5,
      WE1 => address(2),
      WE2 => address(2),
      WE => '1'
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
      LOC => "SLICE_X6Y20",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_5_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_5_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y20",
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_5_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_3 : X_FF
    generic map(
      LOC => "SLICE_X6Y20",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_3_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_3_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT42 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y20",
      INIT => X"3FC0FF003FC0FF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_3_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT51 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y20",
      INIT => X"6AAAAAAA"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_4_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4 : X_FF
    generic map(
      LOC => "SLICE_X6Y20",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_4_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_pack_13,
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_1 : X_FF
    generic map(
      LOC => "SLICE_X6Y20",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_1_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_1_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y20",
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
      LOC => "SLICE_X6Y20",
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
      LOC => "SLICE_X6Y20",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_2_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_pack_11,
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_0 : X_FF
    generic map(
      LOC => "SLICE_X6Y20",
      INIT => '1'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_0_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rd_pntr_plus1_0_inv,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y20",
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
  dma_top_Mmux_TX_Data21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => X"FFFFCECEFFFFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR0 => dma_top_data_count(1),
      ADR2 => dma_top_data_count(0),
      ADR5 => ram_top_gp_ram_n0015_1_0,
      ADR4 => dma_top_CurrentState_FSM_FFd1_1632,
      O => N14
    );
  top_Data_FF_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => '0'
    )
    port map (
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0,
      CLK => NlwBufferSignal_top_Data_FF_1_CLK,
      I => top_Data_FF_1_dpot_1170,
      O => top_Data_FF(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => X"F0F0C0C0F0F0E2C0"
    )
    port map (
      ADR1 => top_Transmitter_CurrentState_FSM_FFd2_1623,
      ADR4 => top_Transmitter_CurrentState_FSM_FFd1_1624,
      ADR5 => N14,
      ADR2 => top_Data_FF(1),
      ADR0 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR3 => top_Ack_in_1776,
      O => top_Data_FF_1_dpot_1170
    );
  dma_top_Mmux_TX_Data12_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => X"FFFFCFCFFFFFFFCF"
    )
    port map (
      ADR0 => '1',
      ADR1 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR3 => dma_top_data_count(1),
      ADR5 => dma_top_data_count(0),
      ADR2 => ram_top_gp_ram_n0015_0_0,
      ADR4 => dma_top_CurrentState_FSM_FFd1_1632,
      O => N12
    );
  top_Data_FF_0 : X_FF
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => '0'
    )
    port map (
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0,
      CLK => NlwBufferSignal_top_Data_FF_0_CLK,
      I => top_Data_FF_0_dpot_1188,
      O => top_Data_FF(0),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => X"FAFAFEFA00000400"
    )
    port map (
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_1623,
      ADR0 => top_Transmitter_CurrentState_FSM_FFd1_1624,
      ADR4 => N12,
      ADR5 => top_Data_FF(0),
      ADR3 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR1 => top_Ack_in_1776,
      O => top_Data_FF_0_dpot_1188
    );
  dma_top_Mmux_TX_Data41_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => X"FFFFFFFFF3FFF3F3"
    )
    port map (
      ADR0 => '1',
      ADR5 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR4 => dma_top_data_count(1),
      ADR3 => dma_top_data_count(0),
      ADR1 => ram_top_gp_ram_n0015_3_0,
      ADR2 => dma_top_CurrentState_FSM_FFd1_1632,
      O => N18
    );
  top_Data_FF_3 : X_FF
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => '0'
    )
    port map (
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0,
      CLK => NlwBufferSignal_top_Data_FF_3_CLK,
      I => top_Data_FF_3_dpot_1201,
      O => top_Data_FF(3),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => X"EEEE0000FEEE1000"
    )
    port map (
      ADR0 => top_Transmitter_CurrentState_FSM_FFd2_1623,
      ADR1 => top_Transmitter_CurrentState_FSM_FFd1_1624,
      ADR5 => N18,
      ADR4 => top_Data_FF(3),
      ADR3 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR2 => top_Ack_in_1776,
      O => top_Data_FF_3_dpot_1201
    );
  dma_top_Mmux_TX_Data31_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => X"EFEFFFEFEFEFFFEF"
    )
    port map (
      ADR5 => '1',
      ADR1 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR3 => dma_top_data_count(1),
      ADR4 => dma_top_data_count(0),
      ADR2 => ram_top_gp_ram_n0015_2_0,
      ADR0 => dma_top_CurrentState_FSM_FFd1_1632,
      O => N16
    );
  top_Data_FF_2 : X_FF
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => '0'
    )
    port map (
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0,
      CLK => NlwBufferSignal_top_Data_FF_2_CLK,
      I => top_Data_FF_2_dpot_1219,
      O => top_Data_FF(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => X"FA00FE04FA00FA00"
    )
    port map (
      ADR0 => top_Transmitter_CurrentState_FSM_FFd2_1623,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd1_1624,
      ADR4 => N16,
      ADR3 => top_Data_FF(2),
      ADR1 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR5 => top_Ack_in_1776,
      O => top_Data_FF_2_dpot_1219
    );
  dma_top_data_count_1_dma_top_data_count_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N26,
      O => N26_0
    );
  databus_7_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => X"FEFCFFFFFAF03333"
    )
    port map (
      ADR4 => dma_top_CurrentState_FSM_FFd1_1632,
      ADR0 => dma_top_data_count(0),
      ADR3 => dma_top_data_count(1),
      ADR2 => data_out(7),
      ADR1 => oe,
      ADR5 => ram_top_gp_ram_n0015_7_0,
      O => databus(7)
    );
  address_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => X"0F0F0F0F030F0B0F"
    )
    port map (
      ADR1 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR5 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR2 => dma_top_CurrentState_FSM_FFd1_1632,
      ADR0 => dma_top_data_count(1),
      ADR4 => dma_top_data_count(0),
      ADR3 => dma_top_TX_RDY_ACK_out_AND_21_o,
      O => address(2)
    );
  dma_top_data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => '0'
    )
    port map (
      CE => dma_top_n0170_inv,
      CLK => NlwBufferSignal_dma_top_data_count_1_CLK,
      I => dma_top_Mcount_data_count1,
      O => dma_top_data_count(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_Mcount_data_count_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => dma_top_data_count(1),
      ADR0 => dma_top_data_count(0),
      ADR5 => '1',
      O => dma_top_Mcount_data_count1
    );
  dma_top_Mmux_TX_Data81_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => X"FFDFFFCF"
    )
    port map (
      ADR3 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR2 => ram_top_gp_ram_n0015_7_0,
      ADR1 => dma_top_CurrentState_FSM_FFd1_1632,
      ADR4 => dma_top_data_count(1),
      ADR0 => dma_top_data_count(0),
      O => N26
    );
  dma_top_data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => '0'
    )
    port map (
      CE => dma_top_n0170_inv,
      CLK => NlwBufferSignal_dma_top_data_count_0_CLK,
      I => dma_top_Mcount_data_count,
      O => dma_top_data_count(0),
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_Mcount_data_count_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => dma_top_data_count(0),
      ADR4 => '1',
      ADR3 => '1',
      O => dma_top_Mcount_data_count
    );
  top_LineRD_in_top_LineRD_in_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_1262,
      O => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0
    );
  databus_3_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y10",
      INIT => X"FFFFEFCFF3F3A303"
    )
    port map (
      ADR2 => dma_top_CurrentState_FSM_FFd1_1632,
      ADR0 => dma_top_data_count(0),
      ADR3 => dma_top_data_count(1),
      ADR4 => data_out(3),
      ADR1 => oe,
      ADR5 => ram_top_gp_ram_n0015_3_0,
      O => databus(3)
    );
  databus_6_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y10",
      INIT => X"FFF5FFF5EFC5AF05"
    )
    port map (
      ADR2 => dma_top_CurrentState_FSM_FFd1_1632,
      ADR4 => dma_top_data_count(0),
      ADR1 => dma_top_data_count(1),
      ADR5 => data_out(6),
      ADR0 => oe,
      ADR3 => ram_top_gp_ram_n0015_6_0,
      O => databus(6)
    );
  oeLogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y10",
      INIT => X"EFEFFFFFEFEFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR0 => dma_top_data_count(0),
      ADR4 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR2 => dma_top_data_count(1),
      ADR1 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR5 => '1',
      O => oe
    );
  top_Valid_D_TX_RDY_i_AND_20_o1_cepot : X_LUT5
    generic map(
      LOC => "SLICE_X7Y10",
      INIT => X"23000000"
    )
    port map (
      ADR3 => dma_top_TX_RDY_ACK_out_AND_21_o,
      ADR0 => dma_top_data_count(0),
      ADR4 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR2 => dma_top_data_count(1),
      ADR1 => dma_top_CurrentState_FSM_FFd2_1630,
      O => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_1262
    );
  top_LineRD_in : X_FF
    generic map(
      LOC => "SLICE_X7Y10",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_LineRD_in_CLK,
      I => NlwBufferSignal_top_LineRD_in_IN,
      O => top_LineRD_in_1665,
      SET => Reset_IBUF_0,
      RST => GND
    );
  databus_0_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y10",
      INIT => X"FEFCEECCF0F0FFFF"
    )
    port map (
      ADR5 => dma_top_CurrentState_FSM_FFd1_1632,
      ADR3 => dma_top_data_count(0),
      ADR0 => dma_top_data_count(1),
      ADR1 => data_out(0),
      ADR4 => oe,
      ADR2 => ram_top_gp_ram_n0015_0_0,
      O => databus(0)
    );
  databus_4_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y12",
      INIT => X"FBFBFBFBFB8B8B8B"
    )
    port map (
      ADR2 => dma_top_CurrentState_FSM_FFd1_1632,
      ADR4 => dma_top_data_count(0),
      ADR3 => dma_top_data_count(1),
      ADR5 => data_out(4),
      ADR1 => oe,
      ADR0 => ram_top_gp_ram_n0015_4_0,
      O => databus(4)
    );
  databus_1_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y14",
      INIT => X"FFECFFA0CCCCFFFF"
    )
    port map (
      ADR5 => dma_top_CurrentState_FSM_FFd1_1632,
      ADR2 => dma_top_data_count(0),
      ADR0 => dma_top_data_count(1),
      ADR3 => data_out(1),
      ADR4 => oe,
      ADR1 => ram_top_gp_ram_n0015_1_0,
      O => databus(1)
    );
  databus_2_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y15",
      INIT => X"FCFCECCCFFFFAF0F"
    )
    port map (
      ADR2 => dma_top_CurrentState_FSM_FFd1_1632,
      ADR3 => dma_top_data_count(0),
      ADR0 => dma_top_data_count(1),
      ADR4 => data_out(2),
      ADR5 => oe,
      ADR1 => ram_top_gp_ram_n0015_2_0,
      O => databus(2)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i : X_FF
    generic map(
      LOC => "SLICE_X7Y18",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_1780,
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_32_o_MUX_14_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y18",
      INIT => X"FFFFC0C055FF00C0"
    )
    port map (
      ADR3 => top_Fifo_write,
      ADR2 => data_read,
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_1774,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_1780,
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0_0,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1_0,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT91_F : X_LUT6
    generic map(
      LOC => "SLICE_X7Y19",
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      O => top_Internal_memory_BU2_N6
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_8 : X_FF
    generic map(
      LOC => "SLICE_X7Y19",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_8_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_8_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT911 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y19",
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
      LOC => "SLICE_X7Y19",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_7_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_7_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y19",
      INIT => X"FF00FF007F80FF00"
    )
    port map (
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_7_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4 : X_FF
    generic map(
      LOC => "SLICE_X7Y20",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3 : X_FF
    generic map(
      LOC => "SLICE_X7Y20",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2 : X_FF
    generic map(
      LOC => "SLICE_X7Y20",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y20",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  dma_top_CurrentState_FSM_FFd3_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => X"00000000C0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => dma_top_CurrentState_FSM_FFd1_1632,
      ADR1 => Send_IBUF_0,
      ADR2 => empty,
      O => dma_top_CurrentState_FSM_FFd3_In1_1799
    );
  dma_top_CurrentState_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_dma_top_CurrentState_FSM_FFd3_CLK,
      I => dma_top_CurrentState_FSM_FFd3_In,
      O => dma_top_CurrentState_FSM_FFd3_1638,
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_CurrentState_FSM_FFd3_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => X"4444F5FF4444A0AA"
    )
    port map (
      ADR4 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR3 => dma_top_data_count(1),
      ADR2 => dma_top_data_count(0),
      ADR0 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR5 => dma_top_CurrentState_FSM_FFd3_In1_1799,
      ADR1 => DMA_ACK_IBUF_0,
      O => dma_top_CurrentState_FSM_FFd3_In
    );
  top_Transmitter_data_count_2_Data_7_Mux_6_o_top_Transmitter_data_count_2_Data_7_Mux_6_o_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Transmitter_data_count_2_Data_7_Mux_6_o,
      O => top_Transmitter_data_count_2_Data_7_Mux_6_o_0
    );
  top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y6"
    )
    port map (
      IA => top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_4_1365,
      IB => top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_3_1373,
      O => top_Transmitter_data_count_2_Data_7_Mux_6_o,
      SEL => top_Transmitter_data_count(2)
    );
  top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_4 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => X"FF33B8B8CC00B8B8"
    )
    port map (
      ADR4 => top_Transmitter_data_count(1),
      ADR1 => top_Transmitter_data_count(0),
      ADR5 => top_Data_FF(2),
      ADR3 => top_Data_FF(3),
      ADR0 => top_Data_FF(1),
      ADR2 => top_Data_FF(0),
      O => top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_4_1365
    );
  top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_3 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => X"EEEEFC302222FC30"
    )
    port map (
      ADR1 => top_Transmitter_data_count(1),
      ADR4 => top_Transmitter_data_count(0),
      ADR3 => top_Data_FF(6),
      ADR5 => top_Data_FF(7),
      ADR0 => top_Data_FF(5),
      ADR2 => top_Data_FF(4),
      O => top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_3_1373
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i : X_FF
    generic map(
      LOC => "SLICE_X8Y18",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_IN,
      O => empty,
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y20",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_CLK,
      I => '0',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y20",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_CLK,
      I => '0',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_Q,
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y20"
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
      LOC => "SLICE_X8Y20",
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
  top_Internal_memory_BU2_dbiterr_5_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y20",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_top_Internal_memory_BU2_dbiterr_5_A5LUT_O_UNCONNECTED
    );
  address_1_address_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dma_top_CurrentState_FSM_FFd1_pack_15,
      O => dma_top_CurrentState_FSM_FFd1_1632
    );
  address_1_address_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dma_top_CurrentState_FSM_FFd2_pack_14,
      O => dma_top_CurrentState_FSM_FFd2_1630
    );
  address_1_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => X"FF30FF33FF33FF33"
    )
    port map (
      ADR0 => '1',
      ADR1 => dma_top_CurrentState_FSM_FFd1_1632,
      ADR5 => dma_top_TX_RDY_ACK_out_AND_21_o,
      ADR2 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR4 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR3 => dma_top_data_count(1),
      O => address(1)
    );
  address_0_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => X"FF55FF45FF55FF55"
    )
    port map (
      ADR0 => dma_top_CurrentState_FSM_FFd1_1632,
      ADR5 => dma_top_TX_RDY_ACK_out_AND_21_o,
      ADR1 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR4 => dma_top_data_count(1),
      ADR2 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR3 => dma_top_data_count(0),
      O => address(0)
    );
  dma_top_Mmux_READY11 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => X"FF5FFF55FF5FFF55"
    )
    port map (
      ADR1 => '1',
      ADR0 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR4 => dma_top_data_count(1),
      ADR2 => dma_top_data_count(0),
      ADR3 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR5 => '1',
      O => Ready_OBUF_1645
    );
  dma_top_CurrentState_FSM_FFd1_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => X"AE0CEECC"
    )
    port map (
      ADR1 => dma_top_CurrentState_FSM_FFd1_1632,
      ADR0 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR4 => dma_top_data_count(1),
      ADR2 => dma_top_data_count(0),
      ADR3 => dma_top_CurrentState_FSM_FFd2_1630,
      O => dma_top_CurrentState_FSM_FFd1_In
    );
  dma_top_CurrentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_dma_top_CurrentState_FSM_FFd1_CLK,
      I => dma_top_CurrentState_FSM_FFd1_In,
      O => dma_top_CurrentState_FSM_FFd1_pack_15,
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_CurrentState_DMA_RQ1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => X"2222222222222222"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR0 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR5 => '1',
      O => DMA_RQ_OBUF_1659
    );
  dma_top_CurrentState_FSM_FFd2_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => X"22222323"
    )
    port map (
      ADR3 => '1',
      ADR2 => dma_top_CurrentState_FSM_FFd1_1632,
      ADR4 => empty,
      ADR1 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR0 => dma_top_CurrentState_FSM_FFd2_1630,
      O => dma_top_CurrentState_FSM_FFd2_In
    );
  dma_top_CurrentState_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_dma_top_CurrentState_FSM_FFd2_CLK,
      I => dma_top_CurrentState_FSM_FFd2_In,
      O => dma_top_CurrentState_FSM_FFd2_pack_14,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_CurrentState_FSM_FFd2_top_Transmitter_CurrentState_FSM_FFd2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Transmitter_data_count_0_pack_12,
      O => top_Transmitter_data_count(0)
    );
  top_Transmitter_CurrentState_FSM_FFd2_In_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y6",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => top_Transmitter_data_count(1),
      ADR4 => top_Transmitter_data_count(0),
      O => N2
    );
  top_Transmitter_CurrentState_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X9Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd2_CLK,
      I => top_Transmitter_CurrentState_FSM_FFd2_In_1437,
      O => top_Transmitter_CurrentState_FSM_FFd2_1623,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_CurrentState_FSM_FFd2_In : X_LUT6
    generic map(
      LOC => "SLICE_X9Y6",
      INIT => X"50F0FCFCF0F0FCFC"
    )
    port map (
      ADR5 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR4 => top_Transmitter_CurrentState_FSM_FFd1_1624,
      ADR0 => top_Transmitter_data_count(2),
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_1623,
      ADR3 => N2,
      ADR1 => top_StartTX_1640,
      O => top_Transmitter_CurrentState_FSM_FFd2_In_1437
    );
  top_Transmitter_data_count_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_data_count_2_CLK,
      I => top_Transmitter_data_count_2_rstpot_1445,
      O => top_Transmitter_data_count(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_data_count_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y6",
      INIT => X"78F0F0F0F0F0F0F0"
    )
    port map (
      ADR3 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR1 => top_Transmitter_data_count(1),
      ADR5 => top_Transmitter_data_count(0),
      ADR2 => top_Transmitter_data_count(2),
      ADR0 => top_Transmitter_CurrentState_FSM_FFd2_1623,
      ADR4 => top_Transmitter_CurrentState_FSM_FFd1_1624,
      O => top_Transmitter_data_count_2_rstpot_1445
    );
  top_Transmitter_data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_data_count_1_CLK,
      I => top_Transmitter_data_count_1_rstpot_1453,
      O => top_Transmitter_data_count(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_data_count_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y6",
      INIT => X"7FFF80007FFF8000"
    )
    port map (
      ADR2 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR3 => top_Transmitter_CurrentState_FSM_FFd2_1623,
      ADR0 => top_Transmitter_CurrentState_FSM_FFd1_1624,
      ADR4 => top_Transmitter_data_count(1),
      ADR1 => top_Transmitter_data_count(0),
      ADR5 => '1',
      O => top_Transmitter_data_count_1_rstpot_1453
    );
  top_Transmitter_data_count_0_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X9Y6",
      INIT => X"6CCC6CCC"
    )
    port map (
      ADR2 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR3 => top_Transmitter_CurrentState_FSM_FFd2_1623,
      ADR0 => top_Transmitter_CurrentState_FSM_FFd1_1624,
      ADR4 => '1',
      ADR1 => top_Transmitter_data_count(0),
      O => top_Transmitter_data_count_0_rstpot_1454
    );
  top_Transmitter_data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_data_count_0_CLK,
      I => top_Transmitter_data_count_0_rstpot_1454,
      O => top_Transmitter_data_count_0_pack_12,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i : X_FF
    generic map(
      LOC => "SLICE_X9Y19",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_PWR_37_o_MUX_16_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_1774,
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_1775,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_PWR_37_o_MUX_16_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y19",
      INIT => X"00005F5F0C000C00"
    )
    port map (
      ADR3 => top_Fifo_write,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_0,
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_1774,
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0_0,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1_0,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_PWR_37_o_MUX_16_o
    );
  rst_nexys1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => Reset_IBUF_0,
      O => rst_nexys
    );
  dma_top_n0170_inv_dma_top_n0170_inv_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Transmitter_CurrentState_FSM_FFd1_pack_4,
      O => top_Transmitter_CurrentState_FSM_FFd1_1624
    );
  dma_top_n0170_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"FF08FF00FF0CFF00"
    )
    port map (
      ADR1 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR2 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR4 => dma_top_TX_RDY_ACK_out_AND_21_o,
      ADR0 => dma_top_data_count(0),
      ADR5 => dma_top_data_count(1),
      ADR3 => dma_top_CurrentState_FSM_FFd1_1632,
      O => dma_top_n0170_inv
    );
  dma_top_TX_RDY_ACK_out_AND_21_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"000000000000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => top_Ack_in_1776,
      ADR5 => top_Transmitter_CurrentState_FSM_FFd2_1623,
      ADR4 => top_Transmitter_CurrentState_FSM_FFd1_1624,
      O => dma_top_TX_RDY_ACK_out_AND_21_o
    );
  top_Transmitter_TX1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"AFAF0F0FAFAF0F0F"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_1623,
      ADR4 => top_Transmitter_data_count_2_Data_7_Mux_6_o_0,
      ADR0 => top_Transmitter_CurrentState_FSM_FFd1_1624,
      ADR5 => '1',
      O => TD_OBUF_1734
    );
  top_Transmitter_CurrentState_FSM_FFd1_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"F0AAF0AA"
    )
    port map (
      ADR4 => '1',
      ADR3 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_1623,
      ADR1 => '1',
      ADR0 => top_Transmitter_CurrentState_FSM_FFd1_1624,
      O => top_Transmitter_CurrentState_FSM_FFd1_In
    );
  top_Transmitter_CurrentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd1_CLK,
      I => top_Transmitter_CurrentState_FSM_FFd1_In,
      O => top_Transmitter_CurrentState_FSM_FFd1_pack_4,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_width_count_7_PWR_6_o_equal_16_o_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"0000000080000000"
    )
    port map (
      ADR0 => top_Transmitter_width_count(5),
      ADR3 => top_Transmitter_width_count(3),
      ADR2 => top_Transmitter_width_count(7),
      ADR4 => top_Transmitter_width_count(2),
      ADR1 => top_Transmitter_width_count(1),
      ADR5 => N4,
      O => top_Transmitter_width_count_7_PWR_6_o_equal_16_o
    );
  top_StartTX_top_StartTX_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Transmitter_en_width_count,
      O => top_Transmitter_en_width_count_0
    );
  top_Transmitter_CurrentState_n0054_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => X"000000FF000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Transmitter_CurrentState_FSM_FFd2_1623,
      ADR3 => top_Transmitter_CurrentState_FSM_FFd1_1624,
      ADR5 => '1',
      O => tx_rdy
    );
  top_Transmitter_CurrentState_n0054_1_1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => X"FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Transmitter_CurrentState_FSM_FFd2_1623,
      ADR3 => top_Transmitter_CurrentState_FSM_FFd1_1624,
      O => top_Transmitter_en_width_count
    );
  top_StartTX : X_FF
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      CE => rst_nexys,
      CLK => NlwBufferSignal_top_StartTX_CLK,
      I => top_Valid_D_TX_RDY_i_AND_20_o,
      O => top_StartTX_1640,
      RST => GND,
      SET => GND
    );
  top_Valid_D_TX_RDY_i_AND_20_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => X"2000000030000000"
    )
    port map (
      ADR1 => dma_top_CurrentState_FSM_FFd2_1630,
      ADR2 => dma_top_TX_RDY_ACK_out_AND_21_o,
      ADR3 => tx_rdy,
      ADR4 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR0 => dma_top_data_count(0),
      ADR5 => dma_top_data_count(1),
      O => top_Valid_D_TX_RDY_i_AND_20_o
    );
  top_Ack_in : X_FF
    generic map(
      LOC => "SLICE_X11Y5",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Ack_in_CLK,
      I => top_Valid_D_INV_19_o,
      O => top_Ack_in_1776,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Valid_D_INV_19_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y5",
      INIT => X"BFBBFFFFFFFFFFFF"
    )
    port map (
      ADR5 => tx_rdy,
      ADR1 => dma_top_CurrentState_FSM_FFd3_1638,
      ADR4 => dma_top_TX_RDY_ACK_out_AND_21_o,
      ADR3 => dma_top_data_count(1),
      ADR2 => dma_top_data_count(0),
      ADR0 => dma_top_CurrentState_FSM_FFd2_1630,
      O => top_Valid_D_INV_19_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_1536,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X11Y19",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_1801,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X11Y19",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_1775,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X11Y19",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_CLK,
      I => '0',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_1802,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X11Y19",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_1801,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_rt_1535
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN : X_FF
    generic map(
      LOC => "SLICE_X11Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_rt_1535,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_1536,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y23",
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
  top_Transmitter_width_count_7_PWR_6_o_equal_16_o_7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => X"FFFFFFFFFFFFF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => top_Transmitter_width_count(6),
      ADR4 => top_Transmitter_width_count(4),
      ADR5 => top_Transmitter_width_count(0),
      O => N4
    );
  top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => X"FFFF7FFFFFFFFFFF"
    )
    port map (
      ADR1 => top_Transmitter_width_count(5),
      ADR2 => top_Transmitter_width_count(3),
      ADR0 => top_Transmitter_width_count(7),
      ADR3 => top_Transmitter_width_count(2),
      ADR4 => N4,
      ADR5 => top_Transmitter_width_count(1),
      O => top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X14Y23",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_1646,
      RST => GND,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X14Y23",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_1648,
      RST => GND,
      SET => GND
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
      LOC => "SLICE_X15Y23",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_GND_11_o_MUX_1_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_1647,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_Mmux_wr_rst_asreg_GND_11_o_MUX_1_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y23",
      INIT => X"3333000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_1647,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_1648,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_GND_11_o_MUX_1_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y23",
      INIT => X"00FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_1646,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_1647,
      ADR2 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X16Y22",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_1655,
      RST => GND,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X16Y22",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_1657,
      RST => GND,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_DMUX_Delay : 
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
      LOC => "SLICE_X17Y22",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_GND_11_o_MUX_2_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_1656,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_Mmux_rd_rst_asreg_GND_11_o_MUX_2_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_1656,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_1657,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_GND_11_o_MUX_2_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb1 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => X"33330000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_1655,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_1656,
      ADR3 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_12_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(9),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_12_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_11_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(8),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_11_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(7),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_10_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(6),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_9_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_0,
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_8_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_0,
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_7_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_6_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_5_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_4_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_3_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Shift_Q(7),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_7_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Shift_Q(6),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_6_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Shift_Q(5),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_5_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Shift_Q(4),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_4_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Shift_Q(3),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_3_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_2_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Shift_Q(2),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_2_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Shift_Q(1),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_1_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Shift_Q(0),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_0_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_12_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0,
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_12_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_11_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(8),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_11_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_10_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_9_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_8_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_7_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_6_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_5_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_4_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rd_pntr_plus1_0_inv,
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_3_Q

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
      I => Ready_OBUF_1645,
      O => NlwBufferSignal_Ready_OBUF_I
    );
  NlwBufferBlock_DMA_RQ_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DMA_RQ_OBUF_1659,
      O => NlwBufferSignal_DMA_RQ_OBUF_I
    );
  NlwBufferBlock_TD_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TD_OBUF_1734,
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
  NlwBufferBlock_top_Receiver_width_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Receiver_width_count_2_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_D_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_D_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_D_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_D_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_D_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_D_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_D_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_D_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(6),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_D_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_D_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_D_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_D_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_D_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_D_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_D_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_C_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_C_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_C_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_C_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_C_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_C_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_C_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_C_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(6),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_C_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_C_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_C_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_C_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_C_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_C_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_C_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_B_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_B_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_B_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_B_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_B_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_B_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_B_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_B_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(6),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_B_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_B_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_B_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_B_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_B_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_B_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_B_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_A_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_A_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_A_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_A_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_A_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_A_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_A_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_A_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(6),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_A_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_A_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_A_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_A_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_A_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram7_A_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram7_A_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_D_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_D_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_D_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_D_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_D_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_D_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_D_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_D_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(5),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_D_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_D_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_D_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_D_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_D_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_D_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_D_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_C_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_C_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_C_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_C_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_C_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_C_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_C_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_C_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(5),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_C_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_C_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_C_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_C_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_C_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_C_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_C_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_B_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_B_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_B_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_B_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_B_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_B_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_B_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_B_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(5),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_B_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_B_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_B_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_B_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_B_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_B_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_B_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_A_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_A_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_A_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_A_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_A_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_A_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_A_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_A_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(5),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_A_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_A_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_A_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_A_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_A_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram6_A_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram6_A_WADR5
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
  NlwBufferBlock_top_Shift_Q_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Shift_Q_7_CLK
    );
  NlwBufferBlock_top_Shift_Q_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Shift_Q_6_CLK
    );
  NlwBufferBlock_top_Shift_Q_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Shift_Q_5_CLK
    );
  NlwBufferBlock_top_Shift_Q_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Shift_Q_4_CLK
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_CLK
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_CLK
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_CLK
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
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
      I => Clk_BUFGP,
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
  NlwBufferBlock_top_Shift_Q_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Shift_Q_3_CLK
    );
  NlwBufferBlock_top_Shift_Q_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Shift_Q_2_CLK
    );
  NlwBufferBlock_top_Shift_Q_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Shift_Q_1_CLK
    );
  NlwBufferBlock_top_Shift_Q_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Shift_Q_0_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_CLK
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_CLK
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
  NlwBufferBlock_top_Data_FF_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Data_FF_5_CLK
    );
  NlwBufferBlock_top_Data_FF_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Data_FF_4_CLK
    );
  NlwBufferBlock_top_Data_FF_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Data_FF_7_CLK
    );
  NlwBufferBlock_top_Data_FF_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Data_FF_6_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_D_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_D_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_D_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_D_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_D_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_D_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_D_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_D_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(7),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_D_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_D_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_D_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_D_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_D_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_D_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_D_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_C_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_C_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_C_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_C_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_C_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_C_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_C_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_C_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(7),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_C_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_C_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_C_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_C_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_C_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_C_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_C_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_B_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_B_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_B_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_B_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_B_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_B_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_B_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_B_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(7),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_B_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_B_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_B_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_B_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_B_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_B_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_B_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_A_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_A_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_A_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_A_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_A_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_A_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_A_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_A_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(7),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_A_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_A_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_A_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_A_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_A_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram8_A_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram8_A_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_D_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_D_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_D_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_D_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_D_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_D_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_D_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_D_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_D_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_D_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_D_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_D_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_D_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_D_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_D_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_C_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_C_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_C_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_C_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_C_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_C_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_C_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_C_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_C_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_C_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_C_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_C_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_C_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_C_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_C_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_B_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_B_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_B_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_B_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_B_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_B_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_B_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_B_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_B_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_B_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_B_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_B_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_B_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_B_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_B_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_A_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_A_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_A_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_A_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_A_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_A_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_A_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_A_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_A_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_A_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_A_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_A_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_A_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram1_A_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram1_A_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_D_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_D_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_D_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_D_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_D_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_D_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_D_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_D_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(3),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_D_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_D_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_D_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_D_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_D_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_D_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_D_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_C_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_C_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_C_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_C_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_C_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_C_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_C_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_C_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(3),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_C_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_C_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_C_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_C_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_C_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_C_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_C_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_B_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_B_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_B_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_B_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_B_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_B_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_B_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_B_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(3),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_B_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_B_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_B_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_B_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_B_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_B_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_B_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_A_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_A_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_A_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_A_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_A_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_A_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_A_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_A_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(3),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_A_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_A_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_A_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_A_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_A_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram4_A_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram4_A_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_D_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_D_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_D_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_D_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_D_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_D_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_D_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_D_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(4),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_D_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_D_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_D_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_D_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_D_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_D_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_D_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_C_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_C_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_C_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_C_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_C_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_C_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_C_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_C_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(4),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_C_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_C_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_C_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_C_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_C_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_C_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_C_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_B_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_B_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_B_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_B_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_B_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_B_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_B_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_B_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(4),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_B_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_B_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_B_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_B_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_B_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_B_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_B_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_A_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_A_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_A_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_A_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_A_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_A_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_A_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_A_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(4),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_A_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_A_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_A_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_A_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_A_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram5_A_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram5_A_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_D_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_D_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_D_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_D_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_D_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_D_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_D_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_D_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_D_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_D_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_D_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_D_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_D_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_D_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_D_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_C_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_C_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_C_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_C_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_C_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_C_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_C_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_C_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_C_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_C_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_C_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_C_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_C_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_C_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_C_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_B_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_B_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_B_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_B_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_B_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_B_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_B_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_B_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_B_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_B_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_B_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_B_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_B_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_B_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_B_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_A_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_A_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_A_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_A_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_A_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_A_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_A_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_A_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_A_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_A_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_A_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_A_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_A_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram2_A_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram2_A_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_D_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_D_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_D_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_D_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_D_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_D_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_D_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_D_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_D_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_D_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_D_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_D_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_D_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_D_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_D_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_C_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_C_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_C_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_C_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_C_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_C_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_C_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_C_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_C_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_C_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_C_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_C_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_C_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_C_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_C_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_B_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_B_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_B_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_B_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_B_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_B_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_B_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_B_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_B_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_B_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_B_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_B_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_B_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_B_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_B_WADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_A_RADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_A_RADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_A_RADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_A_RADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_A_RADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_A_RADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_RADR5
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_A_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_CLK
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_A_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => databus(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_IN
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_A_WADR0 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(0),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR0
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_A_WADR1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(1),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR1
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_A_WADR2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR2
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_A_WADR3 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR3
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_A_WADR4 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR4
    );
  NlwBufferBlock_ram_top_gp_ram_Mram_contents_ram3_A_WADR5 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => address(2),
      O => NlwBufferSignal_ram_top_gp_ram_Mram_contents_ram3_A_WADR5
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
  NlwBufferBlock_top_Data_FF_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Data_FF_1_CLK
    );
  NlwBufferBlock_top_Data_FF_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Data_FF_0_CLK
    );
  NlwBufferBlock_top_Data_FF_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Data_FF_3_CLK
    );
  NlwBufferBlock_top_Data_FF_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Data_FF_2_CLK
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK
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
  NlwBufferBlock_dma_top_CurrentState_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_dma_top_CurrentState_FSM_FFd3_CLK
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_CLK
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
  NlwBufferBlock_top_Transmitter_CurrentState_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd2_CLK
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK
    );
  NlwBufferBlock_top_Transmitter_CurrentState_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd1_CLK
    );
  NlwBufferBlock_top_StartTX_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_StartTX_CLK
    );
  NlwBufferBlock_top_Ack_in_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Ack_in_CLK
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
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_1775,
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
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_1802,
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK
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
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_1648,
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
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_1647,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_CLK
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
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_1657,
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
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_1656,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_CLK
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

