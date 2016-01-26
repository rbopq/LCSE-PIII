--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: NEXYS_TOP_timesim.vhd
-- /___/   /\     Timestamp: Tue Jan 19 21:44:30 2016
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
  signal top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en : STD_LOGIC; 
  signal Clk_BUFGP : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT103 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_1646 : STD_LOGIC; 
  signal oe : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_7_0 : STD_LOGIC; 
  signal empty : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd2_1654 : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd1_1655 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_1657 : STD_LOGIC; 
  signal top_Ack_in_1658 : STD_LOGIC; 
  signal top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_1660 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_0_0 : STD_LOGIC; 
  signal Reset_IBUF_0 : STD_LOGIC; 
  signal top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13 : STD_LOGIC; 
  signal top_Valid_out : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal top_Receiver_width_count_7_GND_7_o_equal_8_o : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd2_1675 : STD_LOGIC; 
  signal top_LineRD_in_1676 : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd1_1677 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_4_0 : STD_LOGIC; 
  signal dma_top_TX_RDY_ACK_out_AND_21_o : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_1_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb_0 : STD_LOGIC; 
  signal top_Receiver_width_count_7_PWR_7_o_equal_4_o : STD_LOGIC; 
  signal top_Receiver_n0066_inv : STD_LOGIC; 
  signal dma_top_n0170_inv : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en : STD_LOGIC; 
  signal top_Fifo_write : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_1697 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal RD_IBUF_0 : STD_LOGIC; 
  signal top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_1711 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_5_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_0 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_2_0 : STD_LOGIC; 
  signal top_Transmitter_width_count_7_PWR_6_o_equal_16_o : STD_LOGIC; 
  signal TD_OBUF_1733 : STD_LOGIC; 
  signal top_Transmitter_data_count_2_Data_7_Mux_6_o_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_1735 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_1736 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_1737 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal rst_nexys : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_1748 : STD_LOGIC; 
  signal N26_0 : STD_LOGIC; 
  signal tx_rdy : STD_LOGIC; 
  signal top_StartTX_1753 : STD_LOGIC; 
  signal top_Transmitter_en_width_count_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41 : STD_LOGIC; 
  signal Ready_OBUF_1758 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_1762 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_1763 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_1764 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb_0 : STD_LOGIC; 
  signal DMA_RQ_OBUF_1766 : STD_LOGIC; 
  signal N38_0 : STD_LOGIC; 
  signal top_Code_out : STD_LOGIC; 
  signal N28_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rd_pntr_plus1_0_inv : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1_0 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0_0 : STD_LOGIC; 
  signal Send_IBUF_0 : STD_LOGIC; 
  signal Clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal DMA_ACK_IBUF_0 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_3_0 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_6_0 : STD_LOGIC; 
  signal data_read : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81_1809 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_In1_1810 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal top_Internal_memory_BU2_N6 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_1820 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_1821 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal top_Internal_memory_BU2_N4 : STD_LOGIC; 
  signal top_Internal_memory_BU2_N2 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11 : STD_LOGIC; 
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
 
  signal ProtoComp40_CYINITVCC_1 : STD_LOGIC; 
  signal ProtoComp42_CYINITVCC_1_118 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0 : STD_LOGIC; 
  signal ProtoComp43_CYINITVCC_1 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet_3_ProtoComp42_CYINITVCC_1 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0 : STD_LOGIC; 
  signal top_Transmitter_width_count_0_rt_266 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_1_Q_257 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_2_Q_248 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count1 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count2 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count3 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_3_Q_232 : STD_LOGIC; 
  signal top_Transmitter_width_count_4_rt_300 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_5_Q_292 : STD_LOGIC; 
  signal top_Transmitter_width_count_6_rt_287 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count4 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count5 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count6 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count7 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_7_Q_272 : STD_LOGIC; 
  signal RD_IBUF_334 : STD_LOGIC; 
  signal Reset_IBUF_339 : STD_LOGIC; 
  signal Send_IBUF_342 : STD_LOGIC; 
  signal Clk_BUFGP_IBUFG_351 : STD_LOGIC; 
  signal DMA_ACK_IBUF_356 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_tmp_ram_rd_en : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt_386 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_pack_6 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_6_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_9_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_GND_11_o_MUX_2_o : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_In : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_In : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_pack_15 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_pack_14 : STD_LOGIC; 
  signal top_Data_FF_7_dpot_501 : STD_LOGIC; 
  signal top_Data_FF_6_dpot_488 : STD_LOGIC; 
  signal top_Data_FF_2_dpot_529 : STD_LOGIC; 
  signal top_Data_FF_3_dpot_520 : STD_LOGIC; 
  signal top_Shift_Q_0_D_MUX_32_o : STD_LOGIC; 
  signal top_Shift_Q_2_D_MUX_30_o : STD_LOGIC; 
  signal top_Shift_Q_1_D_MUX_31_o : STD_LOGIC; 
  signal top_Shift_Q_3_D_MUX_29_o : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal top_Shift_Q_6_D_MUX_26_o : STD_LOGIC; 
  signal top_Shift_Q_5_D_MUX_27_o : STD_LOGIC; 
  signal top_Shift_Q_4_D_MUX_28_o : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1 : STD_LOGIC; 
  signal top_Valid_D_INV_19_o : STD_LOGIC; 
  signal top_Data_FF_4_dpot_654 : STD_LOGIC; 
  signal top_Data_FF_5_dpot_645 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_pack_11 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_pack_13 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_4_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_5_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_8_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_7_Q : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd1_pack_4 : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_1_INV_ram_top_gp_ram_Mram_contents_ram2_DWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_1_INV_ram_top_gp_ram_Mram_contents_ram2_DWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_1_INV_ram_top_gp_ram_Mram_contents_ram2_CWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_1_INV_ram_top_gp_ram_Mram_contents_ram2_BWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram2_A_811 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram2_B_803 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram2_C_795 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram2_D_785 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram2_F7_A_783 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram2_F7_B_782 : STD_LOGIC; 
  signal dma_top_Mcount_data_count : STD_LOGIC; 
  signal dma_top_Mcount_data_count1 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_3_856 : STD_LOGIC; 
  signal top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_4_848 : STD_LOGIC; 
  signal top_Transmitter_data_count_2_Data_7_Mux_6_o : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_0_INV_ram_top_gp_ram_Mram_contents_ram1_DWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_0_INV_ram_top_gp_ram_Mram_contents_ram1_DWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_0_INV_ram_top_gp_ram_Mram_contents_ram1_CWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_0_INV_ram_top_gp_ram_Mram_contents_ram1_BWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram1_A_893 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram1_B_885 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram1_C_877 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram1_D_867 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram1_F7_A_865 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram1_F7_B_864 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_5_INV_ram_top_gp_ram_Mram_contents_ram6_DWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_5_INV_ram_top_gp_ram_Mram_contents_ram6_DWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_5_INV_ram_top_gp_ram_Mram_contents_ram6_CWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_5_INV_ram_top_gp_ram_Mram_contents_ram6_BWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram6_A_930 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram6_B_922 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram6_C_914 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram6_D_904 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram6_F7_A_902 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram6_F7_B_901 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_2_INV_ram_top_gp_ram_Mram_contents_ram3_DWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_2_INV_ram_top_gp_ram_Mram_contents_ram3_DWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_2_INV_ram_top_gp_ram_Mram_contents_ram3_CWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_2_INV_ram_top_gp_ram_Mram_contents_ram3_BWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram3_A_967 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram3_B_959 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram3_C_951 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram3_D_941 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram3_F7_A_939 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram3_F7_B_938 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_3_INV_ram_top_gp_ram_Mram_contents_ram4_DWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_3_INV_ram_top_gp_ram_Mram_contents_ram4_DWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_3_INV_ram_top_gp_ram_Mram_contents_ram4_CWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_3_INV_ram_top_gp_ram_Mram_contents_ram4_BWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram4_A_1004 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram4_B_996 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram4_C_988 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram4_D_978 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram4_F7_A_976 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram4_F7_B_975 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_PWR_37_o_MUX_16_o : STD_LOGIC; 
  signal top_Transmitter_en_width_count : STD_LOGIC; 
  signal top_Valid_D_TX_RDY_i_AND_20_o : STD_LOGIC; 
  signal top_Data_FF_0_dpot_1071 : STD_LOGIC; 
  signal top_Data_FF_1_dpot_1062 : STD_LOGIC; 
  signal top_Transmitter_data_count_1_rstpot_1105 : STD_LOGIC; 
  signal top_Transmitter_data_count_0_rstpot_1104 : STD_LOGIC; 
  signal top_Transmitter_data_count_0_pack_12 : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd2_In_1091 : STD_LOGIC; 
  signal top_Transmitter_data_count_2_rstpot_1083 : STD_LOGIC; 
  signal top_Valid_D_TX_RDY_i_AND_20_o1_cepot_1122 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_1145 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_rt_1143 : STD_LOGIC; 
  signal top_Shift_Q_7_D_MUX_25_o : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal N44_pack_7 : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd2_In_1237 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_6_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_pack_7 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_7_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_9_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_8_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_N4_pack_8 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_GND_11_o_MUX_1_o : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_7_INV_ram_top_gp_ram_Mram_contents_ram8_DWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_7_INV_ram_top_gp_ram_Mram_contents_ram8_DWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_7_INV_ram_top_gp_ram_Mram_contents_ram8_CWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_7_INV_ram_top_gp_ram_Mram_contents_ram8_BWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram8_A_1359 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram8_B_1351 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram8_C_1343 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram8_D_1333 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram8_F7_A_1331 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram8_F7_B_1330 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_4_INV_ram_top_gp_ram_Mram_contents_ram5_DWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_4_INV_ram_top_gp_ram_Mram_contents_ram5_DWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_4_INV_ram_top_gp_ram_Mram_contents_ram5_CWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_4_INV_ram_top_gp_ram_Mram_contents_ram5_BWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram5_A_1396 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram5_B_1388 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram5_C_1380 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram5_D_1370 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram5_F7_A_1368 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram5_F7_B_1367 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_6_INV_ram_top_gp_ram_Mram_contents_ram7_DWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_6_INV_ram_top_gp_ram_Mram_contents_ram7_DWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_6_INV_ram_top_gp_ram_Mram_contents_ram7_CWE2 : STD_LOGIC; 
  signal ram_top_gp_ram_n0015_6_INV_ram_top_gp_ram_Mram_contents_ram7_BWE1 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram7_A_1433 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram7_B_1425 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram7_C_1417 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram7_D_1407 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram7_F7_A_1405 : STD_LOGIC; 
  signal ram_top_gp_ram_Mram_contents_ram7_F7_B_1404 : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q : STD_LOGIC; 
  signal top_Receiver_width_count_2_pack_11 : STD_LOGIC; 
  signal top_Receiver_data_count_1_rstpot_1486 : STD_LOGIC; 
  signal top_Receiver_data_count_0_rstpot_1485 : STD_LOGIC; 
  signal top_Receiver_data_count_0_pack_6 : STD_LOGIC; 
  signal top_Receiver_data_count_2_rstpot_1479 : STD_LOGIC; 
  signal N8_pack_9 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_pack_9 : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_5_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_4_Q : STD_LOGIC; 
  signal top_Receiver_n0066_inv_pack_6 : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q : STD_LOGIC; 
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
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_CurrentState_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_CurrentState_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_CurrentState_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Data_FF_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Data_FF_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Data_FF_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Data_FF_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Shift_Q_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Shift_Q_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Shift_Q_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Shift_Q_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Shift_Q_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Shift_Q_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Shift_Q_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Ack_in_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Data_FF_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Data_FF_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd1_CLK : STD_LOGIC; 
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
  signal NlwBufferSignal_dma_top_data_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dma_top_data_count_0_CLK : STD_LOGIC; 
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
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_StartTX_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Data_FF_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Data_FF_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_data_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_data_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Transmitter_data_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Shift_Q_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_LineRD_in_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_LineRD_in_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_IN : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_IN : STD_LOGIC; 
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
  signal NlwBufferSignal_top_Receiver_width_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_data_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_data_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_data_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_top_Receiver_width_count_6_CLK : STD_LOGIC; 
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
  signal top_Transmitter_width_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal databus : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal dma_top_data_count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Data_FF : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Receiver_width_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal address : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal top_Receiver_data_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal top_Transmitter_data_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal top_Shift_Q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal top_Transmitter_Mcount_width_count_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6"
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
      LOC => "SLICE_X4Y15",
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
  top_Internal_memory_BU2_dbiterr_21_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y15",
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
  ProtoComp40_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X4Y15"
    )
    port map (
      O => ProtoComp40_CYINITVCC_1
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y15"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp40_CYINITVCC_1,
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
      LOC => "SLICE_X4Y15",
      INIT => X"9090090990900909"
    )
    port map (
      ADR3 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(4),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(2)
    );
  top_Internal_memory_BU2_dbiterr_22_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y15",
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
      LOC => "SLICE_X4Y15",
      INIT => X"9090090990900909"
    )
    port map (
      ADR3 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(1)
    );
  top_Internal_memory_BU2_dbiterr_23_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y15",
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
      LOC => "SLICE_X4Y15",
      INIT => X"8822441188224411"
    )
    port map (
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_24_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y15",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y17",
      INIT => X"8822441188224411"
    )
    port map (
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(7),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(6),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(3)
    );
  top_Internal_memory_BU2_dbiterr_16_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y17",
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
  ProtoComp42_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X4Y17"
    )
    port map (
      O => ProtoComp42_CYINITVCC_1_118
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y17"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp42_CYINITVCC_1_118,
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
      LOC => "SLICE_X4Y17",
      INIT => X"9009900990099009"
    )
    port map (
      ADR4 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(5),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(4),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(2)
    );
  top_Internal_memory_BU2_dbiterr_17_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y17",
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
      LOC => "SLICE_X4Y17",
      INIT => X"8822441188224411"
    )
    port map (
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(1)
    );
  top_Internal_memory_BU2_dbiterr_18_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y17",
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
      LOC => "SLICE_X4Y17",
      INIT => X"0990099009900990"
    )
    port map (
      ADR4 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_19_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y17",
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
      LOC => "SLICE_X4Y18"
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
      LOC => "SLICE_X4Y18",
      INIT => X"8822441188224411"
    )
    port map (
      ADR2 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(9),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(8),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(8),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c1_v1(4)
    );
  top_Internal_memory_BU2_dbiterr_15_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y18",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y16",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(3)
    );
  top_Internal_memory_BU2_dbiterr_11_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y16",
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
  ProtoComp43_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X8Y16"
    )
    port map (
      O => ProtoComp43_CYINITVCC_1
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y16"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp43_CYINITVCC_1,
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
      LOC => "SLICE_X8Y16",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(2)
    );
  top_Internal_memory_BU2_dbiterr_12_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y16",
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
      LOC => "SLICE_X8Y16",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(1)
    );
  top_Internal_memory_BU2_dbiterr_13_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y16",
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
      LOC => "SLICE_X8Y16",
      INIT => X"8421842184218421"
    )
    port map (
      ADR4 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y16",
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
      LOC => "SLICE_X8Y17"
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
      LOC => "SLICE_X8Y17",
      INIT => X"8282414182824141"
    )
    port map (
      ADR3 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(9),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(8),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c1_v1(4)
    );
  top_Internal_memory_BU2_dbiterr_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y17",
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
      LOC => "SLICE_X6Y17",
      INIT => X"A50000A5A50000A5"
    )
    port map (
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(7),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(7),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(6),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(6),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(3)
    );
  top_Internal_memory_BU2_dbiterr_6_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y17",
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
  ProtoComp42_CYINITVCC_1 : X_ONE
    generic map(
      LOC => "SLICE_X6Y17"
    )
    port map (
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet_3_ProtoComp42_CYINITVCC_1
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y17"
    )
    port map (
      CI => '0',
      CYINIT => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_gmux_carrynet_3_ProtoComp42_CYINITVCC_1,
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
      LOC => "SLICE_X6Y17",
      INIT => X"9009900990099009"
    )
    port map (
      ADR4 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(5),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(4),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(4),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(2)
    );
  top_Internal_memory_BU2_dbiterr_7_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y17",
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
      LOC => "SLICE_X6Y17",
      INIT => X"A50000A5A50000A5"
    )
    port map (
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(1)
    );
  top_Internal_memory_BU2_dbiterr_8_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y17",
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
      LOC => "SLICE_X6Y17",
      INIT => X"4488112244881122"
    )
    port map (
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(0)
    );
  top_Internal_memory_BU2_dbiterr_9_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y17",
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
      LOC => "SLICE_X6Y18"
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
      LOC => "SLICE_X6Y18",
      INIT => X"8844221188442211"
    )
    port map (
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(9),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(8),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(8),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_c0_v1(4)
    );
  top_Internal_memory_BU2_dbiterr_5_A5LUT : X_LUT5
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
      O => NLW_top_Internal_memory_BU2_dbiterr_5_A5LUT_O_UNCONNECTED
    );
  top_Transmitter_width_count_3 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
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
      LOC => "SLICE_X8Y4",
      INIT => X"FF7FFFFF00000000"
    )
    port map (
      ADR2 => top_Transmitter_width_count(7),
      ADR0 => top_Transmitter_width_count(5),
      ADR1 => top_Transmitter_width_count(2),
      ADR5 => top_Transmitter_width_count(3),
      ADR4 => top_Transmitter_width_count(1),
      ADR3 => N4,
      O => top_Transmitter_Mcount_width_count_lut_3_Q_232
    );
  top_Transmitter_width_count_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
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
      LOC => "SLICE_X8Y4"
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
      S(3) => top_Transmitter_Mcount_width_count_lut_3_Q_232,
      S(2) => top_Transmitter_Mcount_width_count_lut_2_Q_248,
      S(1) => top_Transmitter_Mcount_width_count_lut_1_Q_257,
      S(0) => top_Transmitter_width_count_0_rt_266
    );
  top_Transmitter_Mcount_width_count_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => X"FFFF00007FFF0000"
    )
    port map (
      ADR2 => top_Transmitter_width_count(7),
      ADR3 => top_Transmitter_width_count(5),
      ADR1 => top_Transmitter_width_count(3),
      ADR4 => top_Transmitter_width_count(2),
      ADR0 => top_Transmitter_width_count(1),
      ADR5 => N4,
      O => top_Transmitter_Mcount_width_count_lut_2_Q_248
    );
  top_Transmitter_width_count_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
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
      LOC => "SLICE_X8Y4",
      INIT => X"BFFF0000FFFF0000"
    )
    port map (
      ADR1 => top_Transmitter_width_count(7),
      ADR3 => top_Transmitter_width_count(5),
      ADR2 => top_Transmitter_width_count(3),
      ADR4 => top_Transmitter_width_count(1),
      ADR5 => top_Transmitter_width_count(2),
      ADR0 => N4,
      O => top_Transmitter_Mcount_width_count_lut_1_Q_257
    );
  top_Transmitter_width_count_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
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
      LOC => "SLICE_X8Y4",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Transmitter_width_count(0),
      ADR3 => '1',
      ADR5 => '1',
      O => top_Transmitter_width_count_0_rt_266
    );
  switches_0_OBUF_1_7_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y4",
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
      LOC => "SLICE_X8Y5",
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
      LOC => "SLICE_X8Y5",
      INIT => X"F7FFFFFF00000000"
    )
    port map (
      ADR1 => top_Transmitter_width_count(2),
      ADR0 => top_Transmitter_width_count(1),
      ADR3 => top_Transmitter_width_count(5),
      ADR5 => top_Transmitter_width_count(7),
      ADR4 => top_Transmitter_width_count(3),
      ADR2 => N4,
      O => top_Transmitter_Mcount_width_count_lut_7_Q_272
    );
  top_Transmitter_width_count_6 : X_FF
    generic map(
      LOC => "SLICE_X8Y5",
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
      LOC => "SLICE_X8Y5"
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
      S(3) => top_Transmitter_Mcount_width_count_lut_7_Q_272,
      S(2) => top_Transmitter_width_count_6_rt_287,
      S(1) => top_Transmitter_Mcount_width_count_lut_5_Q_292,
      S(0) => top_Transmitter_width_count_4_rt_300
    );
  top_Transmitter_width_count_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X8Y5",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Transmitter_width_count(6),
      ADR3 => '1',
      ADR5 => '1',
      O => top_Transmitter_width_count_6_rt_287
    );
  switches_0_OBUF_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y5",
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
      LOC => "SLICE_X8Y5",
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
      LOC => "SLICE_X8Y5",
      INIT => X"FFFF00007FFF0000"
    )
    port map (
      ADR2 => top_Transmitter_width_count(7),
      ADR3 => top_Transmitter_width_count(3),
      ADR1 => top_Transmitter_width_count(2),
      ADR4 => top_Transmitter_width_count(5),
      ADR0 => top_Transmitter_width_count(1),
      ADR5 => N4,
      O => top_Transmitter_Mcount_width_count_lut_5_Q_292
    );
  top_Transmitter_width_count_4 : X_FF
    generic map(
      LOC => "SLICE_X8Y5",
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
      LOC => "SLICE_X8Y5",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Transmitter_width_count(4),
      ADR3 => '1',
      ADR5 => '1',
      O => top_Transmitter_width_count_4_rt_300
    );
  switches_0_OBUF_1_3_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y5",
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
      LOC => "PAD176"
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
      LOC => "PAD164"
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
  temp_l_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD174"
    )
    port map (
      I => '0',
      O => temp_l(0)
    );
  switches_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD157"
    )
    port map (
      I => '0',
      O => switches(3)
    );
  temp_l_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD177"
    )
    port map (
      I => '0',
      O => temp_l(1)
    );
  switches_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => '0',
      O => switches(4)
    );
  temp_l_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD178"
    )
    port map (
      I => '0',
      O => temp_l(2)
    );
  switches_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD163"
    )
    port map (
      I => '0',
      O => switches(5)
    );
  temp_l_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD179"
    )
    port map (
      I => '0',
      O => temp_l(3)
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
      O => RD_IBUF_334,
      I => RD
    );
  ProtoComp47_IMUX : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 202 ps
    )
    port map (
      I => RD_IBUF_334,
      O => RD_IBUF_0
    );
  TD_OBUF : X_OBUF
    generic map(
      LOC => "PAD184"
    )
    port map (
      I => NlwBufferSignal_TD_OBUF_I,
      O => TD
    );
  Reset_IBUF : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 202 ps
    )
    port map (
      O => Reset_IBUF_339,
      I => Reset
    );
  ProtoComp47_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 202 ps
    )
    port map (
      I => Reset_IBUF_339,
      O => Reset_IBUF_0
    );
  Send_IBUF : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      O => Send_IBUF_342,
      I => Send
    );
  ProtoComp47_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      I => Send_IBUF_342,
      O => Send_IBUF_0
    );
  temp_h_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD169"
    )
    port map (
      I => '0',
      O => temp_h(0)
    );
  temp_h_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD173"
    )
    port map (
      I => '0',
      O => temp_h(1)
    );
  temp_h_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD170"
    )
    port map (
      I => '0',
      O => temp_h(2)
    );
  Clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => Clk_BUFGP_IBUFG_351,
      I => Clk
    );
  ProtoComp47_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP_IBUFG_351,
      O => Clk_BUFGP_IBUFG_0
    );
  temp_h_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD175"
    )
    port map (
      I => '0',
      O => temp_h(3)
    );
  DMA_ACK_IBUF : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 202 ps
    )
    port map (
      O => DMA_ACK_IBUF_356,
      I => DMA_ACK
    );
  ProtoComp47_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 202 ps
    )
    port map (
      I => DMA_ACK_IBUF_356,
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_pack_6,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(9),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_4 : X_FF
    generic map(
      LOC => "SLICE_X2Y15",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_ram_rd_en_i1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => X"5555000055550000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => data_read,
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_1748,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_tmp_ram_rd_en1 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => X"F5F5F0F0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_Q,
      ADR4 => data_read,
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_1748,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_tmp_ram_rd_en
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_3 : X_FF
    generic map(
      LOC => "SLICE_X2Y15",
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
  dma_top_Mmux_Data_Read11 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => X"0AFAFAFA00F0F0F0"
    )
    port map (
      ADR1 => '1',
      ADR5 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR0 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR2 => dma_top_CurrentState_FSM_FFd1_1646,
      ADR3 => dma_top_data_count(1),
      ADR4 => dma_top_data_count(0),
      O => data_read
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_2 : X_FF
    generic map(
      LOC => "SLICE_X2Y15",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT1031 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => X"0000800000008000"
    )
    port map (
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT103
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT71 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => X"AAAA6AAA"
    )
    port map (
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_6_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6 : X_FF
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_6_Q,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_pack_6,
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_1 : X_FF
    generic map(
      LOC => "SLICE_X2Y15",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT411 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => X"33FFFFFF33FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt_386
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9 : X_FF
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => '0'
    )
    port map (
      CE => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_rt_386,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1(9),
      RST => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X2Y17",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_1762,
      RST => GND,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X2Y17",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_1764,
      RST => GND,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT811 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y15",
      INIT => X"BFFFFFFFBFFFFFFF"
    )
    port map (
      ADR5 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81_1809
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9 : X_FF
    generic map(
      LOC => "SLICE_X3Y15",
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
      LOC => "SLICE_X3Y15",
      INIT => X"FFFF33FF88008800"
    )
    port map (
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT103,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT81_1809,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_9_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X3Y16",
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
      LOC => "SLICE_X3Y16",
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
      LOC => "SLICE_X3Y17",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_GND_11_o_MUX_2_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_1763,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_Mmux_rd_rst_asreg_GND_11_o_MUX_2_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y17",
      INIT => X"4444444444444444"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_1763,
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_1764,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_GND_11_o_MUX_2_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb1 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y17",
      INIT => X"0000CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_1762,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_1763,
      ADR2 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb
    );
  dma_top_CurrentState_FSM_FFd3_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => X"5050000050500000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR0 => dma_top_CurrentState_FSM_FFd1_1646,
      ADR4 => Send_IBUF_0,
      ADR2 => empty,
      O => dma_top_CurrentState_FSM_FFd3_In1_1810
    );
  dma_top_CurrentState_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_dma_top_CurrentState_FSM_FFd3_CLK,
      I => dma_top_CurrentState_FSM_FFd3_In,
      O => dma_top_CurrentState_FSM_FFd3_1657,
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_CurrentState_FSM_FFd3_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => X"30333033BBBB8888"
    )
    port map (
      ADR1 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR3 => dma_top_data_count(1),
      ADR2 => dma_top_data_count(0),
      ADR5 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR4 => dma_top_CurrentState_FSM_FFd3_In1_1810,
      ADR0 => DMA_ACK_IBUF_0,
      O => dma_top_CurrentState_FSM_FFd3_In
    );
  address_1_address_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dma_top_CurrentState_FSM_FFd2_pack_15,
      O => dma_top_CurrentState_FSM_FFd2_1660
    );
  address_1_address_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dma_top_CurrentState_FSM_FFd1_pack_14,
      O => dma_top_CurrentState_FSM_FFd1_1646
    );
  address_1_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"FF0AFF0FFF0FFF0F"
    )
    port map (
      ADR1 => '1',
      ADR2 => dma_top_CurrentState_FSM_FFd1_1646,
      ADR4 => dma_top_TX_RDY_ACK_out_AND_21_o,
      ADR0 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR5 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR3 => dma_top_data_count(1),
      O => address(1)
    );
  address_0_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"F5F4F5F5F5F5F5F5"
    )
    port map (
      ADR0 => dma_top_CurrentState_FSM_FFd1_1646,
      ADR5 => dma_top_TX_RDY_ACK_out_AND_21_o,
      ADR1 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR3 => dma_top_data_count(1),
      ADR4 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR2 => dma_top_data_count(0),
      O => address(0)
    );
  dma_top_CurrentState_DMA_RQ1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR1 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR5 => '1',
      O => DMA_RQ_OBUF_1766
    );
  dma_top_CurrentState_FSM_FFd2_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"0C0D0C0D"
    )
    port map (
      ADR4 => '1',
      ADR3 => dma_top_CurrentState_FSM_FFd1_1646,
      ADR0 => empty,
      ADR2 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR1 => dma_top_CurrentState_FSM_FFd2_1660,
      O => dma_top_CurrentState_FSM_FFd2_In
    );
  dma_top_CurrentState_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_dma_top_CurrentState_FSM_FFd2_CLK,
      I => dma_top_CurrentState_FSM_FFd2_In,
      O => dma_top_CurrentState_FSM_FFd2_pack_15,
      RST => Reset_IBUF_0,
      SET => GND
    );
  dma_top_Mmux_READY11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"F3FFF0FFF3FFF0FF"
    )
    port map (
      ADR0 => '1',
      ADR3 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR4 => dma_top_data_count(1),
      ADR1 => dma_top_data_count(0),
      ADR2 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR5 => '1',
      O => Ready_OBUF_1758
    );
  dma_top_CurrentState_FSM_FFd1_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"F222FAAA"
    )
    port map (
      ADR0 => dma_top_CurrentState_FSM_FFd1_1646,
      ADR3 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR4 => dma_top_data_count(1),
      ADR1 => dma_top_data_count(0),
      ADR2 => dma_top_CurrentState_FSM_FFd2_1660,
      O => dma_top_CurrentState_FSM_FFd1_In
    );
  dma_top_CurrentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_dma_top_CurrentState_FSM_FFd1_CLK,
      I => dma_top_CurrentState_FSM_FFd1_In,
      O => dma_top_CurrentState_FSM_FFd1_pack_14,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_7 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0,
      CLK => NlwBufferSignal_top_Data_FF_7_CLK,
      I => top_Data_FF_7_dpot_501,
      O => top_Data_FF(7),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"FFFF0000BAAA1000"
    )
    port map (
      ADR5 => top_Transmitter_CurrentState_FSM_FFd2_1654,
      ADR0 => top_Transmitter_CurrentState_FSM_FFd1_1655,
      ADR1 => N26_0,
      ADR4 => top_Data_FF(7),
      ADR3 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR2 => top_Ack_in_1658,
      O => top_Data_FF_7_dpot_501
    );
  dma_top_Mmux_TX_Data71_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"FFF0FFFFFFFCFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR1 => dma_top_data_count(1),
      ADR5 => dma_top_data_count(0),
      ADR4 => ram_top_gp_ram_n0015_6_0,
      ADR3 => dma_top_CurrentState_FSM_FFd1_1646,
      O => N24
    );
  top_Data_FF_6 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0,
      CLK => NlwBufferSignal_top_Data_FF_6_CLK,
      I => top_Data_FF_6_dpot_488,
      O => top_Data_FF(6),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"FFAAFFEA00000040"
    )
    port map (
      ADR3 => top_Transmitter_CurrentState_FSM_FFd2_1654,
      ADR0 => top_Transmitter_CurrentState_FSM_FFd1_1655,
      ADR4 => N24,
      ADR5 => top_Data_FF(6),
      ADR2 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR1 => top_Ack_in_1658,
      O => top_Data_FF_6_dpot_488
    );
  dma_top_Mmux_TX_Data41_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => X"FFF3FFF0FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR4 => dma_top_data_count(1),
      ADR1 => dma_top_data_count(0),
      ADR5 => ram_top_gp_ram_n0015_3_0,
      ADR3 => dma_top_CurrentState_FSM_FFd1_1646,
      O => N18
    );
  top_Data_FF_3 : X_FF
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => '0'
    )
    port map (
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0,
      CLK => NlwBufferSignal_top_Data_FF_3_CLK,
      I => top_Data_FF_3_dpot_520,
      O => top_Data_FF(3),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => X"FFCC0000FFEC0020"
    )
    port map (
      ADR3 => top_Transmitter_CurrentState_FSM_FFd2_1654,
      ADR1 => top_Transmitter_CurrentState_FSM_FFd1_1655,
      ADR5 => N18,
      ADR4 => top_Data_FF(3),
      ADR0 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR2 => top_Ack_in_1658,
      O => top_Data_FF_3_dpot_520
    );
  dma_top_Mmux_TX_Data31_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => X"FFFFFFFFFFFF3F33"
    )
    port map (
      ADR0 => '1',
      ADR5 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR3 => dma_top_data_count(1),
      ADR2 => dma_top_data_count(0),
      ADR1 => ram_top_gp_ram_n0015_2_0,
      ADR4 => dma_top_CurrentState_FSM_FFd1_1646,
      O => N16
    );
  top_Data_FF_2 : X_FF
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => '0'
    )
    port map (
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0,
      CLK => NlwBufferSignal_top_Data_FF_2_CLK,
      I => top_Data_FF_2_dpot_529,
      O => top_Data_FF(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => X"FFAAFFEA00000040"
    )
    port map (
      ADR0 => top_Transmitter_CurrentState_FSM_FFd2_1654,
      ADR3 => top_Transmitter_CurrentState_FSM_FFd1_1655,
      ADR4 => N16,
      ADR5 => top_Data_FF(2),
      ADR1 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR2 => top_Ack_in_1658,
      O => top_Data_FF_2_dpot_529
    );
  databus_5_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y10",
      INIT => X"FEFAFF33EEAAFF33"
    )
    port map (
      ADR4 => dma_top_CurrentState_FSM_FFd1_1646,
      ADR2 => dma_top_data_count(0),
      ADR5 => dma_top_data_count(1),
      ADR0 => data_out(5),
      ADR1 => oe,
      ADR3 => ram_top_gp_ram_n0015_5_0,
      O => databus(5)
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
      LOC => "SLICE_X4Y12",
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
      LOC => "SLICE_X4Y12",
      INIT => X"F0D8F0F0F0D8F0F0"
    )
    port map (
      ADR3 => top_Receiver_data_count(2),
      ADR4 => top_Receiver_data_count(1),
      ADR0 => top_Receiver_data_count(0),
      ADR2 => top_Shift_Q(3),
      ADR1 => top_Code_out,
      ADR5 => '1',
      O => top_Shift_Q_3_D_MUX_29_o
    );
  top_Receiver_CurrentState_FSM_FFd2_In_SW0_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y12",
      INIT => X"FF000000"
    )
    port map (
      ADR3 => top_Receiver_data_count(2),
      ADR4 => top_Receiver_data_count(1),
      ADR2 => '1',
      ADR0 => '1',
      ADR1 => '1',
      O => N28
    );
  top_Shift_Q_2 : X_FF
    generic map(
      LOC => "SLICE_X4Y12",
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
      LOC => "SLICE_X4Y12",
      INIT => X"AABAAA8AAABAAA8A"
    )
    port map (
      ADR5 => '1',
      ADR3 => top_Receiver_data_count(2),
      ADR1 => top_Receiver_data_count(0),
      ADR0 => top_Shift_Q(2),
      ADR2 => top_Receiver_data_count(1),
      ADR4 => top_Code_out,
      O => top_Shift_Q_2_D_MUX_30_o
    );
  top_Shift_Q_1 : X_FF
    generic map(
      LOC => "SLICE_X4Y12",
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
      LOC => "SLICE_X4Y12",
      INIT => X"FFEF1000FFEF1000"
    )
    port map (
      ADR5 => '1',
      ADR0 => top_Receiver_data_count(2),
      ADR1 => top_Receiver_data_count(1),
      ADR4 => top_Shift_Q(1),
      ADR2 => top_Receiver_data_count(0),
      ADR3 => top_Code_out,
      O => top_Shift_Q_1_D_MUX_31_o
    );
  top_Shift_Q_0 : X_FF
    generic map(
      LOC => "SLICE_X4Y12",
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
      LOC => "SLICE_X4Y12",
      INIT => X"FFFFFFFC00000030"
    )
    port map (
      ADR0 => '1',
      ADR3 => top_Receiver_data_count(0),
      ADR1 => top_Receiver_data_count(1),
      ADR5 => top_Shift_Q(0),
      ADR4 => top_Receiver_data_count(2),
      ADR2 => top_Code_out,
      O => top_Shift_Q_0_D_MUX_32_o
    );
  top_Shift_Q_6 : X_FF
    generic map(
      LOC => "SLICE_X4Y13",
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
      LOC => "SLICE_X4Y13",
      INIT => X"FFFF0000FF778800"
    )
    port map (
      ADR2 => '1',
      ADR5 => top_Receiver_data_count(0),
      ADR0 => top_Receiver_data_count(1),
      ADR4 => top_Shift_Q(6),
      ADR1 => top_Receiver_data_count(2),
      ADR3 => top_Code_out,
      O => top_Shift_Q_6_D_MUX_26_o
    );
  top_Shift_Q_5 : X_FF
    generic map(
      LOC => "SLICE_X4Y13",
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
      LOC => "SLICE_X4Y13",
      INIT => X"F2F0D0F0F2F0D0F0"
    )
    port map (
      ADR5 => '1',
      ADR1 => top_Receiver_data_count(1),
      ADR0 => top_Receiver_data_count(2),
      ADR2 => top_Shift_Q(5),
      ADR3 => top_Receiver_data_count(0),
      ADR4 => top_Code_out,
      O => top_Shift_Q_5_D_MUX_27_o
    );
  top_Shift_Q_4 : X_FF
    generic map(
      LOC => "SLICE_X4Y13",
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
      LOC => "SLICE_X4Y13",
      INIT => X"FFFFFFDD00220000"
    )
    port map (
      ADR2 => '1',
      ADR3 => top_Receiver_data_count(0),
      ADR1 => top_Receiver_data_count(1),
      ADR5 => top_Shift_Q(4),
      ADR0 => top_Receiver_data_count(2),
      ADR4 => top_Code_out,
      O => top_Shift_Q_4_D_MUX_28_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_8 : X_FF
    generic map(
      LOC => "SLICE_X4Y16",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_7 : X_FF
    generic map(
      LOC => "SLICE_X4Y16",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y16"
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_6 : X_FF
    generic map(
      LOC => "SLICE_X4Y16",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_5 : X_FF
    generic map(
      LOC => "SLICE_X4Y16",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y16",
      INIT => X"9900009999000099"
    )
    port map (
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(9),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(9),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(8),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_c2_v1(4)
    );
  top_Internal_memory_BU2_dbiterr_20_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y16",
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
  top_Ack_in : X_FF
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Ack_in_CLK,
      I => top_Valid_D_INV_19_o,
      O => top_Ack_in_1658,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Valid_D_INV_19_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => X"DFFFDFFFFFFFDFFF"
    )
    port map (
      ADR3 => tx_rdy,
      ADR2 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR0 => dma_top_TX_RDY_ACK_out_AND_21_o,
      ADR4 => dma_top_data_count(1),
      ADR5 => dma_top_data_count(0),
      ADR1 => dma_top_CurrentState_FSM_FFd2_1660,
      O => top_Valid_D_INV_19_o
    );
  dma_top_Mmux_TX_Data61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y9",
      INIT => X"FCFCFEFEFFFFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR2 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR0 => dma_top_data_count(1),
      ADR4 => dma_top_data_count(0),
      ADR5 => ram_top_gp_ram_n0015_5_0,
      ADR1 => dma_top_CurrentState_FSM_FFd1_1646,
      O => N22
    );
  top_Data_FF_5 : X_FF
    generic map(
      LOC => "SLICE_X5Y9",
      INIT => '0'
    )
    port map (
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0,
      CLK => NlwBufferSignal_top_Data_FF_5_CLK,
      I => top_Data_FF_5_dpot_645,
      O => top_Data_FF(5),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y9",
      INIT => X"F0F0F0F0F0F04400"
    )
    port map (
      ADR4 => top_Transmitter_CurrentState_FSM_FFd2_1654,
      ADR5 => top_Transmitter_CurrentState_FSM_FFd1_1655,
      ADR0 => N22,
      ADR2 => top_Data_FF(5),
      ADR3 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR1 => top_Ack_in_1658,
      O => top_Data_FF_5_dpot_645
    );
  dma_top_Mmux_TX_Data51_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y9",
      INIT => X"FFFFFFFFAFFFAFAF"
    )
    port map (
      ADR1 => '1',
      ADR0 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR4 => dma_top_data_count(1),
      ADR3 => dma_top_data_count(0),
      ADR2 => ram_top_gp_ram_n0015_4_0,
      ADR5 => dma_top_CurrentState_FSM_FFd1_1646,
      O => N20
    );
  top_Data_FF_4 : X_FF
    generic map(
      LOC => "SLICE_X5Y9",
      INIT => '0'
    )
    port map (
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0,
      CLK => NlwBufferSignal_top_Data_FF_4_CLK,
      I => top_Data_FF_4_dpot_654,
      O => top_Data_FF(4),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y9",
      INIT => X"FAFAFEFA00000400"
    )
    port map (
      ADR0 => top_Transmitter_CurrentState_FSM_FFd2_1654,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd1_1655,
      ADR4 => N20,
      ADR5 => top_Data_FF(4),
      ADR3 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR1 => top_Ack_in_1658,
      O => top_Data_FF_4_dpot_654
    );
  databus_6_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y10",
      INIT => X"FEFFFCFFEE0FCC0F"
    )
    port map (
      ADR3 => dma_top_CurrentState_FSM_FFd1_1646,
      ADR0 => dma_top_data_count(0),
      ADR4 => dma_top_data_count(1),
      ADR1 => data_out(6),
      ADR2 => oe,
      ADR5 => ram_top_gp_ram_n0015_6_0,
      O => databus(6)
    );
  databus_2_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y11",
      INIT => X"FFFFEAFFEA00EAFF"
    )
    port map (
      ADR3 => dma_top_CurrentState_FSM_FFd1_1646,
      ADR2 => dma_top_data_count(0),
      ADR1 => dma_top_data_count(1),
      ADR0 => data_out(2),
      ADR4 => oe,
      ADR5 => ram_top_gp_ram_n0015_2_0,
      O => databus(2)
    );
  databus_3_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y12",
      INIT => X"FEEEFF0FFCCCFF0F"
    )
    port map (
      ADR4 => dma_top_CurrentState_FSM_FFd1_1646,
      ADR0 => dma_top_data_count(0),
      ADR5 => dma_top_data_count(1),
      ADR1 => data_out(3),
      ADR2 => oe,
      ADR3 => ram_top_gp_ram_n0015_3_0,
      O => databus(3)
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
      LOC => "SLICE_X5Y14",
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
      LOC => "SLICE_X5Y14",
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
      LOC => "SLICE_X5Y14",
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
      LOC => "SLICE_X5Y14",
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
      LOC => "SLICE_X5Y14",
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
      LOC => "SLICE_X5Y14",
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
      LOC => "SLICE_X5Y14",
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
      LOC => "SLICE_X5Y14",
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
      LOC => "SLICE_X5Y14",
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
      LOC => "SLICE_X5Y14",
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
      LOC => "SLICE_X5Y14",
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
      LOC => "SLICE_X5Y14",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT91_F : X_LUT6
    generic map(
      LOC => "SLICE_X5Y15",
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      O => top_Internal_memory_BU2_N6
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_8 : X_FF
    generic map(
      LOC => "SLICE_X5Y15",
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
      LOC => "SLICE_X5Y15",
      INIT => X"FFFF0000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(8),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      ADR3 => top_Internal_memory_BU2_N6,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_8_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_7 : X_FF
    generic map(
      LOC => "SLICE_X5Y15",
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
      LOC => "SLICE_X5Y15",
      INIT => X"FF00FF007F80FF00"
    )
    port map (
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(6),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(5),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(7),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count(4),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_9_GND_46_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_GND_46_o_mux_2_OUT_7_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i : X_FF
    generic map(
      LOC => "SLICE_X5Y16",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o,
      O => empty,
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_32_o_MUX_14_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y16",
      INIT => X"EE0EEECECC0CCCCC"
    )
    port map (
      ADR2 => top_Fifo_write,
      ADR5 => data_read,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_1697,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_1748,
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp0_0,
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_comp1_0,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i : X_FF
    generic map(
      LOC => "SLICE_X5Y17",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_1748,
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      RST => GND
    );
  dma_top_n0170_inv_dma_top_n0170_inv_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Transmitter_CurrentState_FSM_FFd1_pack_4,
      O => top_Transmitter_CurrentState_FSM_FFd1_1655
    );
  dma_top_n0170_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y5",
      INIT => X"F0F0F0F0FAF2F0F0"
    )
    port map (
      ADR0 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR5 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR4 => dma_top_TX_RDY_ACK_out_AND_21_o,
      ADR3 => dma_top_data_count(0),
      ADR1 => dma_top_data_count(1),
      ADR2 => dma_top_CurrentState_FSM_FFd1_1646,
      O => dma_top_n0170_inv
    );
  dma_top_TX_RDY_ACK_out_AND_21_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y5",
      INIT => X"000000000000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => top_Ack_in_1658,
      ADR5 => top_Transmitter_CurrentState_FSM_FFd2_1654,
      ADR4 => top_Transmitter_CurrentState_FSM_FFd1_1655,
      O => dma_top_TX_RDY_ACK_out_AND_21_o
    );
  top_Transmitter_TX1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y5",
      INIT => X"8F8F8F8F8F8F8F8F"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_1654,
      ADR1 => top_Transmitter_data_count_2_Data_7_Mux_6_o_0,
      ADR0 => top_Transmitter_CurrentState_FSM_FFd1_1655,
      ADR5 => '1',
      O => TD_OBUF_1733
    );
  top_Transmitter_CurrentState_FSM_FFd1_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y5",
      INIT => X"F0AAF0AA"
    )
    port map (
      ADR4 => '1',
      ADR3 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd2_1654,
      ADR1 => '1',
      ADR0 => top_Transmitter_CurrentState_FSM_FFd1_1655,
      O => top_Transmitter_CurrentState_FSM_FFd1_In
    );
  top_Transmitter_CurrentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X6Y5",
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
      LOC => "SLICE_X6Y5",
      INIT => X"0000000080000000"
    )
    port map (
      ADR0 => top_Transmitter_width_count(5),
      ADR4 => top_Transmitter_width_count(3),
      ADR1 => top_Transmitter_width_count(7),
      ADR3 => top_Transmitter_width_count(2),
      ADR2 => top_Transmitter_width_count(1),
      ADR5 => N4,
      O => top_Transmitter_width_count_7_PWR_6_o_equal_16_o
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
      LOC => "SLICE_X6Y6"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram2_F7_B_782,
      IB => ram_top_gp_ram_Mram_contents_ram2_F7_A_783,
      O => ram_top_gp_ram_n0015(1),
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram2_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X6Y6"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram2_D_785,
      IB => ram_top_gp_ram_Mram_contents_ram2_C_795,
      O => ram_top_gp_ram_Mram_contents_ram2_F7_B_782,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram2_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X6Y6"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram2_B_803,
      IB => ram_top_gp_ram_Mram_contents_ram2_A_811,
      O => ram_top_gp_ram_Mram_contents_ram2_F7_A_783,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram2_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y6",
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
      O => ram_top_gp_ram_Mram_contents_ram2_D_785,
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
      LOC => "SLICE_X6Y6",
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
      O => ram_top_gp_ram_Mram_contents_ram2_C_795,
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
      LOC => "SLICE_X6Y6",
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
      O => ram_top_gp_ram_Mram_contents_ram2_B_803,
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
      LOC => "SLICE_X6Y6",
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
      O => ram_top_gp_ram_Mram_contents_ram2_A_811,
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
  dma_top_data_count_1_dma_top_data_count_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N26,
      O => N26_0
    );
  databus_1_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => X"FFFFFDF5A8A0FDF5"
    )
    port map (
      ADR0 => dma_top_CurrentState_FSM_FFd1_1646,
      ADR1 => dma_top_data_count(0),
      ADR3 => dma_top_data_count(1),
      ADR2 => data_out(1),
      ADR4 => oe,
      ADR5 => ram_top_gp_ram_n0015_1_0,
      O => databus(1)
    );
  address_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => X"5555555504555555"
    )
    port map (
      ADR3 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR5 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR0 => dma_top_CurrentState_FSM_FFd1_1646,
      ADR1 => dma_top_data_count(1),
      ADR2 => dma_top_data_count(0),
      ADR4 => dma_top_TX_RDY_ACK_out_AND_21_o,
      O => address(2)
    );
  dma_top_data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X6Y7",
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
      LOC => "SLICE_X6Y7",
      INIT => X"6666666666666666"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR0 => dma_top_data_count(1),
      ADR1 => dma_top_data_count(0),
      ADR5 => '1',
      O => dma_top_Mcount_data_count1
    );
  dma_top_Mmux_TX_Data81_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => X"FFF2FFFF"
    )
    port map (
      ADR2 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR4 => ram_top_gp_ram_n0015_7_0,
      ADR3 => dma_top_CurrentState_FSM_FFd1_1646,
      ADR0 => dma_top_data_count(1),
      ADR1 => dma_top_data_count(0),
      O => N26
    );
  dma_top_data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X6Y7",
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
      LOC => "SLICE_X6Y7",
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
      LOC => "SLICE_X6Y8"
    )
    port map (
      IA => top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_4_848,
      IB => top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_3_856,
      O => top_Transmitter_data_count_2_Data_7_Mux_6_o,
      SEL => top_Transmitter_data_count(2)
    );
  top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_4 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y8",
      INIT => X"FCEE30EEFC223022"
    )
    port map (
      ADR3 => top_Transmitter_data_count(1),
      ADR1 => top_Transmitter_data_count(0),
      ADR2 => top_Data_FF(2),
      ADR4 => top_Data_FF(3),
      ADR5 => top_Data_FF(1),
      ADR0 => top_Data_FF(0),
      O => top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_4_848
    );
  top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_3 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y8",
      INIT => X"D8D8FFAAD8D85500"
    )
    port map (
      ADR0 => top_Transmitter_data_count(1),
      ADR4 => top_Transmitter_data_count(0),
      ADR5 => top_Data_FF(6),
      ADR1 => top_Data_FF(7),
      ADR2 => top_Data_FF(5),
      ADR3 => top_Data_FF(4),
      O => top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_3_856
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
      IA => ram_top_gp_ram_Mram_contents_ram1_F7_B_864,
      IB => ram_top_gp_ram_Mram_contents_ram1_F7_A_865,
      O => ram_top_gp_ram_n0015(0),
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram1_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X6Y9"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram1_D_867,
      IB => ram_top_gp_ram_Mram_contents_ram1_C_877,
      O => ram_top_gp_ram_Mram_contents_ram1_F7_B_864,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram1_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X6Y9"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram1_B_885,
      IB => ram_top_gp_ram_Mram_contents_ram1_A_893,
      O => ram_top_gp_ram_Mram_contents_ram1_F7_A_865,
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
      O => ram_top_gp_ram_Mram_contents_ram1_D_867,
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
      O => ram_top_gp_ram_Mram_contents_ram1_C_877,
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
      O => ram_top_gp_ram_Mram_contents_ram1_B_885,
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
      O => ram_top_gp_ram_Mram_contents_ram1_A_893,
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
      LOC => "SLICE_X6Y10"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram6_F7_B_901,
      IB => ram_top_gp_ram_Mram_contents_ram6_F7_A_902,
      O => ram_top_gp_ram_n0015(5),
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram6_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X6Y10"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram6_D_904,
      IB => ram_top_gp_ram_Mram_contents_ram6_C_914,
      O => ram_top_gp_ram_Mram_contents_ram6_F7_B_901,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram6_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X6Y10"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram6_B_922,
      IB => ram_top_gp_ram_Mram_contents_ram6_A_930,
      O => ram_top_gp_ram_Mram_contents_ram6_F7_A_902,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram6_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y10",
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
      O => ram_top_gp_ram_Mram_contents_ram6_D_904,
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
      LOC => "SLICE_X6Y10",
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
      O => ram_top_gp_ram_Mram_contents_ram6_C_914,
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
      LOC => "SLICE_X6Y10",
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
      O => ram_top_gp_ram_Mram_contents_ram6_B_922,
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
      LOC => "SLICE_X6Y10",
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
      O => ram_top_gp_ram_Mram_contents_ram6_A_930,
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
      LOC => "SLICE_X6Y11"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram3_F7_B_938,
      IB => ram_top_gp_ram_Mram_contents_ram3_F7_A_939,
      O => ram_top_gp_ram_n0015(2),
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram3_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X6Y11"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram3_D_941,
      IB => ram_top_gp_ram_Mram_contents_ram3_C_951,
      O => ram_top_gp_ram_Mram_contents_ram3_F7_B_938,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram3_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X6Y11"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram3_B_959,
      IB => ram_top_gp_ram_Mram_contents_ram3_A_967,
      O => ram_top_gp_ram_Mram_contents_ram3_F7_A_939,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram3_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y11",
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
      O => ram_top_gp_ram_Mram_contents_ram3_D_941,
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
      LOC => "SLICE_X6Y11",
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
      O => ram_top_gp_ram_Mram_contents_ram3_C_951,
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
      LOC => "SLICE_X6Y11",
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
      O => ram_top_gp_ram_Mram_contents_ram3_B_959,
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
      LOC => "SLICE_X6Y11",
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
      O => ram_top_gp_ram_Mram_contents_ram3_A_967,
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
      LOC => "SLICE_X6Y12"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram4_F7_B_975,
      IB => ram_top_gp_ram_Mram_contents_ram4_F7_A_976,
      O => ram_top_gp_ram_n0015(3),
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram4_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X6Y12"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram4_D_978,
      IB => ram_top_gp_ram_Mram_contents_ram4_C_988,
      O => ram_top_gp_ram_Mram_contents_ram4_F7_B_975,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram4_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X6Y12"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram4_B_996,
      IB => ram_top_gp_ram_Mram_contents_ram4_A_1004,
      O => ram_top_gp_ram_Mram_contents_ram4_F7_A_976,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram4_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y12",
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
      O => ram_top_gp_ram_Mram_contents_ram4_D_978,
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
      LOC => "SLICE_X6Y12",
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
      O => ram_top_gp_ram_Mram_contents_ram4_C_988,
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
      LOC => "SLICE_X6Y12",
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
      O => ram_top_gp_ram_Mram_contents_ram4_B_996,
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
      LOC => "SLICE_X6Y12",
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
      O => ram_top_gp_ram_Mram_contents_ram4_A_1004,
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i : X_FF
    generic map(
      LOC => "SLICE_X6Y15",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_PWR_37_o_MUX_16_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_1697,
      SET => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_1711,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_PWR_37_o_MUX_16_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y15",
      INIT => X"0333033300AA0000"
    )
    port map (
      ADR4 => top_Fifo_write,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_0,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_rd_en,
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_1697,
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp0_0,
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_comp1_0,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_PWR_37_o_MUX_16_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_7 : X_FF
    generic map(
      LOC => "SLICE_X6Y16",
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
      LOC => "SLICE_X6Y16",
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
      LOC => "SLICE_X6Y16",
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
      LOC => "SLICE_X6Y16",
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
  rst_nexys1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y5",
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
  top_StartTX_top_StartTX_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Transmitter_en_width_count,
      O => top_Transmitter_en_width_count_0
    );
  top_Transmitter_CurrentState_n0054_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => X"000F000F000F000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => top_Transmitter_CurrentState_FSM_FFd2_1654,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd1_1655,
      ADR5 => '1',
      O => tx_rdy
    );
  top_Transmitter_CurrentState_n0054_1_1 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => X"FFF0FFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => top_Transmitter_CurrentState_FSM_FFd2_1654,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd1_1655,
      O => top_Transmitter_en_width_count
    );
  top_StartTX : X_FF
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => '0'
    )
    port map (
      CE => rst_nexys,
      CLK => NlwBufferSignal_top_StartTX_CLK,
      I => top_Valid_D_TX_RDY_i_AND_20_o,
      O => top_StartTX_1753,
      RST => GND,
      SET => GND
    );
  top_Valid_D_TX_RDY_i_AND_20_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y6",
      INIT => X"2200000002000000"
    )
    port map (
      ADR1 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR3 => dma_top_TX_RDY_ACK_out_AND_21_o,
      ADR4 => tx_rdy,
      ADR0 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR5 => dma_top_data_count(0),
      ADR2 => dma_top_data_count(1),
      O => top_Valid_D_TX_RDY_i_AND_20_o
    );
  dma_top_Mmux_TX_Data21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => X"FFFFFF0CFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR1 => dma_top_data_count(1),
      ADR2 => dma_top_data_count(0),
      ADR5 => ram_top_gp_ram_n0015_1_0,
      ADR4 => dma_top_CurrentState_FSM_FFd1_1646,
      O => N14
    );
  top_Data_FF_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => '0'
    )
    port map (
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0,
      CLK => NlwBufferSignal_top_Data_FF_1_CLK,
      I => top_Data_FF_1_dpot_1062,
      O => top_Data_FF(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => X"EEEE0000FEEE1000"
    )
    port map (
      ADR0 => top_Transmitter_CurrentState_FSM_FFd2_1654,
      ADR1 => top_Transmitter_CurrentState_FSM_FFd1_1655,
      ADR5 => N14,
      ADR4 => top_Data_FF(1),
      ADR3 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR2 => top_Ack_in_1658,
      O => top_Data_FF_1_dpot_1062
    );
  dma_top_Mmux_TX_Data12_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => X"FFFFFF0FFFFFFFCF"
    )
    port map (
      ADR0 => '1',
      ADR3 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR1 => dma_top_data_count(1),
      ADR5 => dma_top_data_count(0),
      ADR2 => ram_top_gp_ram_n0015_0_0,
      ADR4 => dma_top_CurrentState_FSM_FFd1_1646,
      O => N12
    );
  top_Data_FF_0 : X_FF
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => '0'
    )
    port map (
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0,
      CLK => NlwBufferSignal_top_Data_FF_0_CLK,
      I => top_Data_FF_0_dpot_1071,
      O => top_Data_FF(0),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Data_FF_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => X"EE00FE10EE00EE00"
    )
    port map (
      ADR1 => top_Transmitter_CurrentState_FSM_FFd2_1654,
      ADR0 => top_Transmitter_CurrentState_FSM_FFd1_1655,
      ADR4 => N12,
      ADR3 => top_Data_FF(0),
      ADR2 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR5 => top_Ack_in_1658,
      O => top_Data_FF_0_dpot_1071
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
      LOC => "SLICE_X7Y8",
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
      LOC => "SLICE_X7Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd2_CLK,
      I => top_Transmitter_CurrentState_FSM_FFd2_In_1091,
      O => top_Transmitter_CurrentState_FSM_FFd2_1654,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_CurrentState_FSM_FFd2_In : X_LUT6
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => X"77FF5050FFFF5050"
    )
    port map (
      ADR3 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR0 => top_Transmitter_CurrentState_FSM_FFd1_1655,
      ADR1 => top_Transmitter_data_count(2),
      ADR4 => top_Transmitter_CurrentState_FSM_FFd2_1654,
      ADR5 => N2,
      ADR2 => top_StartTX_1753,
      O => top_Transmitter_CurrentState_FSM_FFd2_In_1091
    );
  top_Transmitter_data_count_2 : X_FF
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_data_count_2_CLK,
      I => top_Transmitter_data_count_2_rstpot_1083,
      O => top_Transmitter_data_count(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_data_count_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => X"7FFF8000FFFF0000"
    )
    port map (
      ADR5 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR1 => top_Transmitter_data_count(1),
      ADR3 => top_Transmitter_data_count(0),
      ADR4 => top_Transmitter_data_count(2),
      ADR0 => top_Transmitter_CurrentState_FSM_FFd2_1654,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd1_1655,
      O => top_Transmitter_data_count_2_rstpot_1083
    );
  top_Transmitter_data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_data_count_1_CLK,
      I => top_Transmitter_data_count_1_rstpot_1105,
      O => top_Transmitter_data_count(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Transmitter_data_count_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => X"6AAAAAAA6AAAAAAA"
    )
    port map (
      ADR4 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR3 => top_Transmitter_CurrentState_FSM_FFd2_1654,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd1_1655,
      ADR0 => top_Transmitter_data_count(1),
      ADR1 => top_Transmitter_data_count(0),
      ADR5 => '1',
      O => top_Transmitter_data_count_1_rstpot_1105
    );
  top_Transmitter_data_count_0_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => X"3CCCCCCC"
    )
    port map (
      ADR4 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      ADR3 => top_Transmitter_CurrentState_FSM_FFd2_1654,
      ADR2 => top_Transmitter_CurrentState_FSM_FFd1_1655,
      ADR0 => '1',
      ADR1 => top_Transmitter_data_count(0),
      O => top_Transmitter_data_count_0_rstpot_1104
    );
  top_Transmitter_data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X7Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Transmitter_data_count_0_CLK,
      I => top_Transmitter_data_count_0_rstpot_1104,
      O => top_Transmitter_data_count_0_pack_12,
      RST => Reset_IBUF_0,
      SET => GND
    );
  databus_4_databus_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_1122,
      O => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_0
    );
  databus_4_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y9",
      INIT => X"FFEFF3A3EFEFA3A3"
    )
    port map (
      ADR2 => dma_top_CurrentState_FSM_FFd1_1646,
      ADR5 => dma_top_data_count(0),
      ADR3 => dma_top_data_count(1),
      ADR0 => data_out(4),
      ADR1 => oe,
      ADR4 => ram_top_gp_ram_n0015_4_0,
      O => databus(4)
    );
  databus_7_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y9",
      INIT => X"FFF0FFFFFF808F8F"
    )
    port map (
      ADR2 => dma_top_CurrentState_FSM_FFd1_1646,
      ADR0 => dma_top_data_count(0),
      ADR1 => dma_top_data_count(1),
      ADR5 => data_out(7),
      ADR4 => oe,
      ADR3 => ram_top_gp_ram_n0015_7_0,
      O => databus(7)
    );
  oeLogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y9",
      INIT => X"FFBFFFBFFFBFFFBF"
    )
    port map (
      ADR4 => '1',
      ADR0 => dma_top_data_count(0),
      ADR1 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR2 => dma_top_data_count(1),
      ADR3 => dma_top_CurrentState_FSM_FFd2_1660,
      ADR5 => '1',
      O => oe
    );
  top_Valid_D_TX_RDY_i_AND_20_o1_cepot : X_LUT5
    generic map(
      LOC => "SLICE_X7Y9",
      INIT => X"008C0000"
    )
    port map (
      ADR4 => dma_top_TX_RDY_ACK_out_AND_21_o,
      ADR0 => dma_top_data_count(0),
      ADR1 => dma_top_CurrentState_FSM_FFd3_1657,
      ADR2 => dma_top_data_count(1),
      ADR3 => dma_top_CurrentState_FSM_FFd2_1660,
      O => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_1122
    );
  databus_0_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y9",
      INIT => X"FFCCFFFFECCCA0FF"
    )
    port map (
      ADR3 => dma_top_CurrentState_FSM_FFd1_1646,
      ADR2 => dma_top_data_count(0),
      ADR0 => dma_top_data_count(1),
      ADR5 => data_out(0),
      ADR4 => oe,
      ADR1 => ram_top_gp_ram_n0015_0_0,
      O => databus(0)
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_1145,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_0
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X7Y15",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_1820,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X7Y15",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_1711,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X7Y15",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_CLK,
      I => '0',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_1821,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y15",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_1820,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_rt_1143
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN : X_FF
    generic map(
      LOC => "SLICE_X7Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_rt_1143,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_1145,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3 : X_FF
    generic map(
      LOC => "SLICE_X7Y16",
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
      LOC => "SLICE_X7Y16",
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
      LOC => "SLICE_X7Y16",
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
      LOC => "SLICE_X7Y16",
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
      LOC => "SLICE_X7Y16",
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
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_9 : X_FF
    generic map(
      LOC => "SLICE_X7Y17",
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
      LOC => "SLICE_X7Y17",
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
  top_Shift_Q_7 : X_FF
    generic map(
      LOC => "SLICE_X8Y13",
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
      LOC => "SLICE_X8Y13",
      INIT => X"FFFF7F7F80800000"
    )
    port map (
      ADR3 => '1',
      ADR1 => top_Receiver_data_count(0),
      ADR2 => top_Receiver_data_count(1),
      ADR5 => top_Shift_Q(7),
      ADR0 => top_Receiver_data_count(2),
      ADR4 => top_Code_out,
      O => top_Shift_Q_7_D_MUX_25_o
    );
  top_Receiver_Mmux_Code_out11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y13",
      INIT => X"0008333B00080008"
    )
    port map (
      ADR0 => top_Receiver_width_count(5),
      ADR1 => top_Receiver_width_count(7),
      ADR2 => N8,
      ADR3 => N37,
      ADR5 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      ADR4 => N38_0,
      O => top_Code_out
    );
  top_Receiver_Mmux_Code_out11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y13",
      INIT => X"FFFF7FFFFFFFFFFF"
    )
    port map (
      ADR2 => top_LineRD_in_1676,
      ADR4 => top_Receiver_width_count(4),
      ADR5 => top_Receiver_width_count(2),
      ADR1 => top_Receiver_width_count(3),
      ADR3 => top_Receiver_CurrentState_FSM_FFd1_1677,
      ADR0 => top_Receiver_CurrentState_FSM_FFd2_1675,
      O => N37
    );
  top_Receiver_Mmux_Store_out11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y14",
      INIT => X"0000000000100000"
    )
    port map (
      ADR2 => top_Receiver_width_count(6),
      ADR0 => top_Receiver_width_count(7),
      ADR1 => top_Receiver_width_count(3),
      ADR5 => top_Receiver_CurrentState_FSM_FFd2_1675,
      ADR3 => N30,
      ADR4 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      O => top_Fifo_write
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_ram_wr_en_i1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y14",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => top_Fifo_write,
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_1697,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_ram_wr_en
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y18",
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
      LOC => "SLICE_X9Y4",
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
      LOC => "SLICE_X9Y4",
      INIT => X"FFFF7FFFFFFFFFFF"
    )
    port map (
      ADR3 => top_Transmitter_width_count(5),
      ADR2 => top_Transmitter_width_count(3),
      ADR0 => top_Transmitter_width_count(7),
      ADR1 => top_Transmitter_width_count(2),
      ADR4 => N4,
      ADR5 => top_Transmitter_width_count(1),
      O => top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv
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
      O => top_LineRD_in_1676,
      SET => Reset_IBUF_0,
      RST => GND
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
      LOC => "SLICE_X9Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd2_CLK,
      I => top_Receiver_CurrentState_FSM_FFd2_In_1237,
      O => top_Receiver_CurrentState_FSM_FFd2_1675,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_CurrentState_FSM_FFd2_In : X_LUT6
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => X"77FFFFFF05050505"
    )
    port map (
      ADR4 => top_Receiver_data_count(0),
      ADR0 => top_Receiver_CurrentState_FSM_FFd1_1677,
      ADR1 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR5 => top_Receiver_CurrentState_FSM_FFd2_1675,
      ADR3 => N28_0,
      ADR2 => top_LineRD_in_1676,
      O => top_Receiver_CurrentState_FSM_FFd2_In_1237
    );
  top_Receiver_CurrentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_CurrentState_FSM_FFd1_CLK,
      I => top_Receiver_CurrentState_FSM_FFd1_In,
      O => top_Receiver_CurrentState_FSM_FFd1_1677,
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_CurrentState_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => X"B2F0B2F0B2F0B2F0"
    )
    port map (
      ADR4 => '1',
      ADR0 => top_Receiver_CurrentState_FSM_FFd2_1675,
      ADR1 => top_LineRD_in_1676,
      ADR2 => top_Receiver_CurrentState_FSM_FFd1_1677,
      ADR3 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      ADR5 => '1',
      O => top_Receiver_CurrentState_FSM_FFd1_In
    );
  top_Receiver_width_count_7_PWR_7_o_equal_4_o_7_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => X"A0A00000"
    )
    port map (
      ADR4 => top_Receiver_width_count(7),
      ADR0 => top_Receiver_CurrentState_FSM_FFd2_1675,
      ADR3 => '1',
      ADR2 => top_Receiver_CurrentState_FSM_FFd1_1677,
      ADR1 => '1',
      O => N44_pack_7
    );
  top_Receiver_width_count_7_GND_7_o_equal_8_o_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => X"0000000030003000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => top_Receiver_width_count(3),
      ADR2 => top_Receiver_width_count(6),
      ADR1 => top_Receiver_width_count(7),
      ADR3 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      O => top_Receiver_width_count_7_GND_7_o_equal_8_o
    );
  top_Receiver_Valid_out1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => X"0000080000000000"
    )
    port map (
      ADR3 => top_Receiver_width_count(5),
      ADR4 => top_Receiver_width_count(4),
      ADR5 => top_Receiver_width_count(2),
      ADR0 => top_Receiver_width_count(3),
      ADR2 => N8,
      ADR1 => N44,
      O => top_Valid_out
    );
  N30_N30_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N38,
      O => N38_0
    );
  top_Receiver_width_count_7_GND_7_o_equal_8_o_7_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => X"00FF00FFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => top_LineRD_in_1676,
      ADR5 => top_Receiver_CurrentState_FSM_FFd1_1677,
      O => N30
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => X"EECCEECCEECCEECC"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => top_Receiver_width_count(3),
      ADR3 => top_Receiver_CurrentState_FSM_FFd1_1677,
      ADR0 => top_Receiver_CurrentState_FSM_FFd2_1675,
      ADR5 => '1',
      O => N35
    );
  top_Receiver_Mmux_Code_out11_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => X"EFFFFFFF"
    )
    port map (
      ADR4 => top_Receiver_width_count(6),
      ADR2 => top_LineRD_in_1676,
      ADR1 => top_Receiver_width_count(3),
      ADR3 => top_Receiver_CurrentState_FSM_FFd1_1677,
      ADR0 => top_Receiver_CurrentState_FSM_FFd2_1675,
      O => N38
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
      LOC => "SLICE_X9Y16",
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
      LOC => "SLICE_X9Y16",
      INIT => X"FF7F0080FFFF0000"
    )
    port map (
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(7),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_7_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT411 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y16",
      INIT => X"BFBFBFBFBFBFBFBF"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y16",
      INIT => X"9C9C9C9C"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_2_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y16",
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
      LOC => "SLICE_X9Y16",
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
      LOC => "SLICE_X9Y16",
      INIT => X"FFFF77FF00008800"
    )
    port map (
      ADR2 => '1',
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(6),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
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
      LOC => "SLICE_X9Y17",
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
      LOC => "SLICE_X9Y17",
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
      LOC => "SLICE_X9Y17",
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
      LOC => "SLICE_X9Y17",
      INIT => X"F0B4F0F0F0F0F0F0"
    )
    port map (
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(8),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      ADR3 => top_Internal_memory_BU2_N2,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_8_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9 : X_FF
    generic map(
      LOC => "SLICE_X9Y17",
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
      LOC => "SLICE_X9Y17",
      INIT => X"EFFFFFFF10000000"
    )
    port map (
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(9),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT41,
      ADR1 => top_Internal_memory_BU2_N4,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_9_Q
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
      LOC => "SLICE_X9Y18",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_CLK,
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_GND_11_o_MUX_1_o,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_1736,
      SET => Reset_IBUF_0,
      RST => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_Mmux_wr_rst_asreg_GND_11_o_MUX_1_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y18",
      INIT => X"3300330033003300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_1736,
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_1735,
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_GND_11_o_MUX_1_o
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb1 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y18",
      INIT => X"0000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_1737,
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_1736,
      ADR2 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X9Y19",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_1737,
      RST => GND,
      SET => GND
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X9Y19",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_CLK,
      I => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_IN,
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_1735,
      RST => GND,
      SET => GND
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
      LOC => "SLICE_X10Y8"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram8_F7_B_1330,
      IB => ram_top_gp_ram_Mram_contents_ram8_F7_A_1331,
      O => ram_top_gp_ram_n0015(7),
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram8_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X10Y8"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram8_D_1333,
      IB => ram_top_gp_ram_Mram_contents_ram8_C_1343,
      O => ram_top_gp_ram_Mram_contents_ram8_F7_B_1330,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram8_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X10Y8"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram8_B_1351,
      IB => ram_top_gp_ram_Mram_contents_ram8_A_1359,
      O => ram_top_gp_ram_Mram_contents_ram8_F7_A_1331,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram8_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y8",
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
      O => ram_top_gp_ram_Mram_contents_ram8_D_1333,
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
      LOC => "SLICE_X10Y8",
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
      O => ram_top_gp_ram_Mram_contents_ram8_C_1343,
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
      LOC => "SLICE_X10Y8",
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
      O => ram_top_gp_ram_Mram_contents_ram8_B_1351,
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
      LOC => "SLICE_X10Y8",
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
      O => ram_top_gp_ram_Mram_contents_ram8_A_1359,
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
      LOC => "SLICE_X10Y9"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram5_F7_B_1367,
      IB => ram_top_gp_ram_Mram_contents_ram5_F7_A_1368,
      O => ram_top_gp_ram_n0015(4),
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram5_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X10Y9"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram5_D_1370,
      IB => ram_top_gp_ram_Mram_contents_ram5_C_1380,
      O => ram_top_gp_ram_Mram_contents_ram5_F7_B_1367,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram5_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X10Y9"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram5_B_1388,
      IB => ram_top_gp_ram_Mram_contents_ram5_A_1396,
      O => ram_top_gp_ram_Mram_contents_ram5_F7_A_1368,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram5_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y9",
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
      O => ram_top_gp_ram_Mram_contents_ram5_D_1370,
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
      LOC => "SLICE_X10Y9",
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
      O => ram_top_gp_ram_Mram_contents_ram5_C_1380,
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
      LOC => "SLICE_X10Y9",
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
      O => ram_top_gp_ram_Mram_contents_ram5_B_1388,
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
      LOC => "SLICE_X10Y9",
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
      O => ram_top_gp_ram_Mram_contents_ram5_A_1396,
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
      LOC => "SLICE_X10Y10"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram7_F7_B_1404,
      IB => ram_top_gp_ram_Mram_contents_ram7_F7_A_1405,
      O => ram_top_gp_ram_n0015(6),
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram7_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X10Y10"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram7_D_1407,
      IB => ram_top_gp_ram_Mram_contents_ram7_C_1417,
      O => ram_top_gp_ram_Mram_contents_ram7_F7_B_1404,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram7_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X10Y10"
    )
    port map (
      IA => ram_top_gp_ram_Mram_contents_ram7_B_1425,
      IB => ram_top_gp_ram_Mram_contents_ram7_A_1433,
      O => ram_top_gp_ram_Mram_contents_ram7_F7_A_1405,
      SEL => address(2)
    );
  ram_top_gp_ram_Mram_contents_ram7_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y10",
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
      O => ram_top_gp_ram_Mram_contents_ram7_D_1407,
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
      LOC => "SLICE_X10Y10",
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
      O => ram_top_gp_ram_Mram_contents_ram7_C_1417,
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
      LOC => "SLICE_X10Y10",
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
      O => ram_top_gp_ram_Mram_contents_ram7_B_1425,
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
      LOC => "SLICE_X10Y10",
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
      O => ram_top_gp_ram_Mram_contents_ram7_A_1433,
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
      LOC => "SLICE_X10Y13",
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
      LOC => "SLICE_X10Y13",
      INIT => X"D0F0F0F0C000C000"
    )
    port map (
      ADR0 => top_Receiver_width_count(4),
      ADR3 => top_Receiver_width_count(3),
      ADR4 => N6,
      ADR5 => top_Receiver_width_count(5),
      ADR1 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      ADR2 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q
    );
  top_Receiver_width_count_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y13",
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
      LOC => "SLICE_X10Y13",
      INIT => X"2AAA8000AAAA0000"
    )
    port map (
      ADR1 => top_Receiver_width_count(1),
      ADR2 => top_Receiver_width_count(0),
      ADR3 => top_Receiver_width_count(2),
      ADR4 => top_Receiver_width_count(4),
      ADR5 => top_Receiver_width_count(3),
      ADR0 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q
    );
  top_Receiver_width_count_3 : X_FF
    generic map(
      LOC => "SLICE_X10Y13",
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
      LOC => "SLICE_X10Y13",
      INIT => X"7F0080007F008000"
    )
    port map (
      ADR2 => top_Receiver_width_count(1),
      ADR1 => top_Receiver_width_count(0),
      ADR0 => top_Receiver_width_count(2),
      ADR4 => top_Receiver_width_count(3),
      ADR3 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      ADR5 => '1',
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y13",
      INIT => X"6A006A00"
    )
    port map (
      ADR2 => top_Receiver_width_count(1),
      ADR1 => top_Receiver_width_count(0),
      ADR0 => top_Receiver_width_count(2),
      ADR4 => '1',
      ADR3 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q
    );
  top_Receiver_width_count_2 : X_FF
    generic map(
      LOC => "SLICE_X10Y13",
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
      LOC => "SLICE_X10Y13",
      INIT => X"EFFFEFFFEFFF4555"
    )
    port map (
      ADR2 => top_Receiver_width_count(6),
      ADR0 => top_Receiver_width_count(7),
      ADR4 => N8,
      ADR1 => N35,
      ADR5 => N34,
      ADR3 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      O => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51
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
      LOC => "SLICE_X10Y14",
      INIT => X"0000800000000000"
    )
    port map (
      ADR3 => top_Receiver_width_count(7),
      ADR5 => top_Receiver_width_count(2),
      ADR0 => top_Receiver_width_count(3),
      ADR1 => top_Receiver_data_count(1),
      ADR2 => top_Receiver_width_count(5),
      ADR4 => top_Receiver_width_count(4),
      O => N50
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT6_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y14",
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
      LOC => "SLICE_X10Y14",
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
      LOC => "SLICE_X10Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_data_count_2_CLK,
      I => top_Receiver_data_count_2_rstpot_1479,
      O => top_Receiver_data_count(2),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_data_count_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"FFFF00007FFF8000"
    )
    port map (
      ADR0 => N50,
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_1677,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_1675,
      ADR4 => top_Receiver_data_count(2),
      ADR3 => top_Receiver_data_count(0),
      ADR5 => N8,
      O => top_Receiver_data_count_2_rstpot_1479
    );
  top_Receiver_data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_data_count_1_CLK,
      I => top_Receiver_data_count_1_rstpot_1486,
      O => top_Receiver_data_count(1),
      RST => Reset_IBUF_0,
      SET => GND
    );
  top_Receiver_data_count_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"7FFF80007FFF8000"
    )
    port map (
      ADR2 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_1677,
      ADR3 => top_Receiver_CurrentState_FSM_FFd2_1675,
      ADR4 => top_Receiver_data_count(1),
      ADR0 => top_Receiver_data_count(0),
      ADR5 => '1',
      O => top_Receiver_data_count_1_rstpot_1486
    );
  top_Receiver_data_count_0_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"6AAA6AAA"
    )
    port map (
      ADR2 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_1677,
      ADR3 => top_Receiver_CurrentState_FSM_FFd2_1675,
      ADR4 => '1',
      ADR0 => top_Receiver_data_count(0),
      O => top_Receiver_data_count_0_rstpot_1485
    );
  top_Receiver_data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_top_Receiver_data_count_0_CLK,
      I => top_Receiver_data_count_0_rstpot_1485,
      O => top_Receiver_data_count_0_pack_6,
      RST => Reset_IBUF_0,
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
      LOC => "SLICE_X10Y16",
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
      LOC => "SLICE_X10Y16",
      INIT => X"FF7F0080FFFF0000"
    )
    port map (
      ADR5 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(5),
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_5_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3 : X_FF
    generic map(
      LOC => "SLICE_X10Y16",
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
      LOC => "SLICE_X10Y16",
      INIT => X"F0F03CF0F0F03CF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => '1',
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_3_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_9_GND_57_o_mux_2_OUT51 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y16",
      INIT => X"AAAA6AAA"
    )
    port map (
      ADR0 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(4),
      ADR1 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR3 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR2 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR4 => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_9_GND_57_o_mux_2_OUT_4_Q
    );
  top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y16",
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
      LOC => "SLICE_X10Y16",
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
      LOC => "SLICE_X10Y16",
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
  top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_131 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y13",
      INIT => X"2020000000000000"
    )
    port map (
      ADR3 => '1',
      ADR5 => top_Receiver_width_count(1),
      ADR1 => top_Receiver_width_count(5),
      ADR4 => top_Receiver_width_count(0),
      ADR2 => top_Receiver_width_count(4),
      ADR0 => top_Receiver_width_count(2),
      O => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y13",
      INIT => X"FFFFFFFF7FFFFFFF"
    )
    port map (
      ADR2 => top_Receiver_width_count(5),
      ADR1 => top_Receiver_width_count(2),
      ADR4 => top_Receiver_width_count(3),
      ADR3 => top_Receiver_CurrentState_FSM_FFd2_1675,
      ADR5 => top_Receiver_width_count(4),
      ADR0 => top_Receiver_CurrentState_FSM_FFd1_1677,
      O => N34
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
      LOC => "SLICE_X12Y13",
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
      LOC => "SLICE_X12Y13",
      INIT => X"0000407F407F0000"
    )
    port map (
      ADR3 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      ADR1 => top_Receiver_CurrentState_FSM_FFd2_1675,
      ADR2 => top_Receiver_CurrentState_FSM_FFd1_1677,
      ADR4 => top_Receiver_width_count(1),
      ADR0 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR5 => top_Receiver_width_count(0),
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q
    );
  top_Receiver_width_count_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y13",
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
      LOC => "SLICE_X12Y13",
      INIT => X"0555555505555555"
    )
    port map (
      ADR1 => '1',
      ADR3 => top_Receiver_CurrentState_FSM_FFd1_1677,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_1675,
      ADR0 => top_Receiver_width_count(0),
      ADR4 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR5 => '1',
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q
    );
  top_Receiver_n0066_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"FFF0FFF0"
    )
    port map (
      ADR0 => '1',
      ADR3 => top_Receiver_CurrentState_FSM_FFd1_1677,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_1675,
      ADR1 => '1',
      ADR4 => '1',
      O => top_Receiver_n0066_inv_pack_6
    );
  top_Receiver_width_count_7_PWR_7_o_equal_4_o_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"0000000008000000"
    )
    port map (
      ADR4 => top_Receiver_width_count(5),
      ADR3 => top_Receiver_width_count(3),
      ADR2 => top_Receiver_width_count(4),
      ADR0 => top_Receiver_width_count(7),
      ADR1 => top_Receiver_width_count(2),
      ADR5 => N8,
      O => top_Receiver_width_count_7_PWR_7_o_equal_4_o
    );
  top_Receiver_width_count_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y13",
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
      LOC => "SLICE_X13Y13",
      INIT => X"FF0F00F000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => top_Receiver_width_count(6),
      ADR4 => top_Receiver_width_count(7),
      ADR3 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11,
      ADR5 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q
    );
  top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_111 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR4 => top_Receiver_width_count(5),
      ADR5 => top_Receiver_width_count(2),
      ADR1 => top_Receiver_width_count(3),
      ADR0 => top_Receiver_width_count(0),
      ADR3 => top_Receiver_width_count(1),
      ADR2 => top_Receiver_width_count(4),
      O => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11
    );
  top_Receiver_width_count_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y13",
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
      LOC => "SLICE_X13Y13",
      INIT => X"15D50000000015D5"
    )
    port map (
      ADR0 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      ADR2 => top_Receiver_CurrentState_FSM_FFd2_1675,
      ADR1 => top_Receiver_CurrentState_FSM_FFd1_1677,
      ADR5 => top_Receiver_width_count(6),
      ADR3 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      ADR4 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q
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
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(5),
      O => 
NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_8_Q

    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(4),
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
      I => Ready_OBUF_1758,
      O => NlwBufferSignal_Ready_OBUF_I
    );
  NlwBufferBlock_DMA_RQ_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DMA_RQ_OBUF_1766,
      O => NlwBufferSignal_DMA_RQ_OBUF_I
    );
  NlwBufferBlock_TD_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TD_OBUF_1733,
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_6_CLK
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_d1_9_CLK
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
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_1764,
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
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_1763,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_IN
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_rpntr_gc0_count_9_CLK
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_CLK
    );
  NlwBufferBlock_dma_top_CurrentState_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_dma_top_CurrentState_FSM_FFd3_CLK
    );
  NlwBufferBlock_dma_top_CurrentState_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_dma_top_CurrentState_FSM_FFd2_CLK
    );
  NlwBufferBlock_dma_top_CurrentState_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_dma_top_CurrentState_FSM_FFd1_CLK
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
  NlwBufferBlock_top_Ack_in_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Ack_in_CLK
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_32_o_MUX_14_o,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_IN
    );
  NlwBufferBlock_top_Transmitter_CurrentState_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Transmitter_CurrentState_FSM_FFd1_CLK
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK
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
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
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
      I => Clk_BUFGP,
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
  NlwBufferBlock_top_StartTX_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_StartTX_CLK
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
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_1711,
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
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_1821,
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
  NlwBufferBlock_top_Shift_Q_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Shift_Q_7_CLK
    );
  NlwBufferBlock_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK
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
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_1735,
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
      I => top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_1736,
      O => NlwBufferSignal_top_Internal_memory_BU2_U0_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_IN
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

