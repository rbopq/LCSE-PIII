--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: NEXYS_TOP_synthesis.vhd
-- /___/   /\     Timestamp: Mon Jan 18 23:37:43 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm NEXYS_TOP -w -dir netgen/synthesis -ofmt vhdl -sim NEXYS_TOP.ngc NEXYS_TOP_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: NEXYS_TOP.ngc
-- Output file	: C:\Users\rboq\Documents\LCSE\PRACTICAIII\LCSE-PIII\netgen\synthesis\NEXYS_TOP_synthesis.vhd
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


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

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
  component FIFO
    port (
      rd_en : in STD_LOGIC := 'X'; 
      wr_en : in STD_LOGIC := 'X'; 
      full : out STD_LOGIC; 
      empty : out STD_LOGIC; 
      clk : in STD_LOGIC := 'X'; 
      rst : in STD_LOGIC := 'X'; 
      dout : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      din : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
    );
  end component;
  signal Reset_IBUF_0 : STD_LOGIC; 
  signal Clk_BUFGP_1 : STD_LOGIC; 
  signal Send_IBUF_2 : STD_LOGIC; 
  signal RD_IBUF_3 : STD_LOGIC; 
  signal DMA_ACK_IBUF_4 : STD_LOGIC; 
  signal rst_nexys : STD_LOGIC; 
  signal top_Ack_in_6 : STD_LOGIC; 
  signal TD_OBUF_7 : STD_LOGIC; 
  signal empty : STD_LOGIC; 
  signal data_read : STD_LOGIC; 
  signal DMA_RQ_OBUF_10 : STD_LOGIC; 
  signal Ready_OBUF_11 : STD_LOGIC; 
  signal dma_top_Mcount_data_count1 : STD_LOGIC; 
  signal dma_top_Mcount_data_count : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_In : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_In : STD_LOGIC; 
  signal dma_top_CurrentState_2_PWR_12_o_Mux_21_o : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_20 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_21 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_22 : STD_LOGIC; 
  signal address_1_LogicTrst1 : STD_LOGIC; 
  signal top_Valid_D_INV_19_o : STD_LOGIC; 
  signal top_Valid_D_TX_RDY_i_AND_20_o : STD_LOGIC; 
  signal top_StartTX_27 : STD_LOGIC; 
  signal top_LineRD_in_28 : STD_LOGIC; 
  signal top_Fifo_write : STD_LOGIC; 
  signal top_Code_out : STD_LOGIC; 
  signal top_Valid_out : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_7_Q_40 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count7 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count6 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_5_Q_45 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count5 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count4 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_3_Q_50 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count3 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_2_Q_53 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count2 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_1_Q_56 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count1 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count : STD_LOGIC; 
  signal top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd2_61 : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd2_In_63 : STD_LOGIC; 
  signal top_Transmitter_width_count_7_PWR_6_o_equal_16_o : STD_LOGIC; 
  signal top_Transmitter_en_width_count : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd1_77 : STD_LOGIC; 
  signal top_Receiver_width_count_7_PWR_7_o_equal_4_o : STD_LOGIC; 
  signal top_Receiver_width_count_7_GND_7_o_equal_8_o : STD_LOGIC; 
  signal top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13 : STD_LOGIC; 
  signal top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11 : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd2_90 : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd2_In_92 : STD_LOGIC; 
  signal top_Receiver_n0066_inv : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd1_105 : STD_LOGIC; 
  signal top_Shift_Q_0_D_MUX_32_o : STD_LOGIC; 
  signal top_Shift_Q_1_D_MUX_31_o : STD_LOGIC; 
  signal top_Shift_Q_2_D_MUX_30_o : STD_LOGIC; 
  signal top_Shift_Q_3_D_MUX_29_o : STD_LOGIC; 
  signal top_Shift_Q_4_D_MUX_28_o : STD_LOGIC; 
  signal top_Shift_Q_5_D_MUX_27_o : STD_LOGIC; 
  signal top_Shift_Q_6_D_MUX_26_o : STD_LOGIC; 
  signal top_Shift_Q_7_D_MUX_25_o : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_In1_114 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal top_Transmitter_data_count_1_rstpot_134 : STD_LOGIC; 
  signal top_Transmitter_data_count_0_rstpot_135 : STD_LOGIC; 
  signal top_Receiver_data_count_1_rstpot_136 : STD_LOGIC; 
  signal top_Receiver_data_count_0_rstpot_137 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal top_Transmitter_data_count_2_rstpot_139 : STD_LOGIC; 
  signal top_Receiver_data_count_2_rstpot_140 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_cy_6_rt_142 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_cy_4_rt_143 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_cy_0_rt_144 : STD_LOGIC; 
  signal NLW_top_Internal_memory_full_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_dout_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_dout_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_dout_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_dout_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_dout_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_dout_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_dout_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_top_Internal_memory_dout_0_UNCONNECTED : STD_LOGIC; 
  signal dma_top_data_count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal ram_top_periph_ram_contents_ram : STD_LOGIC_VECTOR2 ( 0 downto 0 , 0 downto 0 ); 
  signal top_Shift_Q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Transmitter_Mcount_width_count_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal top_Transmitter_data_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal top_Transmitter_width_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Receiver_width_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Receiver_data_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => ram_top_periph_ram_contents_ram(0, 0)
    );
  dma_top_CurrentState_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => dma_top_CurrentState_FSM_FFd1_In,
      Q => dma_top_CurrentState_FSM_FFd1_22
    );
  dma_top_CurrentState_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => dma_top_CurrentState_FSM_FFd2_In,
      Q => dma_top_CurrentState_FSM_FFd2_21
    );
  dma_top_data_count_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => dma_top_CurrentState_2_PWR_12_o_Mux_21_o,
      CLR => Reset_IBUF_0,
      D => dma_top_Mcount_data_count1,
      Q => dma_top_data_count(1)
    );
  dma_top_data_count_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => dma_top_CurrentState_2_PWR_12_o_Mux_21_o,
      CLR => Reset_IBUF_0,
      D => dma_top_Mcount_data_count,
      Q => dma_top_data_count(0)
    );
  dma_top_CurrentState_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => dma_top_CurrentState_FSM_FFd3_In,
      Q => dma_top_CurrentState_FSM_FFd3_20
    );
  top_StartTX : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => rst_nexys,
      D => top_Valid_D_TX_RDY_i_AND_20_o,
      Q => top_StartTX_27
    );
  top_LineRD_in : FDP
    port map (
      C => Clk_BUFGP_1,
      D => RD_IBUF_3,
      PRE => Reset_IBUF_0,
      Q => top_LineRD_in_28
    );
  top_Ack_in : FDP
    port map (
      C => Clk_BUFGP_1,
      D => top_Valid_D_INV_19_o,
      PRE => Reset_IBUF_0,
      Q => top_Ack_in_6
    );
  top_Transmitter_width_count_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Transmitter_en_width_count,
      CLR => Reset_IBUF_0,
      D => top_Transmitter_Mcount_width_count7,
      Q => top_Transmitter_width_count(7)
    );
  top_Transmitter_width_count_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Transmitter_en_width_count,
      CLR => Reset_IBUF_0,
      D => top_Transmitter_Mcount_width_count6,
      Q => top_Transmitter_width_count(6)
    );
  top_Transmitter_width_count_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Transmitter_en_width_count,
      CLR => Reset_IBUF_0,
      D => top_Transmitter_Mcount_width_count5,
      Q => top_Transmitter_width_count(5)
    );
  top_Transmitter_width_count_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Transmitter_en_width_count,
      CLR => Reset_IBUF_0,
      D => top_Transmitter_Mcount_width_count4,
      Q => top_Transmitter_width_count(4)
    );
  top_Transmitter_width_count_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Transmitter_en_width_count,
      CLR => Reset_IBUF_0,
      D => top_Transmitter_Mcount_width_count3,
      Q => top_Transmitter_width_count(3)
    );
  top_Transmitter_width_count_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Transmitter_en_width_count,
      CLR => Reset_IBUF_0,
      D => top_Transmitter_Mcount_width_count2,
      Q => top_Transmitter_width_count(2)
    );
  top_Transmitter_width_count_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Transmitter_en_width_count,
      CLR => Reset_IBUF_0,
      D => top_Transmitter_Mcount_width_count1,
      Q => top_Transmitter_width_count(1)
    );
  top_Transmitter_width_count_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Transmitter_en_width_count,
      CLR => Reset_IBUF_0,
      D => top_Transmitter_Mcount_width_count,
      Q => top_Transmitter_width_count(0)
    );
  top_Transmitter_CurrentState_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Transmitter_CurrentState_FSM_FFd2_In_63,
      Q => top_Transmitter_CurrentState_FSM_FFd2_61
    );
  top_Transmitter_CurrentState_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Transmitter_CurrentState_FSM_FFd1_In,
      Q => top_Transmitter_CurrentState_FSM_FFd1_77
    );
  top_Transmitter_Mcount_width_count_xor_7_Q : XORCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(6),
      LI => top_Transmitter_Mcount_width_count_lut_7_Q_40,
      O => top_Transmitter_Mcount_width_count7
    );
  top_Transmitter_Mcount_width_count_xor_6_Q : XORCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(5),
      LI => top_Transmitter_Mcount_width_count_cy_6_rt_142,
      O => top_Transmitter_Mcount_width_count6
    );
  top_Transmitter_Mcount_width_count_cy_6_Q : MUXCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(5),
      DI => ram_top_periph_ram_contents_ram(0, 0),
      S => top_Transmitter_Mcount_width_count_cy_6_rt_142,
      O => top_Transmitter_Mcount_width_count_cy(6)
    );
  top_Transmitter_Mcount_width_count_xor_5_Q : XORCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(4),
      LI => top_Transmitter_Mcount_width_count_lut_5_Q_45,
      O => top_Transmitter_Mcount_width_count5
    );
  top_Transmitter_Mcount_width_count_cy_5_Q : MUXCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(4),
      DI => ram_top_periph_ram_contents_ram(0, 0),
      S => top_Transmitter_Mcount_width_count_lut_5_Q_45,
      O => top_Transmitter_Mcount_width_count_cy(5)
    );
  top_Transmitter_Mcount_width_count_xor_4_Q : XORCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(3),
      LI => top_Transmitter_Mcount_width_count_cy_4_rt_143,
      O => top_Transmitter_Mcount_width_count4
    );
  top_Transmitter_Mcount_width_count_cy_4_Q : MUXCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(3),
      DI => ram_top_periph_ram_contents_ram(0, 0),
      S => top_Transmitter_Mcount_width_count_cy_4_rt_143,
      O => top_Transmitter_Mcount_width_count_cy(4)
    );
  top_Transmitter_Mcount_width_count_xor_3_Q : XORCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(2),
      LI => top_Transmitter_Mcount_width_count_lut_3_Q_50,
      O => top_Transmitter_Mcount_width_count3
    );
  top_Transmitter_Mcount_width_count_cy_3_Q : MUXCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(2),
      DI => ram_top_periph_ram_contents_ram(0, 0),
      S => top_Transmitter_Mcount_width_count_lut_3_Q_50,
      O => top_Transmitter_Mcount_width_count_cy(3)
    );
  top_Transmitter_Mcount_width_count_xor_2_Q : XORCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(1),
      LI => top_Transmitter_Mcount_width_count_lut_2_Q_53,
      O => top_Transmitter_Mcount_width_count2
    );
  top_Transmitter_Mcount_width_count_cy_2_Q : MUXCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(1),
      DI => ram_top_periph_ram_contents_ram(0, 0),
      S => top_Transmitter_Mcount_width_count_lut_2_Q_53,
      O => top_Transmitter_Mcount_width_count_cy(2)
    );
  top_Transmitter_Mcount_width_count_xor_1_Q : XORCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(0),
      LI => top_Transmitter_Mcount_width_count_lut_1_Q_56,
      O => top_Transmitter_Mcount_width_count1
    );
  top_Transmitter_Mcount_width_count_cy_1_Q : MUXCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(0),
      DI => ram_top_periph_ram_contents_ram(0, 0),
      S => top_Transmitter_Mcount_width_count_lut_1_Q_56,
      O => top_Transmitter_Mcount_width_count_cy(1)
    );
  top_Transmitter_Mcount_width_count_xor_0_Q : XORCY
    port map (
      CI => top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv,
      LI => top_Transmitter_Mcount_width_count_cy_0_rt_144,
      O => top_Transmitter_Mcount_width_count
    );
  top_Transmitter_Mcount_width_count_cy_0_Q : MUXCY
    port map (
      CI => top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv,
      DI => ram_top_periph_ram_contents_ram(0, 0),
      S => top_Transmitter_Mcount_width_count_cy_0_rt_144,
      O => top_Transmitter_Mcount_width_count_cy(0)
    );
  top_Receiver_CurrentState_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Receiver_CurrentState_FSM_FFd1_In,
      Q => top_Receiver_CurrentState_FSM_FFd1_105
    );
  top_Receiver_CurrentState_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Receiver_CurrentState_FSM_FFd2_In_92,
      Q => top_Receiver_CurrentState_FSM_FFd2_90
    );
  top_Receiver_width_count_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Receiver_n0066_inv,
      CLR => Reset_IBUF_0,
      D => top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q,
      Q => top_Receiver_width_count(7)
    );
  top_Receiver_width_count_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Receiver_n0066_inv,
      CLR => Reset_IBUF_0,
      D => top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q,
      Q => top_Receiver_width_count(6)
    );
  top_Receiver_width_count_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Receiver_n0066_inv,
      CLR => Reset_IBUF_0,
      D => top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q,
      Q => top_Receiver_width_count(5)
    );
  top_Receiver_width_count_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Receiver_n0066_inv,
      CLR => Reset_IBUF_0,
      D => top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q,
      Q => top_Receiver_width_count(4)
    );
  top_Receiver_width_count_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Receiver_n0066_inv,
      CLR => Reset_IBUF_0,
      D => top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q,
      Q => top_Receiver_width_count(3)
    );
  top_Receiver_width_count_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Receiver_n0066_inv,
      CLR => Reset_IBUF_0,
      D => top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q,
      Q => top_Receiver_width_count(2)
    );
  top_Receiver_width_count_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Receiver_n0066_inv,
      CLR => Reset_IBUF_0,
      D => top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q,
      Q => top_Receiver_width_count(1)
    );
  top_Receiver_width_count_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Receiver_n0066_inv,
      CLR => Reset_IBUF_0,
      D => top_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q,
      Q => top_Receiver_width_count(0)
    );
  top_Shift_Q_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Valid_out,
      CLR => Reset_IBUF_0,
      D => top_Shift_Q_7_D_MUX_25_o,
      Q => top_Shift_Q(7)
    );
  top_Shift_Q_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Valid_out,
      CLR => Reset_IBUF_0,
      D => top_Shift_Q_6_D_MUX_26_o,
      Q => top_Shift_Q(6)
    );
  top_Shift_Q_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Valid_out,
      CLR => Reset_IBUF_0,
      D => top_Shift_Q_5_D_MUX_27_o,
      Q => top_Shift_Q(5)
    );
  top_Shift_Q_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Valid_out,
      CLR => Reset_IBUF_0,
      D => top_Shift_Q_4_D_MUX_28_o,
      Q => top_Shift_Q(4)
    );
  top_Shift_Q_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Valid_out,
      CLR => Reset_IBUF_0,
      D => top_Shift_Q_3_D_MUX_29_o,
      Q => top_Shift_Q(3)
    );
  top_Shift_Q_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Valid_out,
      CLR => Reset_IBUF_0,
      D => top_Shift_Q_2_D_MUX_30_o,
      Q => top_Shift_Q(2)
    );
  top_Shift_Q_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Valid_out,
      CLR => Reset_IBUF_0,
      D => top_Shift_Q_1_D_MUX_31_o,
      Q => top_Shift_Q(1)
    );
  top_Shift_Q_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Valid_out,
      CLR => Reset_IBUF_0,
      D => top_Shift_Q_0_D_MUX_32_o,
      Q => top_Shift_Q(0)
    );
  dma_top_CurrentState_DMA_RQ1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd3_20,
      I1 => dma_top_CurrentState_FSM_FFd2_21,
      O => DMA_RQ_OBUF_10
    );
  dma_top_Mcount_data_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => dma_top_data_count(1),
      I1 => dma_top_data_count(0),
      O => dma_top_Mcount_data_count1
    );
  dma_top_Mmux_CurrentState_2_PWR_12_o_Mux_21_o11 : LUT4
    generic map(
      INIT => X"FF45"
    )
    port map (
      I0 => address_1_LogicTrst1,
      I1 => dma_top_data_count(0),
      I2 => dma_top_data_count(1),
      I3 => dma_top_CurrentState_FSM_FFd1_22,
      O => dma_top_CurrentState_2_PWR_12_o_Mux_21_o
    );
  dma_top_CurrentState_FSM_FFd1_In1 : LUT5
    generic map(
      INIT => X"FF2A2A2A"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd1_22,
      I1 => dma_top_data_count(0),
      I2 => dma_top_data_count(1),
      I3 => dma_top_CurrentState_FSM_FFd3_20,
      I4 => dma_top_CurrentState_FSM_FFd2_21,
      O => dma_top_CurrentState_FSM_FFd1_In
    );
  dma_top_Mmux_Data_Read11 : LUT5
    generic map(
      INIT => X"7F2A2A2A"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd1_22,
      I1 => dma_top_data_count(0),
      I2 => dma_top_data_count(1),
      I3 => dma_top_CurrentState_FSM_FFd3_20,
      I4 => dma_top_CurrentState_FSM_FFd2_21,
      O => data_read
    );
  dma_top_CurrentState_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"5501"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd3_20,
      I1 => dma_top_CurrentState_FSM_FFd1_22,
      I2 => empty,
      I3 => dma_top_CurrentState_FSM_FFd2_21,
      O => dma_top_CurrentState_FSM_FFd2_In
    );
  dma_top_Mmux_READY11 : LUT4
    generic map(
      INIT => X"F4FF"
    )
    port map (
      I0 => dma_top_data_count(0),
      I1 => dma_top_data_count(1),
      I2 => dma_top_CurrentState_FSM_FFd2_21,
      I3 => dma_top_CurrentState_FSM_FFd3_20,
      O => Ready_OBUF_11
    );
  top_Transmitter_CurrentState_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      I1 => top_Transmitter_CurrentState_FSM_FFd1_77,
      I2 => top_Transmitter_CurrentState_FSM_FFd2_61,
      O => top_Transmitter_CurrentState_FSM_FFd1_In
    );
  top_Transmitter_CurrentState_n0054_1_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => top_Transmitter_CurrentState_FSM_FFd1_77,
      I1 => top_Transmitter_CurrentState_FSM_FFd2_61,
      O => top_Transmitter_en_width_count
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT11 : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => top_Receiver_width_count(0),
      I1 => top_Receiver_CurrentState_FSM_FFd1_105,
      I2 => top_Receiver_CurrentState_FSM_FFd2_90,
      I3 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q
    );
  top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_111 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => top_Receiver_width_count(5),
      I1 => top_Receiver_width_count(2),
      I2 => top_Receiver_width_count(3),
      I3 => top_Receiver_width_count(0),
      I4 => top_Receiver_width_count(1),
      I5 => top_Receiver_width_count(4),
      O => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11
    );
  top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_131 : LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => top_Receiver_width_count(5),
      I1 => top_Receiver_width_count(1),
      I2 => top_Receiver_width_count(4),
      I3 => top_Receiver_width_count(0),
      I4 => top_Receiver_width_count(2),
      O => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13
    );
  top_Receiver_width_count_7_GND_7_o_equal_8_o_7_1 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => top_Receiver_width_count(3),
      I1 => top_Receiver_width_count(6),
      I2 => top_Receiver_width_count(7),
      I3 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      O => top_Receiver_width_count_7_GND_7_o_equal_8_o
    );
  top_Receiver_CurrentState_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"8EAA"
    )
    port map (
      I0 => top_Receiver_CurrentState_FSM_FFd1_105,
      I1 => top_Receiver_CurrentState_FSM_FFd2_90,
      I2 => top_LineRD_in_28,
      I3 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_CurrentState_FSM_FFd1_In
    );
  top_Receiver_n0066_inv1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => top_Receiver_CurrentState_FSM_FFd2_90,
      I1 => top_Receiver_CurrentState_FSM_FFd1_105,
      O => top_Receiver_n0066_inv
    );
  top_Shift_Mmux_Q_7_D_MUX_25_o11 : LUT5
    generic map(
      INIT => X"EAAA2AAA"
    )
    port map (
      I0 => top_Shift_Q(7),
      I1 => top_Receiver_data_count(0),
      I2 => top_Receiver_data_count(1),
      I3 => top_Receiver_data_count(2),
      I4 => top_Code_out,
      O => top_Shift_Q_7_D_MUX_25_o
    );
  top_Shift_Mmux_Q_6_D_MUX_26_o11 : LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      I0 => top_Shift_Q(6),
      I1 => top_Receiver_data_count(0),
      I2 => top_Receiver_data_count(1),
      I3 => top_Receiver_data_count(2),
      I4 => top_Code_out,
      O => top_Shift_Q_6_D_MUX_26_o
    );
  top_Shift_Mmux_Q_5_D_MUX_27_o11 : LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      I0 => top_Shift_Q(5),
      I1 => top_Receiver_data_count(1),
      I2 => top_Receiver_data_count(2),
      I3 => top_Receiver_data_count(0),
      I4 => top_Code_out,
      O => top_Shift_Q_5_D_MUX_27_o
    );
  top_Shift_Mmux_Q_4_D_MUX_28_o11 : LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
    port map (
      I0 => top_Shift_Q(4),
      I1 => top_Receiver_data_count(0),
      I2 => top_Receiver_data_count(1),
      I3 => top_Receiver_data_count(2),
      I4 => top_Code_out,
      O => top_Shift_Q_4_D_MUX_28_o
    );
  top_Shift_Mmux_Q_2_D_MUX_30_o11 : LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
    port map (
      I0 => top_Shift_Q(2),
      I1 => top_Receiver_data_count(2),
      I2 => top_Receiver_data_count(0),
      I3 => top_Receiver_data_count(1),
      I4 => top_Code_out,
      O => top_Shift_Q_2_D_MUX_30_o
    );
  top_Shift_Mmux_Q_1_D_MUX_31_o11 : LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
    port map (
      I0 => top_Shift_Q(1),
      I1 => top_Receiver_data_count(2),
      I2 => top_Receiver_data_count(1),
      I3 => top_Receiver_data_count(0),
      I4 => top_Code_out,
      O => top_Shift_Q_1_D_MUX_31_o
    );
  top_Shift_Mmux_Q_0_D_MUX_32_o11 : LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
    port map (
      I0 => top_Shift_Q(0),
      I1 => top_Receiver_data_count(0),
      I2 => top_Receiver_data_count(1),
      I3 => top_Receiver_data_count(2),
      I4 => top_Code_out,
      O => top_Shift_Q_0_D_MUX_32_o
    );
  top_Shift_Mmux_Q_3_D_MUX_29_o11 : LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      I0 => top_Shift_Q(3),
      I1 => top_Receiver_data_count(2),
      I2 => top_Receiver_data_count(1),
      I3 => top_Receiver_data_count(0),
      I4 => top_Code_out,
      O => top_Shift_Q_3_D_MUX_29_o
    );
  dma_top_CurrentState_FSM_FFd3_In1 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd1_22,
      I1 => Send_IBUF_2,
      I2 => empty,
      O => dma_top_CurrentState_FSM_FFd3_In1_114
    );
  dma_top_CurrentState_FSM_FFd3_In2 : LUT6
    generic map(
      INIT => X"7737662655154404"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd2_21,
      I1 => dma_top_CurrentState_FSM_FFd3_20,
      I2 => dma_top_data_count(1),
      I3 => dma_top_data_count(0),
      I4 => dma_top_CurrentState_FSM_FFd3_In1_114,
      I5 => DMA_ACK_IBUF_4,
      O => dma_top_CurrentState_FSM_FFd3_In
    );
  top_Transmitter_CurrentState_FSM_FFd2_In_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => top_Transmitter_data_count(1),
      I1 => top_Transmitter_data_count(0),
      O => N0
    );
  top_Transmitter_CurrentState_FSM_FFd2_In : LUT6
    generic map(
      INIT => X"3BBBBBBB2AAAAAAA"
    )
    port map (
      I0 => top_Transmitter_CurrentState_FSM_FFd2_61,
      I1 => top_Transmitter_CurrentState_FSM_FFd1_77,
      I2 => top_Transmitter_data_count(2),
      I3 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      I4 => N0,
      I5 => top_StartTX_27,
      O => top_Transmitter_CurrentState_FSM_FFd2_In_63
    );
  top_Transmitter_width_count_7_PWR_6_o_equal_16_o_7_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => top_Transmitter_width_count(6),
      I1 => top_Transmitter_width_count(4),
      I2 => top_Transmitter_width_count(0),
      O => N2
    );
  top_Transmitter_width_count_7_PWR_6_o_equal_16_o_7_Q : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => top_Transmitter_width_count(5),
      I1 => top_Transmitter_width_count(3),
      I2 => top_Transmitter_width_count(7),
      I3 => top_Transmitter_width_count(2),
      I4 => top_Transmitter_width_count(1),
      I5 => N2,
      O => top_Transmitter_width_count_7_PWR_6_o_equal_16_o
    );
  top_Receiver_width_count_7_PWR_7_o_equal_4_o_7_SW0 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => top_Receiver_width_count(6),
      I1 => top_Receiver_width_count(0),
      I2 => top_Receiver_width_count(1),
      O => N6
    );
  top_Receiver_width_count_7_PWR_7_o_equal_4_o_7_Q : LUT6
    generic map(
      INIT => X"0000000008000000"
    )
    port map (
      I0 => top_Receiver_width_count(5),
      I1 => top_Receiver_width_count(3),
      I2 => top_Receiver_width_count(4),
      I3 => top_Receiver_width_count(7),
      I4 => top_Receiver_width_count(2),
      I5 => N6,
      O => top_Receiver_width_count_7_PWR_7_o_equal_4_o
    );
  Reset_IBUF : IBUF
    port map (
      I => Reset,
      O => Reset_IBUF_0
    );
  Send_IBUF : IBUF
    port map (
      I => Send,
      O => Send_IBUF_2
    );
  RD_IBUF : IBUF
    port map (
      I => RD,
      O => RD_IBUF_3
    );
  DMA_ACK_IBUF : IBUF
    port map (
      I => DMA_ACK,
      O => DMA_ACK_IBUF_4
    );
  TD_OBUF : OBUF
    port map (
      I => TD_OBUF_7,
      O => TD
    );
  Ready_OBUF : OBUF
    port map (
      I => Ready_OBUF_11,
      O => Ready
    );
  DMA_RQ_OBUF : OBUF
    port map (
      I => DMA_RQ_OBUF_10,
      O => DMA_RQ
    );
  top_Valid_D_INV_19_o1 : LUT5
    generic map(
      INIT => X"FFFFEEFE"
    )
    port map (
      I0 => top_Transmitter_CurrentState_FSM_FFd1_77,
      I1 => address_1_LogicTrst1,
      I2 => dma_top_data_count(1),
      I3 => dma_top_data_count(0),
      I4 => top_Transmitter_CurrentState_FSM_FFd2_61,
      O => top_Valid_D_INV_19_o
    );
  top_Valid_D_TX_RDY_i_AND_20_o1 : LUT5
    generic map(
      INIT => X"01000101"
    )
    port map (
      I0 => address_1_LogicTrst1,
      I1 => top_Transmitter_CurrentState_FSM_FFd2_61,
      I2 => top_Transmitter_CurrentState_FSM_FFd1_77,
      I3 => dma_top_data_count(0),
      I4 => dma_top_data_count(1),
      O => top_Valid_D_TX_RDY_i_AND_20_o
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT71 : LUT6
    generic map(
      INIT => X"000080402A15AA55"
    )
    port map (
      I0 => top_Receiver_width_count(6),
      I1 => top_Receiver_CurrentState_FSM_FFd1_105,
      I2 => top_Receiver_CurrentState_FSM_FFd2_90,
      I3 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11,
      I4 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      I5 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT21 : LUT6
    generic map(
      INIT => X"0000600006666666"
    )
    port map (
      I0 => top_Receiver_width_count(1),
      I1 => top_Receiver_width_count(0),
      I2 => top_Receiver_CurrentState_FSM_FFd1_105,
      I3 => top_Receiver_CurrentState_FSM_FFd2_90,
      I4 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      I5 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q
    );
  top_Receiver_CurrentState_FSM_FFd2_In_SW0_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => top_Receiver_data_count(2),
      I1 => top_Receiver_data_count(1),
      O => N10
    );
  top_Receiver_CurrentState_FSM_FFd2_In : LUT6
    generic map(
      INIT => X"2AAAAAAA2FAFAFAF"
    )
    port map (
      I0 => top_Receiver_CurrentState_FSM_FFd2_90,
      I1 => top_Receiver_data_count(0),
      I2 => top_Receiver_CurrentState_FSM_FFd1_105,
      I3 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      I4 => N10,
      I5 => top_LineRD_in_28,
      O => top_Receiver_CurrentState_FSM_FFd2_In_92
    );
  top_Transmitter_Mcount_width_count_lut_1_Q : LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
    port map (
      I0 => top_Transmitter_width_count(1),
      I1 => top_Transmitter_width_count(7),
      I2 => top_Transmitter_width_count(5),
      I3 => top_Transmitter_width_count(3),
      I4 => top_Transmitter_width_count(2),
      I5 => N2,
      O => top_Transmitter_Mcount_width_count_lut_1_Q_56
    );
  top_Transmitter_Mcount_width_count_lut_2_Q : LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
    port map (
      I0 => top_Transmitter_width_count(2),
      I1 => top_Transmitter_width_count(7),
      I2 => top_Transmitter_width_count(5),
      I3 => top_Transmitter_width_count(3),
      I4 => top_Transmitter_width_count(1),
      I5 => N2,
      O => top_Transmitter_Mcount_width_count_lut_2_Q_53
    );
  top_Transmitter_Mcount_width_count_lut_3_Q : LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
    port map (
      I0 => top_Transmitter_width_count(3),
      I1 => top_Transmitter_width_count(7),
      I2 => top_Transmitter_width_count(5),
      I3 => top_Transmitter_width_count(2),
      I4 => top_Transmitter_width_count(1),
      I5 => N2,
      O => top_Transmitter_Mcount_width_count_lut_3_Q_50
    );
  top_Transmitter_Mcount_width_count_lut_5_Q : LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
    port map (
      I0 => top_Transmitter_width_count(5),
      I1 => top_Transmitter_width_count(7),
      I2 => top_Transmitter_width_count(3),
      I3 => top_Transmitter_width_count(2),
      I4 => top_Transmitter_width_count(1),
      I5 => N2,
      O => top_Transmitter_Mcount_width_count_lut_5_Q_45
    );
  top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv1 : LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
    port map (
      I0 => top_Transmitter_width_count(5),
      I1 => top_Transmitter_width_count(3),
      I2 => top_Transmitter_width_count(7),
      I3 => top_Transmitter_width_count(2),
      I4 => N2,
      I5 => top_Transmitter_width_count(1),
      O => top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv
    );
  address_1_LogicTrst11 : LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
    port map (
      I0 => top_Ack_in_6,
      I1 => dma_top_CurrentState_FSM_FFd3_20,
      I2 => dma_top_CurrentState_FSM_FFd2_21,
      I3 => top_Transmitter_CurrentState_FSM_FFd2_61,
      I4 => top_Transmitter_CurrentState_FSM_FFd1_77,
      O => address_1_LogicTrst1
    );
  top_Receiver_width_count_7_GND_7_o_equal_8_o_7_1_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => top_LineRD_in_28,
      I1 => top_Receiver_CurrentState_FSM_FFd1_105,
      O => N12
    );
  top_Receiver_Mmux_Store_out11 : LUT6
    generic map(
      INIT => X"0000000200000000"
    )
    port map (
      I0 => top_Receiver_width_count(6),
      I1 => top_Receiver_width_count(7),
      I2 => top_Receiver_width_count(3),
      I3 => top_Receiver_CurrentState_FSM_FFd2_90,
      I4 => N12,
      I5 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      O => top_Fifo_write
    );
  top_Receiver_Mmux_Code_out11_SW0 : LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
    port map (
      I0 => top_LineRD_in_28,
      I1 => top_Receiver_width_count(4),
      I2 => top_Receiver_width_count(2),
      I3 => top_Receiver_width_count(3),
      I4 => top_Receiver_CurrentState_FSM_FFd1_105,
      I5 => top_Receiver_CurrentState_FSM_FFd2_90,
      O => N16
    );
  top_Receiver_Mmux_Code_out11_SW1 : LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
    port map (
      I0 => top_Receiver_CurrentState_FSM_FFd2_90,
      I1 => top_Receiver_width_count(3),
      I2 => top_Receiver_width_count(6),
      I3 => top_Receiver_CurrentState_FSM_FFd1_105,
      I4 => top_LineRD_in_28,
      O => N17
    );
  top_Receiver_Mmux_Code_out11 : LUT6
    generic map(
      INIT => X"0000080833003B08"
    )
    port map (
      I0 => top_Receiver_width_count(5),
      I1 => top_Receiver_width_count(7),
      I2 => N6,
      I3 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      I4 => N16,
      I5 => N17,
      O => top_Code_out
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW0 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => top_Receiver_width_count(2),
      I1 => top_Receiver_width_count(1),
      I2 => top_Receiver_width_count(0),
      O => N19
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT41 : LUT6
    generic map(
      INIT => X"000080402A15AA55"
    )
    port map (
      I0 => top_Receiver_width_count(3),
      I1 => top_Receiver_CurrentState_FSM_FFd1_105,
      I2 => top_Receiver_CurrentState_FSM_FFd2_90,
      I3 => N19,
      I4 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      I5 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW1 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => top_Receiver_width_count(2),
      I1 => top_Receiver_width_count(1),
      I2 => top_Receiver_width_count(0),
      I3 => top_Receiver_width_count(3),
      O => N21
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT52 : LUT6
    generic map(
      INIT => X"000080402A15AA55"
    )
    port map (
      I0 => top_Receiver_width_count(4),
      I1 => top_Receiver_CurrentState_FSM_FFd1_105,
      I2 => top_Receiver_CurrentState_FSM_FFd2_90,
      I3 => N21,
      I4 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      I5 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => top_Receiver_CurrentState_FSM_FFd2_90,
      I1 => top_Receiver_CurrentState_FSM_FFd1_105,
      O => N23
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT81 : LUT6
    generic map(
      INIT => X"0000C0600C06CC66"
    )
    port map (
      I0 => top_Receiver_width_count(6),
      I1 => top_Receiver_width_count(7),
      I2 => N23,
      I3 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11,
      I4 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      I5 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT31 : LUT6
    generic map(
      INIT => X"0000780000787878"
    )
    port map (
      I0 => top_Receiver_width_count(1),
      I1 => top_Receiver_width_count(0),
      I2 => top_Receiver_width_count(2),
      I3 => N23,
      I4 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      I5 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT6 : LUT5
    generic map(
      INIT => X"0222A222"
    )
    port map (
      I0 => N27,
      I1 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      I2 => top_Receiver_CurrentState_FSM_FFd1_105,
      I3 => top_Receiver_CurrentState_FSM_FFd2_90,
      I4 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q
    );
  top_Transmitter_Mcount_width_count_lut_7_Q : LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
    port map (
      I0 => top_Transmitter_width_count(7),
      I1 => top_Transmitter_width_count(2),
      I2 => top_Transmitter_width_count(1),
      I3 => top_Transmitter_width_count(5),
      I4 => top_Transmitter_width_count(3),
      I5 => N2,
      O => top_Transmitter_Mcount_width_count_lut_7_Q_40
    );
  top_Transmitter_data_count_1 : FDC
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Transmitter_data_count_1_rstpot_134,
      Q => top_Transmitter_data_count(1)
    );
  top_Transmitter_data_count_0 : FDC
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Transmitter_data_count_0_rstpot_135,
      Q => top_Transmitter_data_count(0)
    );
  top_Receiver_data_count_1 : FDC
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Receiver_data_count_1_rstpot_136,
      Q => top_Receiver_data_count(1)
    );
  top_Receiver_data_count_0 : FDC
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Receiver_data_count_0_rstpot_137,
      Q => top_Receiver_data_count(0)
    );
  top_Transmitter_data_count_1_rstpot : LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => top_Transmitter_data_count(1),
      I1 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      I2 => top_Transmitter_CurrentState_FSM_FFd2_61,
      I3 => top_Transmitter_CurrentState_FSM_FFd1_77,
      I4 => top_Transmitter_data_count(0),
      O => top_Transmitter_data_count_1_rstpot_134
    );
  top_Transmitter_data_count_0_rstpot : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => top_Transmitter_data_count(0),
      I1 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      I2 => top_Transmitter_CurrentState_FSM_FFd2_61,
      I3 => top_Transmitter_CurrentState_FSM_FFd1_77,
      O => top_Transmitter_data_count_0_rstpot_135
    );
  top_Receiver_data_count_1_rstpot : LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => top_Receiver_data_count(1),
      I1 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      I2 => top_Receiver_CurrentState_FSM_FFd1_105,
      I3 => top_Receiver_CurrentState_FSM_FFd2_90,
      I4 => top_Receiver_data_count(0),
      O => top_Receiver_data_count_1_rstpot_136
    );
  top_Receiver_data_count_0_rstpot : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => top_Receiver_data_count(0),
      I1 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      I2 => top_Receiver_CurrentState_FSM_FFd1_105,
      I3 => top_Receiver_CurrentState_FSM_FFd2_90,
      O => top_Receiver_data_count_0_rstpot_137
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW4 : LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => top_Receiver_width_count(5),
      I1 => top_Receiver_width_count(1),
      I2 => top_Receiver_width_count(0),
      I3 => top_Receiver_width_count(4),
      I4 => top_Receiver_width_count(3),
      I5 => top_Receiver_width_count(2),
      O => N27
    );
  top_Receiver_width_count_7_PWR_7_o_equal_4_o_7_SW1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => top_Receiver_width_count(7),
      I1 => top_Receiver_CurrentState_FSM_FFd1_105,
      I2 => top_Receiver_CurrentState_FSM_FFd2_90,
      O => N33
    );
  top_Receiver_Valid_out1 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => top_Receiver_width_count(5),
      I1 => top_Receiver_width_count(4),
      I2 => top_Receiver_width_count(2),
      I3 => top_Receiver_width_count(3),
      I4 => N6,
      I5 => N33,
      O => top_Valid_out
    );
  top_Transmitter_data_count_2 : FDC
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Transmitter_data_count_2_rstpot_139,
      Q => top_Transmitter_data_count(2)
    );
  top_Receiver_data_count_2 : FDC
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Receiver_data_count_2_rstpot_140,
      Q => top_Receiver_data_count(2)
    );
  top_Transmitter_data_count_2_rstpot : LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => top_Transmitter_data_count(2),
      I1 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      I2 => top_Transmitter_data_count(1),
      I3 => top_Transmitter_data_count(0),
      I4 => top_Transmitter_CurrentState_FSM_FFd2_61,
      I5 => top_Transmitter_CurrentState_FSM_FFd1_77,
      O => top_Transmitter_data_count_2_rstpot_139
    );
  top_Receiver_data_count_2_rstpot_SW0 : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => top_Receiver_width_count(7),
      I1 => top_Receiver_width_count(2),
      I2 => top_Receiver_width_count(3),
      I3 => top_Receiver_data_count(1),
      I4 => top_Receiver_width_count(5),
      I5 => top_Receiver_width_count(4),
      O => N39
    );
  top_Receiver_data_count_2_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
    port map (
      I0 => top_Receiver_data_count(2),
      I1 => N39,
      I2 => top_Receiver_CurrentState_FSM_FFd1_105,
      I3 => top_Receiver_CurrentState_FSM_FFd2_90,
      I4 => top_Receiver_data_count(0),
      I5 => N6,
      O => top_Receiver_data_count_2_rstpot_140
    );
  top_Transmitter_Mcount_width_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => top_Transmitter_width_count(6),
      O => top_Transmitter_Mcount_width_count_cy_6_rt_142
    );
  top_Transmitter_Mcount_width_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => top_Transmitter_width_count(4),
      O => top_Transmitter_Mcount_width_count_cy_4_rt_143
    );
  top_Transmitter_Mcount_width_count_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => top_Transmitter_width_count(0),
      O => top_Transmitter_Mcount_width_count_cy_0_rt_144
    );
  Clk_BUFGP : BUFGP
    port map (
      I => Clk,
      O => Clk_BUFGP_1
    );
  rst_nexys1_INV_0 : INV
    port map (
      I => Reset_IBUF_0,
      O => rst_nexys
    );
  dma_top_Mcount_data_count_xor_0_11_INV_0 : INV
    port map (
      I => dma_top_data_count(0),
      O => dma_top_Mcount_data_count
    );
  top_Transmitter_TX1_INV_0 : INV
    port map (
      I => top_Transmitter_CurrentState_FSM_FFd2_61,
      O => TD_OBUF_7
    );
  top_Internal_memory : FIFO
    port map (
      rd_en => data_read,
      wr_en => top_Fifo_write,
      full => NLW_top_Internal_memory_full_UNCONNECTED,
      empty => empty,
      clk => Clk_BUFGP_1,
      rst => Reset_IBUF_0,
      dout(7) => NLW_top_Internal_memory_dout_7_UNCONNECTED,
      dout(6) => NLW_top_Internal_memory_dout_6_UNCONNECTED,
      dout(5) => NLW_top_Internal_memory_dout_5_UNCONNECTED,
      dout(4) => NLW_top_Internal_memory_dout_4_UNCONNECTED,
      dout(3) => NLW_top_Internal_memory_dout_3_UNCONNECTED,
      dout(2) => NLW_top_Internal_memory_dout_2_UNCONNECTED,
      dout(1) => NLW_top_Internal_memory_dout_1_UNCONNECTED,
      dout(0) => NLW_top_Internal_memory_dout_0_UNCONNECTED,
      din(7) => top_Shift_Q(7),
      din(6) => top_Shift_Q(6),
      din(5) => top_Shift_Q(5),
      din(4) => top_Shift_Q(4),
      din(3) => top_Shift_Q(3),
      din(2) => top_Shift_Q(2),
      din(1) => top_Shift_Q(1),
      din(0) => top_Shift_Q(0)
    );

end Structure;

-- synthesis translate_on
