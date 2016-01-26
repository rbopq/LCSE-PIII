--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: NEXYS_TOP_synthesis.vhd
-- /___/   /\     Timestamp: Tue Jan 19 20:14:36 2016
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
  signal top_Ack_in_14 : STD_LOGIC; 
  signal tx_rdy : STD_LOGIC; 
  signal TD_OBUF_16 : STD_LOGIC; 
  signal empty : STD_LOGIC; 
  signal data_read : STD_LOGIC; 
  signal write_en : STD_LOGIC; 
  signal oe : STD_LOGIC; 
  signal DMA_RQ_OBUF_32 : STD_LOGIC; 
  signal Ready_OBUF_33 : STD_LOGIC; 
  signal switches_0_OBUF_34 : STD_LOGIC; 
  signal dma_top_Mcount_data_count1 : STD_LOGIC; 
  signal dma_top_Mcount_data_count : STD_LOGIC; 
  signal dma_top_n0170_inv : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_In : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_In : STD_LOGIC; 
  signal dma_top_TX_RDY_ACK_out_AND_21_o : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_44 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_45 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_46 : STD_LOGIC; 
  signal top_Valid_D_INV_19_o : STD_LOGIC; 
  signal top_Valid_D_TX_RDY_i_AND_20_o : STD_LOGIC; 
  signal top_StartTX_57 : STD_LOGIC; 
  signal top_LineRD_in_58 : STD_LOGIC; 
  signal top_Fifo_write : STD_LOGIC; 
  signal top_Code_out : STD_LOGIC; 
  signal top_Valid_out : STD_LOGIC; 
  signal top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_3_78 : STD_LOGIC; 
  signal top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_4_79 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_7_Q_80 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count7 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count6 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_5_Q_85 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count5 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count4 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_3_Q_90 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count3 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_2_Q_93 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count2 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_lut_1_Q_96 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count1 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count : STD_LOGIC; 
  signal top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd2_101 : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd2_In_103 : STD_LOGIC; 
  signal top_Transmitter_width_count_7_PWR_6_o_equal_16_o : STD_LOGIC; 
  signal top_Transmitter_data_count_2_Data_7_Mux_6_o : STD_LOGIC; 
  signal top_Transmitter_en_width_count : STD_LOGIC; 
  signal top_Transmitter_CurrentState_FSM_FFd1_118 : STD_LOGIC; 
  signal top_Receiver_width_count_7_PWR_7_o_equal_4_o : STD_LOGIC; 
  signal top_Receiver_width_count_7_GND_7_o_equal_8_o : STD_LOGIC; 
  signal top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13 : STD_LOGIC; 
  signal top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51 : STD_LOGIC; 
  signal top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11 : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd2_132 : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd2_In_134 : STD_LOGIC; 
  signal top_Receiver_n0066_inv : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q : STD_LOGIC; 
  signal top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q : STD_LOGIC; 
  signal top_Receiver_CurrentState_FSM_FFd1_147 : STD_LOGIC; 
  signal top_Shift_Q_0_D_MUX_32_o : STD_LOGIC; 
  signal top_Shift_Q_1_D_MUX_31_o : STD_LOGIC; 
  signal top_Shift_Q_2_D_MUX_30_o : STD_LOGIC; 
  signal top_Shift_Q_3_D_MUX_29_o : STD_LOGIC; 
  signal top_Shift_Q_4_D_MUX_28_o : STD_LOGIC; 
  signal top_Shift_Q_5_D_MUX_27_o : STD_LOGIC; 
  signal top_Shift_Q_6_D_MUX_26_o : STD_LOGIC; 
  signal top_Shift_Q_7_D_MUX_25_o : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_In1_156 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal top_Valid_D_TX_RDY_i_AND_20_o1_cepot_177 : STD_LOGIC; 
  signal top_Data_FF_0_dpot_178 : STD_LOGIC; 
  signal top_Data_FF_1_dpot_179 : STD_LOGIC; 
  signal top_Data_FF_2_dpot_180 : STD_LOGIC; 
  signal top_Data_FF_3_dpot_181 : STD_LOGIC; 
  signal top_Data_FF_4_dpot_182 : STD_LOGIC; 
  signal top_Data_FF_5_dpot_183 : STD_LOGIC; 
  signal top_Data_FF_6_dpot_184 : STD_LOGIC; 
  signal top_Data_FF_7_dpot_185 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal top_Transmitter_data_count_1_rstpot_200 : STD_LOGIC; 
  signal top_Transmitter_data_count_0_rstpot_201 : STD_LOGIC; 
  signal top_Receiver_data_count_1_rstpot_202 : STD_LOGIC; 
  signal top_Receiver_data_count_0_rstpot_203 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal top_Transmitter_data_count_2_rstpot_205 : STD_LOGIC; 
  signal top_Receiver_data_count_2_rstpot_206 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_cy_6_rt_208 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_cy_4_rt_209 : STD_LOGIC; 
  signal top_Transmitter_Mcount_width_count_cy_0_rt_210 : STD_LOGIC; 
  signal NLW_top_Internal_memory_full_UNCONNECTED : STD_LOGIC; 
  signal data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal address : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal databus : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal dma_top_data_count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal ram_top_gp_ram_n0015 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Shift_Q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Data_FF : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Transmitter_Mcount_width_count_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal top_Transmitter_data_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal top_Transmitter_width_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Receiver_width_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal top_Receiver_data_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => switches_0_OBUF_34
    );
  XST_VCC : VCC
    port map (
      P => write_en
    );
  dma_top_CurrentState_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => dma_top_CurrentState_FSM_FFd1_In,
      Q => dma_top_CurrentState_FSM_FFd1_46
    );
  dma_top_CurrentState_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => dma_top_CurrentState_FSM_FFd2_In,
      Q => dma_top_CurrentState_FSM_FFd2_45
    );
  dma_top_data_count_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => dma_top_n0170_inv,
      CLR => Reset_IBUF_0,
      D => dma_top_Mcount_data_count1,
      Q => dma_top_data_count(1)
    );
  dma_top_data_count_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => dma_top_n0170_inv,
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
      Q => dma_top_CurrentState_FSM_FFd3_44
    );
  ram_top_gp_ram_Mram_contents_ram8 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => Clk_BUFGP_1,
      D => databus(7),
      WE => write_en,
      O => ram_top_gp_ram_n0015(7),
      A(7) => address(2),
      A(6) => address(2),
      A(5) => address(2),
      A(4) => address(2),
      A(3) => address(2),
      A(2) => address(2),
      A(1) => address(1),
      A(0) => address(0)
    );
  ram_top_gp_ram_Mram_contents_ram7 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => Clk_BUFGP_1,
      D => databus(6),
      WE => write_en,
      O => ram_top_gp_ram_n0015(6),
      A(7) => address(2),
      A(6) => address(2),
      A(5) => address(2),
      A(4) => address(2),
      A(3) => address(2),
      A(2) => address(2),
      A(1) => address(1),
      A(0) => address(0)
    );
  ram_top_gp_ram_Mram_contents_ram6 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => Clk_BUFGP_1,
      D => databus(5),
      WE => write_en,
      O => ram_top_gp_ram_n0015(5),
      A(7) => address(2),
      A(6) => address(2),
      A(5) => address(2),
      A(4) => address(2),
      A(3) => address(2),
      A(2) => address(2),
      A(1) => address(1),
      A(0) => address(0)
    );
  ram_top_gp_ram_Mram_contents_ram5 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => Clk_BUFGP_1,
      D => databus(4),
      WE => write_en,
      O => ram_top_gp_ram_n0015(4),
      A(7) => address(2),
      A(6) => address(2),
      A(5) => address(2),
      A(4) => address(2),
      A(3) => address(2),
      A(2) => address(2),
      A(1) => address(1),
      A(0) => address(0)
    );
  ram_top_gp_ram_Mram_contents_ram4 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => Clk_BUFGP_1,
      D => databus(3),
      WE => write_en,
      O => ram_top_gp_ram_n0015(3),
      A(7) => address(2),
      A(6) => address(2),
      A(5) => address(2),
      A(4) => address(2),
      A(3) => address(2),
      A(2) => address(2),
      A(1) => address(1),
      A(0) => address(0)
    );
  ram_top_gp_ram_Mram_contents_ram3 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => Clk_BUFGP_1,
      D => databus(2),
      WE => write_en,
      O => ram_top_gp_ram_n0015(2),
      A(7) => address(2),
      A(6) => address(2),
      A(5) => address(2),
      A(4) => address(2),
      A(3) => address(2),
      A(2) => address(2),
      A(1) => address(1),
      A(0) => address(0)
    );
  ram_top_gp_ram_Mram_contents_ram2 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => Clk_BUFGP_1,
      D => databus(1),
      WE => write_en,
      O => ram_top_gp_ram_n0015(1),
      A(7) => address(2),
      A(6) => address(2),
      A(5) => address(2),
      A(4) => address(2),
      A(3) => address(2),
      A(2) => address(2),
      A(1) => address(1),
      A(0) => address(0)
    );
  ram_top_gp_ram_Mram_contents_ram1 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => Clk_BUFGP_1,
      D => databus(0),
      WE => write_en,
      O => ram_top_gp_ram_n0015(0),
      A(7) => address(2),
      A(6) => address(2),
      A(5) => address(2),
      A(4) => address(2),
      A(3) => address(2),
      A(2) => address(2),
      A(1) => address(1),
      A(0) => address(0)
    );
  top_StartTX : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => rst_nexys,
      D => top_Valid_D_TX_RDY_i_AND_20_o,
      Q => top_StartTX_57
    );
  top_LineRD_in : FDP
    port map (
      C => Clk_BUFGP_1,
      D => RD_IBUF_3,
      PRE => Reset_IBUF_0,
      Q => top_LineRD_in_58
    );
  top_Ack_in : FDP
    port map (
      C => Clk_BUFGP_1,
      D => top_Valid_D_INV_19_o,
      PRE => Reset_IBUF_0,
      Q => top_Ack_in_14
    );
  top_Data_FF_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_177,
      CLR => Reset_IBUF_0,
      D => top_Data_FF_7_dpot_185,
      Q => top_Data_FF(7)
    );
  top_Data_FF_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_177,
      CLR => Reset_IBUF_0,
      D => top_Data_FF_6_dpot_184,
      Q => top_Data_FF(6)
    );
  top_Data_FF_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_177,
      CLR => Reset_IBUF_0,
      D => top_Data_FF_5_dpot_183,
      Q => top_Data_FF(5)
    );
  top_Data_FF_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_177,
      CLR => Reset_IBUF_0,
      D => top_Data_FF_4_dpot_182,
      Q => top_Data_FF(4)
    );
  top_Data_FF_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_177,
      CLR => Reset_IBUF_0,
      D => top_Data_FF_3_dpot_181,
      Q => top_Data_FF(3)
    );
  top_Data_FF_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_177,
      CLR => Reset_IBUF_0,
      D => top_Data_FF_2_dpot_180,
      Q => top_Data_FF(2)
    );
  top_Data_FF_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_177,
      CLR => Reset_IBUF_0,
      D => top_Data_FF_1_dpot_179,
      Q => top_Data_FF(1)
    );
  top_Data_FF_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_177,
      CLR => Reset_IBUF_0,
      D => top_Data_FF_0_dpot_178,
      Q => top_Data_FF(0)
    );
  top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_3 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => top_Transmitter_data_count(1),
      I1 => top_Transmitter_data_count(0),
      I2 => top_Data_FF(6),
      I3 => top_Data_FF(7),
      I4 => top_Data_FF(5),
      I5 => top_Data_FF(4),
      O => top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_3_78
    );
  top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_4 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => top_Transmitter_data_count(1),
      I1 => top_Transmitter_data_count(0),
      I2 => top_Data_FF(2),
      I3 => top_Data_FF(3),
      I4 => top_Data_FF(1),
      I5 => top_Data_FF(0),
      O => top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_4_79
    );
  top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_2_f7 : MUXF7
    port map (
      I0 => top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_4_79,
      I1 => top_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_3_78,
      S => top_Transmitter_data_count(2),
      O => top_Transmitter_data_count_2_Data_7_Mux_6_o
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
      D => top_Transmitter_CurrentState_FSM_FFd2_In_103,
      Q => top_Transmitter_CurrentState_FSM_FFd2_101
    );
  top_Transmitter_CurrentState_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Transmitter_CurrentState_FSM_FFd1_In,
      Q => top_Transmitter_CurrentState_FSM_FFd1_118
    );
  top_Transmitter_Mcount_width_count_xor_7_Q : XORCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(6),
      LI => top_Transmitter_Mcount_width_count_lut_7_Q_80,
      O => top_Transmitter_Mcount_width_count7
    );
  top_Transmitter_Mcount_width_count_xor_6_Q : XORCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(5),
      LI => top_Transmitter_Mcount_width_count_cy_6_rt_208,
      O => top_Transmitter_Mcount_width_count6
    );
  top_Transmitter_Mcount_width_count_cy_6_Q : MUXCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(5),
      DI => switches_0_OBUF_34,
      S => top_Transmitter_Mcount_width_count_cy_6_rt_208,
      O => top_Transmitter_Mcount_width_count_cy(6)
    );
  top_Transmitter_Mcount_width_count_xor_5_Q : XORCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(4),
      LI => top_Transmitter_Mcount_width_count_lut_5_Q_85,
      O => top_Transmitter_Mcount_width_count5
    );
  top_Transmitter_Mcount_width_count_cy_5_Q : MUXCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(4),
      DI => switches_0_OBUF_34,
      S => top_Transmitter_Mcount_width_count_lut_5_Q_85,
      O => top_Transmitter_Mcount_width_count_cy(5)
    );
  top_Transmitter_Mcount_width_count_xor_4_Q : XORCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(3),
      LI => top_Transmitter_Mcount_width_count_cy_4_rt_209,
      O => top_Transmitter_Mcount_width_count4
    );
  top_Transmitter_Mcount_width_count_cy_4_Q : MUXCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(3),
      DI => switches_0_OBUF_34,
      S => top_Transmitter_Mcount_width_count_cy_4_rt_209,
      O => top_Transmitter_Mcount_width_count_cy(4)
    );
  top_Transmitter_Mcount_width_count_xor_3_Q : XORCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(2),
      LI => top_Transmitter_Mcount_width_count_lut_3_Q_90,
      O => top_Transmitter_Mcount_width_count3
    );
  top_Transmitter_Mcount_width_count_cy_3_Q : MUXCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(2),
      DI => switches_0_OBUF_34,
      S => top_Transmitter_Mcount_width_count_lut_3_Q_90,
      O => top_Transmitter_Mcount_width_count_cy(3)
    );
  top_Transmitter_Mcount_width_count_xor_2_Q : XORCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(1),
      LI => top_Transmitter_Mcount_width_count_lut_2_Q_93,
      O => top_Transmitter_Mcount_width_count2
    );
  top_Transmitter_Mcount_width_count_cy_2_Q : MUXCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(1),
      DI => switches_0_OBUF_34,
      S => top_Transmitter_Mcount_width_count_lut_2_Q_93,
      O => top_Transmitter_Mcount_width_count_cy(2)
    );
  top_Transmitter_Mcount_width_count_xor_1_Q : XORCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(0),
      LI => top_Transmitter_Mcount_width_count_lut_1_Q_96,
      O => top_Transmitter_Mcount_width_count1
    );
  top_Transmitter_Mcount_width_count_cy_1_Q : MUXCY
    port map (
      CI => top_Transmitter_Mcount_width_count_cy(0),
      DI => switches_0_OBUF_34,
      S => top_Transmitter_Mcount_width_count_lut_1_Q_96,
      O => top_Transmitter_Mcount_width_count_cy(1)
    );
  top_Transmitter_Mcount_width_count_xor_0_Q : XORCY
    port map (
      CI => top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv,
      LI => top_Transmitter_Mcount_width_count_cy_0_rt_210,
      O => top_Transmitter_Mcount_width_count
    );
  top_Transmitter_Mcount_width_count_cy_0_Q : MUXCY
    port map (
      CI => top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv,
      DI => switches_0_OBUF_34,
      S => top_Transmitter_Mcount_width_count_cy_0_rt_210,
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
      Q => top_Receiver_CurrentState_FSM_FFd1_147
    );
  top_Receiver_CurrentState_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Receiver_CurrentState_FSM_FFd2_In_134,
      Q => top_Receiver_CurrentState_FSM_FFd2_132
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
  dma_top_Mcount_data_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => dma_top_data_count(1),
      I1 => dma_top_data_count(0),
      O => dma_top_Mcount_data_count1
    );
  dma_top_CurrentState_DMA_RQ1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd3_44,
      I1 => dma_top_CurrentState_FSM_FFd2_45,
      O => DMA_RQ_OBUF_32
    );
  dma_top_CurrentState_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"5501"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd3_44,
      I1 => dma_top_CurrentState_FSM_FFd1_46,
      I2 => empty,
      I3 => dma_top_CurrentState_FSM_FFd2_45,
      O => dma_top_CurrentState_FSM_FFd2_In
    );
  dma_top_Mmux_READY11 : LUT4
    generic map(
      INIT => X"FF5D"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd3_44,
      I1 => dma_top_data_count(1),
      I2 => dma_top_data_count(0),
      I3 => dma_top_CurrentState_FSM_FFd2_45,
      O => Ready_OBUF_33
    );
  oeLogicTrst1 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => dma_top_data_count(0),
      I1 => dma_top_CurrentState_FSM_FFd3_44,
      I2 => dma_top_data_count(1),
      I3 => dma_top_CurrentState_FSM_FFd2_45,
      O => oe
    );
  dma_top_n0170_inv1 : LUT6
    generic map(
      INIT => X"FFFFFFFF20002020"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd3_44,
      I1 => dma_top_CurrentState_FSM_FFd2_45,
      I2 => dma_top_TX_RDY_ACK_out_AND_21_o,
      I3 => dma_top_data_count(0),
      I4 => dma_top_data_count(1),
      I5 => dma_top_CurrentState_FSM_FFd1_46,
      O => dma_top_n0170_inv
    );
  top_Transmitter_TX1 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => top_Transmitter_CurrentState_FSM_FFd2_101,
      I1 => top_Transmitter_data_count_2_Data_7_Mux_6_o,
      I2 => top_Transmitter_CurrentState_FSM_FFd1_118,
      O => TD_OBUF_16
    );
  top_Transmitter_CurrentState_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      I1 => top_Transmitter_CurrentState_FSM_FFd1_118,
      I2 => top_Transmitter_CurrentState_FSM_FFd2_101,
      O => top_Transmitter_CurrentState_FSM_FFd1_In
    );
  top_Transmitter_CurrentState_n0054_0_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => top_Transmitter_CurrentState_FSM_FFd2_101,
      I1 => top_Transmitter_CurrentState_FSM_FFd1_118,
      O => tx_rdy
    );
  top_Transmitter_CurrentState_n0054_1_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => top_Transmitter_CurrentState_FSM_FFd1_118,
      I1 => top_Transmitter_CurrentState_FSM_FFd2_101,
      O => top_Transmitter_en_width_count
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT11 : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => top_Receiver_width_count(0),
      I1 => top_Receiver_CurrentState_FSM_FFd1_147,
      I2 => top_Receiver_CurrentState_FSM_FFd2_132,
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
      INIT => X"20000000"
    )
    port map (
      I0 => top_Receiver_width_count(1),
      I1 => top_Receiver_width_count(5),
      I2 => top_Receiver_width_count(0),
      I3 => top_Receiver_width_count(4),
      I4 => top_Receiver_width_count(2),
      O => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT41 : LUT5
    generic map(
      INIT => X"7F800000"
    )
    port map (
      I0 => top_Receiver_width_count(1),
      I1 => top_Receiver_width_count(0),
      I2 => top_Receiver_width_count(2),
      I3 => top_Receiver_width_count(3),
      I4 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT52 : LUT6
    generic map(
      INIT => X"78F0F0F000000000"
    )
    port map (
      I0 => top_Receiver_width_count(1),
      I1 => top_Receiver_width_count(0),
      I2 => top_Receiver_width_count(4),
      I3 => top_Receiver_width_count(2),
      I4 => top_Receiver_width_count(3),
      I5 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q
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
      I0 => top_Receiver_CurrentState_FSM_FFd1_147,
      I1 => top_Receiver_CurrentState_FSM_FFd2_132,
      I2 => top_LineRD_in_58,
      I3 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      O => top_Receiver_CurrentState_FSM_FFd1_In
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT81 : LUT4
    generic map(
      INIT => X"C600"
    )
    port map (
      I0 => top_Receiver_width_count(6),
      I1 => top_Receiver_width_count(7),
      I2 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11,
      I3 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT31 : LUT4
    generic map(
      INIT => X"7800"
    )
    port map (
      I0 => top_Receiver_width_count(1),
      I1 => top_Receiver_width_count(0),
      I2 => top_Receiver_width_count(2),
      I3 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q
    );
  top_Receiver_n0066_inv1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => top_Receiver_CurrentState_FSM_FFd2_132,
      I1 => top_Receiver_CurrentState_FSM_FFd1_147,
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
      I0 => dma_top_CurrentState_FSM_FFd1_46,
      I1 => Send_IBUF_2,
      I2 => empty,
      O => dma_top_CurrentState_FSM_FFd3_In1_156
    );
  dma_top_CurrentState_FSM_FFd3_In2 : LUT6
    generic map(
      INIT => X"7737662655154404"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd2_45,
      I1 => dma_top_CurrentState_FSM_FFd3_44,
      I2 => dma_top_data_count(1),
      I3 => dma_top_data_count(0),
      I4 => dma_top_CurrentState_FSM_FFd3_In1_156,
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
      O => N2
    );
  top_Transmitter_CurrentState_FSM_FFd2_In : LUT6
    generic map(
      INIT => X"2FAFAFAF2AAAAAAA"
    )
    port map (
      I0 => top_Transmitter_CurrentState_FSM_FFd2_101,
      I1 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      I2 => top_Transmitter_CurrentState_FSM_FFd1_118,
      I3 => top_Transmitter_data_count(2),
      I4 => N2,
      I5 => top_StartTX_57,
      O => top_Transmitter_CurrentState_FSM_FFd2_In_103
    );
  top_Transmitter_width_count_7_PWR_6_o_equal_16_o_7_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => top_Transmitter_width_count(6),
      I1 => top_Transmitter_width_count(4),
      I2 => top_Transmitter_width_count(0),
      O => N4
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
      I5 => N4,
      O => top_Transmitter_width_count_7_PWR_6_o_equal_16_o
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT6_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => top_Receiver_width_count(2),
      I1 => top_Receiver_width_count(1),
      I2 => top_Receiver_width_count(0),
      O => N6
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT6 : LUT6
    generic map(
      INIT => X"FAFA2AAA00000000"
    )
    port map (
      I0 => top_Receiver_width_count(5),
      I1 => top_Receiver_width_count(4),
      I2 => top_Receiver_width_count(3),
      I3 => N6,
      I4 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      I5 => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q
    );
  top_Receiver_width_count_7_PWR_7_o_equal_4_o_7_SW0 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => top_Receiver_width_count(6),
      I1 => top_Receiver_width_count(0),
      I2 => top_Receiver_width_count(1),
      O => N8
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
      I5 => N8,
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
  switches_7_OBUF : OBUF
    port map (
      I => switches_0_OBUF_34,
      O => switches(7)
    );
  switches_6_OBUF : OBUF
    port map (
      I => switches_0_OBUF_34,
      O => switches(6)
    );
  switches_5_OBUF : OBUF
    port map (
      I => switches_0_OBUF_34,
      O => switches(5)
    );
  switches_4_OBUF : OBUF
    port map (
      I => switches_0_OBUF_34,
      O => switches(4)
    );
  switches_3_OBUF : OBUF
    port map (
      I => switches_0_OBUF_34,
      O => switches(3)
    );
  switches_2_OBUF : OBUF
    port map (
      I => switches_0_OBUF_34,
      O => switches(2)
    );
  switches_1_OBUF : OBUF
    port map (
      I => switches_0_OBUF_34,
      O => switches(1)
    );
  switches_0_OBUF : OBUF
    port map (
      I => switches_0_OBUF_34,
      O => switches(0)
    );
  TD_OBUF : OBUF
    port map (
      I => TD_OBUF_16,
      O => TD
    );
  Ready_OBUF : OBUF
    port map (
      I => Ready_OBUF_33,
      O => Ready
    );
  DMA_RQ_OBUF : OBUF
    port map (
      I => DMA_RQ_OBUF_32,
      O => DMA_RQ
    );
  top_Valid_D_TX_RDY_i_AND_20_o1_cepot : LUT5
    generic map(
      INIT => X"22020000"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd3_44,
      I1 => dma_top_CurrentState_FSM_FFd2_45,
      I2 => dma_top_data_count(1),
      I3 => dma_top_data_count(0),
      I4 => dma_top_TX_RDY_ACK_out_AND_21_o,
      O => top_Valid_D_TX_RDY_i_AND_20_o1_cepot_177
    );
  top_Valid_D_INV_19_o1 : LUT6
    generic map(
      INIT => X"FFFFFFFF7F7FFF7F"
    )
    port map (
      I0 => tx_rdy,
      I1 => dma_top_CurrentState_FSM_FFd3_44,
      I2 => dma_top_TX_RDY_ACK_out_AND_21_o,
      I3 => dma_top_data_count(1),
      I4 => dma_top_data_count(0),
      I5 => dma_top_CurrentState_FSM_FFd2_45,
      O => top_Valid_D_INV_19_o
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT71 : LUT6
    generic map(
      INIT => X"15D50000000015D5"
    )
    port map (
      I0 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      I1 => top_Receiver_CurrentState_FSM_FFd2_132,
      I2 => top_Receiver_CurrentState_FSM_FFd1_147,
      I3 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      I4 => top_Receiver_width_count(6),
      I5 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_6_11,
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT21 : LUT6
    generic map(
      INIT => X"000015D515D50000"
    )
    port map (
      I0 => top_Receiver_width_count_7_GND_7_o_equal_8_o,
      I1 => top_Receiver_CurrentState_FSM_FFd2_132,
      I2 => top_Receiver_CurrentState_FSM_FFd1_147,
      I3 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      I4 => top_Receiver_width_count(0),
      I5 => top_Receiver_width_count(1),
      O => top_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q
    );
  top_Receiver_CurrentState_FSM_FFd2_In_SW0_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => top_Receiver_data_count(2),
      I1 => top_Receiver_data_count(1),
      O => N28
    );
  top_Receiver_CurrentState_FSM_FFd2_In : LUT6
    generic map(
      INIT => X"2AAAAAAA2FAFAFAF"
    )
    port map (
      I0 => top_Receiver_CurrentState_FSM_FFd2_132,
      I1 => top_Receiver_data_count(0),
      I2 => top_Receiver_CurrentState_FSM_FFd1_147,
      I3 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      I4 => N28,
      I5 => top_LineRD_in_58,
      O => top_Receiver_CurrentState_FSM_FFd2_In_134
    );
  dma_top_TX_RDY_ACK_out_AND_21_o1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => top_Ack_in_14,
      I1 => top_Transmitter_CurrentState_FSM_FFd2_101,
      I2 => top_Transmitter_CurrentState_FSM_FFd1_118,
      O => dma_top_TX_RDY_ACK_out_AND_21_o
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
      I5 => N4,
      O => top_Transmitter_Mcount_width_count_lut_1_Q_96
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
      I5 => N4,
      O => top_Transmitter_Mcount_width_count_lut_2_Q_93
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
      I5 => N4,
      O => top_Transmitter_Mcount_width_count_lut_3_Q_90
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
      I5 => N4,
      O => top_Transmitter_Mcount_width_count_lut_5_Q_85
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
      I4 => N4,
      I5 => top_Transmitter_width_count(1),
      O => top_Transmitter_width_count_7_PWR_6_o_equal_16_o_inv
    );
  dma_top_Mmux_TX_Data12_SW0 : LUT5
    generic map(
      INIT => X"FFFFAEFF"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd2_45,
      I1 => dma_top_data_count(1),
      I2 => dma_top_data_count(0),
      I3 => ram_top_gp_ram_n0015(0),
      I4 => dma_top_CurrentState_FSM_FFd1_46,
      O => N12
    );
  dma_top_Mmux_TX_Data21_SW0 : LUT5
    generic map(
      INIT => X"FFFFAEFF"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd2_45,
      I1 => dma_top_data_count(1),
      I2 => dma_top_data_count(0),
      I3 => ram_top_gp_ram_n0015(1),
      I4 => dma_top_CurrentState_FSM_FFd1_46,
      O => N14
    );
  dma_top_Mmux_TX_Data31_SW0 : LUT5
    generic map(
      INIT => X"FFFFAEFF"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd2_45,
      I1 => dma_top_data_count(1),
      I2 => dma_top_data_count(0),
      I3 => ram_top_gp_ram_n0015(2),
      I4 => dma_top_CurrentState_FSM_FFd1_46,
      O => N16
    );
  dma_top_Mmux_TX_Data41_SW0 : LUT5
    generic map(
      INIT => X"FFFFAEFF"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd2_45,
      I1 => dma_top_data_count(1),
      I2 => dma_top_data_count(0),
      I3 => ram_top_gp_ram_n0015(3),
      I4 => dma_top_CurrentState_FSM_FFd1_46,
      O => N18
    );
  dma_top_Mmux_TX_Data51_SW0 : LUT5
    generic map(
      INIT => X"FFFFAEFF"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd2_45,
      I1 => dma_top_data_count(1),
      I2 => dma_top_data_count(0),
      I3 => ram_top_gp_ram_n0015(4),
      I4 => dma_top_CurrentState_FSM_FFd1_46,
      O => N20
    );
  dma_top_Mmux_TX_Data61_SW0 : LUT5
    generic map(
      INIT => X"FFFFAEFF"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd2_45,
      I1 => dma_top_data_count(1),
      I2 => dma_top_data_count(0),
      I3 => ram_top_gp_ram_n0015(5),
      I4 => dma_top_CurrentState_FSM_FFd1_46,
      O => N22
    );
  dma_top_Mmux_TX_Data71_SW0 : LUT5
    generic map(
      INIT => X"FFFFAEFF"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd2_45,
      I1 => dma_top_data_count(1),
      I2 => dma_top_data_count(0),
      I3 => ram_top_gp_ram_n0015(6),
      I4 => dma_top_CurrentState_FSM_FFd1_46,
      O => N24
    );
  dma_top_Mmux_TX_Data81_SW0 : LUT5
    generic map(
      INIT => X"FFFFAEFF"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd2_45,
      I1 => dma_top_data_count(1),
      I2 => dma_top_data_count(0),
      I3 => ram_top_gp_ram_n0015(7),
      I4 => dma_top_CurrentState_FSM_FFd1_46,
      O => N26
    );
  top_Receiver_width_count_7_GND_7_o_equal_8_o_7_1_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => top_LineRD_in_58,
      I1 => top_Receiver_CurrentState_FSM_FFd1_147,
      O => N30
    );
  top_Receiver_Mmux_Store_out11 : LUT6
    generic map(
      INIT => X"0000000200000000"
    )
    port map (
      I0 => top_Receiver_width_count(6),
      I1 => top_Receiver_width_count(7),
      I2 => top_Receiver_width_count(3),
      I3 => top_Receiver_CurrentState_FSM_FFd2_132,
      I4 => N30,
      I5 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      O => top_Fifo_write
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW0 : LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
    port map (
      I0 => top_Receiver_width_count(5),
      I1 => top_Receiver_width_count(2),
      I2 => top_Receiver_width_count(3),
      I3 => top_Receiver_CurrentState_FSM_FFd2_132,
      I4 => top_Receiver_width_count(4),
      I5 => top_Receiver_CurrentState_FSM_FFd1_147,
      O => N34
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511_SW1 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => top_Receiver_width_count(3),
      I1 => top_Receiver_CurrentState_FSM_FFd1_147,
      I2 => top_Receiver_CurrentState_FSM_FFd2_132,
      O => N35
    );
  top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511 : LUT6
    generic map(
      INIT => X"FFDDF3D1FFFFF3F3"
    )
    port map (
      I0 => top_Receiver_width_count(6),
      I1 => top_Receiver_width_count(7),
      I2 => N8,
      I3 => N35,
      I4 => N34,
      I5 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      O => top_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51
    );
  top_Receiver_Mmux_Code_out11_SW0 : LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
    port map (
      I0 => top_LineRD_in_58,
      I1 => top_Receiver_width_count(4),
      I2 => top_Receiver_width_count(2),
      I3 => top_Receiver_width_count(3),
      I4 => top_Receiver_CurrentState_FSM_FFd1_147,
      I5 => top_Receiver_CurrentState_FSM_FFd2_132,
      O => N37
    );
  top_Receiver_Mmux_Code_out11_SW1 : LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
    port map (
      I0 => top_Receiver_CurrentState_FSM_FFd2_132,
      I1 => top_Receiver_width_count(3),
      I2 => top_Receiver_width_count(6),
      I3 => top_Receiver_CurrentState_FSM_FFd1_147,
      I4 => top_LineRD_in_58,
      O => N38
    );
  top_Receiver_Mmux_Code_out11 : LUT6
    generic map(
      INIT => X"00080008333B0008"
    )
    port map (
      I0 => top_Receiver_width_count(5),
      I1 => top_Receiver_width_count(7),
      I2 => N8,
      I3 => N37,
      I4 => top_Receiver_Madd_width_count_7_GND_7_o_add_26_OUT_xor_5_13,
      I5 => N38,
      O => top_Code_out
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
      I5 => N4,
      O => top_Transmitter_Mcount_width_count_lut_7_Q_80
    );
  dma_top_Mmux_Data_Read11 : LUT5
    generic map(
      INIT => X"08F8F8F8"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd2_45,
      I1 => dma_top_CurrentState_FSM_FFd3_44,
      I2 => dma_top_CurrentState_FSM_FFd1_46,
      I3 => dma_top_data_count(1),
      I4 => dma_top_data_count(0),
      O => data_read
    );
  top_Transmitter_data_count_1 : FDC
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Transmitter_data_count_1_rstpot_200,
      Q => top_Transmitter_data_count(1)
    );
  top_Transmitter_data_count_0 : FDC
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Transmitter_data_count_0_rstpot_201,
      Q => top_Transmitter_data_count(0)
    );
  top_Receiver_data_count_1 : FDC
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Receiver_data_count_1_rstpot_202,
      Q => top_Receiver_data_count(1)
    );
  top_Receiver_data_count_0 : FDC
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Receiver_data_count_0_rstpot_203,
      Q => top_Receiver_data_count(0)
    );
  databus_0_LogicTrst1 : LUT6
    generic map(
      INIT => X"FFFFFFD5AA80FFD5"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd1_46,
      I1 => dma_top_data_count(0),
      I2 => dma_top_data_count(1),
      I3 => data_out(0),
      I4 => oe,
      I5 => ram_top_gp_ram_n0015(0),
      O => databus(0)
    );
  databus_7_LogicTrst1 : LUT6
    generic map(
      INIT => X"FFFFFFD5AA80FFD5"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd1_46,
      I1 => dma_top_data_count(0),
      I2 => dma_top_data_count(1),
      I3 => data_out(7),
      I4 => oe,
      I5 => ram_top_gp_ram_n0015(7),
      O => databus(7)
    );
  databus_6_LogicTrst1 : LUT6
    generic map(
      INIT => X"FFFFFFD5AA80FFD5"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd1_46,
      I1 => dma_top_data_count(0),
      I2 => dma_top_data_count(1),
      I3 => data_out(6),
      I4 => oe,
      I5 => ram_top_gp_ram_n0015(6),
      O => databus(6)
    );
  databus_5_LogicTrst1 : LUT6
    generic map(
      INIT => X"FFFFFFD5AA80FFD5"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd1_46,
      I1 => dma_top_data_count(0),
      I2 => dma_top_data_count(1),
      I3 => data_out(5),
      I4 => oe,
      I5 => ram_top_gp_ram_n0015(5),
      O => databus(5)
    );
  databus_4_LogicTrst1 : LUT6
    generic map(
      INIT => X"FFFFFFD5AA80FFD5"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd1_46,
      I1 => dma_top_data_count(0),
      I2 => dma_top_data_count(1),
      I3 => data_out(4),
      I4 => oe,
      I5 => ram_top_gp_ram_n0015(4),
      O => databus(4)
    );
  databus_3_LogicTrst1 : LUT6
    generic map(
      INIT => X"FFFFFFD5AA80FFD5"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd1_46,
      I1 => dma_top_data_count(0),
      I2 => dma_top_data_count(1),
      I3 => data_out(3),
      I4 => oe,
      I5 => ram_top_gp_ram_n0015(3),
      O => databus(3)
    );
  databus_2_LogicTrst1 : LUT6
    generic map(
      INIT => X"FFFFFFD5AA80FFD5"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd1_46,
      I1 => dma_top_data_count(0),
      I2 => dma_top_data_count(1),
      I3 => data_out(2),
      I4 => oe,
      I5 => ram_top_gp_ram_n0015(2),
      O => databus(2)
    );
  databus_1_LogicTrst1 : LUT6
    generic map(
      INIT => X"FFFFFFD5AA80FFD5"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd1_46,
      I1 => dma_top_data_count(0),
      I2 => dma_top_data_count(1),
      I3 => data_out(1),
      I4 => oe,
      I5 => ram_top_gp_ram_n0015(1),
      O => databus(1)
    );
  top_Transmitter_data_count_1_rstpot : LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => top_Transmitter_data_count(1),
      I1 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      I2 => top_Transmitter_CurrentState_FSM_FFd2_101,
      I3 => top_Transmitter_CurrentState_FSM_FFd1_118,
      I4 => top_Transmitter_data_count(0),
      O => top_Transmitter_data_count_1_rstpot_200
    );
  top_Transmitter_data_count_0_rstpot : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => top_Transmitter_data_count(0),
      I1 => top_Transmitter_width_count_7_PWR_6_o_equal_16_o,
      I2 => top_Transmitter_CurrentState_FSM_FFd2_101,
      I3 => top_Transmitter_CurrentState_FSM_FFd1_118,
      O => top_Transmitter_data_count_0_rstpot_201
    );
  top_Receiver_data_count_1_rstpot : LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => top_Receiver_data_count(1),
      I1 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      I2 => top_Receiver_CurrentState_FSM_FFd1_147,
      I3 => top_Receiver_CurrentState_FSM_FFd2_132,
      I4 => top_Receiver_data_count(0),
      O => top_Receiver_data_count_1_rstpot_202
    );
  top_Receiver_data_count_0_rstpot : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => top_Receiver_data_count(0),
      I1 => top_Receiver_width_count_7_PWR_7_o_equal_4_o,
      I2 => top_Receiver_CurrentState_FSM_FFd1_147,
      I3 => top_Receiver_CurrentState_FSM_FFd2_132,
      O => top_Receiver_data_count_0_rstpot_203
    );
  top_Valid_D_TX_RDY_i_AND_20_o1 : LUT6
    generic map(
      INIT => X"4000000040004000"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd2_45,
      I1 => dma_top_TX_RDY_ACK_out_AND_21_o,
      I2 => tx_rdy,
      I3 => dma_top_CurrentState_FSM_FFd3_44,
      I4 => dma_top_data_count(0),
      I5 => dma_top_data_count(1),
      O => top_Valid_D_TX_RDY_i_AND_20_o
    );
  top_Receiver_width_count_7_PWR_7_o_equal_4_o_7_SW1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => top_Receiver_width_count(7),
      I1 => top_Receiver_CurrentState_FSM_FFd1_147,
      I2 => top_Receiver_CurrentState_FSM_FFd2_132,
      O => N44
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
      I4 => N8,
      I5 => N44,
      O => top_Valid_out
    );
  top_Transmitter_data_count_2 : FDC
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Transmitter_data_count_2_rstpot_205,
      Q => top_Transmitter_data_count(2)
    );
  top_Receiver_data_count_2 : FDC
    port map (
      C => Clk_BUFGP_1,
      CLR => Reset_IBUF_0,
      D => top_Receiver_data_count_2_rstpot_206,
      Q => top_Receiver_data_count(2)
    );
  address_1_LogicTrst1 : LUT5
    generic map(
      INIT => X"FFFF5155"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd1_46,
      I1 => dma_top_TX_RDY_ACK_out_AND_21_o,
      I2 => dma_top_CurrentState_FSM_FFd2_45,
      I3 => dma_top_CurrentState_FSM_FFd3_44,
      I4 => dma_top_data_count(1),
      O => address(1)
    );
  address_0_LogicTrst1 : LUT6
    generic map(
      INIT => X"FFFFFFFF55515555"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd1_46,
      I1 => dma_top_TX_RDY_ACK_out_AND_21_o,
      I2 => dma_top_CurrentState_FSM_FFd2_45,
      I3 => dma_top_data_count(1),
      I4 => dma_top_CurrentState_FSM_FFd3_44,
      I5 => dma_top_data_count(0),
      O => address(0)
    );
  address_2_1 : LUT6
    generic map(
      INIT => X"0D0D0F0D0F0F0F0F"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd3_44,
      I1 => dma_top_CurrentState_FSM_FFd2_45,
      I2 => dma_top_CurrentState_FSM_FFd1_46,
      I3 => dma_top_data_count(1),
      I4 => dma_top_data_count(0),
      I5 => dma_top_TX_RDY_ACK_out_AND_21_o,
      O => address(2)
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
      I4 => top_Transmitter_CurrentState_FSM_FFd2_101,
      I5 => top_Transmitter_CurrentState_FSM_FFd1_118,
      O => top_Transmitter_data_count_2_rstpot_205
    );
  dma_top_CurrentState_FSM_FFd1_In1 : LUT5
    generic map(
      INIT => X"FF2A2A2A"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd1_46,
      I1 => dma_top_data_count(0),
      I2 => dma_top_data_count(1),
      I3 => dma_top_CurrentState_FSM_FFd3_44,
      I4 => dma_top_CurrentState_FSM_FFd2_45,
      O => dma_top_CurrentState_FSM_FFd1_In
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
      O => N50
    );
  top_Receiver_data_count_2_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
    port map (
      I0 => top_Receiver_data_count(2),
      I1 => N50,
      I2 => top_Receiver_CurrentState_FSM_FFd1_147,
      I3 => top_Receiver_CurrentState_FSM_FFd2_132,
      I4 => top_Receiver_data_count(0),
      I5 => N8,
      O => top_Receiver_data_count_2_rstpot_206
    );
  top_Data_FF_0_dpot : LUT6
    generic map(
      INIT => X"A8ABA8A8A8A8A8A8"
    )
    port map (
      I0 => top_Data_FF(0),
      I1 => top_Transmitter_CurrentState_FSM_FFd2_101,
      I2 => top_Transmitter_CurrentState_FSM_FFd1_118,
      I3 => N12,
      I4 => dma_top_CurrentState_FSM_FFd3_44,
      I5 => top_Ack_in_14,
      O => top_Data_FF_0_dpot_178
    );
  top_Data_FF_1_dpot : LUT6
    generic map(
      INIT => X"A8ABA8A8A8A8A8A8"
    )
    port map (
      I0 => top_Data_FF(1),
      I1 => top_Transmitter_CurrentState_FSM_FFd2_101,
      I2 => top_Transmitter_CurrentState_FSM_FFd1_118,
      I3 => N14,
      I4 => dma_top_CurrentState_FSM_FFd3_44,
      I5 => top_Ack_in_14,
      O => top_Data_FF_1_dpot_179
    );
  top_Data_FF_2_dpot : LUT6
    generic map(
      INIT => X"A8ABA8A8A8A8A8A8"
    )
    port map (
      I0 => top_Data_FF(2),
      I1 => top_Transmitter_CurrentState_FSM_FFd2_101,
      I2 => top_Transmitter_CurrentState_FSM_FFd1_118,
      I3 => N16,
      I4 => dma_top_CurrentState_FSM_FFd3_44,
      I5 => top_Ack_in_14,
      O => top_Data_FF_2_dpot_180
    );
  top_Data_FF_3_dpot : LUT6
    generic map(
      INIT => X"A8ABA8A8A8A8A8A8"
    )
    port map (
      I0 => top_Data_FF(3),
      I1 => top_Transmitter_CurrentState_FSM_FFd2_101,
      I2 => top_Transmitter_CurrentState_FSM_FFd1_118,
      I3 => N18,
      I4 => dma_top_CurrentState_FSM_FFd3_44,
      I5 => top_Ack_in_14,
      O => top_Data_FF_3_dpot_181
    );
  top_Data_FF_4_dpot : LUT6
    generic map(
      INIT => X"A8ABA8A8A8A8A8A8"
    )
    port map (
      I0 => top_Data_FF(4),
      I1 => top_Transmitter_CurrentState_FSM_FFd2_101,
      I2 => top_Transmitter_CurrentState_FSM_FFd1_118,
      I3 => N20,
      I4 => dma_top_CurrentState_FSM_FFd3_44,
      I5 => top_Ack_in_14,
      O => top_Data_FF_4_dpot_182
    );
  top_Data_FF_5_dpot : LUT6
    generic map(
      INIT => X"A8ABA8A8A8A8A8A8"
    )
    port map (
      I0 => top_Data_FF(5),
      I1 => top_Transmitter_CurrentState_FSM_FFd2_101,
      I2 => top_Transmitter_CurrentState_FSM_FFd1_118,
      I3 => N22,
      I4 => dma_top_CurrentState_FSM_FFd3_44,
      I5 => top_Ack_in_14,
      O => top_Data_FF_5_dpot_183
    );
  top_Data_FF_6_dpot : LUT6
    generic map(
      INIT => X"A8ABA8A8A8A8A8A8"
    )
    port map (
      I0 => top_Data_FF(6),
      I1 => top_Transmitter_CurrentState_FSM_FFd2_101,
      I2 => top_Transmitter_CurrentState_FSM_FFd1_118,
      I3 => N24,
      I4 => dma_top_CurrentState_FSM_FFd3_44,
      I5 => top_Ack_in_14,
      O => top_Data_FF_6_dpot_184
    );
  top_Data_FF_7_dpot : LUT6
    generic map(
      INIT => X"A8ABA8A8A8A8A8A8"
    )
    port map (
      I0 => top_Data_FF(7),
      I1 => top_Transmitter_CurrentState_FSM_FFd2_101,
      I2 => top_Transmitter_CurrentState_FSM_FFd1_118,
      I3 => N26,
      I4 => dma_top_CurrentState_FSM_FFd3_44,
      I5 => top_Ack_in_14,
      O => top_Data_FF_7_dpot_185
    );
  top_Transmitter_Mcount_width_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => top_Transmitter_width_count(6),
      O => top_Transmitter_Mcount_width_count_cy_6_rt_208
    );
  top_Transmitter_Mcount_width_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => top_Transmitter_width_count(4),
      O => top_Transmitter_Mcount_width_count_cy_4_rt_209
    );
  top_Transmitter_Mcount_width_count_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => top_Transmitter_width_count(0),
      O => top_Transmitter_Mcount_width_count_cy_0_rt_210
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
  top_Internal_memory : FIFO
    port map (
      rd_en => data_read,
      wr_en => top_Fifo_write,
      full => NLW_top_Internal_memory_full_UNCONNECTED,
      empty => empty,
      clk => Clk_BUFGP_1,
      rst => Reset_IBUF_0,
      dout(7) => data_out(7),
      dout(6) => data_out(6),
      dout(5) => data_out(5),
      dout(4) => data_out(4),
      dout(3) => data_out(3),
      dout(2) => data_out(2),
      dout(1) => data_out(1),
      dout(0) => data_out(0),
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
