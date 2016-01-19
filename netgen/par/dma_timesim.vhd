--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: dma_timesim.vhd
-- /___/   /\     Timestamp: Mon Jan 18 23:14:43 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf dma.pcf -rpw 100 -tpw 0 -ar Structure -tm dma -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim dma.ncd dma_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: dma.ncd
-- Output file	: C:\Users\rboq\Documents\LCSE\PRACTICAIII\LCSE-PIII\netgen\par\dma_timesim.vhd
-- # of Entities	: 1
-- Design Name	: dma
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

entity dma is
  port (
    Reset : in STD_LOGIC := 'X'; 
    Clk : in STD_LOGIC := 'X'; 
    RX_Full : in STD_LOGIC := 'X'; 
    RX_Empty : in STD_LOGIC := 'X'; 
    ACK_out : in STD_LOGIC := 'X'; 
    TX_RDY : in STD_LOGIC := 'X'; 
    DMA_ACK : in STD_LOGIC := 'X'; 
    Send_comm : in STD_LOGIC := 'X'; 
    Data_Read : out STD_LOGIC; 
    Valid_D : out STD_LOGIC; 
    Write_en : out STD_LOGIC; 
    OE : out STD_LOGIC; 
    DMA_RQ : out STD_LOGIC; 
    READY : out STD_LOGIC; 
    RCVD_Data : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    TX_Data : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Address : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Databus : inout STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end dma;

architecture Structure of dma is
  signal Clk_BUFGP : STD_LOGIC; 
  signal DMA_RQ_OBUF_326 : STD_LOGIC; 
  signal CurrentState_FSM_FFd1_327 : STD_LOGIC; 
  signal RX_Empty_IBUF_0 : STD_LOGIC; 
  signal CurrentState_FSM_FFd3_329 : STD_LOGIC; 
  signal CurrentState_FSM_FFd2_330 : STD_LOGIC; 
  signal Reset_inv : STD_LOGIC; 
  signal TX_Data_5_OBUF_333 : STD_LOGIC; 
  signal N2_0 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal Mmux_TX_Data11 : STD_LOGIC; 
  signal TX_Data_7_OBUF_0 : STD_LOGIC; 
  signal TX_Data_4_OBUF_338 : STD_LOGIC; 
  signal N3_0 : STD_LOGIC; 
  signal N5_0 : STD_LOGIC; 
  signal TX_Data_6_OBUF_0 : STD_LOGIC; 
  signal Databus_0_IOBUF : STD_LOGIC; 
  signal RCVD_Data_1_IBUF_0 : STD_LOGIC; 
  signal RCVD_Data_0_IBUF_0 : STD_LOGIC; 
  signal Databus_1_IOBUF_0 : STD_LOGIC; 
  signal Databus_2_IOBUF : STD_LOGIC; 
  signal RCVD_Data_3_IBUF_0 : STD_LOGIC; 
  signal RCVD_Data_2_IBUF_0 : STD_LOGIC; 
  signal Databus_3_IOBUF_0 : STD_LOGIC; 
  signal Databus_4_IOBUF : STD_LOGIC; 
  signal RCVD_Data_5_IBUF_0 : STD_LOGIC; 
  signal RCVD_Data_4_IBUF_0 : STD_LOGIC; 
  signal Databus_5_IOBUF_0 : STD_LOGIC; 
  signal TX_Data_3_OBUF_356 : STD_LOGIC; 
  signal N7_0 : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal TX_Data_2_OBUF_0 : STD_LOGIC; 
  signal Databus_6_IOBUF : STD_LOGIC; 
  signal RCVD_Data_7_IBUF_0 : STD_LOGIC; 
  signal RCVD_Data_6_IBUF_0 : STD_LOGIC; 
  signal Databus_7_IOBUF_0 : STD_LOGIC; 
  signal Data_Read_OBUF_0 : STD_LOGIC; 
  signal TX_Data_0_OBUF_365 : STD_LOGIC; 
  signal TX_Data_1_OBUF_0 : STD_LOGIC; 
  signal Valid_D_OBUF_367 : STD_LOGIC; 
  signal CurrentState_2_PWR_5_o_Mux_21_o_inv_0 : STD_LOGIC; 
  signal OE_OBUFT_369 : STD_LOGIC; 
  signal CurrentState_1_GND_22_o_Mux_53_o_inv : STD_LOGIC; 
  signal READY_OBUF_372 : STD_LOGIC; 
  signal Send_comm_IBUF_0 : STD_LOGIC; 
  signal TX_RDY_IBUF_0 : STD_LOGIC; 
  signal ACK_out_IBUF_0 : STD_LOGIC; 
  signal CurrentState_2_inv : STD_LOGIC; 
  signal N9_0 : STD_LOGIC; 
  signal N8_0 : STD_LOGIC; 
  signal Clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal DMA_ACK_IBUF_0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal RX_Empty_IBUF_38 : STD_LOGIC; 
  signal Send_comm_IBUF_41 : STD_LOGIC; 
  signal TX_RDY_IBUF_56 : STD_LOGIC; 
  signal RCVD_Data_0_IBUF_59 : STD_LOGIC; 
  signal RCVD_Data_1_IBUF_62 : STD_LOGIC; 
  signal RCVD_Data_2_IBUF_65 : STD_LOGIC; 
  signal RCVD_Data_3_IBUF_68 : STD_LOGIC; 
  signal RCVD_Data_4_IBUF_71 : STD_LOGIC; 
  signal RCVD_Data_5_IBUF_74 : STD_LOGIC; 
  signal RCVD_Data_6_IBUF_77 : STD_LOGIC; 
  signal ACK_out_IBUF_80 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal ProtoComp8_IINV_OUT : STD_LOGIC; 
  signal Reset_inv_non_inverted : STD_LOGIC; 
  signal RCVD_Data_7_IBUF_92 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal Clk_BUFGP_IBUFG_130 : STD_LOGIC; 
  signal DMA_ACK_IBUF_133 : STD_LOGIC; 
  signal Databus_1_IOBUF : STD_LOGIC; 
  signal Databus_5_IOBUF : STD_LOGIC; 
  signal Databus_3_IOBUF : STD_LOGIC; 
  signal Databus_7_IOBUF : STD_LOGIC; 
  signal TX_Data_6_OBUF_178 : STD_LOGIC; 
  signal TX_Data_7_OBUF_173 : STD_LOGIC; 
  signal TX_Data_2_OBUF_184 : STD_LOGIC; 
  signal TX_Data_1_OBUF_189 : STD_LOGIC; 
  signal data_count_0_rstpot_232 : STD_LOGIC; 
  signal data_count_1_rstpot_224 : STD_LOGIC; 
  signal CurrentState_2_PWR_5_o_Mux_21_o_inv : STD_LOGIC; 
  signal Data_Read_OBUF_262 : STD_LOGIC; 
  signal CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal CurrentState_FSM_FFd3_In_253 : STD_LOGIC; 
  signal CurrentState_FSM_FFd2_pack_12 : STD_LOGIC; 
  signal CurrentState_FSM_FFd2_In : STD_LOGIC; 
  signal NlwBufferSignal_DMA_RQ_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TX_Data_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TX_Data_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TX_Data_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TX_Data_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Valid_D_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TX_Data_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TX_Data_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TX_Data_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Address_0_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_TX_Data_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Address_1_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_OE_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_READY_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Databus_0_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_Databus_1_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_Databus_2_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_Databus_3_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_Databus_4_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_Databus_5_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_Databus_6_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_Databus_7_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_Data_Read_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_data_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_data_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CurrentState_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CurrentState_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CurrentState_FSM_FFd1_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal data_count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  DMA_RQ_OBUF : X_OBUF
    generic map(
      LOC => "PAD164"
    )
    port map (
      I => NlwBufferSignal_DMA_RQ_OBUF_I,
      O => DMA_RQ
    );
  TX_Data_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD180"
    )
    port map (
      I => NlwBufferSignal_TX_Data_0_OBUF_I,
      O => TX_Data(0)
    );
  TX_Data_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD177"
    )
    port map (
      I => NlwBufferSignal_TX_Data_1_OBUF_I,
      O => TX_Data(1)
    );
  TX_Data_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD182"
    )
    port map (
      I => NlwBufferSignal_TX_Data_2_OBUF_I,
      O => TX_Data(2)
    );
  TX_Data_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD183"
    )
    port map (
      I => NlwBufferSignal_TX_Data_3_OBUF_I,
      O => TX_Data(3)
    );
  Valid_D_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => NlwBufferSignal_Valid_D_OBUF_I,
      O => Valid_D
    );
  TX_Data_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD188"
    )
    port map (
      I => NlwBufferSignal_TX_Data_4_OBUF_I,
      O => TX_Data(4)
    );
  TX_Data_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD185"
    )
    port map (
      I => NlwBufferSignal_TX_Data_5_OBUF_I,
      O => TX_Data(5)
    );
  TX_Data_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD186"
    )
    port map (
      I => NlwBufferSignal_TX_Data_6_OBUF_I,
      O => TX_Data(6)
    );
  Address_0_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD168"
    )
    port map (
      I => NlwBufferSignal_Address_0_OBUFT_I,
      O => Address(0),
      CTL => CurrentState_2_PWR_5_o_Mux_21_o_inv_0
    );
  TX_Data_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD187"
    )
    port map (
      I => NlwBufferSignal_TX_Data_7_OBUF_I,
      O => TX_Data(7)
    );
  Address_1_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD161"
    )
    port map (
      I => NlwBufferSignal_Address_1_OBUFT_I,
      O => Address(1),
      CTL => CurrentState_2_PWR_5_o_Mux_21_o_inv_0
    );
  OE_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD176"
    )
    port map (
      I => NlwBufferSignal_OE_OBUFT_I,
      O => OE,
      CTL => CurrentState_1_GND_22_o_Mux_53_o_inv
    );
  Address_2_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => '0',
      O => Address(2),
      CTL => CurrentState_2_PWR_5_o_Mux_21_o_inv_0
    );
  READY_OBUF : X_OBUF
    generic map(
      LOC => "PAD167"
    )
    port map (
      I => NlwBufferSignal_READY_OBUF_I,
      O => READY
    );
  Address_3_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD171"
    )
    port map (
      I => '0',
      O => Address(3),
      CTL => CurrentState_2_PWR_5_o_Mux_21_o_inv_0
    );
  RX_Empty_IBUF : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      O => RX_Empty_IBUF_38,
      I => RX_Empty
    );
  ProtoComp6_IMUX : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      I => RX_Empty_IBUF_38,
      O => RX_Empty_IBUF_0
    );
  Send_comm_IBUF : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 202 ps
    )
    port map (
      O => Send_comm_IBUF_41,
      I => Send_comm
    );
  ProtoComp6_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 202 ps
    )
    port map (
      I => Send_comm_IBUF_41,
      O => Send_comm_IBUF_0
    );
  Address_4_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD157"
    )
    port map (
      I => '0',
      O => Address(4),
      CTL => CurrentState_2_PWR_5_o_Mux_21_o_inv_0
    );
  Address_5_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD173"
    )
    port map (
      I => '0',
      O => Address(5),
      CTL => CurrentState_2_PWR_5_o_Mux_21_o_inv_0
    );
  Address_6_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD170"
    )
    port map (
      I => '0',
      O => Address(6),
      CTL => CurrentState_2_PWR_5_o_Mux_21_o_inv_0
    );
  Address_7_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD169"
    )
    port map (
      I => '0',
      O => Address(7),
      CTL => CurrentState_2_PWR_5_o_Mux_21_o_inv_0
    );
  TX_RDY_IBUF : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 202 ps
    )
    port map (
      O => TX_RDY_IBUF_56,
      I => TX_RDY
    );
  ProtoComp6_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 202 ps
    )
    port map (
      I => TX_RDY_IBUF_56,
      O => TX_RDY_IBUF_0
    );
  RCVD_Data_0_IBUF : X_BUF
    generic map(
      LOC => "PAD195",
      PATHPULSE => 202 ps
    )
    port map (
      O => RCVD_Data_0_IBUF_59,
      I => RCVD_Data(0)
    );
  ProtoComp6_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD195",
      PATHPULSE => 202 ps
    )
    port map (
      I => RCVD_Data_0_IBUF_59,
      O => RCVD_Data_0_IBUF_0
    );
  RCVD_Data_1_IBUF : X_BUF
    generic map(
      LOC => "PAD196",
      PATHPULSE => 202 ps
    )
    port map (
      O => RCVD_Data_1_IBUF_62,
      I => RCVD_Data(1)
    );
  ProtoComp6_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD196",
      PATHPULSE => 202 ps
    )
    port map (
      I => RCVD_Data_1_IBUF_62,
      O => RCVD_Data_1_IBUF_0
    );
  RCVD_Data_2_IBUF : X_BUF
    generic map(
      LOC => "PAD197",
      PATHPULSE => 202 ps
    )
    port map (
      O => RCVD_Data_2_IBUF_65,
      I => RCVD_Data(2)
    );
  ProtoComp6_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD197",
      PATHPULSE => 202 ps
    )
    port map (
      I => RCVD_Data_2_IBUF_65,
      O => RCVD_Data_2_IBUF_0
    );
  RCVD_Data_3_IBUF : X_BUF
    generic map(
      LOC => "PAD198",
      PATHPULSE => 202 ps
    )
    port map (
      O => RCVD_Data_3_IBUF_68,
      I => RCVD_Data(3)
    );
  ProtoComp6_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD198",
      PATHPULSE => 202 ps
    )
    port map (
      I => RCVD_Data_3_IBUF_68,
      O => RCVD_Data_3_IBUF_0
    );
  RCVD_Data_4_IBUF : X_BUF
    generic map(
      LOC => "PAD199",
      PATHPULSE => 202 ps
    )
    port map (
      O => RCVD_Data_4_IBUF_71,
      I => RCVD_Data(4)
    );
  ProtoComp6_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD199",
      PATHPULSE => 202 ps
    )
    port map (
      I => RCVD_Data_4_IBUF_71,
      O => RCVD_Data_4_IBUF_0
    );
  RCVD_Data_5_IBUF : X_BUF
    generic map(
      LOC => "PAD200",
      PATHPULSE => 202 ps
    )
    port map (
      O => RCVD_Data_5_IBUF_74,
      I => RCVD_Data(5)
    );
  ProtoComp6_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD200",
      PATHPULSE => 202 ps
    )
    port map (
      I => RCVD_Data_5_IBUF_74,
      O => RCVD_Data_5_IBUF_0
    );
  RCVD_Data_6_IBUF : X_BUF
    generic map(
      LOC => "PAD201",
      PATHPULSE => 202 ps
    )
    port map (
      O => RCVD_Data_6_IBUF_77,
      I => RCVD_Data(6)
    );
  ProtoComp6_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD201",
      PATHPULSE => 202 ps
    )
    port map (
      I => RCVD_Data_6_IBUF_77,
      O => RCVD_Data_6_IBUF_0
    );
  ACK_out_IBUF : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      O => ACK_out_IBUF_80,
      I => ACK_out
    );
  ProtoComp6_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      I => ACK_out_IBUF_80,
      O => ACK_out_IBUF_0
    );
  Databus_0_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD179"
    )
    port map (
      I => NlwBufferSignal_Databus_0_IOBUF_OBUFT_I,
      O => Databus(0),
      CTL => CurrentState_2_inv
    );
  Databus_0_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 202 ps
    )
    port map (
      O => N9,
      I => Databus(0)
    );
  ProtoComp7_IMUX : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 202 ps
    )
    port map (
      I => N9,
      O => N9_0
    );
  Reset_IBUF : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 202 ps
    )
    port map (
      O => Reset_inv_non_inverted,
      I => Reset
    );
  ProtoComp8_IMUX : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 202 ps
    )
    port map (
      I => ProtoComp8_IINV_OUT,
      O => Reset_inv
    );
  ProtoComp8_IINV : X_INV
    generic map(
      LOC => "PAD163",
      PATHPULSE => 202 ps
    )
    port map (
      I => Reset_inv_non_inverted,
      O => ProtoComp8_IINV_OUT
    );
  RCVD_Data_7_IBUF : X_BUF
    generic map(
      LOC => "PAD202",
      PATHPULSE => 202 ps
    )
    port map (
      O => RCVD_Data_7_IBUF_92,
      I => RCVD_Data(7)
    );
  ProtoComp6_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD202",
      PATHPULSE => 202 ps
    )
    port map (
      I => RCVD_Data_7_IBUF_92,
      O => RCVD_Data_7_IBUF_0
    );
  Databus_1_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD184"
    )
    port map (
      I => NlwBufferSignal_Databus_1_IOBUF_OBUFT_I,
      O => Databus(1),
      CTL => CurrentState_2_inv
    );
  Databus_1_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 202 ps
    )
    port map (
      O => N8,
      I => Databus(1)
    );
  ProtoComp7_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 202 ps
    )
    port map (
      I => N8,
      O => N8_0
    );
  Databus_2_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD189"
    )
    port map (
      I => NlwBufferSignal_Databus_2_IOBUF_OBUFT_I,
      O => Databus(2),
      CTL => CurrentState_2_inv
    );
  Databus_2_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 202 ps
    )
    port map (
      O => N7,
      I => Databus(2)
    );
  ProtoComp7_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 202 ps
    )
    port map (
      I => N7,
      O => N7_0
    );
  Databus_3_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD190"
    )
    port map (
      I => NlwBufferSignal_Databus_3_IOBUF_OBUFT_I,
      O => Databus(3),
      CTL => CurrentState_2_inv
    );
  Databus_3_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 202 ps
    )
    port map (
      O => N6,
      I => Databus(3)
    );
  ProtoComp7_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 202 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
  Databus_4_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD191"
    )
    port map (
      I => NlwBufferSignal_Databus_4_IOBUF_OBUFT_I,
      O => Databus(4),
      CTL => CurrentState_2_inv
    );
  Databus_4_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 202 ps
    )
    port map (
      O => N5,
      I => Databus(4)
    );
  ProtoComp7_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 202 ps
    )
    port map (
      I => N5,
      O => N5_0
    );
  Databus_5_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => NlwBufferSignal_Databus_5_IOBUF_OBUFT_I,
      O => Databus(5),
      CTL => CurrentState_2_inv
    );
  Databus_5_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 202 ps
    )
    port map (
      O => N4,
      I => Databus(5)
    );
  ProtoComp7_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 202 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  Databus_6_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD193"
    )
    port map (
      I => NlwBufferSignal_Databus_6_IOBUF_OBUFT_I,
      O => Databus(6),
      CTL => CurrentState_2_inv
    );
  Databus_6_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 202 ps
    )
    port map (
      O => N3,
      I => Databus(6)
    );
  ProtoComp7_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 202 ps
    )
    port map (
      I => N3,
      O => N3_0
    );
  Databus_7_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD194"
    )
    port map (
      I => NlwBufferSignal_Databus_7_IOBUF_OBUFT_I,
      O => Databus(7),
      CTL => CurrentState_2_inv
    );
  Databus_7_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD194",
      PATHPULSE => 202 ps
    )
    port map (
      O => N2,
      I => Databus(7)
    );
  ProtoComp7_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD194",
      PATHPULSE => 202 ps
    )
    port map (
      I => N2,
      O => N2_0
    );
  Clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => Clk_BUFGP_IBUFG_130,
      I => Clk
    );
  ProtoComp6_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP_IBUFG_130,
      O => Clk_BUFGP_IBUFG_0
    );
  DMA_ACK_IBUF : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      O => DMA_ACK_IBUF_133,
      I => DMA_ACK
    );
  ProtoComp6_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      I => DMA_ACK_IBUF_133,
      O => DMA_ACK_IBUF_0
    );
  Data_Read_OBUF : X_OBUF
    generic map(
      LOC => "PAD181"
    )
    port map (
      I => NlwBufferSignal_Data_Read_OBUF_I,
      O => Data_Read
    );
  Write_en_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD178"
    )
    port map (
      I => '1',
      O => Write_en,
      CTL => CurrentState_2_inv
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
  Databus_0_IOBUF_Databus_0_IOBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_1_IOBUF,
      O => Databus_1_IOBUF_0
    );
  Mmux_RCVD_Data_7_PWR_4_o_mux_9_OUT_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y2",
      INIT => X"FCCCFCCCFCCCFCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => data_count(1),
      ADR3 => data_count(0),
      ADR1 => RCVD_Data_0_IBUF_0,
      ADR5 => '1',
      O => Databus_0_IOBUF
    );
  Mmux_RCVD_Data_7_PWR_4_o_mux_9_OUT_1_11 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y2",
      INIT => X"FFFFF000"
    )
    port map (
      ADR0 => '1',
      ADR4 => RCVD_Data_1_IBUF_0,
      ADR2 => data_count(1),
      ADR3 => data_count(0),
      ADR1 => '1',
      O => Databus_1_IOBUF
    );
  Databus_4_IOBUF_Databus_4_IOBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_5_IOBUF,
      O => Databus_5_IOBUF_0
    );
  Mmux_RCVD_Data_7_PWR_4_o_mux_9_OUT_4_11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => X"FCF0FCF0FCF0FCF0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => data_count(1),
      ADR3 => data_count(0),
      ADR2 => RCVD_Data_4_IBUF_0,
      ADR5 => '1',
      O => Databus_4_IOBUF
    );
  Mmux_RCVD_Data_7_PWR_4_o_mux_9_OUT_5_11 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => X"FFFFCC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => RCVD_Data_5_IBUF_0,
      ADR1 => data_count(1),
      ADR3 => data_count(0),
      ADR2 => '1',
      O => Databus_5_IOBUF
    );
  Databus_2_IOBUF_Databus_2_IOBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_3_IOBUF,
      O => Databus_3_IOBUF_0
    );
  Mmux_RCVD_Data_7_PWR_4_o_mux_9_OUT_2_11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => X"FCFCCCCCFCFCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => data_count(1),
      ADR2 => data_count(0),
      ADR1 => RCVD_Data_2_IBUF_0,
      ADR5 => '1',
      O => Databus_2_IOBUF
    );
  Mmux_RCVD_Data_7_PWR_4_o_mux_9_OUT_3_11 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => X"FFF0FF00"
    )
    port map (
      ADR0 => '1',
      ADR3 => RCVD_Data_3_IBUF_0,
      ADR4 => data_count(1),
      ADR2 => data_count(0),
      ADR1 => '1',
      O => Databus_3_IOBUF
    );
  Databus_6_IOBUF_Databus_6_IOBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_7_IOBUF,
      O => Databus_7_IOBUF_0
    );
  Mmux_RCVD_Data_7_PWR_4_o_mux_9_OUT_6_11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => X"FFFFF000FFFFF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => data_count(1),
      ADR2 => data_count(0),
      ADR4 => RCVD_Data_6_IBUF_0,
      ADR5 => '1',
      O => Databus_6_IOBUF
    );
  Mmux_RCVD_Data_7_PWR_4_o_mux_9_OUT_7_11 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => X"FAAAFAAA"
    )
    port map (
      ADR1 => '1',
      ADR0 => RCVD_Data_7_IBUF_0,
      ADR3 => data_count(1),
      ADR2 => data_count(0),
      ADR4 => '1',
      O => Databus_7_IOBUF
    );
  TX_Data_4_OBUF_TX_Data_4_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TX_Data_6_OBUF_178,
      O => TX_Data_6_OBUF_0
    );
  TX_Data_4_OBUF_TX_Data_4_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TX_Data_7_OBUF_173,
      O => TX_Data_7_OBUF_0
    );
  Mmux_TX_Data51 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => X"C0C0C0C0C0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => N5_0,
      ADR1 => Mmux_TX_Data11,
      ADR5 => '1',
      O => TX_Data_4_OBUF_338
    );
  Mmux_TX_Data71 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => N3_0,
      ADR2 => '1',
      ADR1 => Mmux_TX_Data11,
      O => TX_Data_6_OBUF_178
    );
  Mmux_TX_Data61 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => X"F000F000F000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => N4_0,
      ADR2 => Mmux_TX_Data11,
      ADR5 => '1',
      O => TX_Data_5_OBUF_333
    );
  Mmux_TX_Data81 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => X"A0A0A0A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => N2_0,
      ADR3 => '1',
      ADR2 => Mmux_TX_Data11,
      O => TX_Data_7_OBUF_173
    );
  TX_Data_3_OBUF_TX_Data_3_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TX_Data_2_OBUF_184,
      O => TX_Data_2_OBUF_0
    );
  Mmux_TX_Data41 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => X"F000F000F000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => N6_0,
      ADR2 => Mmux_TX_Data11,
      ADR5 => '1',
      O => TX_Data_3_OBUF_356
    );
  Mmux_TX_Data31 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => X"C0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => N7_0,
      ADR3 => '1',
      ADR2 => Mmux_TX_Data11,
      O => TX_Data_2_OBUF_184
    );
  TX_Data_0_OBUF_TX_Data_0_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TX_Data_1_OBUF_189,
      O => TX_Data_1_OBUF_0
    );
  Mmux_TX_Data12 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"CC00CC00CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => N9_0,
      ADR3 => Mmux_TX_Data11,
      ADR5 => '1',
      O => TX_Data_0_OBUF_365
    );
  Mmux_TX_Data21 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => N8_0,
      ADR4 => '1',
      ADR3 => Mmux_TX_Data11,
      O => TX_Data_1_OBUF_189
    );
  Mmux_TX_Data111 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"0000008000000000"
    )
    port map (
      ADR3 => CurrentState_FSM_FFd1_327,
      ADR0 => ACK_out_IBUF_0,
      ADR2 => TX_RDY_IBUF_0,
      ADR1 => CurrentState_FSM_FFd3_329,
      ADR4 => CurrentState_FSM_FFd2_330,
      ADR5 => OE_OBUFT_369,
      O => Mmux_TX_Data11
    );
  CurrentState_2_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => CurrentState_FSM_FFd1_327,
      O => CurrentState_2_inv
    );
  CurrentState_1_GND_22_o_Mux_53_o_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => X"FFFF7707FFFFFFFF"
    )
    port map (
      ADR2 => data_count(1),
      ADR3 => data_count(0),
      ADR1 => TX_RDY_IBUF_0,
      ADR0 => ACK_out_IBUF_0,
      ADR5 => CurrentState_FSM_FFd3_329,
      ADR4 => CurrentState_FSM_FFd2_330,
      O => CurrentState_1_GND_22_o_Mux_53_o_inv
    );
  data_count_1_data_count_1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CurrentState_2_PWR_5_o_Mux_21_o_inv,
      O => CurrentState_2_PWR_5_o_Mux_21_o_inv_0
    );
  data_count_1_INV_5_o1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"C0C0C0C0C0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => TX_RDY_IBUF_0,
      ADR1 => ACK_out_IBUF_0,
      ADR5 => '1',
      O => N18
    );
  CurrentState_2_PWR_5_o_Mux_21_o_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"55551515"
    )
    port map (
      ADR3 => '1',
      ADR0 => CurrentState_FSM_FFd1_327,
      ADR4 => READY_OBUF_372,
      ADR2 => TX_RDY_IBUF_0,
      ADR1 => ACK_out_IBUF_0,
      O => CurrentState_2_PWR_5_o_Mux_21_o_inv
    );
  Mmux_READY11 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"FF0FFFFFFF00FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => data_count(1),
      ADR2 => data_count(0),
      ADR3 => CurrentState_FSM_FFd2_330,
      ADR4 => CurrentState_FSM_FFd3_329,
      O => READY_OBUF_372
    );
  data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_data_count_1_CLK,
      I => data_count_1_rstpot_224,
      O => data_count(1),
      RST => Reset_inv,
      SET => GND
    );
  data_count_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"3C3C3C3CF0F078F0"
    )
    port map (
      ADR1 => data_count(0),
      ADR3 => CurrentState_FSM_FFd3_329,
      ADR4 => CurrentState_FSM_FFd2_330,
      ADR2 => data_count(1),
      ADR5 => CurrentState_FSM_FFd1_327,
      ADR0 => N18,
      O => data_count_1_rstpot_224
    );
  data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_data_count_0_CLK,
      I => data_count_0_rstpot_232,
      O => data_count(0),
      RST => Reset_inv,
      SET => GND
    );
  data_count_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"00FFFF0000FF7708"
    )
    port map (
      ADR4 => CurrentState_FSM_FFd1_327,
      ADR0 => N18,
      ADR5 => CurrentState_FSM_FFd2_330,
      ADR3 => data_count(0),
      ADR1 => CurrentState_FSM_FFd3_329,
      ADR2 => data_count(1),
      O => data_count_0_rstpot_232
    );
  CurrentState_FSM_FFd3_CurrentState_FSM_FFd3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CurrentState_FSM_FFd2_pack_12,
      O => CurrentState_FSM_FFd2_330
    );
  CurrentState_FSM_FFd3_CurrentState_FSM_FFd3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_Read_OBUF_262,
      O => Data_Read_OBUF_0
    );
  CurrentState_DMA_RQ1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"00AA00AA00AA00AA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => CurrentState_FSM_FFd3_329,
      ADR0 => CurrentState_FSM_FFd2_330,
      ADR5 => '1',
      O => DMA_RQ_OBUF_326
    );
  CurrentState_FSM_FFd2_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"00AA00AF"
    )
    port map (
      ADR1 => '1',
      ADR4 => CurrentState_FSM_FFd1_327,
      ADR2 => RX_Empty_IBUF_0,
      ADR3 => CurrentState_FSM_FFd3_329,
      ADR0 => CurrentState_FSM_FFd2_330,
      O => CurrentState_FSM_FFd2_In
    );
  CurrentState_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_CurrentState_FSM_FFd2_CLK,
      I => CurrentState_FSM_FFd2_In,
      O => CurrentState_FSM_FFd2_pack_12,
      RST => Reset_inv,
      SET => GND
    );
  data_count_1_INV_5_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"F0F0F0F0FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => data_count(1),
      ADR2 => data_count(0),
      O => OE_OBUFT_369
    );
  CurrentState_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_CurrentState_FSM_FFd3_CLK,
      I => CurrentState_FSM_FFd3_In_253,
      O => CurrentState_FSM_FFd3_329,
      RST => Reset_inv,
      SET => GND
    );
  CurrentState_FSM_FFd3_In : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"0000F0F0FF001111"
    )
    port map (
      ADR2 => DMA_ACK_IBUF_0,
      ADR5 => CurrentState_FSM_FFd2_330,
      ADR1 => CurrentState_FSM_FFd1_327,
      ADR4 => CurrentState_FSM_FFd3_329,
      ADR0 => N01,
      ADR3 => OE_OBUFT_369,
      O => CurrentState_FSM_FFd3_In_253
    );
  CurrentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_CurrentState_FSM_FFd1_CLK,
      I => CurrentState_FSM_FFd1_In,
      O => CurrentState_FSM_FFd1_327,
      RST => Reset_inv,
      SET => GND
    );
  CurrentState_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"AEEE0CCCAEEE0CCC"
    )
    port map (
      ADR3 => data_count(0),
      ADR2 => data_count(1),
      ADR0 => CurrentState_FSM_FFd3_329,
      ADR1 => CurrentState_FSM_FFd1_327,
      ADR4 => CurrentState_FSM_FFd2_330,
      ADR5 => '1',
      O => CurrentState_FSM_FFd1_In
    );
  Mmux_Data_Read11 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"2EEE0CCC"
    )
    port map (
      ADR3 => data_count(0),
      ADR2 => data_count(1),
      ADR0 => CurrentState_FSM_FFd3_329,
      ADR1 => CurrentState_FSM_FFd1_327,
      ADR4 => CurrentState_FSM_FFd2_330,
      O => Data_Read_OBUF_262
    );
  Mmux_Valid_D11 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"F7FFFFFFF7FFF7FF"
    )
    port map (
      ADR0 => CurrentState_FSM_FFd3_329,
      ADR5 => data_count(1),
      ADR4 => data_count(0),
      ADR2 => CurrentState_FSM_FFd2_330,
      ADR1 => TX_RDY_IBUF_0,
      ADR3 => ACK_out_IBUF_0,
      O => Valid_D_OBUF_367
    );
  CurrentState_FSM_FFd3_In_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => X"0000FFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Send_comm_IBUF_0,
      ADR4 => RX_Empty_IBUF_0,
      O => N01
    );
  NlwBufferBlock_DMA_RQ_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DMA_RQ_OBUF_326,
      O => NlwBufferSignal_DMA_RQ_OBUF_I
    );
  NlwBufferBlock_TX_Data_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TX_Data_0_OBUF_365,
      O => NlwBufferSignal_TX_Data_0_OBUF_I
    );
  NlwBufferBlock_TX_Data_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TX_Data_1_OBUF_0,
      O => NlwBufferSignal_TX_Data_1_OBUF_I
    );
  NlwBufferBlock_TX_Data_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TX_Data_2_OBUF_0,
      O => NlwBufferSignal_TX_Data_2_OBUF_I
    );
  NlwBufferBlock_TX_Data_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TX_Data_3_OBUF_356,
      O => NlwBufferSignal_TX_Data_3_OBUF_I
    );
  NlwBufferBlock_Valid_D_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Valid_D_OBUF_367,
      O => NlwBufferSignal_Valid_D_OBUF_I
    );
  NlwBufferBlock_TX_Data_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TX_Data_4_OBUF_338,
      O => NlwBufferSignal_TX_Data_4_OBUF_I
    );
  NlwBufferBlock_TX_Data_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TX_Data_5_OBUF_333,
      O => NlwBufferSignal_TX_Data_5_OBUF_I
    );
  NlwBufferBlock_TX_Data_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TX_Data_6_OBUF_0,
      O => NlwBufferSignal_TX_Data_6_OBUF_I
    );
  NlwBufferBlock_Address_0_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_count(0),
      O => NlwBufferSignal_Address_0_OBUFT_I
    );
  NlwBufferBlock_TX_Data_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TX_Data_7_OBUF_0,
      O => NlwBufferSignal_TX_Data_7_OBUF_I
    );
  NlwBufferBlock_Address_1_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_count(1),
      O => NlwBufferSignal_Address_1_OBUFT_I
    );
  NlwBufferBlock_OE_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OE_OBUFT_369,
      O => NlwBufferSignal_OE_OBUFT_I
    );
  NlwBufferBlock_READY_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => READY_OBUF_372,
      O => NlwBufferSignal_READY_OBUF_I
    );
  NlwBufferBlock_Databus_0_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_0_IOBUF,
      O => NlwBufferSignal_Databus_0_IOBUF_OBUFT_I
    );
  NlwBufferBlock_Databus_1_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_1_IOBUF_0,
      O => NlwBufferSignal_Databus_1_IOBUF_OBUFT_I
    );
  NlwBufferBlock_Databus_2_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_2_IOBUF,
      O => NlwBufferSignal_Databus_2_IOBUF_OBUFT_I
    );
  NlwBufferBlock_Databus_3_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_3_IOBUF_0,
      O => NlwBufferSignal_Databus_3_IOBUF_OBUFT_I
    );
  NlwBufferBlock_Databus_4_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_4_IOBUF,
      O => NlwBufferSignal_Databus_4_IOBUF_OBUFT_I
    );
  NlwBufferBlock_Databus_5_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_5_IOBUF_0,
      O => NlwBufferSignal_Databus_5_IOBUF_OBUFT_I
    );
  NlwBufferBlock_Databus_6_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_6_IOBUF,
      O => NlwBufferSignal_Databus_6_IOBUF_OBUFT_I
    );
  NlwBufferBlock_Databus_7_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_7_IOBUF_0,
      O => NlwBufferSignal_Databus_7_IOBUF_OBUFT_I
    );
  NlwBufferBlock_Data_Read_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_Read_OBUF_0,
      O => NlwBufferSignal_Data_Read_OBUF_I
    );
  NlwBufferBlock_Clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_Clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_data_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_data_count_1_CLK
    );
  NlwBufferBlock_data_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_data_count_0_CLK
    );
  NlwBufferBlock_CurrentState_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_CurrentState_FSM_FFd2_CLK
    );
  NlwBufferBlock_CurrentState_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_CurrentState_FSM_FFd3_CLK
    );
  NlwBufferBlock_CurrentState_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_CurrentState_FSM_FFd1_CLK
    );
  NlwBlock_dma_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_dma_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

