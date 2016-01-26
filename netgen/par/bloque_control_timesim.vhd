--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: bloque_control_timesim.vhd
-- /___/   /\     Timestamp: Wed Jan 20 19:00:08 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf bloque_control.pcf -rpw 100 -tpw 0 -ar Structure -tm bloque_control -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim bloque_control.ncd bloque_control_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: bloque_control.ncd
-- Output file	: C:\Users\rboq\Documents\LCSE\PRACTICAIII\LCSE-PIII\netgen\par\bloque_control_timesim.vhd
-- # of Entities	: 1
-- Design Name	: bloque_control
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

entity bloque_control is
  port (
    Reset : in STD_LOGIC := 'X'; 
    Clk : in STD_LOGIC := 'X'; 
    DMA_RQ : in STD_LOGIC := 'X'; 
    DMA_READY : in STD_LOGIC := 'X'; 
    RAM_CS : out STD_LOGIC; 
    RAM_Write : out STD_LOGIC; 
    RAM_OE : out STD_LOGIC; 
    DMA_ACK : out STD_LOGIC; 
    SEND_comm : out STD_LOGIC; 
    RAM_Addr : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Databus : inout STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end bloque_control;

architecture Structure of bloque_control is
  signal controlador_n0347 : STD_LOGIC; 
  signal controlador_Reg_instruct_6_1769 : STD_LOGIC; 
  signal controlador_Reg_instruct_7_1770 : STD_LOGIC; 
  signal controlador_Reg_instruct_5_1771 : STD_LOGIC; 
  signal controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_3_Q : STD_LOGIC; 
  signal controlador_Reg_instruct_1_1773 : STD_LOGIC; 
  signal controlador_Reg_instruct_2_1774 : STD_LOGIC; 
  signal controlador_Reg_instruct_3_1775 : STD_LOGIC; 
  signal controlador_Reg_instruct_4_1776 : STD_LOGIC; 
  signal alu_comp_reg_a_5_1779 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_a_5_Mux_48_o_0 : STD_LOGIC; 
  signal alu_comp_reg_b_1_1782 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_a_1_Mux_56_o_0 : STD_LOGIC; 
  signal N30_0 : STD_LOGIC; 
  signal alu_comp_reg_acc_1_1788 : STD_LOGIC; 
  signal alu_comp_Index_Reg_1_1789 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o221_0 : STD_LOGIC; 
  signal alu_comp_n0235_0_0 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_add_0_OUT_1_0 : STD_LOGIC; 
  signal alu_comp_GND_62_o_GND_62_o_sub_3_OUT_1_0 : STD_LOGIC; 
  signal alu_comp_reg_acc_0_1796 : STD_LOGIC; 
  signal alu_comp_reg_acc_2_1797 : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd2_1800 : STD_LOGIC; 
  signal ROM_Addr_0_0 : STD_LOGIC; 
  signal alu_comp_reg_b_2_1803 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_a_2_Mux_54_o_0 : STD_LOGIC; 
  signal ALU_op_3_0 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_1808 : STD_LOGIC; 
  signal alu_comp_reg_a_6_1809 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_a_6_Mux_46_o_0 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o22 : STD_LOGIC; 
  signal alu_comp_reg_a_1_1812 : STD_LOGIC; 
  signal controlador_CurrentState_2_GND_28_o_Mux_193_o_inv : STD_LOGIC; 
  signal controlador_Reg_instruct_4_GND_19_o_Mux_79_o : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd3_1815 : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd1_1816 : STD_LOGIC; 
  signal controlador_Reg_instruct_0_1817 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o24 : STD_LOGIC; 
  signal alu_comp_reg_a_2_1819 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o241_0 : STD_LOGIC; 
  signal alu_comp_reg_b_3_1821 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_a_3_Mux_52_o_0 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o26 : STD_LOGIC; 
  signal alu_comp_reg_a_3_1824 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o261_0 : STD_LOGIC; 
  signal alu_comp_reg_a_7_1826 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_a_7_Mux_44_o_0 : STD_LOGIC; 
  signal N112_0 : STD_LOGIC; 
  signal alu_comp_reg_acc_3_1829 : STD_LOGIC; 
  signal alu_comp_reg_acc_5_1830 : STD_LOGIC; 
  signal N111_0 : STD_LOGIC; 
  signal alu_comp_reg_acc_4_1832 : STD_LOGIC; 
  signal N103_0 : STD_LOGIC; 
  signal alu_comp_reg_acc_6_1834 : STD_LOGIC; 
  signal N102_0 : STD_LOGIC; 
  signal alu_comp_reg_a_4_1836 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o21021_1837 : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_4_Q_1838 : STD_LOGIC; 
  signal alu_comp_reg_b_4_1839 : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_0_Q_1840 : STD_LOGIC; 
  signal alu_comp_reg_a_0_1841 : STD_LOGIC; 
  signal alu_comp_reg_b_0_1842 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2231_0 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2142_1845 : STD_LOGIC; 
  signal N24_0 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o214 : STD_LOGIC; 
  signal N29_0 : STD_LOGIC; 
  signal alu_comp_Index_Reg_2_1849 : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd2_In : STD_LOGIC; 
  signal DMA_RQ_IBUF_0 : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_3_Q_1852 : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_2_0 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_a_4_Mux_50_o_0 : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_7_Q_1855 : STD_LOGIC; 
  signal alu_comp_reg_acc_7_1856 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2141_1857 : STD_LOGIC; 
  signal alu_comp_reg_b_7_1858 : STD_LOGIC; 
  signal N31_0 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_a_0_Mux_58_o_0 : STD_LOGIC; 
  signal alu_comp_Index_Reg_0_1861 : STD_LOGIC; 
  signal alu_comp_reg_b_5_1862 : STD_LOGIC; 
  signal N28_0 : STD_LOGIC; 
  signal alu_comp_Index_Reg_3_1864 : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_5_Q_1865 : STD_LOGIC; 
  signal N25_0 : STD_LOGIC; 
  signal alu_comp_Index_Reg_6_1867 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_add_0_OUT_2_0 : STD_LOGIC; 
  signal alu_comp_GND_62_o_GND_62_o_sub_3_OUT_2_0 : STD_LOGIC; 
  signal controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_2_0 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o15_1873 : STD_LOGIC; 
  signal alu_comp_reg_b_6_1874 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal ROM_Addr_6_0 : STD_LOGIC; 
  signal SEND_comm_OBUF_1880 : STD_LOGIC; 
  signal N27_0 : STD_LOGIC; 
  signal alu_comp_Index_Reg_4_1882 : STD_LOGIC; 
  signal alu_comp_reg_b_7_reg_a_7_LessThan_13_o11_0 : STD_LOGIC; 
  signal alu_comp_n0235_1_0 : STD_LOGIC; 
  signal alu_comp_Index_Reg_7_1885 : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_6_Q_1886 : STD_LOGIC; 
  signal ROM_Addr_4_0 : STD_LOGIC; 
  signal Databus_1_MLTSRCEDGE : STD_LOGIC; 
  signal controlador_CurrentState_2_PWR_85_o_Mux_207_o : STD_LOGIC; 
  signal controlador_Reg_operand_1_1893 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_Alu_op_4_DLATCH_70_q_1894 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_add_0_OUT_3_0 : STD_LOGIC; 
  signal alu_comp_GND_62_o_GND_62_o_sub_3_OUT_3_0 : STD_LOGIC; 
  signal N26_0 : STD_LOGIC; 
  signal alu_comp_Index_Reg_5_1900 : STD_LOGIC; 
  signal Databus_5_MLTSRCEDGE : STD_LOGIC; 
  signal controlador_Reg_operand_5_1902 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_Alu_op_4_DLATCH_62_q_1903 : STD_LOGIC; 
  signal controlador_Reg_operand_0_1904 : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_0_0 : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_1_0 : STD_LOGIC; 
  signal controlador_Reg_operand_2_1907 : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_2_0 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_Q_1909 : STD_LOGIC; 
  signal controlador_Reg_operand_3_1910 : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_3_0 : STD_LOGIC; 
  signal N109_0 : STD_LOGIC; 
  signal N108_0 : STD_LOGIC; 
  signal controlador_Reg_operand_4_1914 : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_4_0 : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_5_0 : STD_LOGIC; 
  signal controlador_Reg_operand_6_1917 : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_6_0 : STD_LOGIC; 
  signal controlador_Reg_operand_7_1919 : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_7_0 : STD_LOGIC; 
  signal alu_comp_GND_62_o_GND_62_o_sub_3_OUT_0_0 : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_Q_1922 : STD_LOGIC; 
  signal alu_comp_GND_62_o_GND_62_o_sub_3_OUT_4_0 : STD_LOGIC; 
  signal alu_comp_GND_62_o_GND_62_o_sub_3_OUT_5_0 : STD_LOGIC; 
  signal alu_comp_GND_62_o_GND_62_o_sub_3_OUT_6_0 : STD_LOGIC; 
  signal alu_comp_GND_62_o_GND_62_o_sub_3_OUT_7_0 : STD_LOGIC; 
  signal controlador_set_prog_count_inv : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd1_2_1930 : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd3_2_1931 : STD_LOGIC; 
  signal Clk_BUFGP : STD_LOGIC; 
  signal controlador_Mcount_prog_count_cy_3_Q_1935 : STD_LOGIC; 
  signal controlador_Reset_inv : STD_LOGIC; 
  signal controlador_Mcount_prog_count_cy_7_Q_1938 : STD_LOGIC; 
  signal N89_0 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_add_0_OUT_7_0 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_add_0_OUT_0_0 : STD_LOGIC; 
  signal alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_Q_1946 : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd3_In : STD_LOGIC; 
  signal DMA_READY_IBUF_0 : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd1_1_1949 : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd3_1_1950 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_add_0_OUT_4_0 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_add_0_OUT_5_0 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_add_0_OUT_6_0 : STD_LOGIC; 
  signal N106_0 : STD_LOGIC; 
  signal N105_0 : STD_LOGIC; 
  signal RAM_Addr_0_OBUFT_1956 : STD_LOGIC; 
  signal controlador_CurrentState_2_PWR_25_o_Mux_87_o_inv : STD_LOGIC; 
  signal RAM_Addr_1_OBUFT_1958 : STD_LOGIC; 
  signal RAM_Addr_2_OBUFT_0 : STD_LOGIC; 
  signal rom_comp_n0680_12_0 : STD_LOGIC; 
  signal RAM_Addr_3_OBUFT_1962 : STD_LOGIC; 
  signal RAM_Addr_4_OBUFT_1963 : STD_LOGIC; 
  signal RAM_Addr_5_OBUFT_1964 : STD_LOGIC; 
  signal RAM_Addr_6_OBUFT_1965 : STD_LOGIC; 
  signal RAM_Addr_7_OBUFT_1966 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o14_1967 : STD_LOGIC; 
  signal rom_comp_n0680_5_0 : STD_LOGIC; 
  signal rom_comp_n0680_11_0 : STD_LOGIC; 
  signal controlador_CurrentState_2_GND_29_o_Mux_199_o_inv : STD_LOGIC; 
  signal N22_0 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal Databus_0_MLTSRCEDGE_0 : STD_LOGIC; 
  signal rom_comp_n0680_10_0 : STD_LOGIC; 
  signal rom_comp_n0680_9_0 : STD_LOGIC; 
  signal Databus_2_MLTSRCEDGE : STD_LOGIC; 
  signal rom_comp_n0680_8_0 : STD_LOGIC; 
  signal Databus_3_MLTSRCEDGE : STD_LOGIC; 
  signal Databus_4_MLTSRCEDGE : STD_LOGIC; 
  signal rom_comp_n0680_7_0 : STD_LOGIC; 
  signal Databus_6_MLTSRCEDGE : STD_LOGIC; 
  signal rom_comp_n0680_6_0 : STD_LOGIC; 
  signal Databus_7_MLTSRCEDGE : STD_LOGIC; 
  signal Clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal DMA_ACK_OBUF_1992 : STD_LOGIC; 
  signal controlador_CurrentState_2_PWR_118_o_Mux_273_o : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal alu_comp_FlagZ_1995 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_Alu_op_4_DLATCH_58_q_1996 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o282 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2122 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2232_1999 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2102 : STD_LOGIC; 
  signal ROM_Addr_2_0 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_2003 : STD_LOGIC; 
  signal controlador_CurrentState_2_PWR_126_o_Mux_289_o_0 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o11_2005 : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_1_Q_2006 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o12_2007 : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o121_2008 : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o131_0 : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o141_2010 : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o151_0 : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o171_0 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_LessThan_12_o2_2013 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o223_2014 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o222_2015 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o212 : STD_LOGIC; 
  signal alu_comp_reg_b_7_reg_a_7_LessThan_13_o2_2017 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o242_2018 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o262_2019 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o28 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o210 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o1 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o13_2023 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_Alu_op_4_DLATCH_64_q_2024 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_Alu_op_4_DLATCH_66_q_2026 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_Alu_op_4_DLATCH_72_q_2028 : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd3_In1_2029 : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd2_1_2030 : STD_LOGIC; 
  signal controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_4_Q : STD_LOGIC; 
  signal alu_comp_reg_b_7_reg_a_7_LessThan_13_o1 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_LessThan_12_o1_2033 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N91_2035 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_Alu_op_4_DLATCH_60_q_2036 : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o15 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o12 : STD_LOGIC; 
  signal controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_0_Q : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o112_2042 : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o111_2043 : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o13 : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o14 : STD_LOGIC; 
  signal controlador_CurrentState_2_PWR_25_o_Mux_87_o_inv1_2046 : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o161_2047 : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_1_Q : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o17 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_0_Q_19 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_1_Q_15 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_2_Q_11 : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_0_Q : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_1_Q : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_2_Q : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_3_Q : STD_LOGIC; 
  signal ProtoComp21_CYINITGND_0 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_3_Q_1 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_4_Q_39 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_5_Q_35 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_6_Q_31 : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_4_Q : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_5_Q : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_6_Q : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_7_Q : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_7_Q_22 : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_0_1_61 : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_1_1_57 : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_2_1_53 : STD_LOGIC; 
  signal ProtoComp24_CYINITVCC_1 : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_3_1_43 : STD_LOGIC; 
  signal controlador_Mcount_prog_count_lut_0_rt_101 : STD_LOGIC; 
  signal controlador_Mcount_prog_count : STD_LOGIC; 
  signal controlador_Mcount_prog_count1 : STD_LOGIC; 
  signal controlador_Mcount_prog_count2 : STD_LOGIC; 
  signal controlador_Mcount_prog_count3 : STD_LOGIC; 
  signal controlador_Mcount_prog_count4 : STD_LOGIC; 
  signal controlador_Mcount_prog_count5 : STD_LOGIC; 
  signal controlador_Mcount_prog_count6 : STD_LOGIC; 
  signal controlador_Mcount_prog_count7 : STD_LOGIC; 
  signal controlador_Mcount_prog_count8 : STD_LOGIC; 
  signal controlador_Mcount_prog_count9 : STD_LOGIC; 
  signal controlador_Mcount_prog_count10 : STD_LOGIC; 
  signal controlador_Mcount_prog_count11 : STD_LOGIC; 
  signal alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_0_Q_212 : STD_LOGIC; 
  signal alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_1_Q_208 : STD_LOGIC; 
  signal alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_2_Q_204 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_add_0_OUT_0_Q : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_add_0_OUT_1_Q : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_add_0_OUT_2_Q : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_add_0_OUT_3_Q : STD_LOGIC; 
  signal alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_ProtoComp21_CYINITGND_0 : STD_LOGIC; 
  signal alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_3_Q_194 : STD_LOGIC; 
  signal alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_4_Q_232 : STD_LOGIC; 
  signal alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_5_Q_228 : STD_LOGIC; 
  signal alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_6_Q_224 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_add_0_OUT_4_Q : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_add_0_OUT_5_Q : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_add_0_OUT_6_Q : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_add_0_OUT_7_Q : STD_LOGIC; 
  signal alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_7_Q_215 : STD_LOGIC; 
  signal DMA_RQ_IBUF_236 : STD_LOGIC; 
  signal DMA_READY_IBUF_271 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal ProtoComp43_IINV_OUT : STD_LOGIC; 
  signal controlador_Reset_inv_non_inverted : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal Clk_BUFGP_IBUFG_318 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_acc_1_Mux_38_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_acc_0_Mux_40_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_acc_6_Mux_28_o : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_7_1_454 : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_6_1_444 : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_5_1_440 : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_4_1_436 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_acc_3_Mux_34_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_acc_2_Mux_36_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_acc_4_Mux_32_o : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o28_pack_5 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_acc_5_Mux_30_o : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o241_551 : STD_LOGIC; 
  signal alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_2_Q_598 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_Index_Reg_3_Mux_84_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_a_3_Mux_52_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_Index_Reg_2_Mux_86_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_a_2_Mux_54_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_Index_Reg_1_Mux_88_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_a_1_Mux_56_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_Index_Reg_0_Mux_90_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_a_0_Mux_58_o : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2231_700 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_FlagZ_Mux_42_o : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o214_pack_3 : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_acc_7_Mux_26_o : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o261_791 : STD_LOGIC; 
  signal N12_pack_4 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal RAM_Addr_2_OBUFT_869 : STD_LOGIC; 
  signal Databus_0_MLTSRCEDGE : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd2_1_pack_6 : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd2_In_rt_909 : STD_LOGIC; 
  signal rom_comp_Mram_n0680 : STD_LOGIC; 
  signal rom_comp_Mram_n06801_954 : STD_LOGIC; 
  signal rom_comp_Mram_n06802_946 : STD_LOGIC; 
  signal rom_comp_Mram_n06803_938 : STD_LOGIC; 
  signal rom_comp_Mram_n0680_f7_937 : STD_LOGIC; 
  signal rom_comp_Mram_n0680_f71 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_2_Q : STD_LOGIC; 
  signal alu_comp_Alu_op_4_Index_Reg_7_Mux_76_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_a_7_Mux_44_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_Index_Reg_6_Mux_78_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_a_6_Mux_46_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_Index_Reg_5_Mux_80_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_a_5_Mux_48_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_Index_Reg_4_Mux_82_o : STD_LOGIC; 
  signal alu_comp_Alu_op_4_reg_a_4_Mux_50_o : STD_LOGIC; 
  signal alu_comp_reg_b_7_reg_a_7_LessThan_13_o11_1042 : STD_LOGIC; 
  signal rom_comp_Mram_n06806_1133 : STD_LOGIC; 
  signal rom_comp_Mram_n068061_1125 : STD_LOGIC; 
  signal rom_comp_Mram_n068062_1117 : STD_LOGIC; 
  signal rom_comp_Mram_n068063_1109 : STD_LOGIC; 
  signal rom_comp_Mram_n06806_f7_1108 : STD_LOGIC; 
  signal rom_comp_Mram_n06806_f71 : STD_LOGIC; 
  signal alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o221_1141 : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o131_1169 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal alu_comp_n0235_5_pack_12 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o151_1325 : STD_LOGIC; 
  signal rom_comp_Mram_n068012_1390 : STD_LOGIC; 
  signal rom_comp_Mram_n0680121_1382 : STD_LOGIC; 
  signal rom_comp_Mram_n0680122_1374 : STD_LOGIC; 
  signal rom_comp_Mram_n0680123_1366 : STD_LOGIC; 
  signal rom_comp_Mram_n068012_f7_1365 : STD_LOGIC; 
  signal rom_comp_Mram_n068012_f71 : STD_LOGIC; 
  signal rom_comp_Mram_n06808_1424 : STD_LOGIC; 
  signal rom_comp_Mram_n068081_1416 : STD_LOGIC; 
  signal rom_comp_Mram_n068082_1408 : STD_LOGIC; 
  signal rom_comp_Mram_n068083_1400 : STD_LOGIC; 
  signal rom_comp_Mram_n06808_f7_1399 : STD_LOGIC; 
  signal rom_comp_Mram_n06808_f71 : STD_LOGIC; 
  signal rom_comp_Mram_n068014_1458 : STD_LOGIC; 
  signal rom_comp_Mram_n0680141_1450 : STD_LOGIC; 
  signal rom_comp_Mram_n0680142_1442 : STD_LOGIC; 
  signal rom_comp_Mram_n0680143_1434 : STD_LOGIC; 
  signal rom_comp_Mram_n068014_f7_1433 : STD_LOGIC; 
  signal rom_comp_Mram_n068014_f71 : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o112_pack_5 : STD_LOGIC; 
  signal controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o171_1566 : STD_LOGIC; 
  signal rom_comp_Mram_n06804_1612 : STD_LOGIC; 
  signal rom_comp_Mram_n068041_1604 : STD_LOGIC; 
  signal rom_comp_Mram_n068042_1596 : STD_LOGIC; 
  signal rom_comp_Mram_n068043_1588 : STD_LOGIC; 
  signal rom_comp_Mram_n06804_f7_1587 : STD_LOGIC; 
  signal rom_comp_Mram_n06804_f71 : STD_LOGIC; 
  signal rom_comp_Mram_n068010_1646 : STD_LOGIC; 
  signal rom_comp_Mram_n0680101_1638 : STD_LOGIC; 
  signal rom_comp_Mram_n0680102_1630 : STD_LOGIC; 
  signal rom_comp_Mram_n0680103_1622 : STD_LOGIC; 
  signal rom_comp_Mram_n068010_f7_1621 : STD_LOGIC; 
  signal rom_comp_Mram_n068010_f71 : STD_LOGIC; 
  signal rom_comp_Mram_n068021_1680 : STD_LOGIC; 
  signal rom_comp_Mram_n068022_1672 : STD_LOGIC; 
  signal rom_comp_Mram_n068023_1664 : STD_LOGIC; 
  signal rom_comp_Mram_n068024_1656 : STD_LOGIC; 
  signal rom_comp_Mram_n06802_f7_1655 : STD_LOGIC; 
  signal rom_comp_Mram_n06802_f71 : STD_LOGIC; 
  signal N18_pack_9 : STD_LOGIC; 
  signal controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_1_pack_11 : STD_LOGIC; 
  signal controlador_CurrentState_2_PWR_126_o_Mux_289_o : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_controlador_prog_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_prog_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_prog_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_prog_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_prog_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_prog_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_prog_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_prog_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_prog_count_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_prog_count_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_prog_count_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_prog_count_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_RAM_Addr_0_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_RAM_Addr_1_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_RAM_Addr_2_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_RAM_Addr_3_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_RAM_Addr_4_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_RAM_Addr_5_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_RAM_Addr_6_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_RAM_Addr_7_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_SEND_comm_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Databus_0_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_Databus_1_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_Databus_2_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_Databus_3_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_Databus_4_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_Databus_5_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_Databus_6_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_Databus_7_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DMA_ACK_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_acc_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_acc_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_acc_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_acc_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_acc_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_acc_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_acc_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_a_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_a_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_a_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_a_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_a_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_a_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_a_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_a_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_b_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_b_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_b_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_b_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_b_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_b_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_b_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_b_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Index_Reg_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Index_Reg_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Index_Reg_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Index_Reg_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_b_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_b_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_b_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_b_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_b_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_b_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_b_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_b_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_70_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_70_q_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_FlagZ_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_64_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_64_q_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_acc_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_66_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_66_q_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_a_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_a_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_a_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_a_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_a_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_a_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_a_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_reg_a_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_72_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_72_q_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_CurrentState_FSM_FFd1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_CurrentState_FSM_FFd1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_CurrentState_FSM_FFd1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_CurrentState_FSM_FFd3_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_CurrentState_FSM_FFd3_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_CurrentState_FSM_FFd3_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_CurrentState_FSM_FFd2_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_58_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_58_q_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Index_Reg_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Index_Reg_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Index_Reg_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Index_Reg_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_CurrentState_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_CurrentState_FSM_FFd3_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_CurrentState_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_CurrentState_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_CurrentState_FSM_FFd1_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_operand_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_operand_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_operand_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_operand_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_operand_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_operand_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_operand_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_operand_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_60_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_60_q_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_instruct_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_instruct_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_instruct_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_instruct_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_instruct_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_instruct_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_instruct_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_instruct_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_instruct_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_instruct_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_instruct_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_instruct_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_instruct_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_instruct_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_instruct_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_instruct_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_62_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_62_q_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_operand_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_operand_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_operand_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_operand_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_operand_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_operand_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_operand_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controlador_Reg_operand_4_IN : STD_LOGIC; 
  signal NLW_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_controlador_Mcount_prog_count_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_controlador_Mcount_prog_count_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_controlador_Mcount_prog_count_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ROM_Data_10_13_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_controlador_Mcount_prog_count_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_controlador_Mcount_prog_count_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_controlador_Mcount_prog_count_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_controlador_Mcount_prog_count_xor_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_controlador_Mcount_prog_count_xor_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_controlador_Mcount_prog_count_xor_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_controlador_Mcount_prog_count_xor_11_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_controlador_Mcount_prog_count_xor_11_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_DI_3_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_DI_3_UNCONNECTED : STD_LOGIC; 
  signal ALU_op : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal alu_comp_n0235 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal ROM_Addr : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal controlador_prog_count : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal controlador_Mcount_prog_count_lut : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal ROM_Data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_comp_GND_62_o_GND_62_o_sub_3_OUT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal rom_comp_n0680 : STD_LOGIC_VECTOR ( 12 downto 5 ); 
begin
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_3_Q,
      O => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_3_0
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_2_Q,
      O => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_2_0
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_1_Q,
      O => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_1_0
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_0_Q,
      O => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_0_0
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => alu_comp_Index_Reg_3_1864,
      ADR4 => controlador_Reg_operand_3_1910,
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_3_Q_1
    );
  ProtoComp21_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X10Y2"
    )
    port map (
      O => ProtoComp21_CYINITGND_0
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y2"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp21_CYINITGND_0,
      CO(3) => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_Q_1909,
      CO(2) => NLW_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_DI_1_Q,
      DI(0) => NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_DI_0_Q,
      O(3) => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_3_Q,
      O(2) => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_2_Q,
      O(1) => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_1_Q,
      O(0) => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_0_Q,
      S(3) => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_3_Q_1,
      S(2) => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_2_Q_11,
      S(1) => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_1_Q_15,
      S(0) => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_0_Q_19
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => alu_comp_Index_Reg_2_1849,
      ADR5 => controlador_Reg_operand_2_1907,
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_2_Q_11
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => alu_comp_Index_Reg_1_1789,
      ADR4 => controlador_Reg_operand_1_1893,
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_1_Q_15
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => alu_comp_Index_Reg_0_1861,
      ADR5 => controlador_Reg_operand_0_1904,
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_0_Q_19
    );
  controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_7_controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_7_Q,
      O => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_7_0
    );
  controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_7_controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_6_Q,
      O => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_6_0
    );
  controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_7_controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_5_Q,
      O => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_5_0
    );
  controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_7_controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_4_Q,
      O => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_4_0
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => alu_comp_Index_Reg_7_1885,
      ADR5 => controlador_Reg_operand_7_1919,
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_7_Q_22
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y3"
    )
    port map (
      CI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_Q_1909,
      CYINIT => '0',
      CO(3) => NLW_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_CO_3_UNCONNECTED,
      CO(2) => NLW_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_CO_2_UNCONNECTED,
      CO(1) => NLW_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_CO_1_UNCONNECTED,
      CO(0) => NLW_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_CO_0_UNCONNECTED,
      DI(3) => NLW_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_DI_2_Q,
      DI(1) => NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_DI_1_Q,
      DI(0) => NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_DI_0_Q,
      O(3) => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_7_Q,
      O(2) => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_6_Q,
      O(1) => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_5_Q,
      O(0) => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_4_Q,
      S(3) => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_7_Q_22,
      S(2) => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_6_Q_31,
      S(1) => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_5_Q_35,
      S(0) => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_4_Q_39
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => alu_comp_Index_Reg_6_1867,
      ADR5 => controlador_Reg_operand_6_1917,
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_6_Q_31
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => alu_comp_Index_Reg_5_1900,
      ADR2 => controlador_Reg_operand_5_1902,
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_5_Q_35
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => alu_comp_Index_Reg_4_1882,
      ADR5 => controlador_Reg_operand_4_1914,
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_lut_4_Q_39
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_GND_62_o_GND_62_o_sub_3_OUT(3),
      O => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_3_0
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_GND_62_o_GND_62_o_sub_3_OUT(2),
      O => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_2_0
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_GND_62_o_GND_62_o_sub_3_OUT(1),
      O => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_1_0
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_GND_62_o_GND_62_o_sub_3_OUT(0),
      O => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_0_0
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"F0F0F0F00F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => alu_comp_reg_a_3_1824,
      ADR2 => alu_comp_reg_b_3_1821,
      O => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_3_1_43
    );
  ProtoComp24_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X2Y2"
    )
    port map (
      O => ProtoComp24_CYINITVCC_1
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y2"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp24_CYINITVCC_1,
      CO(3) => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_Q_1922,
      CO(2) => NLW_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_DI_1_Q,
      DI(0) => NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_DI_0_Q,
      O(3) => alu_comp_GND_62_o_GND_62_o_sub_3_OUT(3),
      O(2) => alu_comp_GND_62_o_GND_62_o_sub_3_OUT(2),
      O(1) => alu_comp_GND_62_o_GND_62_o_sub_3_OUT(1),
      O(0) => alu_comp_GND_62_o_GND_62_o_sub_3_OUT(0),
      S(3) => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_3_1_43,
      S(2) => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_2_1_53,
      S(1) => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_1_1_57,
      S(0) => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_0_1_61
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"CCCC3333CCCC3333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => alu_comp_reg_a_2_1819,
      ADR4 => alu_comp_reg_b_2_1803,
      O => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_2_1_53
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"FF0000FFFF0000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => alu_comp_reg_a_1_1812,
      ADR4 => alu_comp_reg_b_1_1782,
      O => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_1_1_57
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"A5A5A5A5A5A5A5A5"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => alu_comp_reg_a_0_1841,
      ADR2 => alu_comp_reg_b_0_1842,
      O => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_0_1_61
    );
  controlador_prog_count_3 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => controlador_CurrentState_FSM_FFd2_1800,
      CLK => NlwBufferSignal_controlador_prog_count_3_CLK,
      I => controlador_Mcount_prog_count3,
      O => controlador_prog_count(3),
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_Mcount_prog_count_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"FFFF0000FEFF0200"
    )
    port map (
      ADR0 => controlador_Reg_operand_3_1910,
      ADR2 => N73,
      ADR1 => controlador_Reg_instruct_7_1770,
      ADR4 => controlador_prog_count(3),
      ADR3 => controlador_CurrentState_FSM_FFd1_2_1930,
      ADR5 => controlador_CurrentState_FSM_FFd3_2_1931,
      O => controlador_Mcount_prog_count_lut(3)
    );
  controlador_prog_count_2 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => controlador_CurrentState_FSM_FFd2_1800,
      CLK => NlwBufferSignal_controlador_prog_count_2_CLK,
      I => controlador_Mcount_prog_count2,
      O => controlador_prog_count(2),
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_Mcount_prog_count_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y5"
    )
    port map (
      CI => '0',
      CYINIT => controlador_set_prog_count_inv,
      CO(3) => controlador_Mcount_prog_count_cy_3_Q_1935,
      CO(2) => NLW_controlador_Mcount_prog_count_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_controlador_Mcount_prog_count_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_controlador_Mcount_prog_count_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => controlador_Mcount_prog_count3,
      O(2) => controlador_Mcount_prog_count2,
      O(1) => controlador_Mcount_prog_count1,
      O(0) => controlador_Mcount_prog_count,
      S(3) => controlador_Mcount_prog_count_lut(3),
      S(2) => controlador_Mcount_prog_count_lut(2),
      S(1) => controlador_Mcount_prog_count_lut(1),
      S(0) => controlador_Mcount_prog_count_lut_0_rt_101
    );
  controlador_Mcount_prog_count_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"FF00FE02FF00FF00"
    )
    port map (
      ADR0 => controlador_Reg_operand_2_1907,
      ADR1 => N73,
      ADR2 => controlador_Reg_instruct_7_1770,
      ADR3 => controlador_prog_count(2),
      ADR5 => controlador_CurrentState_FSM_FFd1_2_1930,
      ADR4 => controlador_CurrentState_FSM_FFd3_2_1931,
      O => controlador_Mcount_prog_count_lut(2)
    );
  controlador_prog_count_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => controlador_CurrentState_FSM_FFd2_1800,
      CLK => NlwBufferSignal_controlador_prog_count_1_CLK,
      I => controlador_Mcount_prog_count1,
      O => controlador_prog_count(1),
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_Mcount_prog_count_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"FFFE0002FFFF0000"
    )
    port map (
      ADR0 => controlador_Reg_operand_1_1893,
      ADR2 => N73,
      ADR1 => controlador_Reg_instruct_7_1770,
      ADR4 => controlador_prog_count(1),
      ADR5 => controlador_CurrentState_FSM_FFd1_2_1930,
      ADR3 => controlador_CurrentState_FSM_FFd3_2_1931,
      O => controlador_Mcount_prog_count_lut(1)
    );
  controlador_prog_count_0 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => controlador_CurrentState_FSM_FFd2_1800,
      CLK => NlwBufferSignal_controlador_prog_count_0_CLK,
      I => controlador_Mcount_prog_count,
      O => controlador_prog_count(0),
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_Mcount_prog_count_lut_0_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => controlador_Mcount_prog_count_lut(0),
      ADR5 => '1',
      O => controlador_Mcount_prog_count_lut_0_rt_101
    );
  ROM_Data_10_13_A5LUT : X_LUT5
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
      O => NLW_ROM_Data_10_13_A5LUT_O_UNCONNECTED
    );
  controlador_prog_count_7 : X_FF
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => '0'
    )
    port map (
      CE => controlador_CurrentState_FSM_FFd2_1800,
      CLK => NlwBufferSignal_controlador_prog_count_7_CLK,
      I => controlador_Mcount_prog_count7,
      O => controlador_prog_count(7),
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_Mcount_prog_count_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"FF00FE04FF00FF00"
    )
    port map (
      ADR1 => controlador_Reg_operand_7_1919,
      ADR2 => N73,
      ADR0 => controlador_Reg_instruct_7_1770,
      ADR3 => controlador_prog_count(7),
      ADR5 => controlador_CurrentState_FSM_FFd1_1816,
      ADR4 => controlador_CurrentState_FSM_FFd3_1815,
      O => controlador_Mcount_prog_count_lut(7)
    );
  controlador_prog_count_6 : X_FF
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => '0'
    )
    port map (
      CE => controlador_CurrentState_FSM_FFd2_1800,
      CLK => NlwBufferSignal_controlador_prog_count_6_CLK,
      I => controlador_Mcount_prog_count6,
      O => controlador_prog_count(6),
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_Mcount_prog_count_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y6"
    )
    port map (
      CI => controlador_Mcount_prog_count_cy_3_Q_1935,
      CYINIT => '0',
      CO(3) => controlador_Mcount_prog_count_cy_7_Q_1938,
      CO(2) => NLW_controlador_Mcount_prog_count_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_controlador_Mcount_prog_count_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_controlador_Mcount_prog_count_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => controlador_Mcount_prog_count7,
      O(2) => controlador_Mcount_prog_count6,
      O(1) => controlador_Mcount_prog_count5,
      O(0) => controlador_Mcount_prog_count4,
      S(3) => controlador_Mcount_prog_count_lut(7),
      S(2) => controlador_Mcount_prog_count_lut(6),
      S(1) => controlador_Mcount_prog_count_lut(5),
      S(0) => controlador_Mcount_prog_count_lut(4)
    );
  controlador_Mcount_prog_count_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"FF00FE02FF00FF00"
    )
    port map (
      ADR0 => controlador_Reg_operand_6_1917,
      ADR1 => N73,
      ADR2 => controlador_Reg_instruct_7_1770,
      ADR3 => controlador_prog_count(6),
      ADR5 => controlador_CurrentState_FSM_FFd1_1816,
      ADR4 => controlador_CurrentState_FSM_FFd3_1815,
      O => controlador_Mcount_prog_count_lut(6)
    );
  controlador_prog_count_5 : X_FF
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => '0'
    )
    port map (
      CE => controlador_CurrentState_FSM_FFd2_1800,
      CLK => NlwBufferSignal_controlador_prog_count_5_CLK,
      I => controlador_Mcount_prog_count5,
      O => controlador_prog_count(5),
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_Mcount_prog_count_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"FF00FE02FF00FF00"
    )
    port map (
      ADR0 => controlador_Reg_operand_5_1902,
      ADR2 => N73,
      ADR1 => controlador_Reg_instruct_7_1770,
      ADR3 => controlador_prog_count(5),
      ADR5 => controlador_CurrentState_FSM_FFd1_2_1930,
      ADR4 => controlador_CurrentState_FSM_FFd3_2_1931,
      O => controlador_Mcount_prog_count_lut(5)
    );
  controlador_prog_count_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => '0'
    )
    port map (
      CE => controlador_CurrentState_FSM_FFd2_1800,
      CLK => NlwBufferSignal_controlador_prog_count_4_CLK,
      I => controlador_Mcount_prog_count4,
      O => controlador_prog_count(4),
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_Mcount_prog_count_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"FFFF0000FEFF0400"
    )
    port map (
      ADR1 => controlador_Reg_operand_4_1914,
      ADR2 => N73,
      ADR0 => controlador_Reg_instruct_7_1770,
      ADR4 => controlador_prog_count(4),
      ADR3 => controlador_CurrentState_FSM_FFd1_2_1930,
      ADR5 => controlador_CurrentState_FSM_FFd3_2_1931,
      O => controlador_Mcount_prog_count_lut(4)
    );
  controlador_prog_count_11 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => controlador_CurrentState_FSM_FFd2_1800,
      CLK => NlwBufferSignal_controlador_prog_count_11_CLK,
      I => controlador_Mcount_prog_count11,
      O => controlador_prog_count(11),
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_Mcount_prog_count_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"FF00FD00FF00FF00"
    )
    port map (
      ADR2 => N89_0,
      ADR0 => controlador_Reg_instruct_6_1769,
      ADR1 => controlador_Reg_instruct_7_1770,
      ADR3 => controlador_prog_count(11),
      ADR5 => controlador_CurrentState_FSM_FFd1_1816,
      ADR4 => controlador_CurrentState_FSM_FFd3_1815,
      O => controlador_Mcount_prog_count_lut(11)
    );
  controlador_prog_count_10 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => controlador_CurrentState_FSM_FFd2_1800,
      CLK => NlwBufferSignal_controlador_prog_count_10_CLK,
      I => controlador_Mcount_prog_count10,
      O => controlador_prog_count(10),
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_Mcount_prog_count_xor_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y7"
    )
    port map (
      CI => controlador_Mcount_prog_count_cy_7_Q_1938,
      CYINIT => '0',
      CO(3) => NLW_controlador_Mcount_prog_count_xor_11_CO_3_UNCONNECTED,
      CO(2) => NLW_controlador_Mcount_prog_count_xor_11_CO_2_UNCONNECTED,
      CO(1) => NLW_controlador_Mcount_prog_count_xor_11_CO_1_UNCONNECTED,
      CO(0) => NLW_controlador_Mcount_prog_count_xor_11_CO_0_UNCONNECTED,
      DI(3) => NLW_controlador_Mcount_prog_count_xor_11_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => controlador_Mcount_prog_count11,
      O(2) => controlador_Mcount_prog_count10,
      O(1) => controlador_Mcount_prog_count9,
      O(0) => controlador_Mcount_prog_count8,
      S(3) => controlador_Mcount_prog_count_lut(11),
      S(2) => controlador_Mcount_prog_count_lut(10),
      S(1) => controlador_Mcount_prog_count_lut(9),
      S(0) => controlador_Mcount_prog_count_lut(8)
    );
  controlador_Mcount_prog_count_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"FFFF0000FFDF0000"
    )
    port map (
      ADR3 => N89_0,
      ADR2 => controlador_Reg_instruct_6_1769,
      ADR5 => controlador_Reg_instruct_7_1770,
      ADR4 => controlador_prog_count(10),
      ADR0 => controlador_CurrentState_FSM_FFd1_1816,
      ADR1 => controlador_CurrentState_FSM_FFd3_1815,
      O => controlador_Mcount_prog_count_lut(10)
    );
  controlador_prog_count_9 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => controlador_CurrentState_FSM_FFd2_1800,
      CLK => NlwBufferSignal_controlador_prog_count_9_CLK,
      I => controlador_Mcount_prog_count9,
      O => controlador_prog_count(9),
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_Mcount_prog_count_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"FF00FB00FF00FF00"
    )
    port map (
      ADR0 => N89_0,
      ADR1 => controlador_Reg_instruct_6_1769,
      ADR2 => controlador_Reg_instruct_7_1770,
      ADR3 => controlador_prog_count(9),
      ADR5 => controlador_CurrentState_FSM_FFd1_1816,
      ADR4 => controlador_CurrentState_FSM_FFd3_1815,
      O => controlador_Mcount_prog_count_lut(9)
    );
  controlador_prog_count_8 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => controlador_CurrentState_FSM_FFd2_1800,
      CLK => NlwBufferSignal_controlador_prog_count_8_CLK,
      I => controlador_Mcount_prog_count8,
      O => controlador_prog_count(8),
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_Mcount_prog_count_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"FF00FD00FF00FF00"
    )
    port map (
      ADR1 => N89_0,
      ADR0 => controlador_Reg_instruct_6_1769,
      ADR2 => controlador_Reg_instruct_7_1770,
      ADR3 => controlador_prog_count(8),
      ADR5 => controlador_CurrentState_FSM_FFd1_1816,
      ADR4 => controlador_CurrentState_FSM_FFd3_1815,
      O => controlador_Mcount_prog_count_lut(8)
    );
  alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_7_reg_b_7_add_0_OUT_3_Q,
      O => alu_comp_reg_a_7_reg_b_7_add_0_OUT_3_0
    );
  alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_7_reg_b_7_add_0_OUT_2_Q,
      O => alu_comp_reg_a_7_reg_b_7_add_0_OUT_2_0
    );
  alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_7_reg_b_7_add_0_OUT_1_Q,
      O => alu_comp_reg_a_7_reg_b_7_add_0_OUT_1_0
    );
  alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_7_reg_b_7_add_0_OUT_0_Q,
      O => alu_comp_reg_a_7_reg_b_7_add_0_OUT_0_0
    );
  alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X0Y2",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => alu_comp_reg_a_3_1824,
      ADR0 => alu_comp_reg_b_3_1821,
      O => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_3_Q_194
    );
  ProtoComp21_CYINITGND_1 : X_ZERO
    generic map(
      LOC => "SLICE_X0Y2"
    )
    port map (
      O => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_ProtoComp21_CYINITGND_0
    );
  alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X0Y2"
    )
    port map (
      CI => '0',
      CYINIT => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_ProtoComp21_CYINITGND_0,
      CO(3) => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_Q_1946,
      CO(2) => NLW_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_DI_1_Q,
      DI(0) => NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_DI_0_Q,
      O(3) => alu_comp_reg_a_7_reg_b_7_add_0_OUT_3_Q,
      O(2) => alu_comp_reg_a_7_reg_b_7_add_0_OUT_2_Q,
      O(1) => alu_comp_reg_a_7_reg_b_7_add_0_OUT_1_Q,
      O(0) => alu_comp_reg_a_7_reg_b_7_add_0_OUT_0_Q,
      S(3) => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_3_Q_194,
      S(2) => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_2_Q_204,
      S(1) => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_1_Q_208,
      S(0) => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_0_Q_212
    );
  alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X0Y2",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => alu_comp_reg_a_2_1819,
      ADR3 => alu_comp_reg_b_2_1803,
      O => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_2_Q_204
    );
  alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X0Y2",
      INIT => X"5A5A5A5A5A5A5A5A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => alu_comp_reg_a_1_1812,
      ADR2 => alu_comp_reg_b_1_1782,
      O => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_1_Q_208
    );
  alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X0Y2",
      INIT => X"3C3C3C3C3C3C3C3C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => alu_comp_reg_a_0_1841,
      ADR2 => alu_comp_reg_b_0_1842,
      O => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_0_Q_212
    );
  alu_comp_reg_a_7_reg_b_7_add_0_OUT_7_alu_comp_reg_a_7_reg_b_7_add_0_OUT_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_7_reg_b_7_add_0_OUT_7_Q,
      O => alu_comp_reg_a_7_reg_b_7_add_0_OUT_7_0
    );
  alu_comp_reg_a_7_reg_b_7_add_0_OUT_7_alu_comp_reg_a_7_reg_b_7_add_0_OUT_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_7_reg_b_7_add_0_OUT_6_Q,
      O => alu_comp_reg_a_7_reg_b_7_add_0_OUT_6_0
    );
  alu_comp_reg_a_7_reg_b_7_add_0_OUT_7_alu_comp_reg_a_7_reg_b_7_add_0_OUT_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_7_reg_b_7_add_0_OUT_5_Q,
      O => alu_comp_reg_a_7_reg_b_7_add_0_OUT_5_0
    );
  alu_comp_reg_a_7_reg_b_7_add_0_OUT_7_alu_comp_reg_a_7_reg_b_7_add_0_OUT_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_7_reg_b_7_add_0_OUT_4_Q,
      O => alu_comp_reg_a_7_reg_b_7_add_0_OUT_4_0
    );
  alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X0Y3",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => alu_comp_reg_a_7_1826,
      ADR4 => alu_comp_reg_b_7_1858,
      O => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_7_Q_215
    );
  alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X0Y3"
    )
    port map (
      CI => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_Q_1946,
      CYINIT => '0',
      CO(3) => NLW_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_CO_3_UNCONNECTED,
      CO(2) => NLW_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_CO_2_UNCONNECTED,
      CO(1) => NLW_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_CO_1_UNCONNECTED,
      CO(0) => NLW_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_CO_0_UNCONNECTED,
      DI(3) => NLW_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_DI_2_Q,
      DI(1) => NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_DI_1_Q,
      DI(0) => NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_DI_0_Q,
      O(3) => alu_comp_reg_a_7_reg_b_7_add_0_OUT_7_Q,
      O(2) => alu_comp_reg_a_7_reg_b_7_add_0_OUT_6_Q,
      O(1) => alu_comp_reg_a_7_reg_b_7_add_0_OUT_5_Q,
      O(0) => alu_comp_reg_a_7_reg_b_7_add_0_OUT_4_Q,
      S(3) => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_7_Q_215,
      S(2) => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_6_Q_224,
      S(1) => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_5_Q_228,
      S(0) => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_4_Q_232
    );
  alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X0Y3",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => alu_comp_reg_a_6_1809,
      ADR2 => alu_comp_reg_b_6_1874,
      O => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_6_Q_224
    );
  alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X0Y3",
      INIT => X"5A5A5A5A5A5A5A5A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => alu_comp_reg_a_5_1779,
      ADR2 => alu_comp_reg_b_5_1862,
      O => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_5_Q_228
    );
  alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X0Y3",
      INIT => X"3C3C3C3C3C3C3C3C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => alu_comp_reg_a_4_1836,
      ADR2 => alu_comp_reg_b_4_1839,
      O => alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_lut_4_Q_232
    );
  DMA_RQ_IBUF : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 202 ps
    )
    port map (
      O => DMA_RQ_IBUF_236,
      I => DMA_RQ
    );
  ProtoComp33_IMUX : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 202 ps
    )
    port map (
      I => DMA_RQ_IBUF_236,
      O => DMA_RQ_IBUF_0
    );
  RAM_Addr_0_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD158"
    )
    port map (
      I => NlwBufferSignal_RAM_Addr_0_OBUFT_I,
      O => RAM_Addr(0),
      CTL => controlador_CurrentState_2_PWR_25_o_Mux_87_o_inv
    );
  RAM_Addr_1_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => NlwBufferSignal_RAM_Addr_1_OBUFT_I,
      O => RAM_Addr(1),
      CTL => controlador_CurrentState_2_PWR_25_o_Mux_87_o_inv
    );
  RAM_Addr_2_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_RAM_Addr_2_OBUFT_I,
      O => RAM_Addr(2),
      CTL => controlador_CurrentState_2_PWR_25_o_Mux_87_o_inv
    );
  RAM_Addr_3_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD161"
    )
    port map (
      I => NlwBufferSignal_RAM_Addr_3_OBUFT_I,
      O => RAM_Addr(3),
      CTL => controlador_CurrentState_2_PWR_25_o_Mux_87_o_inv
    );
  RAM_Addr_4_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => NlwBufferSignal_RAM_Addr_4_OBUFT_I,
      O => RAM_Addr(4),
      CTL => controlador_CurrentState_2_PWR_25_o_Mux_87_o_inv
    );
  RAM_Addr_5_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD167"
    )
    port map (
      I => NlwBufferSignal_RAM_Addr_5_OBUFT_I,
      O => RAM_Addr(5),
      CTL => controlador_CurrentState_2_PWR_25_o_Mux_87_o_inv
    );
  RAM_Addr_6_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD164"
    )
    port map (
      I => NlwBufferSignal_RAM_Addr_6_OBUFT_I,
      O => RAM_Addr(6),
      CTL => controlador_CurrentState_2_PWR_25_o_Mux_87_o_inv
    );
  RAM_Addr_7_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD163"
    )
    port map (
      I => NlwBufferSignal_RAM_Addr_7_OBUFT_I,
      O => RAM_Addr(7),
      CTL => controlador_CurrentState_2_PWR_25_o_Mux_87_o_inv
    );
  SEND_comm_OBUF : X_OBUF
    generic map(
      LOC => "PAD170"
    )
    port map (
      I => NlwBufferSignal_SEND_comm_OBUF_I,
      O => SEND_comm
    );
  RAM_Write_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD169"
    )
    port map (
      I => '1',
      O => RAM_Write,
      CTL => controlador_CurrentState_2_GND_28_o_Mux_193_o_inv
    );
  RAM_OE_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD173"
    )
    port map (
      I => '1',
      O => RAM_OE,
      CTL => controlador_CurrentState_2_GND_29_o_Mux_199_o_inv
    );
  DMA_READY_IBUF : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 202 ps
    )
    port map (
      O => DMA_READY_IBUF_271,
      I => DMA_READY
    );
  ProtoComp33_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 202 ps
    )
    port map (
      I => DMA_READY_IBUF_271,
      O => DMA_READY_IBUF_0
    );
  Databus_0_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD175"
    )
    port map (
      I => NlwBufferSignal_Databus_0_IOBUF_OBUFT_I,
      O => Databus(0),
      CTL => N9
    );
  Databus_0_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 202 ps
    )
    port map (
      O => N31,
      I => Databus(0)
    );
  ProtoComp41_IMUX : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 202 ps
    )
    port map (
      I => N31,
      O => N31_0
    );
  Reset_IBUF : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 202 ps
    )
    port map (
      O => controlador_Reset_inv_non_inverted,
      I => Reset
    );
  ProtoComp43_IMUX : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 202 ps
    )
    port map (
      I => ProtoComp43_IINV_OUT,
      O => controlador_Reset_inv
    );
  ProtoComp43_IINV : X_INV
    generic map(
      LOC => "PAD168",
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_Reset_inv_non_inverted,
      O => ProtoComp43_IINV_OUT
    );
  Databus_1_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD179"
    )
    port map (
      I => NlwBufferSignal_Databus_1_IOBUF_OBUFT_I,
      O => Databus(1),
      CTL => N9
    );
  Databus_1_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 202 ps
    )
    port map (
      O => N30,
      I => Databus(1)
    );
  ProtoComp41_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 202 ps
    )
    port map (
      I => N30,
      O => N30_0
    );
  Databus_2_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD180"
    )
    port map (
      I => NlwBufferSignal_Databus_2_IOBUF_OBUFT_I,
      O => Databus(2),
      CTL => N9
    );
  Databus_2_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 202 ps
    )
    port map (
      O => N29,
      I => Databus(2)
    );
  ProtoComp41_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 202 ps
    )
    port map (
      I => N29,
      O => N29_0
    );
  Databus_3_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD177"
    )
    port map (
      I => NlwBufferSignal_Databus_3_IOBUF_OBUFT_I,
      O => Databus(3),
      CTL => N9
    );
  Databus_3_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 202 ps
    )
    port map (
      O => N28,
      I => Databus(3)
    );
  ProtoComp41_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 202 ps
    )
    port map (
      I => N28,
      O => N28_0
    );
  Databus_4_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD176"
    )
    port map (
      I => NlwBufferSignal_Databus_4_IOBUF_OBUFT_I,
      O => Databus(4),
      CTL => N9
    );
  Databus_4_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 202 ps
    )
    port map (
      O => N27,
      I => Databus(4)
    );
  ProtoComp41_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 202 ps
    )
    port map (
      I => N27,
      O => N27_0
    );
  Databus_5_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD171"
    )
    port map (
      I => NlwBufferSignal_Databus_5_IOBUF_OBUFT_I,
      O => Databus(5),
      CTL => N9
    );
  Databus_5_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 202 ps
    )
    port map (
      O => N26,
      I => Databus(5)
    );
  ProtoComp41_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 202 ps
    )
    port map (
      I => N26,
      O => N26_0
    );
  Databus_6_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD172"
    )
    port map (
      I => NlwBufferSignal_Databus_6_IOBUF_OBUFT_I,
      O => Databus(6),
      CTL => N9
    );
  Databus_6_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      O => N25,
      I => Databus(6)
    );
  ProtoComp41_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      I => N25,
      O => N25_0
    );
  Databus_7_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD184"
    )
    port map (
      I => NlwBufferSignal_Databus_7_IOBUF_OBUFT_I,
      O => Databus(7),
      CTL => N9
    );
  Databus_7_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 202 ps
    )
    port map (
      O => N24,
      I => Databus(7)
    );
  ProtoComp41_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD184",
      PATHPULSE => 202 ps
    )
    port map (
      I => N24,
      O => N24_0
    );
  Clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => Clk_BUFGP_IBUFG_318,
      I => Clk
    );
  ProtoComp33_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP_IBUFG_318,
      O => Clk_BUFGP_IBUFG_0
    );
  DMA_ACK_OBUF : X_OBUF
    generic map(
      LOC => "PAD157"
    )
    port map (
      I => NlwBufferSignal_DMA_ACK_OBUF_I,
      O => DMA_ACK
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
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2232_alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2232_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N105,
      O => N105_0
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2234_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y4"
    )
    port map (
      IA => N118,
      IB => N119,
      O => N105,
      SEL => alu_comp_reg_b_0_1842
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2234_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => X"FFFFFFFF55554555"
    )
    port map (
      ADR0 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2232_1999,
      ADR3 => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_0_0,
      ADR1 => ALU_op(2),
      ADR4 => ALU_op(1),
      ADR2 => ALU_op(0),
      ADR5 => ALU_op(4),
      O => N118
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2234_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => X"FFFF0000FFFFFF57"
    )
    port map (
      ADR5 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2232_1999,
      ADR3 => ALU_op(1),
      ADR0 => ALU_op(0),
      ADR2 => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_0_0,
      ADR1 => ALU_op(2),
      ADR4 => ALU_op(4),
      O => N119
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2233 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => X"2828000028285500"
    )
    port map (
      ADR4 => ALU_op(1),
      ADR0 => ALU_op(2),
      ADR1 => alu_comp_reg_a_0_1841,
      ADR2 => alu_comp_reg_b_0_1842,
      ADR3 => alu_comp_reg_a_7_reg_b_7_add_0_OUT_0_0,
      ADR5 => ALU_op(0),
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2232_1999
    );
  alu_comp_reg_a_7_reg_b_7_LessThan_12_o2_alu_comp_reg_a_7_reg_b_7_LessThan_12_o2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N106,
      O => N106_0
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2234_SW1 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y5"
    )
    port map (
      IA => N120,
      IB => N121,
      O => N106,
      SEL => alu_comp_reg_b_0_1842
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2234_SW1_F : X_LUT6
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => X"F4F5F4F5F4F5F5F5"
    )
    port map (
      ADR0 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2232_1999,
      ADR1 => ALU_op(2),
      ADR3 => ALU_op(0),
      ADR4 => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_0_0,
      ADR5 => ALU_op(1),
      ADR2 => ALU_op(4),
      O => N120
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2234_SW1_G : X_LUT6
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => X"BABBBABBAABBABBB"
    )
    port map (
      ADR1 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2232_1999,
      ADR5 => ALU_op(1),
      ADR2 => ALU_op(2),
      ADR3 => ALU_op(0),
      ADR4 => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_0_0,
      ADR0 => ALU_op(4),
      O => N121
    );
  alu_comp_reg_a_7_reg_b_7_LessThan_12_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => X"71710000FFFF7171"
    )
    port map (
      ADR3 => '1',
      ADR4 => alu_comp_reg_b_5_1862,
      ADR2 => alu_comp_reg_b_4_1839,
      ADR1 => N10,
      ADR0 => alu_comp_reg_a_4_1836,
      ADR5 => alu_comp_reg_a_5_1779,
      O => alu_comp_reg_a_7_reg_b_7_LessThan_12_o2_2013
    );
  alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o16 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => X"00000000A2FB20BA"
    )
    port map (
      ADR0 => alu_comp_reg_b_7_1858,
      ADR3 => alu_comp_reg_a_7_1826,
      ADR2 => alu_comp_reg_a_7_reg_b_7_LessThan_12_o2_2013,
      ADR4 => alu_comp_reg_b_6_1874,
      ADR1 => alu_comp_reg_a_6_1809,
      ADR5 => ALU_op(0),
      O => alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o15_1873
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o223 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => X"EF2FEC2CE323E020"
    )
    port map (
      ADR4 => alu_comp_reg_a_7_reg_b_7_add_0_OUT_1_0,
      ADR0 => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_1_0,
      ADR1 => ALU_op(1),
      ADR2 => ALU_op(0),
      ADR5 => alu_comp_reg_acc_0_1796,
      ADR3 => alu_comp_reg_acc_2_1797,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o222_2015
    );
  alu_comp_reg_acc_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_acc_1_CLK,
      I => alu_comp_Alu_op_4_reg_acc_1_Mux_38_o,
      O => alu_comp_reg_acc_1_1788,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o225 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => X"FA50FF00FA50FA50"
    )
    port map (
      ADR1 => '1',
      ADR3 => N65,
      ADR4 => ALU_op(2),
      ADR2 => N64,
      ADR0 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o221_0,
      ADR5 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o222_2015,
      O => alu_comp_Alu_op_4_reg_acc_1_Mux_38_o
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2231 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => X"CCFFCCCCC0F3C0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => ALU_op(4),
      ADR2 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o21021_1837,
      ADR5 => alu_comp_reg_a_0_1841,
      ADR3 => ALU_op_3_0,
      ADR4 => N31_0,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o223_2014
    );
  alu_comp_reg_acc_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_acc_0_CLK,
      I => alu_comp_Alu_op_4_reg_acc_0_Mux_40_o,
      O => alu_comp_reg_acc_0_1796,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2235 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => X"FFFFC4C0FFFFC4CC"
    )
    port map (
      ADR1 => ALU_op_3_0,
      ADR2 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2231_0,
      ADR3 => alu_comp_reg_acc_1_1788,
      ADR0 => N106_0,
      ADR5 => N105_0,
      ADR4 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o223_2014,
      O => alu_comp_Alu_op_4_reg_acc_0_Mux_40_o
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2121 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => X"A0F0B0E0E0B0A0F0"
    )
    port map (
      ADR2 => ALU_op(4),
      ADR3 => alu_comp_reg_a_6_1809,
      ADR1 => alu_comp_reg_a_5_1779,
      ADR5 => ALU_op(0),
      ADR4 => alu_comp_reg_a_4_1836,
      ADR0 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o21021_1837,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o212
    );
  alu_comp_reg_acc_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_acc_6_CLK,
      I => alu_comp_Alu_op_4_reg_acc_6_Mux_28_o,
      O => alu_comp_reg_acc_6_1834,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2125 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => X"CFCFEFCDDFCEFFCC"
    )
    port map (
      ADR2 => N109_0,
      ADR5 => alu_comp_reg_acc_5_1830,
      ADR0 => ALU_op(0),
      ADR4 => alu_comp_reg_acc_7_1856,
      ADR3 => N108_0,
      ADR1 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o212,
      O => alu_comp_Alu_op_4_reg_acc_6_Mux_28_o
    );
  alu_comp_reg_b_7_reg_a_7_LessThan_13_o12 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y5",
      INIT => X"B2BBB2BB22B222B2"
    )
    port map (
      ADR4 => '1',
      ADR2 => alu_comp_reg_a_4_1836,
      ADR0 => alu_comp_reg_a_5_1779,
      ADR1 => alu_comp_reg_b_5_1862,
      ADR3 => alu_comp_reg_b_4_1839,
      ADR5 => alu_comp_reg_b_7_reg_a_7_LessThan_13_o11_0,
      O => alu_comp_reg_b_7_reg_a_7_LessThan_13_o2_2017
    );
  alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o15 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y5",
      INIT => X"D4004400DD00D400"
    )
    port map (
      ADR3 => ALU_op(0),
      ADR1 => alu_comp_reg_a_7_1826,
      ADR0 => alu_comp_reg_b_7_1858,
      ADR2 => alu_comp_reg_a_6_1809,
      ADR4 => alu_comp_reg_b_7_reg_a_7_LessThan_13_o2_2017,
      ADR5 => alu_comp_reg_b_6_1874,
      O => alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o14_1967
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_GND_62_o_GND_62_o_sub_3_OUT(7),
      O => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_7_0
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_GND_62_o_GND_62_o_sub_3_OUT(6),
      O => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_6_0
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_GND_62_o_GND_62_o_sub_3_OUT(5),
      O => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_5_0
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_GND_62_o_GND_62_o_sub_3_OUT(4),
      O => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_4_0
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_CLK,
      I => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_IN,
      O => alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_2003,
      RST => GND,
      SET => GND
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"FF00FF0000FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => alu_comp_reg_a_7_1826,
      ADR3 => alu_comp_reg_b_7_1858,
      O => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_7_1_454
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y3"
    )
    port map (
      CI => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_Q_1922,
      CYINIT => '0',
      CO(3) => NLW_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_CO_3_UNCONNECTED,
      CO(2) => NLW_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_CO_2_UNCONNECTED,
      CO(1) => NLW_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_CO_1_UNCONNECTED,
      CO(0) => NLW_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_CO_0_UNCONNECTED,
      DI(3) => NLW_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_DI_2_Q,
      DI(1) => NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_DI_1_Q,
      DI(0) => NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_DI_0_Q,
      O(3) => alu_comp_GND_62_o_GND_62_o_sub_3_OUT(7),
      O(2) => alu_comp_GND_62_o_GND_62_o_sub_3_OUT(6),
      O(1) => alu_comp_GND_62_o_GND_62_o_sub_3_OUT(5),
      O(0) => alu_comp_GND_62_o_GND_62_o_sub_3_OUT(4),
      S(3) => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_7_1_454,
      S(2) => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_6_1_444,
      S(1) => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_5_1_440,
      S(0) => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_4_1_436
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"F0F00F0FF0F00F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => alu_comp_reg_a_6_1809,
      ADR4 => alu_comp_reg_b_6_1874,
      O => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_6_1_444
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"FF00FF0000FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => alu_comp_reg_a_5_1779,
      ADR3 => alu_comp_reg_b_5_1862,
      O => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_5_1_440
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"C3C3C3C3C3C3C3C3"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => alu_comp_reg_a_4_1836,
      ADR1 => alu_comp_reg_b_4_1839,
      O => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_4_1_436
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2102_alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2102_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N102,
      O => N102_0
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2102_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y4"
    )
    port map (
      IA => N114,
      IB => N115,
      O => N102,
      SEL => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_5_Q_1865
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2102_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"00000000EE22F0F0"
    )
    port map (
      ADR5 => ALU_op(4),
      ADR4 => ALU_op_3_0,
      ADR1 => ALU_op(1),
      ADR0 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2102,
      ADR3 => ALU_op(2),
      ADR2 => N26_0,
      O => N114
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2102_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"00000F000A0A0A0A"
    )
    port map (
      ADR1 => '1',
      ADR2 => ALU_op(4),
      ADR5 => ALU_op_3_0,
      ADR0 => N26_0,
      ADR4 => ALU_op(1),
      ADR3 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2102,
      O => N115
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2103 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"FFCCCC00AAAAF0F0"
    )
    port map (
      ADR5 => ALU_op(2),
      ADR3 => alu_comp_reg_a_5_1779,
      ADR4 => ALU_op(0),
      ADR1 => alu_comp_reg_b_5_1862,
      ADR0 => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_5_0,
      ADR2 => alu_comp_reg_a_7_reg_b_7_add_0_OUT_5_0,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2102
    );
  N103_N103_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N103,
      O => N103_0
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2102_SW1 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y5"
    )
    port map (
      IA => N116,
      IB => N117,
      O => N103,
      SEL => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_5_Q_1865
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2102_SW1_F : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"CDCCCDCCCDFFCDFF"
    )
    port map (
      ADR4 => '1',
      ADR5 => N26_0,
      ADR3 => ALU_op_3_0,
      ADR0 => ALU_op(1),
      ADR2 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2102,
      ADR1 => ALU_op(4),
      O => N116
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2102_SW1_G : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"FFFFFFFFF3035353"
    )
    port map (
      ADR2 => ALU_op_3_0,
      ADR4 => ALU_op(1),
      ADR0 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2102,
      ADR3 => ALU_op(2),
      ADR5 => ALU_op(4),
      ADR1 => N26_0,
      O => N117
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o263 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => X"FE3ECE0EF232C202"
    )
    port map (
      ADR0 => alu_comp_reg_a_7_reg_b_7_add_0_OUT_3_0,
      ADR4 => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_3_0,
      ADR1 => ALU_op(1),
      ADR2 => ALU_op(0),
      ADR5 => alu_comp_reg_acc_2_1797,
      ADR3 => alu_comp_reg_acc_4_1832,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o262_2019
    );
  alu_comp_reg_acc_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_acc_3_CLK,
      I => alu_comp_Alu_op_4_reg_acc_3_Mux_34_o,
      O => alu_comp_reg_acc_3_1829,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o265 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => X"FFF300C0FFF000F0"
    )
    port map (
      ADR0 => '1',
      ADR4 => N71,
      ADR1 => ALU_op(2),
      ADR2 => N70,
      ADR3 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o261_0,
      ADR5 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o262_2019,
      O => alu_comp_Alu_op_4_reg_acc_3_Mux_34_o
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o243 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => X"EFEC2F2CE3E02320"
    )
    port map (
      ADR3 => alu_comp_reg_a_7_reg_b_7_add_0_OUT_2_0,
      ADR0 => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_2_0,
      ADR1 => ALU_op(1),
      ADR2 => ALU_op(0),
      ADR5 => alu_comp_reg_acc_1_1788,
      ADR4 => alu_comp_reg_acc_3_1829,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o242_2018
    );
  alu_comp_reg_acc_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_acc_2_CLK,
      I => alu_comp_Alu_op_4_reg_acc_2_Mux_36_o,
      O => alu_comp_reg_acc_2_1797,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o245 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => X"FFBBFFAA008800AA"
    )
    port map (
      ADR2 => '1',
      ADR5 => N68,
      ADR1 => ALU_op(2),
      ADR0 => N67,
      ADR3 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o241_0,
      ADR4 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o242_2018,
      O => alu_comp_Alu_op_4_reg_acc_2_Mux_36_o
    );
  alu_comp_reg_acc_5_alu_comp_reg_acc_5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o28_pack_5,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o28
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2101 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => X"EBBE0000EBBE0000"
    )
    port map (
      ADR4 => ALU_op(4),
      ADR3 => alu_comp_reg_a_4_1836,
      ADR1 => alu_comp_reg_a_5_1779,
      ADR2 => ALU_op(0),
      ADR0 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o21021_1837,
      ADR5 => '1',
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o210
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o281 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => X"AAFF0000"
    )
    port map (
      ADR4 => ALU_op(4),
      ADR3 => alu_comp_reg_a_4_1836,
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o21021_1837,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o28_pack_5
    );
  alu_comp_reg_acc_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_acc_5_CLK,
      I => alu_comp_Alu_op_4_reg_acc_5_Mux_30_o,
      O => alu_comp_reg_acc_5_1830,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2105 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => X"FF1FFFDFFF0EFF02"
    )
    port map (
      ADR2 => N103_0,
      ADR0 => alu_comp_reg_acc_4_1832,
      ADR1 => ALU_op(0),
      ADR4 => alu_comp_reg_acc_6_1834,
      ADR5 => N102_0,
      ADR3 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o210,
      O => alu_comp_Alu_op_4_reg_acc_5_Mux_30_o
    );
  alu_comp_reg_acc_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_acc_4_CLK,
      I => alu_comp_Alu_op_4_reg_acc_4_Mux_32_o,
      O => alu_comp_reg_acc_4_1832,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o285 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => X"FFFF7233FFFF72F0"
    )
    port map (
      ADR1 => N112_0,
      ADR5 => alu_comp_reg_acc_3_1829,
      ADR3 => ALU_op(0),
      ADR0 => alu_comp_reg_acc_5_1830,
      ADR2 => N111_0,
      ADR4 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o28,
      O => alu_comp_Alu_op_4_reg_acc_4_Mux_32_o
    );
  alu_comp_reg_a_3_alu_comp_reg_a_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o241_551,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o241_0
    );
  alu_comp_reg_a_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_a_3_CLK,
      I => NlwBufferSignal_alu_comp_reg_a_3_IN,
      O => alu_comp_reg_a_3_1824,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o244_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"FFFDFFDDFAF8FAD8"
    )
    port map (
      ADR0 => ALU_op(4),
      ADR3 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o21021_1837,
      ADR1 => alu_comp_reg_a_2_1819,
      ADR5 => N29_0,
      ADR2 => ALU_op_3_0,
      ADR4 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o24,
      O => N68
    );
  alu_comp_reg_a_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_a_2_CLK,
      I => NlwBufferSignal_alu_comp_reg_a_2_IN,
      O => alu_comp_reg_a_2_1819,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o241 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"0E0000000E000000"
    )
    port map (
      ADR3 => ALU_op(2),
      ADR2 => ALU_op(1),
      ADR1 => ALU_op(0),
      ADR4 => alu_comp_reg_a_2_1819,
      ADR0 => alu_comp_reg_b_2_1803,
      ADR5 => '1',
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o24
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o242 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"5800A800"
    )
    port map (
      ADR3 => ALU_op(2),
      ADR2 => ALU_op(1),
      ADR1 => ALU_op(0),
      ADR4 => alu_comp_reg_a_2_1819,
      ADR0 => alu_comp_reg_b_2_1803,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o241_551
    );
  alu_comp_reg_a_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_a_1_CLK,
      I => NlwBufferSignal_alu_comp_reg_a_1_IN,
      O => alu_comp_reg_a_1_1812,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o264_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"FFFFEEEEFCF0EEEE"
    )
    port map (
      ADR4 => ALU_op(4),
      ADR5 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o21021_1837,
      ADR2 => alu_comp_reg_a_3_1824,
      ADR0 => N28_0,
      ADR1 => ALU_op_3_0,
      ADR3 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o26,
      O => N71
    );
  alu_comp_reg_a_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_a_0_CLK,
      I => NlwBufferSignal_alu_comp_reg_a_0_IN,
      O => alu_comp_reg_a_0_1841,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o264_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"FFA8FFA8FDFDA8A8"
    )
    port map (
      ADR0 => ALU_op(4),
      ADR1 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o21021_1837,
      ADR2 => alu_comp_reg_a_3_1824,
      ADR5 => ALU_op_3_0,
      ADR4 => N28_0,
      ADR3 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o26,
      O => N70
    );
  alu_comp_reg_b_7_alu_comp_reg_b_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_2_Q_598,
      O => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_2_0
    );
  alu_comp_reg_b_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_b_7_CLK,
      I => NlwBufferSignal_alu_comp_reg_b_7_IN,
      O => alu_comp_reg_b_7_1858,
      RST => GND,
      SET => GND
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"FF0000FFFF0000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => alu_comp_reg_a_5_1779,
      ADR3 => alu_comp_reg_b_5_1862,
      O => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_5_Q_1865
    );
  alu_comp_reg_b_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_b_6_CLK,
      I => NlwBufferSignal_alu_comp_reg_b_6_IN,
      O => alu_comp_reg_b_6_1874,
      RST => GND,
      SET => GND
    );
  alu_comp_reg_b_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_b_5_CLK,
      I => NlwBufferSignal_alu_comp_reg_b_5_IN,
      O => alu_comp_reg_b_5_1862,
      RST => GND,
      SET => GND
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"9999999999999999"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => alu_comp_reg_a_3_1824,
      ADR0 => alu_comp_reg_b_3_1821,
      ADR5 => '1',
      O => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_3_Q_1852
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_2_Q : X_LUT5
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"FF0000FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => alu_comp_reg_a_2_1819,
      ADR3 => alu_comp_reg_b_2_1803,
      ADR2 => '1',
      ADR1 => '1',
      O => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_2_Q_598
    );
  alu_comp_reg_b_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_b_4_CLK,
      I => NlwBufferSignal_alu_comp_reg_b_4_IN,
      O => alu_comp_reg_b_4_1839,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2142 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"FFCCF0F0CC00AAAA"
    )
    port map (
      ADR4 => ALU_op(2),
      ADR3 => alu_comp_reg_a_7_1826,
      ADR5 => ALU_op(0),
      ADR1 => alu_comp_reg_b_7_1858,
      ADR2 => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_7_0,
      ADR0 => alu_comp_reg_a_7_reg_b_7_add_0_OUT_7_0,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2142_1845
    );
  alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o1_alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N109,
      O => N109_0
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2122_SW1 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y4"
    )
    port map (
      IA => N124,
      IB => N125,
      O => N109,
      SEL => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_6_Q_1886
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2122_SW1_F : X_LUT6
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => X"FFFFFFFF030303CF"
    )
    port map (
      ADR0 => '1',
      ADR2 => N25_0,
      ADR1 => ALU_op_3_0,
      ADR3 => ALU_op(1),
      ADR4 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2122,
      ADR5 => ALU_op(4),
      O => N124
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2122_SW1_G : X_LUT6
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => X"FFFFC5F5FFFF0535"
    )
    port map (
      ADR2 => ALU_op_3_0,
      ADR1 => ALU_op(1),
      ADR3 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2122,
      ADR5 => ALU_op(2),
      ADR4 => ALU_op(4),
      ADR0 => N25_0,
      O => N125
    );
  alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => X"8000000000000000"
    )
    port map (
      ADR3 => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_5_Q_1865,
      ADR4 => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_6_Q_1886,
      ADR2 => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_7_Q_1855,
      ADR0 => ALU_op(0),
      ADR1 => ALU_op(1),
      ADR5 => ALU_op(2),
      O => alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o1
    );
  alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o12 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => X"8000000000000000"
    )
    port map (
      ADR3 => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_0_Q_1840,
      ADR5 => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_1_Q_2006,
      ADR2 => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_2_0,
      ADR1 => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_3_Q_1852,
      ADR0 => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_4_Q_1838,
      ADR4 => alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o1,
      O => alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o11_2005
    );
  alu_comp_n0235_3_alu_comp_n0235_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(1),
      O => alu_comp_n0235_1_0
    );
  alu_comp_n0235_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => X"0000009000000090"
    )
    port map (
      ADR2 => ALU_op(1),
      ADR3 => ALU_op_3_0,
      ADR4 => ALU_op(4),
      ADR1 => ALU_op(0),
      ADR0 => ALU_op(2),
      ADR5 => '1',
      O => alu_comp_n0235(3)
    );
  alu_comp_n0235_1_1 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => X"0005AF00"
    )
    port map (
      ADR2 => ALU_op(1),
      ADR3 => ALU_op_3_0,
      ADR4 => ALU_op(4),
      ADR1 => '1',
      ADR0 => ALU_op(2),
      O => alu_comp_n0235(1)
    );
  alu_comp_Index_Reg_3_alu_comp_Index_Reg_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_3_Mux_52_o,
      O => alu_comp_Alu_op_4_reg_a_3_Mux_52_o_0
    );
  alu_comp_Index_Reg_3_alu_comp_Index_Reg_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_2_Mux_54_o,
      O => alu_comp_Alu_op_4_reg_a_2_Mux_54_o_0
    );
  alu_comp_Index_Reg_3_alu_comp_Index_Reg_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_1_Mux_56_o,
      O => alu_comp_Alu_op_4_reg_a_1_Mux_56_o_0
    );
  alu_comp_Index_Reg_3_alu_comp_Index_Reg_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_0_Mux_58_o,
      O => alu_comp_Alu_op_4_reg_a_0_Mux_58_o_0
    );
  alu_comp_Index_Reg_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_Index_Reg_3_CLK,
      I => alu_comp_Alu_op_4_Index_Reg_3_Mux_84_o,
      O => alu_comp_Index_Reg_3_1864,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_Index_Reg_3_Mux_84_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => X"FFAA5500FFAA5500"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => ALU_op(0),
      ADR3 => N28_0,
      ADR4 => alu_comp_reg_acc_3_1829,
      ADR5 => '1',
      O => alu_comp_Alu_op_4_Index_Reg_3_Mux_84_o
    );
  alu_comp_Alu_op_4_reg_a_3_Mux_52_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => X"FFCC3300"
    )
    port map (
      ADR0 => '1',
      ADR1 => ALU_op(2),
      ADR2 => '1',
      ADR3 => N28_0,
      ADR4 => alu_comp_reg_acc_3_1829,
      O => alu_comp_Alu_op_4_reg_a_3_Mux_52_o
    );
  alu_comp_Index_Reg_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_Index_Reg_2_CLK,
      I => alu_comp_Alu_op_4_Index_Reg_2_Mux_86_o,
      O => alu_comp_Index_Reg_2_1849,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_Index_Reg_2_Mux_86_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => X"E4E4E4E4E4E4E4E4"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => ALU_op(0),
      ADR1 => N29_0,
      ADR2 => alu_comp_reg_acc_2_1797,
      ADR5 => '1',
      O => alu_comp_Alu_op_4_Index_Reg_2_Mux_86_o
    );
  alu_comp_Alu_op_4_reg_a_2_Mux_54_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => X"F0F0CCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => ALU_op(2),
      ADR3 => '1',
      ADR1 => N29_0,
      ADR2 => alu_comp_reg_acc_2_1797,
      O => alu_comp_Alu_op_4_reg_a_2_Mux_54_o
    );
  alu_comp_Index_Reg_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_Index_Reg_1_CLK,
      I => alu_comp_Alu_op_4_Index_Reg_1_Mux_88_o,
      O => alu_comp_Index_Reg_1_1789,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_Index_Reg_1_Mux_88_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => X"CCCCF0F0CCCCF0F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => ALU_op(0),
      ADR2 => N30_0,
      ADR1 => alu_comp_reg_acc_1_1788,
      ADR5 => '1',
      O => alu_comp_Alu_op_4_Index_Reg_1_Mux_88_o
    );
  alu_comp_Alu_op_4_reg_a_1_Mux_56_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => X"CCF0CCF0"
    )
    port map (
      ADR0 => '1',
      ADR3 => ALU_op(2),
      ADR4 => '1',
      ADR2 => N30_0,
      ADR1 => alu_comp_reg_acc_1_1788,
      O => alu_comp_Alu_op_4_reg_a_1_Mux_56_o
    );
  alu_comp_Index_Reg_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_Index_Reg_0_CLK,
      I => alu_comp_Alu_op_4_Index_Reg_0_Mux_90_o,
      O => alu_comp_Index_Reg_0_1861,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_Index_Reg_0_Mux_90_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => X"FAFA0A0AFAFA0A0A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => ALU_op(0),
      ADR0 => N31_0,
      ADR4 => alu_comp_reg_acc_0_1796,
      ADR5 => '1',
      O => alu_comp_Alu_op_4_Index_Reg_0_Mux_90_o
    );
  alu_comp_Alu_op_4_reg_a_0_Mux_58_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => X"EEEE2222"
    )
    port map (
      ADR3 => '1',
      ADR1 => ALU_op(2),
      ADR2 => '1',
      ADR0 => N31_0,
      ADR4 => alu_comp_reg_acc_0_1796,
      O => alu_comp_Alu_op_4_reg_a_0_Mux_58_o
    );
  alu_comp_reg_b_3_alu_comp_reg_b_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2231_700,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2231_0
    );
  alu_comp_reg_b_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_b_3_CLK,
      I => NlwBufferSignal_alu_comp_reg_b_3_IN,
      O => alu_comp_reg_b_3_1821,
      RST => GND,
      SET => GND
    );
  alu_comp_reg_b_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_b_2_CLK,
      I => NlwBufferSignal_alu_comp_reg_b_2_IN,
      O => alu_comp_reg_b_2_1803,
      RST => GND,
      SET => GND
    );
  alu_comp_reg_b_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_b_1_CLK,
      I => NlwBufferSignal_alu_comp_reg_b_1_IN,
      O => alu_comp_reg_b_1_1782,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o13 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => alu_comp_reg_acc_6_1834,
      ADR2 => alu_comp_reg_acc_7_1856,
      ADR4 => alu_comp_reg_acc_5_1830,
      ADR0 => alu_comp_reg_acc_4_1832,
      ADR1 => alu_comp_reg_acc_3_1829,
      ADR5 => alu_comp_reg_acc_2_1797,
      O => alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o12_2007
    );
  alu_comp_reg_b_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_b_0_CLK,
      I => NlwBufferSignal_alu_comp_reg_b_0_IN,
      O => alu_comp_reg_b_0_1842,
      RST => GND,
      SET => GND
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"F0F00F0FF0F00F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => alu_comp_reg_b_0_1842,
      ADR2 => alu_comp_reg_a_0_1841,
      ADR5 => '1',
      O => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_0_Q_1840
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2232 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"00A00080"
    )
    port map (
      ADR0 => ALU_op(2),
      ADR3 => ALU_op(1),
      ADR1 => ALU_op(0),
      ADR4 => alu_comp_reg_b_0_1842,
      ADR2 => alu_comp_reg_a_0_1841,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2231_700
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o244_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => X"FFFCEEFCFF30AA30"
    )
    port map (
      ADR3 => ALU_op(4),
      ADR0 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o21021_1837,
      ADR4 => alu_comp_reg_a_2_1819,
      ADR1 => ALU_op_3_0,
      ADR2 => N29_0,
      ADR5 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o24,
      O => N67
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_70_q : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_70_q_CLK,
      I => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_70_q_IN,
      O => alu_comp_Alu_op_4_Alu_op_4_DLATCH_70_q_1894,
      RST => GND,
      SET => GND
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => alu_comp_reg_a_1_1812,
      ADR5 => alu_comp_reg_b_1_1782,
      O => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_1_Q_2006
    );
  alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o14 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => X"0105050500000000"
    )
    port map (
      ADR0 => alu_comp_reg_acc_1_1788,
      ADR5 => alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o12_2007,
      ADR2 => alu_comp_reg_acc_0_1796,
      ADR3 => ALU_op(0),
      ADR1 => ALU_op(1),
      ADR4 => ALU_op(2),
      O => alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o13_2023
    );
  alu_comp_FlagZ : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_FlagZ_CLK,
      I => alu_comp_Alu_op_4_FlagZ_Mux_42_o,
      O => alu_comp_FlagZ_1995,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o17 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => X"FAFFFAFFFAFFFA00"
    )
    port map (
      ADR1 => '1',
      ADR3 => ALU_op(4),
      ADR2 => alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o14_1967,
      ADR0 => alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o15_1873,
      ADR5 => alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o11_2005,
      ADR4 => alu_comp_Mmux_Alu_op_4_FlagZ_Mux_42_o13_2023,
      O => alu_comp_Alu_op_4_FlagZ_Mux_42_o
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_64_q : X_LATCHE
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_64_q_CLK,
      I => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_64_q_IN,
      O => alu_comp_Alu_op_4_Alu_op_4_DLATCH_64_q_2024,
      RST => GND,
      SET => GND
    );
  Databus_4_MLTSRCEDGELogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => X"FCFFFCFFF033F033"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => controlador_CurrentState_2_PWR_85_o_Mux_207_o,
      ADR5 => alu_comp_Alu_op_4_Alu_op_4_DLATCH_64_q_2024,
      ADR2 => controlador_Reg_operand_4_1914,
      ADR1 => alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_1808,
      O => Databus_4_MLTSRCEDGE
    );
  alu_comp_reg_acc_7_alu_comp_reg_acc_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o214_pack_3,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o214
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"AAAA5555AAAA5555"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => alu_comp_reg_a_7_1826,
      ADR0 => alu_comp_reg_b_7_1858,
      ADR5 => '1',
      O => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_7_Q_1855
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2141 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"FC00F300"
    )
    port map (
      ADR3 => ALU_op(4),
      ADR1 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2141_1857,
      ADR2 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o21021_1837,
      ADR4 => alu_comp_reg_a_7_1826,
      ADR0 => '1',
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o214_pack_3
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2143_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"FFFFFFFF05440044"
    )
    port map (
      ADR0 => ALU_op(4),
      ADR4 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2142_1845,
      ADR3 => ALU_op_3_0,
      ADR2 => ALU_op(1),
      ADR1 => N24_0,
      ADR5 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o214,
      O => N99
    );
  alu_comp_reg_acc_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_acc_7_CLK,
      I => alu_comp_Alu_op_4_reg_acc_7_Mux_26_o,
      O => alu_comp_reg_acc_7_1856,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2144 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"F4B0F780F4B0F4B0"
    )
    port map (
      ADR1 => ALU_op(2),
      ADR2 => N99,
      ADR4 => ALU_op(0),
      ADR5 => alu_comp_reg_acc_6_1834,
      ADR3 => N100,
      ADR0 => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_7_Q_1855,
      O => alu_comp_Alu_op_4_reg_acc_7_Mux_26_o
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2122_alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2122_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N108,
      O => N108_0
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2122_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y4"
    )
    port map (
      IA => N122,
      IB => N123,
      O => N108,
      SEL => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_6_Q_1886
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2122_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => X"0000FCAC00000CAC"
    )
    port map (
      ADR4 => ALU_op(4),
      ADR2 => ALU_op_3_0,
      ADR3 => ALU_op(1),
      ADR0 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2122,
      ADR5 => ALU_op(2),
      ADR1 => N25_0,
      O => N122
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2122_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => X"005500CC000000CC"
    )
    port map (
      ADR2 => '1',
      ADR3 => ALU_op(4),
      ADR4 => ALU_op_3_0,
      ADR1 => N25_0,
      ADR0 => ALU_op(1),
      ADR5 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2122,
      O => N123
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2123 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => X"FEAEAE0EF4A4A404"
    )
    port map (
      ADR2 => ALU_op(2),
      ADR4 => alu_comp_reg_a_6_1809,
      ADR0 => ALU_op(0),
      ADR3 => alu_comp_reg_b_6_1874,
      ADR5 => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_6_0,
      ADR1 => alu_comp_reg_a_7_reg_b_7_add_0_OUT_6_0,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2122
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_66_q_alu_comp_Alu_op_4_Alu_op_4_DLATCH_66_q_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o261_791,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o261_0
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o261 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => X"3200000032000000"
    )
    port map (
      ADR3 => ALU_op(2),
      ADR1 => ALU_op(1),
      ADR4 => alu_comp_reg_a_3_1824,
      ADR2 => ALU_op(0),
      ADR0 => alu_comp_reg_b_3_1821,
      ADR5 => '1',
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o26
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o262 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => X"6400A800"
    )
    port map (
      ADR3 => ALU_op(2),
      ADR1 => ALU_op(1),
      ADR4 => alu_comp_reg_a_3_1824,
      ADR2 => ALU_op(0),
      ADR0 => alu_comp_reg_b_3_1821,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o261_791
    );
  Databus_3_MLTSRCEDGELogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => X"EEAAEEAAFF33FF33"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => controlador_CurrentState_2_PWR_85_o_Mux_207_o,
      ADR3 => controlador_Reg_operand_3_1910,
      ADR5 => alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_1808,
      ADR0 => alu_comp_Alu_op_4_Alu_op_4_DLATCH_66_q_2026,
      O => Databus_3_MLTSRCEDGE
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_66_q : X_LATCHE
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_66_q_CLK,
      I => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_66_q_IN,
      O => alu_comp_Alu_op_4_Alu_op_4_DLATCH_66_q_2026,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2143_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => X"FF0FFF0BFF0CFF08"
    )
    port map (
      ADR2 => ALU_op(4),
      ADR1 => ALU_op_3_0,
      ADR4 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2142_1845,
      ADR0 => ALU_op(1),
      ADR5 => N24_0,
      ADR3 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o214,
      O => N100
    );
  alu_comp_reg_a_7_alu_comp_reg_a_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N12_pack_4,
      O => N12
    );
  alu_comp_reg_a_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_a_7_CLK,
      I => NlwBufferSignal_alu_comp_reg_a_7_IN,
      O => alu_comp_reg_a_7_1826,
      RST => GND,
      SET => GND
    );
  alu_comp_reg_a_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_a_6_CLK,
      I => NlwBufferSignal_alu_comp_reg_a_6_IN,
      O => alu_comp_reg_a_6_1809,
      RST => GND,
      SET => GND
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"F0F0F0F00F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => alu_comp_reg_a_4_1836,
      ADR5 => alu_comp_reg_b_4_1839,
      O => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_4_Q_1838
    );
  alu_comp_reg_a_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_a_5_CLK,
      I => NlwBufferSignal_alu_comp_reg_a_5_IN,
      O => alu_comp_reg_a_5_1779,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o21411 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"3737ECEC3737ECEC"
    )
    port map (
      ADR3 => '1',
      ADR4 => ALU_op(0),
      ADR0 => alu_comp_reg_a_4_1836,
      ADR2 => alu_comp_reg_a_5_1779,
      ADR1 => alu_comp_reg_a_6_1809,
      ADR5 => '1',
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o2141_1857
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o21021_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"FAFA5F5F"
    )
    port map (
      ADR3 => '1',
      ADR4 => ALU_op(0),
      ADR0 => alu_comp_reg_a_4_1836,
      ADR2 => alu_comp_reg_a_5_1779,
      ADR1 => '1',
      O => N12_pack_4
    );
  alu_comp_reg_a_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_reg_a_4_CLK,
      I => NlwBufferSignal_alu_comp_reg_a_4_IN,
      O => alu_comp_reg_a_4_1836,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o21021 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => X"FFFFFFFCFFFEFFFC"
    )
    port map (
      ADR4 => alu_comp_reg_a_3_1824,
      ADR5 => alu_comp_reg_a_2_1819,
      ADR0 => alu_comp_reg_a_1_1812,
      ADR1 => alu_comp_reg_a_7_1826,
      ADR3 => alu_comp_reg_a_6_1809,
      ADR2 => N12,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o21021_1837
    );
  Databus_1_MLTSRCEDGELogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => X"FFFFCC00FF33FF33"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => controlador_CurrentState_2_PWR_85_o_Mux_207_o,
      ADR3 => controlador_Reg_operand_1_1893,
      ADR5 => alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_1808,
      ADR4 => alu_comp_Alu_op_4_Alu_op_4_DLATCH_70_q_1894,
      O => Databus_1_MLTSRCEDGE
    );
  alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => X"FF0000FFFF0000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => alu_comp_reg_a_6_1809,
      ADR3 => alu_comp_reg_b_6_1874,
      O => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_6_Q_1886
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_72_q_alu_comp_Alu_op_4_Alu_op_4_DLATCH_72_q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RAM_Addr_2_OBUFT_869,
      O => RAM_Addr_2_OBUFT_0
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_72_q_alu_comp_Alu_op_4_Alu_op_4_DLATCH_72_q_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_0_MLTSRCEDGE,
      O => Databus_0_MLTSRCEDGE_0
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o110 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y2"
    )
    port map (
      IA => N130,
      IB => N131,
      O => RAM_Addr_2_OBUFT_869,
      SEL => controlador_Reg_instruct_5_1771
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o110_F : X_LUT6
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"4050405040004000"
    )
    port map (
      ADR4 => '1',
      ADR2 => controlador_Reg_instruct_4_1776,
      ADR0 => controlador_Reg_instruct_2_1774,
      ADR3 => controlador_Reg_instruct_3_1775,
      ADR1 => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_2_0,
      ADR5 => controlador_Reg_operand_2_1907,
      O => N130
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o110_G : X_LUT6
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"CFCFC0C0FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR5 => controlador_Reg_instruct_2_1774,
      ADR2 => controlador_Reg_instruct_0_1817,
      ADR4 => controlador_Reg_operand_2_1907,
      ADR1 => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_2_0,
      ADR3 => alu_comp_Index_Reg_2_1849,
      O => N131
    );
  N91 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"000000FF000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => controlador_CurrentState_2_PWR_85_o_Mux_207_o,
      ADR4 => alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_1808,
      ADR5 => '1',
      O => N9
    );
  Databus_0_MLTSRCEDGELogicTrst1 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"FCCCF0FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => controlador_Reg_operand_0_1904,
      ADR1 => alu_comp_Alu_op_4_Alu_op_4_DLATCH_72_q_2028,
      ADR3 => controlador_CurrentState_2_PWR_85_o_Mux_207_o,
      ADR4 => alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_1808,
      O => Databus_0_MLTSRCEDGE
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_72_q : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_72_q_CLK,
      I => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_72_q_IN,
      O => alu_comp_Alu_op_4_Alu_op_4_DLATCH_72_q_2028,
      RST => GND,
      SET => GND
    );
  controlador_Mmux_CurrentState_2_PWR_85_o_Mux_207_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => X"FF400000FF000000"
    )
    port map (
      ADR4 => controlador_CurrentState_FSM_FFd1_1816,
      ADR2 => controlador_Reg_instruct_7_1770,
      ADR5 => controlador_Reg_instruct_3_1775,
      ADR0 => controlador_Reg_instruct_6_1769,
      ADR1 => N22_0,
      ADR3 => controlador_CurrentState_FSM_FFd2_1800,
      O => controlador_CurrentState_2_PWR_85_o_Mux_207_o
    );
  alu_comp_n0235_2_alu_comp_n0235_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N112,
      O => N112_0
    );
  alu_comp_n0235_2_alu_comp_n0235_2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(0),
      O => alu_comp_n0235_0_0
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o282_SW1 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y3"
    )
    port map (
      IA => N128,
      IB => N129,
      O => N112,
      SEL => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_4_Q_1838
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o282_SW1_F : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"FF00FF0FFF50FF5F"
    )
    port map (
      ADR1 => '1',
      ADR4 => N27_0,
      ADR2 => ALU_op_3_0,
      ADR5 => ALU_op(1),
      ADR0 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o282,
      ADR3 => ALU_op(4),
      O => N128
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o282_SW1_G : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"FCFFF5F5F0F3F5F5"
    )
    port map (
      ADR4 => ALU_op_3_0,
      ADR1 => ALU_op(1),
      ADR3 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o282,
      ADR5 => ALU_op(2),
      ADR2 => ALU_op(4),
      ADR0 => N27_0,
      O => N129
    );
  alu_comp_n0235_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"0000012000000120"
    )
    port map (
      ADR1 => ALU_op_3_0,
      ADR4 => ALU_op(4),
      ADR3 => ALU_op(0),
      ADR2 => ALU_op(1),
      ADR0 => ALU_op(2),
      ADR5 => '1',
      O => alu_comp_n0235(2)
    );
  alu_comp_n0235_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"10105CCC"
    )
    port map (
      ADR1 => ALU_op_3_0,
      ADR4 => ALU_op(4),
      ADR3 => ALU_op(0),
      ADR2 => ALU_op(1),
      ADR0 => ALU_op(2),
      O => alu_comp_n0235(0)
    );
  Databus_7_MLTSRCEDGELogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"FFFFF5F5A0A0F5F5"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => controlador_CurrentState_2_PWR_85_o_Mux_207_o,
      ADR2 => controlador_Reg_operand_7_1919,
      ADR4 => alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_1808,
      ADR5 => alu_comp_Alu_op_4_Alu_op_4_DLATCH_58_q_1996,
      O => Databus_7_MLTSRCEDGE
    );
  controlador_CurrentState_FSM_FFd1_2_controlador_CurrentState_FSM_FFd1_2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_FSM_FFd2_1_pack_6,
      O => controlador_CurrentState_FSM_FFd2_1_2030
    );
  controlador_CurrentState_FSM_FFd1_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_controlador_CurrentState_FSM_FFd1_2_CLK,
      I => NlwBufferSignal_controlador_CurrentState_FSM_FFd1_2_IN,
      O => controlador_CurrentState_FSM_FFd1_2_1930,
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_CurrentState_FSM_FFd1_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_controlador_CurrentState_FSM_FFd1_1_CLK,
      I => controlador_CurrentState_FSM_FFd1_In,
      O => controlador_CurrentState_FSM_FFd1_1_1949,
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_CurrentState_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y5",
      INIT => X"FF0AFF0A88883300"
    )
    port map (
      ADR2 => DMA_READY_IBUF_0,
      ADR1 => controlador_Reg_instruct_6_1769,
      ADR4 => controlador_Reg_instruct_7_1770,
      ADR0 => controlador_CurrentState_FSM_FFd1_1816,
      ADR5 => controlador_CurrentState_FSM_FFd3_1815,
      ADR3 => controlador_CurrentState_FSM_FFd2_1800,
      O => controlador_CurrentState_FSM_FFd1_In
    );
  controlador_CurrentState_FSM_FFd3_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_controlador_CurrentState_FSM_FFd3_2_CLK,
      I => NlwBufferSignal_controlador_CurrentState_FSM_FFd3_2_IN,
      O => controlador_CurrentState_FSM_FFd3_2_1931,
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_CurrentState_FSM_FFd3_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y5",
      INIT => X"3322220033F022F0"
    )
    port map (
      ADR2 => DMA_RQ_IBUF_0,
      ADR4 => controlador_Reg_instruct_7_1770,
      ADR0 => controlador_Reg_instruct_6_1769,
      ADR3 => controlador_CurrentState_FSM_FFd2_1_2030,
      ADR5 => controlador_CurrentState_FSM_FFd1_1_1949,
      ADR1 => controlador_CurrentState_FSM_FFd3_1_1950,
      O => controlador_CurrentState_FSM_FFd3_In1_2029
    );
  controlador_CurrentState_FSM_FFd3_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_controlador_CurrentState_FSM_FFd3_1_CLK,
      I => controlador_CurrentState_FSM_FFd3_In,
      O => controlador_CurrentState_FSM_FFd3_1_1950,
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_CurrentState_FSM_FFd3_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y5",
      INIT => X"FFFF0A00FFFF0A00"
    )
    port map (
      ADR1 => '1',
      ADR2 => DMA_READY_IBUF_0,
      ADR3 => controlador_CurrentState_FSM_FFd1_1816,
      ADR0 => controlador_CurrentState_FSM_FFd3_1815,
      ADR4 => controlador_CurrentState_FSM_FFd3_In1_2029,
      ADR5 => '1',
      O => controlador_CurrentState_FSM_FFd3_In
    );
  controlador_CurrentState_FSM_FFd2_In_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y5",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR1 => controlador_CurrentState_FSM_FFd2_In,
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => controlador_CurrentState_FSM_FFd2_In_rt_909
    );
  controlador_CurrentState_FSM_FFd2_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_controlador_CurrentState_FSM_FFd2_1_CLK,
      I => controlador_CurrentState_FSM_FFd2_In_rt_909,
      O => controlador_CurrentState_FSM_FFd2_1_pack_6,
      RST => controlador_Reset_inv,
      SET => GND
    );
  rom_comp_n0680_12_rom_comp_n0680_12_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => rom_comp_n0680(12),
      O => rom_comp_n0680_12_0
    );
  rom_comp_Mram_n0680_f8 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y7"
    )
    port map (
      IA => rom_comp_Mram_n0680_f71,
      IB => rom_comp_Mram_n0680_f7_937,
      O => rom_comp_n0680(12),
      SEL => ROM_Addr(7)
    );
  rom_comp_Mram_n0680_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y7"
    )
    port map (
      IA => rom_comp_Mram_n06803_938,
      IB => rom_comp_Mram_n06802_946,
      O => rom_comp_Mram_n0680_f71,
      SEL => ROM_Addr_6_0
    );
  rom_comp_Mram_n0680_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y7"
    )
    port map (
      IA => rom_comp_Mram_n06801_954,
      IB => rom_comp_Mram_n0680,
      O => rom_comp_Mram_n0680_f7_937,
      SEL => ROM_Addr_6_0
    );
  rom_comp_Mram_n06804 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y7",
      INIT => X"9A91AAD592626ED5"
    )
    port map (
      ADR0 => ROM_Addr(3),
      ADR3 => ROM_Addr(1),
      ADR2 => ROM_Addr_4_0,
      ADR4 => ROM_Addr(5),
      ADR5 => ROM_Addr_2_0,
      ADR1 => ROM_Addr_0_0,
      O => rom_comp_Mram_n06803_938
    );
  rom_comp_Mram_n06803 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y7",
      INIT => X"F5CD887522A554C4"
    )
    port map (
      ADR5 => ROM_Addr(3),
      ADR3 => ROM_Addr(1),
      ADR4 => ROM_Addr_0_0,
      ADR0 => ROM_Addr(5),
      ADR1 => ROM_Addr_2_0,
      ADR2 => ROM_Addr_4_0,
      O => rom_comp_Mram_n06802_946
    );
  rom_comp_Mram_n06802 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y7",
      INIT => X"75E98008FB6710F6"
    )
    port map (
      ADR2 => ROM_Addr_2_0,
      ADR3 => ROM_Addr_4_0,
      ADR1 => ROM_Addr(1),
      ADR0 => ROM_Addr(3),
      ADR5 => ROM_Addr(5),
      ADR4 => ROM_Addr_0_0,
      O => rom_comp_Mram_n06801_954
    );
  rom_comp_Mram_n06801 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y7",
      INIT => X"0401455540014500"
    )
    port map (
      ADR0 => ROM_Addr(5),
      ADR3 => ROM_Addr_2_0,
      ADR1 => ROM_Addr_0_0,
      ADR4 => ROM_Addr_4_0,
      ADR2 => ROM_Addr(3),
      ADR5 => ROM_Addr(1),
      O => rom_comp_Mram_n0680
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_58_q_alu_comp_Alu_op_4_Alu_op_4_DLATCH_58_q_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_2_Q,
      O => controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_2_0
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_58_q_alu_comp_Alu_op_4_Alu_op_4_DLATCH_58_q_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N22,
      O => N22_0
    );
  controlador_Mram_Reg_instruct_5_GND_6_o_wide_mux_0_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"0000000C0000000C"
    )
    port map (
      ADR0 => '1',
      ADR1 => controlador_Reg_instruct_3_1775,
      ADR3 => controlador_Reg_instruct_2_1774,
      ADR2 => controlador_Reg_instruct_4_1776,
      ADR4 => controlador_Reg_instruct_5_1771,
      ADR5 => '1',
      O => controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_4_Q
    );
  controlador_Mram_Reg_instruct_5_GND_6_o_wide_mux_0_OUT21 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"00000300"
    )
    port map (
      ADR0 => '1',
      ADR1 => controlador_Reg_instruct_3_1775,
      ADR3 => controlador_Reg_instruct_2_1774,
      ADR2 => controlador_Reg_instruct_4_1776,
      ADR4 => controlador_Reg_instruct_5_1771,
      O => controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_2_Q
    );
  controlador_Mmux_ALU_op81 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"0000D50000008000"
    )
    port map (
      ADR3 => controlador_n0347,
      ADR4 => controlador_Reg_instruct_6_1769,
      ADR0 => controlador_Reg_instruct_7_1770,
      ADR2 => controlador_Reg_instruct_5_1771,
      ADR1 => controlador_Reg_instruct_4_GND_19_o_Mux_79_o,
      ADR5 => controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_4_Q,
      O => ALU_op(4)
    );
  controlador_n03471 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => controlador_CurrentState_FSM_FFd3_1815,
      ADR4 => controlador_CurrentState_FSM_FFd1_1816,
      ADR5 => '1',
      O => controlador_n0347
    );
  controlador_Mmux_CurrentState_2_PWR_85_o_Mux_207_o1_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"00010001"
    )
    port map (
      ADR1 => controlador_Reg_instruct_5_1771,
      ADR0 => controlador_Reg_instruct_4_1776,
      ADR3 => controlador_Reg_instruct_2_1774,
      ADR2 => controlador_CurrentState_FSM_FFd3_1815,
      ADR4 => '1',
      O => N22
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_58_q : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_58_q_CLK,
      I => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_58_q_IN,
      O => alu_comp_Alu_op_4_Alu_op_4_DLATCH_58_q_1996,
      RST => GND,
      SET => GND
    );
  controlador_CurrentState_2_GND_29_o_Mux_199_o_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"FFEFFFFFFFFFFFFF"
    )
    port map (
      ADR1 => controlador_Reg_instruct_5_1771,
      ADR5 => controlador_Reg_instruct_4_1776,
      ADR4 => controlador_n0347,
      ADR0 => controlador_Reg_instruct_2_1774,
      ADR3 => controlador_Reg_instruct_6_1769,
      ADR2 => controlador_Reg_instruct_7_1770,
      O => controlador_CurrentState_2_GND_29_o_Mux_199_o_inv
    );
  alu_comp_Index_Reg_7_alu_comp_Index_Reg_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_7_Mux_44_o,
      O => alu_comp_Alu_op_4_reg_a_7_Mux_44_o_0
    );
  alu_comp_Index_Reg_7_alu_comp_Index_Reg_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_6_Mux_46_o,
      O => alu_comp_Alu_op_4_reg_a_6_Mux_46_o_0
    );
  alu_comp_Index_Reg_7_alu_comp_Index_Reg_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_5_Mux_48_o,
      O => alu_comp_Alu_op_4_reg_a_5_Mux_48_o_0
    );
  alu_comp_Index_Reg_7_alu_comp_Index_Reg_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_4_Mux_50_o,
      O => alu_comp_Alu_op_4_reg_a_4_Mux_50_o_0
    );
  alu_comp_Index_Reg_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_Index_Reg_7_CLK,
      I => alu_comp_Alu_op_4_Index_Reg_7_Mux_76_o,
      O => alu_comp_Index_Reg_7_1885,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_Index_Reg_7_Mux_76_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"FFCC00CCFFCC00CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => ALU_op(0),
      ADR1 => N24_0,
      ADR4 => alu_comp_reg_acc_7_1856,
      ADR5 => '1',
      O => alu_comp_Alu_op_4_Index_Reg_7_Mux_76_o
    );
  alu_comp_Alu_op_4_reg_a_7_Mux_44_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"EEEE4444"
    )
    port map (
      ADR3 => '1',
      ADR0 => ALU_op(2),
      ADR2 => '1',
      ADR1 => N24_0,
      ADR4 => alu_comp_reg_acc_7_1856,
      O => alu_comp_Alu_op_4_reg_a_7_Mux_44_o
    );
  alu_comp_Index_Reg_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_Index_Reg_6_CLK,
      I => alu_comp_Alu_op_4_Index_Reg_6_Mux_78_o,
      O => alu_comp_Index_Reg_6_1867,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_Index_Reg_6_Mux_78_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"F0F0FF00F0F0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => ALU_op(0),
      ADR3 => N25_0,
      ADR2 => alu_comp_reg_acc_6_1834,
      ADR5 => '1',
      O => alu_comp_Alu_op_4_Index_Reg_6_Mux_78_o
    );
  alu_comp_Alu_op_4_reg_a_6_Mux_46_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"F5A0F5A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => ALU_op(2),
      ADR4 => '1',
      ADR3 => N25_0,
      ADR2 => alu_comp_reg_acc_6_1834,
      O => alu_comp_Alu_op_4_reg_a_6_Mux_46_o
    );
  alu_comp_Index_Reg_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_Index_Reg_5_CLK,
      I => alu_comp_Alu_op_4_Index_Reg_5_Mux_80_o,
      O => alu_comp_Index_Reg_5_1900,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_Index_Reg_5_Mux_80_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"FF00AAAAFF00AAAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => ALU_op(0),
      ADR0 => N26_0,
      ADR3 => alu_comp_reg_acc_5_1830,
      ADR5 => '1',
      O => alu_comp_Alu_op_4_Index_Reg_5_Mux_80_o
    );
  alu_comp_Alu_op_4_reg_a_5_Mux_48_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"FA0AFA0A"
    )
    port map (
      ADR4 => '1',
      ADR2 => ALU_op(2),
      ADR1 => '1',
      ADR0 => N26_0,
      ADR3 => alu_comp_reg_acc_5_1830,
      O => alu_comp_Alu_op_4_reg_a_5_Mux_48_o
    );
  alu_comp_Index_Reg_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_Index_Reg_4_CLK,
      I => alu_comp_Alu_op_4_Index_Reg_4_Mux_82_o,
      O => alu_comp_Index_Reg_4_1882,
      RST => GND,
      SET => GND
    );
  alu_comp_Mmux_Alu_op_4_Index_Reg_4_Mux_82_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"FFAA5500FFAA5500"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => ALU_op(0),
      ADR3 => N27_0,
      ADR4 => alu_comp_reg_acc_4_1832,
      ADR5 => '1',
      O => alu_comp_Alu_op_4_Index_Reg_4_Mux_82_o
    );
  alu_comp_Alu_op_4_reg_a_4_Mux_50_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"FFCC3300"
    )
    port map (
      ADR0 => '1',
      ADR1 => ALU_op(2),
      ADR2 => '1',
      ADR3 => N27_0,
      ADR4 => alu_comp_reg_acc_4_1832,
      O => alu_comp_Alu_op_4_reg_a_4_Mux_50_o
    );
  N10_N10_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_b_7_reg_a_7_LessThan_13_o11_1042,
      O => alu_comp_reg_b_7_reg_a_7_LessThan_13_o11_0
    );
  alu_comp_reg_a_7_reg_b_7_LessThan_12_o1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => X"55FF005555FF0055"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => alu_comp_reg_b_3_1821,
      ADR4 => alu_comp_reg_a_3_1824,
      ADR3 => alu_comp_reg_a_7_reg_b_7_LessThan_12_o1_2033,
      ADR5 => '1',
      O => N10
    );
  alu_comp_reg_b_7_reg_a_7_LessThan_13_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => X"DDDD4444"
    )
    port map (
      ADR2 => '1',
      ADR1 => alu_comp_reg_b_7_reg_a_7_LessThan_13_o1,
      ADR0 => alu_comp_reg_b_3_1821,
      ADR4 => alu_comp_reg_a_3_1824,
      ADR3 => '1',
      O => alu_comp_reg_b_7_reg_a_7_LessThan_13_o11_1042
    );
  alu_comp_reg_a_7_reg_b_7_LessThan_12_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => X"73F7103173731010"
    )
    port map (
      ADR1 => alu_comp_reg_a_2_1819,
      ADR4 => alu_comp_reg_b_2_1803,
      ADR0 => alu_comp_reg_a_1_1812,
      ADR2 => alu_comp_reg_b_1_1782,
      ADR3 => alu_comp_reg_a_0_1841,
      ADR5 => alu_comp_reg_b_0_1842,
      O => alu_comp_reg_a_7_reg_b_7_LessThan_12_o1_2033
    );
  alu_comp_reg_b_7_reg_a_7_LessThan_13_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => X"22BB00AAA2FB20BA"
    )
    port map (
      ADR3 => alu_comp_reg_b_2_1803,
      ADR0 => alu_comp_reg_a_2_1819,
      ADR1 => alu_comp_reg_b_1_1782,
      ADR4 => alu_comp_reg_a_1_1812,
      ADR5 => alu_comp_reg_b_0_1842,
      ADR2 => alu_comp_reg_a_0_1841,
      O => alu_comp_reg_b_7_reg_a_7_LessThan_13_o1
    );
  controlador_Mmux_ALU_op6_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y5",
      INIT => X"FF77EF0EEE77FFEF"
    )
    port map (
      ADR3 => controlador_Reg_instruct_5_1771,
      ADR4 => controlador_Reg_instruct_2_1774,
      ADR2 => controlador_Reg_instruct_0_1817,
      ADR5 => controlador_Reg_instruct_1_1773,
      ADR0 => controlador_Reg_instruct_3_1775,
      ADR1 => controlador_Reg_instruct_4_1776,
      O => N16
    );
  controlador_CurrentState_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X9Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_controlador_CurrentState_FSM_FFd3_CLK,
      I => NlwBufferSignal_controlador_CurrentState_FSM_FFd3_IN,
      O => controlador_CurrentState_FSM_FFd3_1815,
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_Mmux_ALU_op6 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y5",
      INIT => X"00000040000000E0"
    )
    port map (
      ADR2 => controlador_CurrentState_FSM_FFd1_1816,
      ADR3 => controlador_Reg_instruct_6_1769,
      ADR0 => controlador_Reg_instruct_7_1770,
      ADR4 => controlador_CurrentState_FSM_FFd3_1815,
      ADR1 => controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_2_0,
      ADR5 => N16,
      O => ALU_op(2)
    );
  controlador_CurrentState_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X9Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_controlador_CurrentState_FSM_FFd2_CLK,
      I => controlador_CurrentState_FSM_FFd2_In,
      O => controlador_CurrentState_FSM_FFd2_1800,
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_CurrentState_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y5",
      INIT => X"00000000FCFC0055"
    )
    port map (
      ADR3 => DMA_RQ_IBUF_0,
      ADR2 => controlador_Reg_instruct_7_1770,
      ADR1 => controlador_Reg_instruct_6_1769,
      ADR4 => controlador_CurrentState_FSM_FFd2_1800,
      ADR0 => controlador_CurrentState_FSM_FFd1_1816,
      ADR5 => controlador_CurrentState_FSM_FFd3_1815,
      O => controlador_CurrentState_FSM_FFd2_In
    );
  controlador_CurrentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X9Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_controlador_CurrentState_FSM_FFd1_CLK,
      I => NlwBufferSignal_controlador_CurrentState_FSM_FFd1_IN,
      O => controlador_CurrentState_FSM_FFd1_1816,
      RST => controlador_Reset_inv,
      SET => GND
    );
  controlador_Reg_operand_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_controlador_Reg_operand_3_CLK,
      I => NlwBufferSignal_controlador_Reg_operand_3_IN,
      O => controlador_Reg_operand_3_1910,
      RST => GND,
      SET => GND
    );
  controlador_Reg_operand_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_controlador_Reg_operand_2_CLK,
      I => NlwBufferSignal_controlador_Reg_operand_2_IN,
      O => controlador_Reg_operand_2_1907,
      RST => GND,
      SET => GND
    );
  controlador_Reg_operand_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_controlador_Reg_operand_1_CLK,
      I => NlwBufferSignal_controlador_Reg_operand_1_IN,
      O => controlador_Reg_operand_1_1893,
      RST => GND,
      SET => GND
    );
  controlador_set_prog_count_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"FFFFFFFFFFFFEFFF"
    )
    port map (
      ADR2 => controlador_Reg_instruct_6_1769,
      ADR0 => controlador_Reg_instruct_7_1770,
      ADR1 => N91_2035,
      ADR4 => controlador_Reg_instruct_5_1771,
      ADR3 => controlador_CurrentState_FSM_FFd1_1_1949,
      ADR5 => controlador_CurrentState_FSM_FFd3_1_1950,
      O => controlador_set_prog_count_inv
    );
  controlador_Reg_operand_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_controlador_Reg_operand_0_CLK,
      I => NlwBufferSignal_controlador_Reg_operand_0_IN,
      O => controlador_Reg_operand_0_1904,
      RST => GND,
      SET => GND
    );
  controlador_n03471_SW9 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"FFFFFFEEFFFFFFFE"
    )
    port map (
      ADR4 => controlador_Reg_instruct_1_1773,
      ADR3 => controlador_Reg_instruct_3_1775,
      ADR2 => controlador_Reg_instruct_0_1817,
      ADR5 => alu_comp_FlagZ_1995,
      ADR1 => controlador_Reg_instruct_4_1776,
      ADR0 => controlador_Reg_instruct_2_1774,
      O => N91_2035
    );
  rom_comp_n0680_9_rom_comp_n0680_9_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => rom_comp_n0680(9),
      O => rom_comp_n0680_9_0
    );
  rom_comp_Mram_n06806_f8 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y8"
    )
    port map (
      IA => rom_comp_Mram_n06806_f71,
      IB => rom_comp_Mram_n06806_f7_1108,
      O => rom_comp_n0680(9),
      SEL => ROM_Addr(7)
    );
  rom_comp_Mram_n06806_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y8"
    )
    port map (
      IA => rom_comp_Mram_n068063_1109,
      IB => rom_comp_Mram_n068062_1117,
      O => rom_comp_Mram_n06806_f71,
      SEL => ROM_Addr_6_0
    );
  rom_comp_Mram_n06806_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y8"
    )
    port map (
      IA => rom_comp_Mram_n068061_1125,
      IB => rom_comp_Mram_n06806_1133,
      O => rom_comp_Mram_n06806_f7_1108,
      SEL => ROM_Addr_6_0
    );
  rom_comp_Mram_n068063 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y8",
      INIT => X"13243B0082998370"
    )
    port map (
      ADR1 => ROM_Addr(3),
      ADR3 => ROM_Addr(1),
      ADR2 => ROM_Addr(5),
      ADR4 => ROM_Addr_2_0,
      ADR0 => ROM_Addr_4_0,
      ADR5 => ROM_Addr_0_0,
      O => rom_comp_Mram_n068063_1109
    );
  rom_comp_Mram_n068062 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y8",
      INIT => X"10050E4200005682"
    )
    port map (
      ADR4 => ROM_Addr(3),
      ADR2 => ROM_Addr_2_0,
      ADR5 => ROM_Addr(1),
      ADR3 => ROM_Addr_4_0,
      ADR0 => ROM_Addr(5),
      ADR1 => ROM_Addr_0_0,
      O => rom_comp_Mram_n068062_1117
    );
  rom_comp_Mram_n068061 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y8",
      INIT => X"864002612E549009"
    )
    port map (
      ADR3 => ROM_Addr_4_0,
      ADR0 => ROM_Addr_0_0,
      ADR4 => ROM_Addr(1),
      ADR5 => ROM_Addr(5),
      ADR2 => ROM_Addr(3),
      ADR1 => ROM_Addr_2_0,
      O => rom_comp_Mram_n068061_1125
    );
  rom_comp_Mram_n06806 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y8",
      INIT => X"0000141800000082"
    )
    port map (
      ADR4 => ROM_Addr(5),
      ADR1 => ROM_Addr(1),
      ADR5 => ROM_Addr_2_0,
      ADR2 => ROM_Addr(3),
      ADR0 => ROM_Addr_4_0,
      ADR3 => ROM_Addr_0_0,
      O => rom_comp_Mram_n06806_1133
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_60_q_alu_comp_Alu_op_4_Alu_op_4_DLATCH_60_q_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o221_1141,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o221_0
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o221 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"0000A8000000A800"
    )
    port map (
      ADR0 => ALU_op(2),
      ADR4 => ALU_op(1),
      ADR3 => alu_comp_reg_a_1_1812,
      ADR1 => ALU_op(0),
      ADR2 => alu_comp_reg_b_1_1782,
      ADR5 => '1',
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o22
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o222 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"0AA08080"
    )
    port map (
      ADR0 => ALU_op(2),
      ADR4 => ALU_op(1),
      ADR3 => alu_comp_reg_a_1_1812,
      ADR1 => ALU_op(0),
      ADR2 => alu_comp_reg_b_1_1782,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o221_1141
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o224_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"FFFFFF8FFAFAFA8A"
    )
    port map (
      ADR2 => ALU_op(4),
      ADR4 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o21021_1837,
      ADR3 => alu_comp_reg_a_1_1812,
      ADR5 => N30_0,
      ADR0 => ALU_op_3_0,
      ADR1 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o22,
      O => N65
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_60_q : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_60_q_CLK,
      I => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_60_q_IN,
      O => alu_comp_Alu_op_4_Alu_op_4_DLATCH_60_q_2036,
      RST => GND,
      SET => GND
    );
  Databus_6_MLTSRCEDGELogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"FFFFFF0FF000FF0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => controlador_CurrentState_2_PWR_85_o_Mux_207_o,
      ADR5 => alu_comp_Alu_op_4_Alu_op_4_DLATCH_60_q_2036,
      ADR3 => controlador_Reg_operand_6_1917,
      ADR4 => alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_1808,
      O => Databus_6_MLTSRCEDGE
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o121_controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o121_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o131_1169,
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o131_0
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o122 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => X"FF0FF000FF0FF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => controlador_Reg_instruct_3_1775,
      ADR4 => controlador_Reg_operand_0_1904,
      ADR3 => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_0_0,
      ADR5 => '1',
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o121_2008
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o132 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => X"ACACACAC"
    )
    port map (
      ADR1 => controlador_Reg_operand_7_1919,
      ADR0 => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_7_0,
      ADR2 => controlador_Reg_instruct_3_1775,
      ADR3 => '1',
      ADR4 => '1',
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o131_1169
    );
  Databus_2_MLTSRCEDGELogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => X"FFF0FF00F0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => controlador_CurrentState_2_PWR_85_o_Mux_207_o,
      ADR3 => controlador_Reg_operand_2_1907,
      ADR4 => alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_1808,
      ADR2 => alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_2003,
      O => Databus_2_MLTSRCEDGE
    );
  controlador_Reg_instruct_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_controlador_Reg_instruct_3_CLK,
      I => NlwBufferSignal_controlador_Reg_instruct_3_IN,
      O => controlador_Reg_instruct_3_1775,
      RST => GND,
      SET => GND
    );
  controlador_Reg_instruct_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_controlador_Reg_instruct_2_CLK,
      I => NlwBufferSignal_controlador_Reg_instruct_2_IN,
      O => controlador_Reg_instruct_2_1774,
      RST => GND,
      SET => GND
    );
  controlador_Reg_instruct_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_controlador_Reg_instruct_1_CLK,
      I => NlwBufferSignal_controlador_Reg_instruct_1_IN,
      O => controlador_Reg_instruct_1_1773,
      RST => GND,
      SET => GND
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o151 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => X"DFDFD5D58A8A8080"
    )
    port map (
      ADR3 => '1',
      ADR0 => controlador_Reg_instruct_2_1774,
      ADR2 => controlador_Reg_instruct_0_1817,
      ADR4 => controlador_Reg_operand_5_1902,
      ADR1 => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_5_0,
      ADR5 => alu_comp_Index_Reg_5_1900,
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o15
    );
  controlador_Reg_instruct_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_controlador_Reg_instruct_0_CLK,
      I => NlwBufferSignal_controlador_Reg_instruct_0_IN,
      O => controlador_Reg_instruct_0_1817,
      RST => GND,
      SET => GND
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o153 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => X"AAFA0050AAAA0000"
    )
    port map (
      ADR1 => '1',
      ADR0 => controlador_Reg_instruct_5_1771,
      ADR5 => controlador_Reg_instruct_4_1776,
      ADR3 => controlador_Reg_instruct_2_1774,
      ADR2 => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o151_0,
      ADR4 => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o15,
      O => RAM_Addr_5_OBUFT_1964
    );
  N73_N73_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N89,
      O => N89_0
    );
  N73_N73_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Addr(2),
      O => ROM_Addr_2_0
    );
  controlador_n03471_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y5",
      INIT => X"FFFFFFBBFFFFFFBB"
    )
    port map (
      ADR2 => '1',
      ADR4 => N20,
      ADR0 => controlador_Reg_instruct_5_1771,
      ADR3 => controlador_Reg_instruct_3_1775,
      ADR1 => controlador_Reg_instruct_6_1769,
      ADR5 => '1',
      O => N73
    );
  controlador_n03471_SW8 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y5",
      INIT => X"FFFFFFAA"
    )
    port map (
      ADR2 => '1',
      ADR4 => N20,
      ADR0 => controlador_Reg_instruct_5_1771,
      ADR3 => controlador_Reg_instruct_3_1775,
      ADR1 => '1',
      O => N89
    );
  controlador_Mmux_set_prog_count1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y5",
      INIT => X"FFFBFFFBFFFAFFFA"
    )
    port map (
      ADR4 => '1',
      ADR0 => controlador_Reg_instruct_4_1776,
      ADR2 => controlador_Reg_instruct_1_1773,
      ADR5 => controlador_Reg_instruct_0_1817,
      ADR1 => alu_comp_FlagZ_1995,
      ADR3 => controlador_Reg_instruct_2_1774,
      O => N20
    );
  controlador_Mcount_prog_count_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y5",
      INIT => X"FFFEFFFF00020000"
    )
    port map (
      ADR0 => controlador_Reg_operand_0_1904,
      ADR1 => N73,
      ADR2 => controlador_Reg_instruct_7_1770,
      ADR5 => controlador_prog_count(0),
      ADR4 => controlador_CurrentState_FSM_FFd1_2_1930,
      ADR3 => controlador_CurrentState_FSM_FFd3_2_1931,
      O => controlador_Mcount_prog_count_lut(0)
    );
  ROM_Addr_3_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y5",
      INIT => X"F0F0FFFFF0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => controlador_CurrentState_FSM_FFd2_1800,
      ADR2 => controlador_prog_count(3),
      ADR5 => '1',
      O => ROM_Addr(3)
    );
  ROM_Addr_2_LogicTrst1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y5",
      INIT => X"CCCCFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => controlador_prog_count(2),
      ADR4 => controlador_CurrentState_FSM_FFd2_1800,
      ADR3 => '1',
      O => ROM_Addr(2)
    );
  ROM_Addr_1_ROM_Addr_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Addr(0),
      O => ROM_Addr_0_0
    );
  ROM_Addr_1_ROM_Addr_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Addr(6),
      O => ROM_Addr_6_0
    );
  ROM_Addr_1_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y6",
      INIT => X"AAAAFFFFAAAAFFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => controlador_CurrentState_FSM_FFd2_1800,
      ADR0 => controlador_prog_count(1),
      ADR5 => '1',
      O => ROM_Addr(1)
    );
  ROM_Addr_0_LogicTrst1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y6",
      INIT => X"FF00FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => controlador_prog_count(0),
      ADR4 => controlador_CurrentState_FSM_FFd2_1800,
      ADR2 => '1',
      O => ROM_Addr(0)
    );
  ROM_Addr_7_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y6",
      INIT => X"F0FFF0FFF0FFF0FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => controlador_CurrentState_FSM_FFd2_1800,
      ADR2 => controlador_prog_count(7),
      ADR5 => '1',
      O => ROM_Addr(7)
    );
  ROM_Addr_6_LogicTrst1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y6",
      INIT => X"CCFFCCFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => controlador_prog_count(6),
      ADR3 => controlador_CurrentState_FSM_FFd2_1800,
      ADR4 => '1',
      O => ROM_Addr(6)
    );
  ROM_Addr_5_ROM_Addr_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Addr(4),
      O => ROM_Addr_4_0
    );
  ROM_Addr_5_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => X"FFFF5555FFFF5555"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => controlador_CurrentState_FSM_FFd2_1800,
      ADR4 => controlador_prog_count(5),
      ADR5 => '1',
      O => ROM_Addr(5)
    );
  ROM_Addr_4_LogicTrst1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => X"FF55FF55"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => controlador_prog_count(4),
      ADR0 => controlador_CurrentState_FSM_FFd2_1800,
      ADR4 => '1',
      O => ROM_Addr(4)
    );
  rom_comp_Mmux_Instruction11 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => X"0000010000000000"
    )
    port map (
      ADR5 => rom_comp_n0680_12_0,
      ADR0 => controlador_prog_count(8),
      ADR2 => controlador_prog_count(11),
      ADR1 => controlador_prog_count(10),
      ADR4 => controlador_prog_count(9),
      ADR3 => controlador_CurrentState_FSM_FFd2_1800,
      O => ROM_Data(0)
    );
  rom_comp_Mmux_Instruction61 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y8",
      INIT => X"0000001000000000"
    )
    port map (
      ADR2 => rom_comp_n0680_9_0,
      ADR0 => controlador_prog_count(8),
      ADR1 => controlador_prog_count(11),
      ADR3 => controlador_prog_count(10),
      ADR4 => controlador_prog_count(9),
      ADR5 => controlador_CurrentState_FSM_FFd2_1800,
      O => ROM_Data(3)
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o121 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"FF3FF030CF0FC000"
    )
    port map (
      ADR0 => '1',
      ADR2 => controlador_Reg_instruct_2_1774,
      ADR1 => controlador_Reg_instruct_0_1817,
      ADR5 => controlador_Reg_operand_0_1904,
      ADR3 => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_0_0,
      ADR4 => alu_comp_Index_Reg_0_1861,
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o12
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o123 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"BABA1010AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR0 => controlador_Reg_instruct_5_1771,
      ADR5 => controlador_Reg_instruct_4_1776,
      ADR1 => controlador_Reg_instruct_2_1774,
      ADR2 => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o121_2008,
      ADR4 => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o12,
      O => RAM_Addr_0_OBUFT_1956
    );
  controlador_Mmux_ALU_op2_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"3F3F3F3FA9A9A9A9"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => controlador_Reg_instruct_3_1775,
      ADR5 => controlador_Reg_instruct_2_1774,
      ADR1 => controlador_Reg_instruct_4_1776,
      ADR0 => controlador_Reg_instruct_1_1773,
      O => N14
    );
  controlador_Mmux_ALU_op2 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"1000100010005040"
    )
    port map (
      ADR2 => controlador_n0347,
      ADR0 => controlador_Reg_instruct_6_1769,
      ADR1 => controlador_Reg_instruct_7_1770,
      ADR4 => controlador_Reg_instruct_5_1771,
      ADR5 => N14,
      ADR3 => controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_0_Q,
      O => ALU_op(0)
    );
  controlador_Mram_Reg_instruct_5_GND_6_o_wide_mux_0_OUT12 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"0015001100000004"
    )
    port map (
      ADR0 => controlador_Reg_instruct_4_1776,
      ADR3 => controlador_Reg_instruct_5_1771,
      ADR5 => controlador_Reg_instruct_0_1817,
      ADR1 => controlador_Reg_instruct_3_1775,
      ADR4 => controlador_Reg_instruct_1_1773,
      ADR2 => controlador_Reg_instruct_2_1774,
      O => controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_0_Q
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o224_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"FFFAFFD8AAFA88D8"
    )
    port map (
      ADR0 => ALU_op(4),
      ADR1 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o21021_1837,
      ADR4 => alu_comp_reg_a_1_1812,
      ADR3 => ALU_op_3_0,
      ADR2 => N30_0,
      ADR5 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o22,
      O => N64
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N111,
      O => N111_0
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235_5_pack_12,
      O => alu_comp_n0235(5)
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o282_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y3"
    )
    port map (
      IA => N126,
      IB => N127,
      O => N111,
      SEL => alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_lut_4_Q_1838
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o282_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"3300303022223030"
    )
    port map (
      ADR1 => ALU_op(4),
      ADR4 => ALU_op_3_0,
      ADR5 => ALU_op(1),
      ADR0 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o282,
      ADR3 => ALU_op(2),
      ADR2 => N27_0,
      O => N126
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o282_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"000033F0000000F0"
    )
    port map (
      ADR0 => '1',
      ADR4 => ALU_op(4),
      ADR3 => ALU_op_3_0,
      ADR2 => N27_0,
      ADR1 => ALU_op(1),
      ADR5 => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o282,
      O => N127
    );
  alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o283 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"FCFCAFA0C0C0AFA0"
    )
    port map (
      ADR4 => ALU_op(2),
      ADR1 => alu_comp_reg_a_4_1836,
      ADR2 => ALU_op(0),
      ADR5 => alu_comp_reg_b_4_1839,
      ADR0 => alu_comp_GND_62_o_GND_62_o_sub_3_OUT_4_0,
      ADR3 => alu_comp_reg_a_7_reg_b_7_add_0_OUT_4_0,
      O => alu_comp_Mmux_Alu_op_4_reg_acc_0_Mux_40_o282
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_CLK,
      I => alu_comp_n0235(6),
      O => alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_1808,
      RST => GND,
      SET => GND
    );
  alu_comp_n0235_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"00FF37FE00FF37FE"
    )
    port map (
      ADR4 => ALU_op_3_0,
      ADR1 => ALU_op(2),
      ADR0 => ALU_op(1),
      ADR2 => ALU_op(0),
      ADR3 => ALU_op(4),
      ADR5 => '1',
      O => alu_comp_n0235(6)
    );
  alu_comp_n0235_5_1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"FF00CC01"
    )
    port map (
      ADR4 => ALU_op_3_0,
      ADR1 => ALU_op(2),
      ADR0 => ALU_op(1),
      ADR2 => ALU_op(0),
      ADR3 => ALU_op(4),
      O => alu_comp_n0235_5_pack_12
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o141_controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o141_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o151_1325,
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o151_0
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o142 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"F3C0F3C0F3C0F3C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => controlador_Reg_instruct_3_1775,
      ADR3 => controlador_Reg_operand_6_1917,
      ADR2 => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_6_0,
      ADR5 => '1',
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o141_2010
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o152 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"BBBB8888"
    )
    port map (
      ADR4 => controlador_Reg_operand_5_1902,
      ADR0 => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_5_0,
      ADR1 => controlador_Reg_instruct_3_1775,
      ADR3 => '1',
      ADR2 => '1',
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o151_1325
    );
  controlador_Reg_instruct_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_controlador_Reg_instruct_7_CLK,
      I => NlwBufferSignal_controlador_Reg_instruct_7_IN,
      O => controlador_Reg_instruct_7_1770,
      RST => GND,
      SET => GND
    );
  rom_comp_Mmux_Instruction91 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"0000000000001000"
    )
    port map (
      ADR2 => rom_comp_n0680_6_0,
      ADR4 => controlador_prog_count(8),
      ADR5 => controlador_prog_count(11),
      ADR1 => controlador_prog_count(10),
      ADR0 => controlador_prog_count(9),
      ADR3 => controlador_CurrentState_FSM_FFd2_1800,
      O => ROM_Data(6)
    );
  controlador_Reg_instruct_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_controlador_Reg_instruct_6_CLK,
      I => NlwBufferSignal_controlador_Reg_instruct_6_IN,
      O => controlador_Reg_instruct_6_1769,
      RST => GND,
      SET => GND
    );
  controlador_Reg_instruct_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_controlador_Reg_instruct_5_CLK,
      I => NlwBufferSignal_controlador_Reg_instruct_5_IN,
      O => controlador_Reg_instruct_5_1771,
      RST => GND,
      SET => GND
    );
  controlador_Reg_instruct_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_controlador_Reg_instruct_4_CLK,
      I => NlwBufferSignal_controlador_Reg_instruct_4_IN,
      O => controlador_Reg_instruct_4_1776,
      RST => GND,
      SET => GND
    );
  rom_comp_Mmux_Instruction41 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"0000000000000008"
    )
    port map (
      ADR0 => rom_comp_n0680_11_0,
      ADR5 => controlador_prog_count(8),
      ADR2 => controlador_prog_count(11),
      ADR3 => controlador_prog_count(10),
      ADR4 => controlador_prog_count(9),
      ADR1 => controlador_CurrentState_FSM_FFd2_1800,
      O => ROM_Data(1)
    );
  rom_comp_Mmux_Instruction81 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"0000000000000020"
    )
    port map (
      ADR0 => rom_comp_n0680_7_0,
      ADR4 => controlador_prog_count(8),
      ADR1 => controlador_prog_count(11),
      ADR5 => controlador_prog_count(10),
      ADR3 => controlador_prog_count(9),
      ADR2 => controlador_CurrentState_FSM_FFd2_1800,
      O => ROM_Data(5)
    );
  rom_comp_n0680_6_rom_comp_n0680_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => rom_comp_n0680(6),
      O => rom_comp_n0680_6_0
    );
  rom_comp_Mram_n068012_f8 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y8"
    )
    port map (
      IA => rom_comp_Mram_n068012_f71,
      IB => rom_comp_Mram_n068012_f7_1365,
      O => rom_comp_n0680(6),
      SEL => ROM_Addr(7)
    );
  rom_comp_Mram_n068012_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y8"
    )
    port map (
      IA => rom_comp_Mram_n0680123_1366,
      IB => rom_comp_Mram_n0680122_1374,
      O => rom_comp_Mram_n068012_f71,
      SEL => ROM_Addr_6_0
    );
  rom_comp_Mram_n068012_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y8"
    )
    port map (
      IA => rom_comp_Mram_n0680121_1382,
      IB => rom_comp_Mram_n068012_1390,
      O => rom_comp_Mram_n068012_f7_1365,
      SEL => ROM_Addr_6_0
    );
  rom_comp_Mram_n0680123 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"C08D21D44320138C"
    )
    port map (
      ADR3 => ROM_Addr(5),
      ADR1 => ROM_Addr_4_0,
      ADR4 => ROM_Addr_2_0,
      ADR0 => ROM_Addr(3),
      ADR5 => ROM_Addr_0_0,
      ADR2 => ROM_Addr(1),
      O => rom_comp_Mram_n0680123_1366
    );
  rom_comp_Mram_n0680122 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"16504220092840C1"
    )
    port map (
      ADR1 => ROM_Addr_0_0,
      ADR2 => ROM_Addr(1),
      ADR5 => ROM_Addr_4_0,
      ADR4 => ROM_Addr_2_0,
      ADR0 => ROM_Addr(3),
      ADR3 => ROM_Addr(5),
      O => rom_comp_Mram_n0680122_1374
    );
  rom_comp_Mram_n0680121 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"4088506991120452"
    )
    port map (
      ADR0 => ROM_Addr_4_0,
      ADR2 => ROM_Addr_0_0,
      ADR5 => ROM_Addr(3),
      ADR1 => ROM_Addr(1),
      ADR4 => ROM_Addr(5),
      ADR3 => ROM_Addr_2_0,
      O => rom_comp_Mram_n0680121_1382
    );
  rom_comp_Mram_n068012 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"3021300000000001"
    )
    port map (
      ADR1 => ROM_Addr(5),
      ADR5 => ROM_Addr_4_0,
      ADR2 => ROM_Addr(1),
      ADR3 => ROM_Addr_0_0,
      ADR4 => ROM_Addr_2_0,
      ADR0 => ROM_Addr(3),
      O => rom_comp_Mram_n068012_1390
    );
  rom_comp_n0680_8_rom_comp_n0680_8_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => rom_comp_n0680(8),
      O => rom_comp_n0680_8_0
    );
  rom_comp_Mram_n06808_f8 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y9"
    )
    port map (
      IA => rom_comp_Mram_n06808_f71,
      IB => rom_comp_Mram_n06808_f7_1399,
      O => rom_comp_n0680(8),
      SEL => ROM_Addr(7)
    );
  rom_comp_Mram_n06808_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y9"
    )
    port map (
      IA => rom_comp_Mram_n068083_1400,
      IB => rom_comp_Mram_n068082_1408,
      O => rom_comp_Mram_n06808_f71,
      SEL => ROM_Addr_6_0
    );
  rom_comp_Mram_n06808_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y9"
    )
    port map (
      IA => rom_comp_Mram_n068081_1416,
      IB => rom_comp_Mram_n06808_1424,
      O => rom_comp_Mram_n06808_f7_1399,
      SEL => ROM_Addr_6_0
    );
  rom_comp_Mram_n068083 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => X"0420434080000063"
    )
    port map (
      ADR4 => ROM_Addr_2_0,
      ADR3 => ROM_Addr_4_0,
      ADR5 => ROM_Addr(3),
      ADR1 => ROM_Addr_0_0,
      ADR0 => ROM_Addr(5),
      ADR2 => ROM_Addr(1),
      O => rom_comp_Mram_n068083_1400
    );
  rom_comp_Mram_n068082 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => X"21708040E0068011"
    )
    port map (
      ADR4 => ROM_Addr_2_0,
      ADR2 => ROM_Addr(1),
      ADR5 => ROM_Addr(3),
      ADR0 => ROM_Addr(5),
      ADR1 => ROM_Addr_0_0,
      ADR3 => ROM_Addr_4_0,
      O => rom_comp_Mram_n068082_1408
    );
  rom_comp_Mram_n068081 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => X"6807080000C34180"
    )
    port map (
      ADR1 => ROM_Addr(1),
      ADR2 => ROM_Addr(3),
      ADR5 => ROM_Addr(5),
      ADR3 => ROM_Addr_2_0,
      ADR4 => ROM_Addr_4_0,
      ADR0 => ROM_Addr_0_0,
      O => rom_comp_Mram_n068081_1416
    );
  rom_comp_Mram_n06808 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => X"0000501000000001"
    )
    port map (
      ADR0 => ROM_Addr_2_0,
      ADR4 => ROM_Addr(5),
      ADR2 => ROM_Addr(3),
      ADR5 => ROM_Addr(1),
      ADR1 => ROM_Addr_4_0,
      ADR3 => ROM_Addr_0_0,
      O => rom_comp_Mram_n06808_1424
    );
  rom_comp_n0680_5_rom_comp_n0680_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => rom_comp_n0680(5),
      O => rom_comp_n0680_5_0
    );
  rom_comp_Mram_n068014_f8 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y10"
    )
    port map (
      IA => rom_comp_Mram_n068014_f71,
      IB => rom_comp_Mram_n068014_f7_1433,
      O => rom_comp_n0680(5),
      SEL => ROM_Addr(7)
    );
  rom_comp_Mram_n068014_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y10"
    )
    port map (
      IA => rom_comp_Mram_n0680143_1434,
      IB => rom_comp_Mram_n0680142_1442,
      O => rom_comp_Mram_n068014_f71,
      SEL => ROM_Addr_6_0
    );
  rom_comp_Mram_n068014_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y10"
    )
    port map (
      IA => rom_comp_Mram_n0680141_1450,
      IB => rom_comp_Mram_n068014_1458,
      O => rom_comp_Mram_n068014_f7_1433,
      SEL => ROM_Addr_6_0
    );
  rom_comp_Mram_n0680143 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y10",
      INIT => X"1A0AAF2742606821"
    )
    port map (
      ADR0 => ROM_Addr_0_0,
      ADR4 => ROM_Addr_2_0,
      ADR3 => ROM_Addr(5),
      ADR5 => ROM_Addr(1),
      ADR2 => ROM_Addr(3),
      ADR1 => ROM_Addr_4_0,
      O => rom_comp_Mram_n0680143_1434
    );
  rom_comp_Mram_n0680142 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y10",
      INIT => X"4CC254C619B80B1B"
    )
    port map (
      ADR5 => ROM_Addr_4_0,
      ADR1 => ROM_Addr(1),
      ADR3 => ROM_Addr_0_0,
      ADR0 => ROM_Addr(3),
      ADR4 => ROM_Addr_2_0,
      ADR2 => ROM_Addr(5),
      O => rom_comp_Mram_n0680142_1442
    );
  rom_comp_Mram_n0680141 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y10",
      INIT => X"987414D2570F8745"
    )
    port map (
      ADR3 => ROM_Addr_2_0,
      ADR5 => ROM_Addr(3),
      ADR2 => ROM_Addr(1),
      ADR1 => ROM_Addr(5),
      ADR4 => ROM_Addr_4_0,
      ADR0 => ROM_Addr_0_0,
      O => rom_comp_Mram_n0680141_1450
    );
  rom_comp_Mram_n068014 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y10",
      INIT => X"0000000065505859"
    )
    port map (
      ADR5 => ROM_Addr(5),
      ADR0 => ROM_Addr_0_0,
      ADR2 => ROM_Addr(3),
      ADR4 => ROM_Addr_2_0,
      ADR3 => ROM_Addr(1),
      ADR1 => ROM_Addr_4_0,
      O => rom_comp_Mram_n068014_1458
    );
  Databus_5_MLTSRCEDGELogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => X"FFF3CF03FFF3CF03"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => controlador_CurrentState_2_PWR_85_o_Mux_207_o,
      ADR4 => controlador_Reg_operand_5_1902,
      ADR1 => alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_1808,
      ADR3 => alu_comp_Alu_op_4_Alu_op_4_DLATCH_62_q_1903,
      O => Databus_5_MLTSRCEDGE
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_62_q_alu_comp_Alu_op_4_Alu_op_4_DLATCH_62_q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o112_pack_5,
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o112_2042
    );
  controlador_CurrentState_n0671_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => X"5500550055005500"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => controlador_CurrentState_FSM_FFd3_1815,
      ADR3 => controlador_CurrentState_FSM_FFd2_1800,
      ADR5 => '1',
      O => controlador_CurrentState_2_PWR_118_o_Mux_273_o
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o112 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => X"FCFC0C0C"
    )
    port map (
      ADR2 => controlador_Reg_instruct_3_1775,
      ADR1 => controlador_Reg_operand_1_1893,
      ADR4 => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_1_0,
      ADR3 => '1',
      ADR0 => '1',
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o112_pack_5
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o111 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => X"FAFA0A0AFA0AFA0A"
    )
    port map (
      ADR1 => '1',
      ADR2 => controlador_Reg_instruct_2_1774,
      ADR5 => controlador_Reg_instruct_0_1817,
      ADR3 => controlador_Reg_operand_1_1893,
      ADR4 => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_1_0,
      ADR0 => alu_comp_Index_Reg_1_1789,
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o111_2043
    );
  alu_comp_Alu_op_4_Alu_op_4_DLATCH_62_q : X_LATCHE
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_62_q_CLK,
      I => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_62_q_IN,
      O => alu_comp_Alu_op_4_Alu_op_4_DLATCH_62_q_1903,
      RST => GND,
      SET => GND
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o113 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => X"FF080008FF080008"
    )
    port map (
      ADR5 => '1',
      ADR3 => controlador_Reg_instruct_5_1771,
      ADR0 => controlador_Reg_instruct_4_1776,
      ADR2 => controlador_Reg_instruct_2_1774,
      ADR1 => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o112_2042,
      ADR4 => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o111_2043,
      O => RAM_Addr_1_OBUFT_1958
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o131 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => X"FF00CCCCF0F0CCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => controlador_Reg_instruct_2_1774,
      ADR5 => controlador_Reg_instruct_0_1817,
      ADR2 => controlador_Reg_operand_7_1919,
      ADR3 => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_7_0,
      ADR1 => alu_comp_Index_Reg_7_1885,
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o13
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o133 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => X"FF080008FF080008"
    )
    port map (
      ADR5 => '1',
      ADR3 => controlador_Reg_instruct_5_1771,
      ADR1 => controlador_Reg_instruct_4_1776,
      ADR2 => controlador_Reg_instruct_2_1774,
      ADR0 => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o131_0,
      ADR4 => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o13,
      O => RAM_Addr_7_OBUFT_1966
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o141 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => X"DF8FDF8FD080D080"
    )
    port map (
      ADR4 => '1',
      ADR2 => controlador_Reg_instruct_2_1774,
      ADR0 => controlador_Reg_instruct_0_1817,
      ADR3 => controlador_Reg_operand_6_1917,
      ADR1 => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_6_0,
      ADR5 => alu_comp_Index_Reg_6_1867,
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o14
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o143 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => X"CFCC0300CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => controlador_Reg_instruct_5_1771,
      ADR3 => controlador_Reg_instruct_4_1776,
      ADR2 => controlador_Reg_instruct_2_1774,
      ADR5 => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o141_2010,
      ADR4 => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o14,
      O => RAM_Addr_6_OBUFT_1965
    );
  controlador_Reg_operand_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_controlador_Reg_operand_7_CLK,
      I => NlwBufferSignal_controlador_Reg_operand_7_IN,
      O => controlador_Reg_operand_7_1919,
      RST => GND,
      SET => GND
    );
  controlador_Reg_operand_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_controlador_Reg_operand_6_CLK,
      I => NlwBufferSignal_controlador_Reg_operand_6_IN,
      O => controlador_Reg_operand_6_1917,
      RST => GND,
      SET => GND
    );
  controlador_Reg_operand_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_controlador_Reg_operand_5_CLK,
      I => NlwBufferSignal_controlador_Reg_operand_5_IN,
      O => controlador_Reg_operand_5_1902,
      RST => GND,
      SET => GND
    );
  alu_comp_n0235_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => X"0000000000003300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => ALU_op(2),
      ADR4 => ALU_op(4),
      ADR5 => ALU_op_3_0,
      ADR1 => ALU_op(1),
      O => alu_comp_n0235(4)
    );
  controlador_Reg_operand_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_controlador_Reg_operand_4_CLK,
      I => NlwBufferSignal_controlador_Reg_operand_4_IN,
      O => controlador_Reg_operand_4_1914,
      RST => GND,
      SET => GND
    );
  rom_comp_Mmux_Instruction51 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => X"0000000000000008"
    )
    port map (
      ADR1 => rom_comp_n0680_10_0,
      ADR5 => controlador_prog_count(8),
      ADR2 => controlador_prog_count(11),
      ADR3 => controlador_prog_count(10),
      ADR4 => controlador_prog_count(9),
      ADR0 => controlador_CurrentState_FSM_FFd2_1800,
      O => ROM_Data(2)
    );
  rom_comp_Mmux_Instruction71 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"0000000000040000"
    )
    port map (
      ADR4 => rom_comp_n0680_8_0,
      ADR5 => controlador_prog_count(8),
      ADR2 => controlador_prog_count(11),
      ADR3 => controlador_prog_count(10),
      ADR0 => controlador_prog_count(9),
      ADR1 => controlador_CurrentState_FSM_FFd2_1800,
      O => ROM_Data(4)
    );
  rom_comp_Mmux_Instruction101 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => X"0000000000000040"
    )
    port map (
      ADR2 => rom_comp_n0680_5_0,
      ADR4 => controlador_prog_count(8),
      ADR5 => controlador_prog_count(11),
      ADR0 => controlador_prog_count(10),
      ADR3 => controlador_prog_count(9),
      ADR1 => controlador_CurrentState_FSM_FFd2_1800,
      O => ROM_Data(7)
    );
  controlador_CurrentState_2_PWR_25_o_Mux_87_o_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"FFFFFF2FFFFFFF3F"
    )
    port map (
      ADR1 => controlador_Reg_instruct_5_1771,
      ADR0 => controlador_Reg_instruct_2_1774,
      ADR5 => controlador_Reg_instruct_4_1776,
      ADR3 => controlador_CurrentState_FSM_FFd3_1815,
      ADR4 => controlador_Reg_instruct_6_1769,
      ADR2 => controlador_Reg_instruct_7_1770,
      O => controlador_CurrentState_2_PWR_25_o_Mux_87_o_inv1_2046
    );
  controlador_CurrentState_2_PWR_25_o_Mux_87_o_inv2 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"0F0F0300FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => controlador_CurrentState_FSM_FFd2_1800,
      ADR3 => controlador_Reg_instruct_5_1771,
      ADR1 => controlador_Reg_instruct_4_GND_19_o_Mux_79_o,
      ADR4 => controlador_CurrentState_2_PWR_25_o_Mux_87_o_inv1_2046,
      ADR5 => controlador_CurrentState_FSM_FFd1_1816,
      O => controlador_CurrentState_2_PWR_25_o_Mux_87_o_inv
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o161_controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o161_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o171_1566,
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o171_0
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o162 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"FAFA0A0AFAFA0A0A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => controlador_Reg_instruct_3_1775,
      ADR0 => controlador_Reg_operand_4_1914,
      ADR4 => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_4_0,
      ADR5 => '1',
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o161_2047
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o172 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"FC0CFC0C"
    )
    port map (
      ADR1 => controlador_Reg_operand_3_1910,
      ADR3 => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_3_0,
      ADR2 => controlador_Reg_instruct_3_1775,
      ADR0 => '1',
      ADR4 => '1',
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o171_1566
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o161 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"FF0FF000CFCFC0C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => controlador_Reg_instruct_2_1774,
      ADR5 => controlador_Reg_instruct_0_1817,
      ADR1 => controlador_Reg_operand_4_1914,
      ADR3 => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_4_0,
      ADR4 => alu_comp_Index_Reg_4_1882,
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o16
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o163 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"FF080008FF080008"
    )
    port map (
      ADR5 => '1',
      ADR3 => controlador_Reg_instruct_5_1771,
      ADR1 => controlador_Reg_instruct_4_1776,
      ADR2 => controlador_Reg_instruct_2_1774,
      ADR0 => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o161_2047,
      ADR4 => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o16,
      O => RAM_Addr_4_OBUFT_1963
    );
  rom_comp_n0680_10_rom_comp_n0680_10_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => rom_comp_n0680(10),
      O => rom_comp_n0680_10_0
    );
  rom_comp_Mram_n06804_f8 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y6"
    )
    port map (
      IA => rom_comp_Mram_n06804_f71,
      IB => rom_comp_Mram_n06804_f7_1587,
      O => rom_comp_n0680(10),
      SEL => ROM_Addr(7)
    );
  rom_comp_Mram_n06804_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y6"
    )
    port map (
      IA => rom_comp_Mram_n068043_1588,
      IB => rom_comp_Mram_n068042_1596,
      O => rom_comp_Mram_n06804_f71,
      SEL => ROM_Addr_6_0
    );
  rom_comp_Mram_n06804_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y6"
    )
    port map (
      IA => rom_comp_Mram_n068041_1604,
      IB => rom_comp_Mram_n06804_1612,
      O => rom_comp_Mram_n06804_f7_1587,
      SEL => ROM_Addr_6_0
    );
  rom_comp_Mram_n068044 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"08311492049C2F00"
    )
    port map (
      ADR3 => ROM_Addr(5),
      ADR4 => ROM_Addr_4_0,
      ADR1 => ROM_Addr_2_0,
      ADR2 => ROM_Addr(3),
      ADR5 => ROM_Addr_0_0,
      ADR0 => ROM_Addr(1),
      O => rom_comp_Mram_n068043_1588
    );
  rom_comp_Mram_n068043 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"06001001281840C9"
    )
    port map (
      ADR1 => ROM_Addr_2_0,
      ADR3 => ROM_Addr(1),
      ADR2 => ROM_Addr(3),
      ADR0 => ROM_Addr(5),
      ADR5 => ROM_Addr_0_0,
      ADR4 => ROM_Addr_4_0,
      O => rom_comp_Mram_n068042_1596
    );
  rom_comp_Mram_n068042 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"2312449200658D00"
    )
    port map (
      ADR5 => ROM_Addr(3),
      ADR1 => ROM_Addr(5),
      ADR0 => ROM_Addr_2_0,
      ADR3 => ROM_Addr_4_0,
      ADR4 => ROM_Addr(1),
      ADR2 => ROM_Addr_0_0,
      O => rom_comp_Mram_n068041_1604
    );
  rom_comp_Mram_n068041 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"0000363300008038"
    )
    port map (
      ADR4 => ROM_Addr(5),
      ADR1 => ROM_Addr(1),
      ADR5 => ROM_Addr(3),
      ADR2 => ROM_Addr_0_0,
      ADR0 => ROM_Addr_4_0,
      ADR3 => ROM_Addr_2_0,
      O => rom_comp_Mram_n06804_1612
    );
  rom_comp_n0680_7_rom_comp_n0680_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => rom_comp_n0680(7),
      O => rom_comp_n0680_7_0
    );
  rom_comp_Mram_n068010_f8 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y7"
    )
    port map (
      IA => rom_comp_Mram_n068010_f71,
      IB => rom_comp_Mram_n068010_f7_1621,
      O => rom_comp_n0680(7),
      SEL => ROM_Addr(7)
    );
  rom_comp_Mram_n068010_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y7"
    )
    port map (
      IA => rom_comp_Mram_n0680103_1622,
      IB => rom_comp_Mram_n0680102_1630,
      O => rom_comp_Mram_n068010_f71,
      SEL => ROM_Addr_6_0
    );
  rom_comp_Mram_n068010_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y7"
    )
    port map (
      IA => rom_comp_Mram_n0680101_1638,
      IB => rom_comp_Mram_n068010_1646,
      O => rom_comp_Mram_n068010_f7_1621,
      SEL => ROM_Addr_6_0
    );
  rom_comp_Mram_n0680103 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"0002000004004148"
    )
    port map (
      ADR2 => ROM_Addr(3),
      ADR5 => ROM_Addr_4_0,
      ADR1 => ROM_Addr_0_0,
      ADR0 => ROM_Addr(1),
      ADR4 => ROM_Addr_2_0,
      ADR3 => ROM_Addr(5),
      O => rom_comp_Mram_n0680103_1622
    );
  rom_comp_Mram_n0680102 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"4000A8D010010084"
    )
    port map (
      ADR0 => ROM_Addr(1),
      ADR4 => ROM_Addr_2_0,
      ADR1 => ROM_Addr_0_0,
      ADR5 => ROM_Addr_4_0,
      ADR2 => ROM_Addr(3),
      ADR3 => ROM_Addr(5),
      O => rom_comp_Mram_n0680102_1630
    );
  rom_comp_Mram_n0680101 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"4010540210040000"
    )
    port map (
      ADR0 => ROM_Addr_0_0,
      ADR3 => ROM_Addr_2_0,
      ADR5 => ROM_Addr(3),
      ADR1 => ROM_Addr(1),
      ADR2 => ROM_Addr_4_0,
      ADR4 => ROM_Addr(5),
      O => rom_comp_Mram_n0680101_1638
    );
  rom_comp_Mram_n068010 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"0000043100001001"
    )
    port map (
      ADR4 => ROM_Addr(5),
      ADR1 => ROM_Addr(1),
      ADR3 => ROM_Addr_0_0,
      ADR2 => ROM_Addr_4_0,
      ADR5 => ROM_Addr(3),
      ADR0 => ROM_Addr_2_0,
      O => rom_comp_Mram_n068010_1646
    );
  rom_comp_n0680_11_rom_comp_n0680_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => rom_comp_n0680(11),
      O => rom_comp_n0680_11_0
    );
  rom_comp_Mram_n06802_f8 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y8"
    )
    port map (
      IA => rom_comp_Mram_n06802_f71,
      IB => rom_comp_Mram_n06802_f7_1655,
      O => rom_comp_n0680(11),
      SEL => ROM_Addr(7)
    );
  rom_comp_Mram_n06802_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y8"
    )
    port map (
      IA => rom_comp_Mram_n068024_1656,
      IB => rom_comp_Mram_n068023_1664,
      O => rom_comp_Mram_n06802_f71,
      SEL => ROM_Addr_6_0
    );
  rom_comp_Mram_n06802_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y8"
    )
    port map (
      IA => rom_comp_Mram_n068022_1672,
      IB => rom_comp_Mram_n068021_1680,
      O => rom_comp_Mram_n06802_f7_1655,
      SEL => ROM_Addr_6_0
    );
  rom_comp_Mram_n068024 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"084C78434597CC2A"
    )
    port map (
      ADR1 => ROM_Addr_4_0,
      ADR0 => ROM_Addr(1),
      ADR2 => ROM_Addr(3),
      ADR4 => ROM_Addr(5),
      ADR3 => ROM_Addr_2_0,
      ADR5 => ROM_Addr_0_0,
      O => rom_comp_Mram_n068024_1656
    );
  rom_comp_Mram_n068023 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"1F4AB470810B3A6F"
    )
    port map (
      ADR4 => ROM_Addr_4_0,
      ADR2 => ROM_Addr(3),
      ADR5 => ROM_Addr(1),
      ADR0 => ROM_Addr(5),
      ADR3 => ROM_Addr_0_0,
      ADR1 => ROM_Addr_2_0,
      O => rom_comp_Mram_n068023_1664
    );
  rom_comp_Mram_n068022 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"A04421C452342B4B"
    )
    port map (
      ADR4 => ROM_Addr_2_0,
      ADR5 => ROM_Addr(5),
      ADR0 => ROM_Addr(1),
      ADR3 => ROM_Addr_4_0,
      ADR1 => ROM_Addr(3),
      ADR2 => ROM_Addr_0_0,
      O => rom_comp_Mram_n068022_1672
    );
  rom_comp_Mram_n068021 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"1000004400510144"
    )
    port map (
      ADR0 => ROM_Addr(5),
      ADR1 => ROM_Addr_2_0,
      ADR3 => ROM_Addr_4_0,
      ADR2 => ROM_Addr_0_0,
      ADR5 => ROM_Addr(3),
      ADR4 => ROM_Addr(1),
      O => rom_comp_Mram_n068021_1680
    );
  controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_3_controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_1_pack_11,
      O => controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_1_Q
    );
  controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_3_controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N18_pack_9,
      O => N18
    );
  controlador_Mram_Reg_instruct_5_GND_6_o_wide_mux_0_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"0101010101010101"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => controlador_Reg_instruct_3_1775,
      ADR2 => controlador_Reg_instruct_4_1776,
      ADR0 => controlador_Reg_instruct_5_1771,
      ADR5 => '1',
      O => controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_3_Q
    );
  controlador_Mram_Reg_instruct_5_GND_6_o_wide_mux_0_OUT111 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"01050000"
    )
    port map (
      ADR4 => controlador_Reg_instruct_1_1773,
      ADR3 => controlador_Reg_instruct_2_1774,
      ADR1 => controlador_Reg_instruct_3_1775,
      ADR2 => controlador_Reg_instruct_4_1776,
      ADR0 => controlador_Reg_instruct_5_1771,
      O => controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_1_pack_11
    );
  controlador_Mmux_ALU_op4 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"1000100010003020"
    )
    port map (
      ADR2 => controlador_n0347,
      ADR1 => controlador_Reg_instruct_6_1769,
      ADR0 => controlador_Reg_instruct_7_1770,
      ADR4 => controlador_Reg_instruct_5_1771,
      ADR5 => N18,
      ADR3 => controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_1_Q,
      O => ALU_op(1)
    );
  controlador_Reg_instruct_4_GND_19_o_Mux_79_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"0000003800000038"
    )
    port map (
      ADR4 => controlador_Reg_instruct_3_1775,
      ADR3 => controlador_Reg_instruct_4_1776,
      ADR1 => controlador_Reg_instruct_1_1773,
      ADR2 => controlador_Reg_instruct_2_1774,
      ADR0 => controlador_Reg_instruct_0_1817,
      ADR5 => '1',
      O => controlador_Reg_instruct_4_GND_19_o_Mux_79_o
    );
  controlador_Mmux_ALU_op4_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"FAFAFAF9"
    )
    port map (
      ADR4 => controlador_Reg_instruct_3_1775,
      ADR3 => controlador_Reg_instruct_4_1776,
      ADR1 => controlador_Reg_instruct_1_1773,
      ADR2 => controlador_Reg_instruct_2_1774,
      ADR0 => controlador_Reg_instruct_0_1817,
      O => N18_pack_9
    );
  controlador_CurrentState_2_GND_28_o_Mux_193_o_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"FFBFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => controlador_Reg_instruct_6_1769,
      ADR4 => controlador_Reg_instruct_4_GND_19_o_Mux_79_o,
      ADR3 => controlador_CurrentState_FSM_FFd3_1815,
      ADR5 => controlador_CurrentState_FSM_FFd1_1816,
      ADR2 => controlador_Reg_instruct_7_1770,
      ADR1 => controlador_Reg_instruct_5_1771,
      O => controlador_CurrentState_2_GND_28_o_Mux_193_o_inv
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o171 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => X"FCFC7474B8B83030"
    )
    port map (
      ADR3 => '1',
      ADR1 => controlador_Reg_instruct_2_1774,
      ADR0 => controlador_Reg_instruct_0_1817,
      ADR5 => controlador_Reg_operand_3_1910,
      ADR4 => controlador_Index_Reg_7_Reg_operand_7_add_20_OUT_3_0,
      ADR2 => alu_comp_Index_Reg_3_1864,
      O => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o17
    );
  controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o173 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => X"FF0A000AFF000000"
    )
    port map (
      ADR1 => '1',
      ADR3 => controlador_Reg_instruct_5_1771,
      ADR0 => controlador_Reg_instruct_4_1776,
      ADR2 => controlador_Reg_instruct_2_1774,
      ADR5 => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o171_0,
      ADR4 => controlador_Mmux_Reg_instruct_4_Reg_instruct_4_MUX_101_o17,
      O => RAM_Addr_3_OBUFT_1962
    );
  DMA_ACK_OBUF_DMA_ACK_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_2_PWR_126_o_Mux_289_o,
      O => controlador_CurrentState_2_PWR_126_o_Mux_289_o_0
    );
  controlador_CurrentState_n0671_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => X"00000F0000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => controlador_CurrentState_FSM_FFd3_1815,
      ADR2 => controlador_CurrentState_FSM_FFd2_1800,
      ADR4 => controlador_CurrentState_FSM_FFd1_1816,
      ADR5 => '1',
      O => DMA_ACK_OBUF_1992
    );
  controlador_CurrentState_n0671_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => controlador_CurrentState_FSM_FFd3_1815,
      ADR2 => controlador_CurrentState_FSM_FFd2_1800,
      ADR4 => '1',
      O => controlador_CurrentState_2_PWR_126_o_Mux_289_o
    );
  SEND_comm_OBUF_SEND_comm_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ALU_op(3),
      O => ALU_op_3_0
    );
  controlador_Mmux_SEND_comm11 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y2",
      INIT => X"0000808000008080"
    )
    port map (
      ADR3 => '1',
      ADR2 => controlador_Reg_instruct_7_1770,
      ADR0 => controlador_CurrentState_FSM_FFd1_1816,
      ADR4 => controlador_CurrentState_FSM_FFd3_1815,
      ADR1 => controlador_Reg_instruct_6_1769,
      ADR5 => '1',
      O => SEND_comm_OBUF_1880
    );
  controlador_Mmux_ALU_op71 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y2",
      INIT => X"00000200"
    )
    port map (
      ADR3 => controlador_Reg_instruct_5_GND_6_o_wide_mux_0_OUT_3_Q,
      ADR2 => controlador_Reg_instruct_7_1770,
      ADR0 => controlador_CurrentState_FSM_FFd1_1816,
      ADR4 => controlador_CurrentState_FSM_FFd3_1815,
      ADR1 => controlador_Reg_instruct_6_1769,
      O => ALU_op(3)
    );
  NlwBufferBlock_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Index_Reg_0_1861,
      O => NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_DI_0_Q
    );
  NlwBufferBlock_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Index_Reg_1_1789,
      O => NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_DI_1_Q
    );
  NlwBufferBlock_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Index_Reg_2_1849,
      O => NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_DI_2_Q
    );
  NlwBufferBlock_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Index_Reg_3_1864,
      O => NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_cy_3_DI_3_Q
    );
  NlwBufferBlock_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Index_Reg_4_1882,
      O => NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_DI_0_Q
    );
  NlwBufferBlock_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Index_Reg_5_1900,
      O => NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_DI_1_Q
    );
  NlwBufferBlock_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Index_Reg_6_1867,
      O => NlwBufferSignal_controlador_Madd_Index_Reg_7_Reg_operand_7_add_20_OUT_xor_7_DI_2_Q
    );
  NlwBufferBlock_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_0_1841,
      O => NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_DI_0_Q
    );
  NlwBufferBlock_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_1_1812,
      O => NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_DI_1_Q
    );
  NlwBufferBlock_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_2_1819,
      O => NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_DI_2_Q
    );
  NlwBufferBlock_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_3_1824,
      O => NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_cy_3_DI_3_Q
    );
  NlwBufferBlock_controlador_prog_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_prog_count_3_CLK
    );
  NlwBufferBlock_controlador_prog_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_prog_count_2_CLK
    );
  NlwBufferBlock_controlador_prog_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_prog_count_1_CLK
    );
  NlwBufferBlock_controlador_prog_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_prog_count_0_CLK
    );
  NlwBufferBlock_controlador_prog_count_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_prog_count_7_CLK
    );
  NlwBufferBlock_controlador_prog_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_prog_count_6_CLK
    );
  NlwBufferBlock_controlador_prog_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_prog_count_5_CLK
    );
  NlwBufferBlock_controlador_prog_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_prog_count_4_CLK
    );
  NlwBufferBlock_controlador_prog_count_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_prog_count_11_CLK
    );
  NlwBufferBlock_controlador_prog_count_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_prog_count_10_CLK
    );
  NlwBufferBlock_controlador_prog_count_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_prog_count_9_CLK
    );
  NlwBufferBlock_controlador_prog_count_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_prog_count_8_CLK
    );
  NlwBufferBlock_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_0_1841,
      O => NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_DI_0_Q
    );
  NlwBufferBlock_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_1_1812,
      O => NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_DI_1_Q
    );
  NlwBufferBlock_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_2_1819,
      O => NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_DI_2_Q
    );
  NlwBufferBlock_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_3_1824,
      O => NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_cy_3_DI_3_Q
    );
  NlwBufferBlock_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_4_1836,
      O => NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_DI_0_Q
    );
  NlwBufferBlock_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_5_1779,
      O => NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_DI_1_Q
    );
  NlwBufferBlock_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_6_1809,
      O => NlwBufferSignal_alu_comp_Madd_reg_a_7_reg_b_7_add_0_OUT_xor_7_DI_2_Q
    );
  NlwBufferBlock_RAM_Addr_0_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RAM_Addr_0_OBUFT_1956,
      O => NlwBufferSignal_RAM_Addr_0_OBUFT_I
    );
  NlwBufferBlock_RAM_Addr_1_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RAM_Addr_1_OBUFT_1958,
      O => NlwBufferSignal_RAM_Addr_1_OBUFT_I
    );
  NlwBufferBlock_RAM_Addr_2_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RAM_Addr_2_OBUFT_0,
      O => NlwBufferSignal_RAM_Addr_2_OBUFT_I
    );
  NlwBufferBlock_RAM_Addr_3_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RAM_Addr_3_OBUFT_1962,
      O => NlwBufferSignal_RAM_Addr_3_OBUFT_I
    );
  NlwBufferBlock_RAM_Addr_4_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RAM_Addr_4_OBUFT_1963,
      O => NlwBufferSignal_RAM_Addr_4_OBUFT_I
    );
  NlwBufferBlock_RAM_Addr_5_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RAM_Addr_5_OBUFT_1964,
      O => NlwBufferSignal_RAM_Addr_5_OBUFT_I
    );
  NlwBufferBlock_RAM_Addr_6_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RAM_Addr_6_OBUFT_1965,
      O => NlwBufferSignal_RAM_Addr_6_OBUFT_I
    );
  NlwBufferBlock_RAM_Addr_7_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RAM_Addr_7_OBUFT_1966,
      O => NlwBufferSignal_RAM_Addr_7_OBUFT_I
    );
  NlwBufferBlock_SEND_comm_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => SEND_comm_OBUF_1880,
      O => NlwBufferSignal_SEND_comm_OBUF_I
    );
  NlwBufferBlock_Databus_0_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_0_MLTSRCEDGE_0,
      O => NlwBufferSignal_Databus_0_IOBUF_OBUFT_I
    );
  NlwBufferBlock_Databus_1_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_1_MLTSRCEDGE,
      O => NlwBufferSignal_Databus_1_IOBUF_OBUFT_I
    );
  NlwBufferBlock_Databus_2_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_2_MLTSRCEDGE,
      O => NlwBufferSignal_Databus_2_IOBUF_OBUFT_I
    );
  NlwBufferBlock_Databus_3_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_3_MLTSRCEDGE,
      O => NlwBufferSignal_Databus_3_IOBUF_OBUFT_I
    );
  NlwBufferBlock_Databus_4_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_4_MLTSRCEDGE,
      O => NlwBufferSignal_Databus_4_IOBUF_OBUFT_I
    );
  NlwBufferBlock_Databus_5_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_5_MLTSRCEDGE,
      O => NlwBufferSignal_Databus_5_IOBUF_OBUFT_I
    );
  NlwBufferBlock_Databus_6_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_6_MLTSRCEDGE,
      O => NlwBufferSignal_Databus_6_IOBUF_OBUFT_I
    );
  NlwBufferBlock_Databus_7_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Databus_7_MLTSRCEDGE,
      O => NlwBufferSignal_Databus_7_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DMA_ACK_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DMA_ACK_OBUF_1992,
      O => NlwBufferSignal_DMA_ACK_OBUF_I
    );
  NlwBufferBlock_Clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_Clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_alu_comp_reg_acc_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235_0_0,
      O => NlwBufferSignal_alu_comp_reg_acc_1_CLK
    );
  NlwBufferBlock_alu_comp_reg_acc_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235_0_0,
      O => NlwBufferSignal_alu_comp_reg_acc_0_CLK
    );
  NlwBufferBlock_alu_comp_reg_acc_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235_0_0,
      O => NlwBufferSignal_alu_comp_reg_acc_6_CLK
    );
  NlwBufferBlock_alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(5),
      O => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_CLK
    );
  NlwBufferBlock_alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_acc_2_1797,
      O => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_68_q_IN
    );
  NlwBufferBlock_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_4_1836,
      O => NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_DI_0_Q
    );
  NlwBufferBlock_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_5_1779,
      O => NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_DI_1_Q
    );
  NlwBufferBlock_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_a_6_1809,
      O => NlwBufferSignal_alu_comp_Msub_GND_62_o_GND_62_o_sub_3_OUT_7_0_xor_7_DI_2_Q
    );
  NlwBufferBlock_alu_comp_reg_acc_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235_0_0,
      O => NlwBufferSignal_alu_comp_reg_acc_3_CLK
    );
  NlwBufferBlock_alu_comp_reg_acc_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235_0_0,
      O => NlwBufferSignal_alu_comp_reg_acc_2_CLK
    );
  NlwBufferBlock_alu_comp_reg_acc_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235_0_0,
      O => NlwBufferSignal_alu_comp_reg_acc_5_CLK
    );
  NlwBufferBlock_alu_comp_reg_acc_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235_0_0,
      O => NlwBufferSignal_alu_comp_reg_acc_4_CLK
    );
  NlwBufferBlock_alu_comp_reg_a_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(2),
      O => NlwBufferSignal_alu_comp_reg_a_3_CLK
    );
  NlwBufferBlock_alu_comp_reg_a_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_3_Mux_52_o_0,
      O => NlwBufferSignal_alu_comp_reg_a_3_IN
    );
  NlwBufferBlock_alu_comp_reg_a_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(2),
      O => NlwBufferSignal_alu_comp_reg_a_2_CLK
    );
  NlwBufferBlock_alu_comp_reg_a_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_2_Mux_54_o_0,
      O => NlwBufferSignal_alu_comp_reg_a_2_IN
    );
  NlwBufferBlock_alu_comp_reg_a_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(2),
      O => NlwBufferSignal_alu_comp_reg_a_1_CLK
    );
  NlwBufferBlock_alu_comp_reg_a_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_1_Mux_56_o_0,
      O => NlwBufferSignal_alu_comp_reg_a_1_IN
    );
  NlwBufferBlock_alu_comp_reg_a_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(2),
      O => NlwBufferSignal_alu_comp_reg_a_0_CLK
    );
  NlwBufferBlock_alu_comp_reg_a_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_0_Mux_58_o_0,
      O => NlwBufferSignal_alu_comp_reg_a_0_IN
    );
  NlwBufferBlock_alu_comp_reg_b_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(3),
      O => NlwBufferSignal_alu_comp_reg_b_7_CLK
    );
  NlwBufferBlock_alu_comp_reg_b_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_7_Mux_44_o_0,
      O => NlwBufferSignal_alu_comp_reg_b_7_IN
    );
  NlwBufferBlock_alu_comp_reg_b_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(3),
      O => NlwBufferSignal_alu_comp_reg_b_6_CLK
    );
  NlwBufferBlock_alu_comp_reg_b_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_6_Mux_46_o_0,
      O => NlwBufferSignal_alu_comp_reg_b_6_IN
    );
  NlwBufferBlock_alu_comp_reg_b_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(3),
      O => NlwBufferSignal_alu_comp_reg_b_5_CLK
    );
  NlwBufferBlock_alu_comp_reg_b_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_5_Mux_48_o_0,
      O => NlwBufferSignal_alu_comp_reg_b_5_IN
    );
  NlwBufferBlock_alu_comp_reg_b_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(3),
      O => NlwBufferSignal_alu_comp_reg_b_4_CLK
    );
  NlwBufferBlock_alu_comp_reg_b_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_4_Mux_50_o_0,
      O => NlwBufferSignal_alu_comp_reg_b_4_IN
    );
  NlwBufferBlock_alu_comp_Index_Reg_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(4),
      O => NlwBufferSignal_alu_comp_Index_Reg_3_CLK
    );
  NlwBufferBlock_alu_comp_Index_Reg_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(4),
      O => NlwBufferSignal_alu_comp_Index_Reg_2_CLK
    );
  NlwBufferBlock_alu_comp_Index_Reg_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(4),
      O => NlwBufferSignal_alu_comp_Index_Reg_1_CLK
    );
  NlwBufferBlock_alu_comp_Index_Reg_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(4),
      O => NlwBufferSignal_alu_comp_Index_Reg_0_CLK
    );
  NlwBufferBlock_alu_comp_reg_b_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(3),
      O => NlwBufferSignal_alu_comp_reg_b_3_CLK
    );
  NlwBufferBlock_alu_comp_reg_b_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_3_Mux_52_o_0,
      O => NlwBufferSignal_alu_comp_reg_b_3_IN
    );
  NlwBufferBlock_alu_comp_reg_b_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(3),
      O => NlwBufferSignal_alu_comp_reg_b_2_CLK
    );
  NlwBufferBlock_alu_comp_reg_b_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_2_Mux_54_o_0,
      O => NlwBufferSignal_alu_comp_reg_b_2_IN
    );
  NlwBufferBlock_alu_comp_reg_b_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(3),
      O => NlwBufferSignal_alu_comp_reg_b_1_CLK
    );
  NlwBufferBlock_alu_comp_reg_b_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_1_Mux_56_o_0,
      O => NlwBufferSignal_alu_comp_reg_b_1_IN
    );
  NlwBufferBlock_alu_comp_reg_b_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(3),
      O => NlwBufferSignal_alu_comp_reg_b_0_CLK
    );
  NlwBufferBlock_alu_comp_reg_b_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_0_Mux_58_o_0,
      O => NlwBufferSignal_alu_comp_reg_b_0_IN
    );
  NlwBufferBlock_alu_comp_Alu_op_4_Alu_op_4_DLATCH_70_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(5),
      O => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_70_q_CLK
    );
  NlwBufferBlock_alu_comp_Alu_op_4_Alu_op_4_DLATCH_70_q_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_acc_1_1788,
      O => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_70_q_IN
    );
  NlwBufferBlock_alu_comp_FlagZ_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235_1_0,
      O => NlwBufferSignal_alu_comp_FlagZ_CLK
    );
  NlwBufferBlock_alu_comp_Alu_op_4_Alu_op_4_DLATCH_64_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(5),
      O => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_64_q_CLK
    );
  NlwBufferBlock_alu_comp_Alu_op_4_Alu_op_4_DLATCH_64_q_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_acc_4_1832,
      O => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_64_q_IN
    );
  NlwBufferBlock_alu_comp_reg_acc_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235_0_0,
      O => NlwBufferSignal_alu_comp_reg_acc_7_CLK
    );
  NlwBufferBlock_alu_comp_Alu_op_4_Alu_op_4_DLATCH_66_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(5),
      O => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_66_q_CLK
    );
  NlwBufferBlock_alu_comp_Alu_op_4_Alu_op_4_DLATCH_66_q_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_acc_3_1829,
      O => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_66_q_IN
    );
  NlwBufferBlock_alu_comp_reg_a_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(2),
      O => NlwBufferSignal_alu_comp_reg_a_7_CLK
    );
  NlwBufferBlock_alu_comp_reg_a_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_7_Mux_44_o_0,
      O => NlwBufferSignal_alu_comp_reg_a_7_IN
    );
  NlwBufferBlock_alu_comp_reg_a_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(2),
      O => NlwBufferSignal_alu_comp_reg_a_6_CLK
    );
  NlwBufferBlock_alu_comp_reg_a_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_6_Mux_46_o_0,
      O => NlwBufferSignal_alu_comp_reg_a_6_IN
    );
  NlwBufferBlock_alu_comp_reg_a_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(2),
      O => NlwBufferSignal_alu_comp_reg_a_5_CLK
    );
  NlwBufferBlock_alu_comp_reg_a_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_5_Mux_48_o_0,
      O => NlwBufferSignal_alu_comp_reg_a_5_IN
    );
  NlwBufferBlock_alu_comp_reg_a_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(2),
      O => NlwBufferSignal_alu_comp_reg_a_4_CLK
    );
  NlwBufferBlock_alu_comp_reg_a_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_Alu_op_4_reg_a_4_Mux_50_o_0,
      O => NlwBufferSignal_alu_comp_reg_a_4_IN
    );
  NlwBufferBlock_alu_comp_Alu_op_4_Alu_op_4_DLATCH_72_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(5),
      O => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_72_q_CLK
    );
  NlwBufferBlock_alu_comp_Alu_op_4_Alu_op_4_DLATCH_72_q_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_acc_0_1796,
      O => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_72_q_IN
    );
  NlwBufferBlock_controlador_CurrentState_FSM_FFd1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_CurrentState_FSM_FFd1_2_CLK
    );
  NlwBufferBlock_controlador_CurrentState_FSM_FFd1_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_FSM_FFd1_In,
      O => NlwBufferSignal_controlador_CurrentState_FSM_FFd1_2_IN
    );
  NlwBufferBlock_controlador_CurrentState_FSM_FFd1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_CurrentState_FSM_FFd1_1_CLK
    );
  NlwBufferBlock_controlador_CurrentState_FSM_FFd3_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_CurrentState_FSM_FFd3_2_CLK
    );
  NlwBufferBlock_controlador_CurrentState_FSM_FFd3_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_FSM_FFd3_In,
      O => NlwBufferSignal_controlador_CurrentState_FSM_FFd3_2_IN
    );
  NlwBufferBlock_controlador_CurrentState_FSM_FFd3_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_CurrentState_FSM_FFd3_1_CLK
    );
  NlwBufferBlock_controlador_CurrentState_FSM_FFd2_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_CurrentState_FSM_FFd2_1_CLK
    );
  NlwBufferBlock_alu_comp_Alu_op_4_Alu_op_4_DLATCH_58_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(5),
      O => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_58_q_CLK
    );
  NlwBufferBlock_alu_comp_Alu_op_4_Alu_op_4_DLATCH_58_q_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_acc_7_1856,
      O => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_58_q_IN
    );
  NlwBufferBlock_alu_comp_Index_Reg_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(4),
      O => NlwBufferSignal_alu_comp_Index_Reg_7_CLK
    );
  NlwBufferBlock_alu_comp_Index_Reg_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(4),
      O => NlwBufferSignal_alu_comp_Index_Reg_6_CLK
    );
  NlwBufferBlock_alu_comp_Index_Reg_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(4),
      O => NlwBufferSignal_alu_comp_Index_Reg_5_CLK
    );
  NlwBufferBlock_alu_comp_Index_Reg_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(4),
      O => NlwBufferSignal_alu_comp_Index_Reg_4_CLK
    );
  NlwBufferBlock_controlador_CurrentState_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_CurrentState_FSM_FFd3_CLK
    );
  NlwBufferBlock_controlador_CurrentState_FSM_FFd3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_FSM_FFd3_In,
      O => NlwBufferSignal_controlador_CurrentState_FSM_FFd3_IN
    );
  NlwBufferBlock_controlador_CurrentState_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_CurrentState_FSM_FFd2_CLK
    );
  NlwBufferBlock_controlador_CurrentState_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_controlador_CurrentState_FSM_FFd1_CLK
    );
  NlwBufferBlock_controlador_CurrentState_FSM_FFd1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_FSM_FFd1_In,
      O => NlwBufferSignal_controlador_CurrentState_FSM_FFd1_IN
    );
  NlwBufferBlock_controlador_Reg_operand_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_2_PWR_126_o_Mux_289_o_0,
      O => NlwBufferSignal_controlador_Reg_operand_3_CLK
    );
  NlwBufferBlock_controlador_Reg_operand_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Data(3),
      O => NlwBufferSignal_controlador_Reg_operand_3_IN
    );
  NlwBufferBlock_controlador_Reg_operand_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_2_PWR_126_o_Mux_289_o_0,
      O => NlwBufferSignal_controlador_Reg_operand_2_CLK
    );
  NlwBufferBlock_controlador_Reg_operand_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Data(2),
      O => NlwBufferSignal_controlador_Reg_operand_2_IN
    );
  NlwBufferBlock_controlador_Reg_operand_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_2_PWR_126_o_Mux_289_o_0,
      O => NlwBufferSignal_controlador_Reg_operand_1_CLK
    );
  NlwBufferBlock_controlador_Reg_operand_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Data(1),
      O => NlwBufferSignal_controlador_Reg_operand_1_IN
    );
  NlwBufferBlock_controlador_Reg_operand_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_2_PWR_126_o_Mux_289_o_0,
      O => NlwBufferSignal_controlador_Reg_operand_0_CLK
    );
  NlwBufferBlock_controlador_Reg_operand_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Data(0),
      O => NlwBufferSignal_controlador_Reg_operand_0_IN
    );
  NlwBufferBlock_alu_comp_Alu_op_4_Alu_op_4_DLATCH_60_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(5),
      O => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_60_q_CLK
    );
  NlwBufferBlock_alu_comp_Alu_op_4_Alu_op_4_DLATCH_60_q_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_acc_6_1834,
      O => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_60_q_IN
    );
  NlwBufferBlock_controlador_Reg_instruct_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_2_PWR_118_o_Mux_273_o,
      O => NlwBufferSignal_controlador_Reg_instruct_3_CLK
    );
  NlwBufferBlock_controlador_Reg_instruct_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Data(3),
      O => NlwBufferSignal_controlador_Reg_instruct_3_IN
    );
  NlwBufferBlock_controlador_Reg_instruct_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_2_PWR_118_o_Mux_273_o,
      O => NlwBufferSignal_controlador_Reg_instruct_2_CLK
    );
  NlwBufferBlock_controlador_Reg_instruct_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Data(2),
      O => NlwBufferSignal_controlador_Reg_instruct_2_IN
    );
  NlwBufferBlock_controlador_Reg_instruct_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_2_PWR_118_o_Mux_273_o,
      O => NlwBufferSignal_controlador_Reg_instruct_1_CLK
    );
  NlwBufferBlock_controlador_Reg_instruct_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Data(1),
      O => NlwBufferSignal_controlador_Reg_instruct_1_IN
    );
  NlwBufferBlock_controlador_Reg_instruct_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_2_PWR_118_o_Mux_273_o,
      O => NlwBufferSignal_controlador_Reg_instruct_0_CLK
    );
  NlwBufferBlock_controlador_Reg_instruct_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Data(0),
      O => NlwBufferSignal_controlador_Reg_instruct_0_IN
    );
  NlwBufferBlock_alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(5),
      O => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_59_q_CLK
    );
  NlwBufferBlock_controlador_Reg_instruct_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_2_PWR_118_o_Mux_273_o,
      O => NlwBufferSignal_controlador_Reg_instruct_7_CLK
    );
  NlwBufferBlock_controlador_Reg_instruct_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Data(7),
      O => NlwBufferSignal_controlador_Reg_instruct_7_IN
    );
  NlwBufferBlock_controlador_Reg_instruct_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_2_PWR_118_o_Mux_273_o,
      O => NlwBufferSignal_controlador_Reg_instruct_6_CLK
    );
  NlwBufferBlock_controlador_Reg_instruct_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Data(6),
      O => NlwBufferSignal_controlador_Reg_instruct_6_IN
    );
  NlwBufferBlock_controlador_Reg_instruct_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_2_PWR_118_o_Mux_273_o,
      O => NlwBufferSignal_controlador_Reg_instruct_5_CLK
    );
  NlwBufferBlock_controlador_Reg_instruct_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Data(5),
      O => NlwBufferSignal_controlador_Reg_instruct_5_IN
    );
  NlwBufferBlock_controlador_Reg_instruct_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_2_PWR_118_o_Mux_273_o,
      O => NlwBufferSignal_controlador_Reg_instruct_4_CLK
    );
  NlwBufferBlock_controlador_Reg_instruct_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Data(4),
      O => NlwBufferSignal_controlador_Reg_instruct_4_IN
    );
  NlwBufferBlock_alu_comp_Alu_op_4_Alu_op_4_DLATCH_62_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_n0235(5),
      O => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_62_q_CLK
    );
  NlwBufferBlock_alu_comp_Alu_op_4_Alu_op_4_DLATCH_62_q_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_comp_reg_acc_5_1830,
      O => NlwBufferSignal_alu_comp_Alu_op_4_Alu_op_4_DLATCH_62_q_IN
    );
  NlwBufferBlock_controlador_Reg_operand_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_2_PWR_126_o_Mux_289_o_0,
      O => NlwBufferSignal_controlador_Reg_operand_7_CLK
    );
  NlwBufferBlock_controlador_Reg_operand_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Data(7),
      O => NlwBufferSignal_controlador_Reg_operand_7_IN
    );
  NlwBufferBlock_controlador_Reg_operand_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_2_PWR_126_o_Mux_289_o_0,
      O => NlwBufferSignal_controlador_Reg_operand_6_CLK
    );
  NlwBufferBlock_controlador_Reg_operand_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Data(6),
      O => NlwBufferSignal_controlador_Reg_operand_6_IN
    );
  NlwBufferBlock_controlador_Reg_operand_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_2_PWR_126_o_Mux_289_o_0,
      O => NlwBufferSignal_controlador_Reg_operand_5_CLK
    );
  NlwBufferBlock_controlador_Reg_operand_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Data(5),
      O => NlwBufferSignal_controlador_Reg_operand_5_IN
    );
  NlwBufferBlock_controlador_Reg_operand_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controlador_CurrentState_2_PWR_126_o_Mux_289_o_0,
      O => NlwBufferSignal_controlador_Reg_operand_4_CLK
    );
  NlwBufferBlock_controlador_Reg_operand_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => ROM_Data(4),
      O => NlwBufferSignal_controlador_Reg_operand_4_IN
    );
  NlwBlock_bloque_control_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_bloque_control_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

