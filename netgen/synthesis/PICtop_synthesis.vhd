--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: PICtop_synthesis.vhd
-- /___/   /\     Timestamp: Mon Feb 01 07:41:16 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm PICtop -w -dir netgen/synthesis -ofmt vhdl -sim PICtop.ngc PICtop_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: PICtop.ngc
-- Output file	: C:\Users\rboq\Documents\LCSE\PRACTICAIII\LCSE-PIII\netgen\synthesis\PICtop_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: PICtop
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

entity PICtop is
  port (
    Reset : in STD_LOGIC := 'X'; 
    Clk : in STD_LOGIC := 'X'; 
    RS232_RX : in STD_LOGIC := 'X'; 
    RS232_TX : out STD_LOGIC; 
    switches : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Temp_L : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    Temp_H : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end PICtop;

architecture Structure of PICtop is
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
  signal RS232_RX_IBUF_2 : STD_LOGIC; 
  signal RS232_PHY_Ack_in_11 : STD_LOGIC; 
  signal TX_RDY : STD_LOGIC; 
  signal RS232_TX_OBUF_13 : STD_LOGIC; 
  signal RX_Full : STD_LOGIC; 
  signal RX_Empty : STD_LOGIC; 
  signal RAM_OE : STD_LOGIC; 
  signal alu_comp_FlagZ_58 : STD_LOGIC; 
  signal Data_read : STD_LOGIC; 
  signal Valid_d : STD_LOGIC; 
  signal DMA_RQ : STD_LOGIC; 
  signal ROM_data_10_Q : STD_LOGIC; 
  signal ROM_data_7_Q : STD_LOGIC; 
  signal ROM_data_6_Q : STD_LOGIC; 
  signal ROM_data_5_Q : STD_LOGIC; 
  signal ROM_data_4_Q : STD_LOGIC; 
  signal ROM_data_3_Q : STD_LOGIC; 
  signal ROM_data_2_Q : STD_LOGIC; 
  signal ROM_data_1_Q : STD_LOGIC; 
  signal ROM_data_0_Q : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_7_Q_109 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_6_Q_110 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_6_Q_111 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_5_Q_112 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_5_Q_113 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_4_Q_114 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_4_Q_115 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_3_Q_116 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_3_Q_117 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_2_Q_118 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_2_Q_119 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_1_Q_120 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_1_Q_121 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_0_Q_122 : STD_LOGIC; 
  signal controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_0_Q_123 : STD_LOGIC; 
  signal controlador_Mcount_prog_count11 : STD_LOGIC; 
  signal controlador_Mcount_prog_count10 : STD_LOGIC; 
  signal controlador_Mcount_prog_count9 : STD_LOGIC; 
  signal controlador_Mcount_prog_count8 : STD_LOGIC; 
  signal controlador_Mcount_prog_count7 : STD_LOGIC; 
  signal controlador_Mcount_prog_count6 : STD_LOGIC; 
  signal controlador_Mcount_prog_count5 : STD_LOGIC; 
  signal controlador_Mcount_prog_count4 : STD_LOGIC; 
  signal controlador_Mcount_prog_count3 : STD_LOGIC; 
  signal controlador_Mcount_prog_count2 : STD_LOGIC; 
  signal controlador_Mcount_prog_count1 : STD_LOGIC; 
  signal controlador_Mcount_prog_count : STD_LOGIC; 
  signal controlador_CurrentState_2_inv : STD_LOGIC; 
  signal controlador_n0461_inv : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd2_In : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd3_In : STD_LOGIC; 
  signal controlador_n0445_inv : STD_LOGIC; 
  signal controlador_n0435_inv : STD_LOGIC; 
  signal controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_0_Q : STD_LOGIC; 
  signal controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_1_Q : STD_LOGIC; 
  signal controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_2_Q : STD_LOGIC; 
  signal controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_3_Q : STD_LOGIC; 
  signal controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_4_Q : STD_LOGIC; 
  signal controlador_CurrentState_2_PWR_21_o_Mux_76_o : STD_LOGIC; 
  signal controlador_CurrentState_2_PWR_81_o_Mux_196_o : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd3_173 : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd2_174 : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd1_175 : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_0_Q : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_1_Q : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_2_Q : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_3_Q : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_4_Q : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_5_Q : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_6_Q : STD_LOGIC; 
  signal controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_7_Q : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_rs_AS_inv : STD_LOGIC; 
  signal alu_comp_reg_a_7_GND_34_o_LessThan_18_o1_216 : STD_LOGIC; 
  signal alu_comp_reg_b_7_reg_a_7_LessThan_13_o2_217 : STD_LOGIC; 
  signal alu_comp_reg_b_7_reg_a_7_LessThan_13_o1 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_equal_11_o8 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_equal_11_o7 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_equal_11_o6 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_equal_11_o5 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_equal_11_o4 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_equal_11_o3 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_equal_11_o2 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_LessThan_12_o2_226 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_LessThan_12_o1 : STD_LOGIC; 
  signal alu_comp_Alu_op_0_mmx_out : STD_LOGIC; 
  signal alu_comp_n0245_inv : STD_LOGIC; 
  signal alu_comp_n0171_inv : STD_LOGIC; 
  signal alu_comp_n0270_inv : STD_LOGIC; 
  signal alu_comp_n0196_inv : STD_LOGIC; 
  signal alu_comp_Alu_op_4_GND_35_o_Mux_27_o_inv : STD_LOGIC; 
  signal alu_comp_n0281 : STD_LOGIC; 
  signal alu_comp_n0276 : STD_LOGIC; 
  signal alu_comp_FlagZ_tmp : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_In_310 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_In : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_In_312 : STD_LOGIC; 
  signal dma_top_n0165_inv_313 : STD_LOGIC; 
  signal dma_top_data_count_2_GND_47_o_equal_18_o : STD_LOGIC; 
  signal dma_top_data_count_2_RX_Full_AND_272_o : STD_LOGIC; 
  signal dma_top_CurrentState_2_GND_56_o_Mux_59_o : STD_LOGIC; 
  signal dma_top_CurrentState_2_GND_48_o_Mux_43_o : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd3_320 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_321 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd1_322 : STD_LOGIC; 
  signal ram_top_cs_gp : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_10_324 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_11_325 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_111_326 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_12_327 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_6_328 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_112_329 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_121_330 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_122_331 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_13_332 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_7_333 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_113_334 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_123_335 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_124_336 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_131_337 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_71_338 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_125_339 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_132_340 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_133_341 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_14_342 : STD_LOGIC; 
  signal ram_top_periph_ram_mux7_8_343 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_10_344 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_11_345 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_111_346 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_12_347 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_6_348 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_112_349 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_121_350 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_122_351 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_13_352 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_7_353 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_113_354 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_123_355 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_124_356 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_131_357 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_71_358 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_125_359 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_132_360 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_133_361 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_14_362 : STD_LOGIC; 
  signal ram_top_periph_ram_mux6_8_363 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_10_364 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_11_365 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_111_366 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_12_367 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_6_368 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_112_369 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_121_370 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_122_371 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_13_372 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_7_373 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_113_374 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_123_375 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_124_376 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_131_377 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_71_378 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_125_379 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_132_380 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_133_381 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_14_382 : STD_LOGIC; 
  signal ram_top_periph_ram_mux5_8_383 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_10_384 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_11_385 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_111_386 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_12_387 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_6_388 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_112_389 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_121_390 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_122_391 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_13_392 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_7_393 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_113_394 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_123_395 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_124_396 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_131_397 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_71_398 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_125_399 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_132_400 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_133_401 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_14_402 : STD_LOGIC; 
  signal ram_top_periph_ram_mux4_8_403 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_10_404 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_11_405 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_111_406 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_12_407 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_6_408 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_112_409 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_121_410 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_122_411 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_13_412 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_7_413 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_113_414 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_123_415 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_124_416 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_131_417 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_71_418 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_125_419 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_132_420 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_133_421 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_14_422 : STD_LOGIC; 
  signal ram_top_periph_ram_mux3_8_423 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_10_424 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_11_425 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_111_426 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_12_427 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_6_428 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_112_429 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_121_430 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_122_431 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_13_432 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_7_433 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_113_434 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_123_435 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_124_436 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_131_437 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_71_438 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_125_439 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_132_440 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_133_441 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_14_442 : STD_LOGIC; 
  signal ram_top_periph_ram_mux2_8_443 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_10_444 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_11_445 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_111_446 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_12_447 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_6_448 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_112_449 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_121_450 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_122_451 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_13_452 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_7_453 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_113_454 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_123_455 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_124_456 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_131_457 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_71_458 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_125_459 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_132_460 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_133_461 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_14_462 : STD_LOGIC; 
  signal ram_top_periph_ram_mux1_8_463 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_10_464 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_11_465 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_111_466 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_12_467 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_6_468 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_112_469 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_121_470 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_122_471 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_13_472 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_7_473 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_113_474 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_123_475 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_124_476 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_131_477 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_71_478 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_125_479 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_132_480 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_133_481 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_14_482 : STD_LOGIC; 
  signal ram_top_periph_ram_mux_8_483 : STD_LOGIC; 
  signal ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT6 : STD_LOGIC; 
  signal ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT5 : STD_LOGIC; 
  signal ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT4 : STD_LOGIC; 
  signal ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT3 : STD_LOGIC; 
  signal ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT2 : STD_LOGIC; 
  signal ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT1 : STD_LOGIC; 
  signal ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT : STD_LOGIC; 
  signal ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT6 : STD_LOGIC; 
  signal ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT5 : STD_LOGIC; 
  signal ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT4 : STD_LOGIC; 
  signal ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT3 : STD_LOGIC; 
  signal ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT2 : STD_LOGIC; 
  signal ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT1 : STD_LOGIC; 
  signal ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT : STD_LOGIC; 
  signal ram_top_periph_ram_n0700_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1141_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1134_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1120_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1113_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1127_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1106_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1099_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1085_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1078_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1092_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1071_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1064_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1050_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1043_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1057_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1036_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1029_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1015_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1008_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1022_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n1001_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0994_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0980_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0973_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0987_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0966_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0959_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0952_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0945_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0938_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0931_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0917_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0910_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0924_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0903_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0896_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0882_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0875_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0889_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0868_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0861_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0847_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0840_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0854_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0833_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0826_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0812_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0805_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0819_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0798_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0791_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0777_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0770_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0784_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0763_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0756_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0742_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0735_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0749_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0728_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0721_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0707_inv : STD_LOGIC; 
  signal ram_top_periph_ram_n0714_inv : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A101_1082 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A102_1083 : STD_LOGIC; 
  signal controlador_GND_14_o_Reg_instruct_5_equal_13_o1 : STD_LOGIC; 
  signal controlador_GND_14_o_Reg_instruct_5_equal_13_o11_1085 : STD_LOGIC; 
  signal alu_comp_n0171_inv1_1086 : STD_LOGIC; 
  signal RAM_Data_0_LogicTrst3 : STD_LOGIC; 
  signal controlador_Mmux_ALU_op221 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A10331 : STD_LOGIC; 
  signal RAM_OELogicTrst1 : STD_LOGIC; 
  signal controlador_n0461_inv1_1091 : STD_LOGIC; 
  signal controlador_Mmux_ALU_op9111 : STD_LOGIC; 
  signal RS232_PHY_Valid_D_TX_RDY_i_AND_20_o : STD_LOGIC; 
  signal RS232_PHY_StartTX_1094 : STD_LOGIC; 
  signal RS232_PHY_LineRD_in_1095 : STD_LOGIC; 
  signal RS232_PHY_Fifo_write : STD_LOGIC; 
  signal RS232_PHY_Code_out : STD_LOGIC; 
  signal RS232_PHY_Valid_out : STD_LOGIC; 
  signal RS232_PHY_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_3_1115 : STD_LOGIC; 
  signal RS232_PHY_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_4_1116 : STD_LOGIC; 
  signal RS232_PHY_Transmitter_Mcount_width_count7 : STD_LOGIC; 
  signal RS232_PHY_Transmitter_Mcount_width_count6 : STD_LOGIC; 
  signal RS232_PHY_Transmitter_Mcount_width_count5 : STD_LOGIC; 
  signal RS232_PHY_Transmitter_Mcount_width_count4 : STD_LOGIC; 
  signal RS232_PHY_Transmitter_Mcount_width_count3 : STD_LOGIC; 
  signal RS232_PHY_Transmitter_Mcount_width_count2 : STD_LOGIC; 
  signal RS232_PHY_Transmitter_Mcount_width_count1 : STD_LOGIC; 
  signal RS232_PHY_Transmitter_Mcount_width_count : STD_LOGIC; 
  signal RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o_inv : STD_LOGIC; 
  signal RS232_PHY_Transmitter_Mcount_data_count2 : STD_LOGIC; 
  signal RS232_PHY_Transmitter_Mcount_data_count1 : STD_LOGIC; 
  signal RS232_PHY_Transmitter_Mcount_data_count : STD_LOGIC; 
  signal RS232_PHY_Transmitter_CurrentState_FSM_FFd2_1144 : STD_LOGIC; 
  signal RS232_PHY_Transmitter_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal RS232_PHY_Transmitter_CurrentState_FSM_FFd2_In_1146 : STD_LOGIC; 
  signal RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o : STD_LOGIC; 
  signal RS232_PHY_Transmitter_en_data_count_width_count_7_AND_2_o : STD_LOGIC; 
  signal RS232_PHY_Transmitter_data_count_2_Data_7_Mux_6_o : STD_LOGIC; 
  signal RS232_PHY_Transmitter_en_width_count : STD_LOGIC; 
  signal RS232_PHY_Transmitter_CurrentState_FSM_FFd1_1162 : STD_LOGIC; 
  signal RS232_PHY_Receiver_width_count_7_PWR_10_o_equal_4_o : STD_LOGIC; 
  signal RS232_PHY_Receiver_width_count_7_GND_10_o_equal_8_o : STD_LOGIC; 
  signal RS232_PHY_Receiver_Madd_width_count_7_GND_10_o_add_26_OUT_xor_5_13 : STD_LOGIC; 
  signal RS232_PHY_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51 : STD_LOGIC; 
  signal RS232_PHY_Receiver_Madd_width_count_7_GND_10_o_add_26_OUT_xor_6_11 : STD_LOGIC; 
  signal RS232_PHY_Receiver_Mcount_data_count2 : STD_LOGIC; 
  signal RS232_PHY_Receiver_Mcount_data_count1 : STD_LOGIC; 
  signal RS232_PHY_Receiver_Mcount_data_count : STD_LOGIC; 
  signal RS232_PHY_Receiver_CurrentState_FSM_FFd2_1179 : STD_LOGIC; 
  signal RS232_PHY_Receiver_CurrentState_FSM_FFd1_In : STD_LOGIC; 
  signal RS232_PHY_Receiver_CurrentState_FSM_FFd2_In_1181 : STD_LOGIC; 
  signal RS232_PHY_Receiver_n0066_inv : STD_LOGIC; 
  signal RS232_PHY_Receiver_Reset_inv : STD_LOGIC; 
  signal RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q : STD_LOGIC; 
  signal RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q : STD_LOGIC; 
  signal RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q : STD_LOGIC; 
  signal RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q : STD_LOGIC; 
  signal RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q : STD_LOGIC; 
  signal RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q : STD_LOGIC; 
  signal RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q : STD_LOGIC; 
  signal RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q : STD_LOGIC; 
  signal RS232_PHY_Receiver_CurrentState_FSM_FFd1_1195 : STD_LOGIC; 
  signal RS232_PHY_Shift_Q_0_D_MUX_32_o : STD_LOGIC; 
  signal RS232_PHY_Shift_Q_1_D_MUX_31_o : STD_LOGIC; 
  signal RS232_PHY_Shift_Q_2_D_MUX_30_o : STD_LOGIC; 
  signal RS232_PHY_Shift_Q_3_D_MUX_29_o : STD_LOGIC; 
  signal RS232_PHY_Shift_Q_4_D_MUX_28_o : STD_LOGIC; 
  signal RS232_PHY_Shift_Q_5_D_MUX_27_o : STD_LOGIC; 
  signal RS232_PHY_Shift_Q_6_D_MUX_26_o : STD_LOGIC; 
  signal RS232_PHY_Shift_Q_7_D_MUX_25_o : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A10 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A103_1211 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A104_1212 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A121 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A122_1214 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A141 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A142_1216 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A41 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A42_1218 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A61 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A62_1220 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A81 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A82_1222 : STD_LOGIC; 
  signal RAM_Data_0_LogicTrst : STD_LOGIC; 
  signal RAM_Data_0_LogicTrst1_1224 : STD_LOGIC; 
  signal RAM_Data_7_LogicTrst : STD_LOGIC; 
  signal RAM_Data_7_LogicTrst1_1226 : STD_LOGIC; 
  signal RAM_Data_6_LogicTrst : STD_LOGIC; 
  signal RAM_Data_6_LogicTrst1_1228 : STD_LOGIC; 
  signal RAM_Data_5_LogicTrst : STD_LOGIC; 
  signal RAM_Data_5_LogicTrst1_1230 : STD_LOGIC; 
  signal RAM_Data_4_LogicTrst : STD_LOGIC; 
  signal RAM_Data_4_LogicTrst1_1232 : STD_LOGIC; 
  signal RAM_Data_3_LogicTrst : STD_LOGIC; 
  signal RAM_Data_3_LogicTrst1_1234 : STD_LOGIC; 
  signal RAM_Data_2_LogicTrst : STD_LOGIC; 
  signal RAM_Data_2_LogicTrst1_1236 : STD_LOGIC; 
  signal RAM_Data_1_LogicTrst : STD_LOGIC; 
  signal RAM_Data_1_LogicTrst1_1238 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal alu_comp_reg_a_7_reg_b_7_LessThan_12_o11_1240 : STD_LOGIC; 
  signal alu_comp_reg_b_7_reg_a_7_LessThan_13_o11_1241 : STD_LOGIC; 
  signal alu_comp_Mmux_FlagZ_tmp1 : STD_LOGIC; 
  signal alu_comp_Mmux_FlagZ_tmp11_1243 : STD_LOGIC; 
  signal alu_comp_Mmux_FlagZ_tmp12_1244 : STD_LOGIC; 
  signal alu_comp_Mmux_FlagZ_tmp13_1245 : STD_LOGIC; 
  signal alu_comp_Mmux_FlagZ_tmp14_1246 : STD_LOGIC; 
  signal alu_comp_Mmux_FlagZ_tmp15_1247 : STD_LOGIC; 
  signal alu_comp_Mmux_FlagZ_tmp16_1248 : STD_LOGIC; 
  signal RAM_Addr_0_LogicTrst : STD_LOGIC; 
  signal RAM_Addr_0_LogicTrst1_1250 : STD_LOGIC; 
  signal RAM_Addr_7_LogicTrst1 : STD_LOGIC; 
  signal RAM_Addr_6_LogicTrst1 : STD_LOGIC; 
  signal RAM_Addr_5_LogicTrst : STD_LOGIC; 
  signal RAM_Addr_5_LogicTrst1_1254 : STD_LOGIC; 
  signal RAM_Addr_4_LogicTrst : STD_LOGIC; 
  signal RAM_Addr_4_LogicTrst1_1256 : STD_LOGIC; 
  signal RAM_Addr_1_LogicTrst : STD_LOGIC; 
  signal RAM_Addr_1_LogicTrst1_1258 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A22 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A16 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A161_1263 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A162_1264 : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd2_In2_1265 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal RAM_Addr_3_LogicTrst : STD_LOGIC; 
  signal RAM_Addr_3_LogicTrst1_1271 : STD_LOGIC; 
  signal RAM_Addr_2_LogicTrst1 : STD_LOGIC; 
  signal RAM_Addr_2_LogicTrst3_1273 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal dma_top_CurrentState_FSM_FFd2_In1_1275 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal alu_comp_FlagZ_rstpot_1308 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal RAM_Data_1_LogicTrst5_1356 : STD_LOGIC; 
  signal RAM_Data_2_LogicTrst5_1357 : STD_LOGIC; 
  signal RAM_Data_3_LogicTrst5_1358 : STD_LOGIC; 
  signal RAM_Data_4_LogicTrst5_1359 : STD_LOGIC; 
  signal RAM_Data_5_LogicTrst5_1360 : STD_LOGIC; 
  signal RAM_Data_6_LogicTrst5_1361 : STD_LOGIC; 
  signal RAM_Data_7_LogicTrst5_1362 : STD_LOGIC; 
  signal RAM_Data_0_LogicTrst5_1363 : STD_LOGIC; 
  signal RAM_Addr_1_LogicTrst3_1364 : STD_LOGIC; 
  signal RAM_Addr_1_LogicTrst31 : STD_LOGIC; 
  signal RAM_Addr_1_LogicTrst32 : STD_LOGIC; 
  signal RAM_Addr_1_LogicTrst33 : STD_LOGIC; 
  signal RAM_Addr_1_LogicTrst34 : STD_LOGIC; 
  signal controlador_CurrentState_FSM_FFd1_1_1369 : STD_LOGIC; 
  signal controlador_Reg_instruct_0_1_1370 : STD_LOGIC; 
  signal controlador_Reg_instruct_5_1_1371 : STD_LOGIC; 
  signal controlador_Reg_instruct_2_1_1372 : STD_LOGIC; 
  signal RAM_Addr_0_LogicTrst3_1373 : STD_LOGIC; 
  signal RAM_Addr_0_LogicTrst31 : STD_LOGIC; 
  signal RAM_Addr_0_LogicTrst32 : STD_LOGIC; 
  signal RAM_Addr_0_LogicTrst33 : STD_LOGIC; 
  signal RAM_Addr_0_LogicTrst34 : STD_LOGIC; 
  signal controlador_Mmux_ALU_op91_1378 : STD_LOGIC; 
  signal RAM_Addr_0_LogicTrst35 : STD_LOGIC; 
  signal controlador_Reg_instruct_2_2_1380 : STD_LOGIC; 
  signal dma_top_data_count_1_1_1381 : STD_LOGIC; 
  signal RAM_Addr_3_LogicTrst3_1382 : STD_LOGIC; 
  signal controlador_Mmux_ALU_op6_1383 : STD_LOGIC; 
  signal controlador_Mmux_ALU_op2_1384 : STD_LOGIC; 
  signal dma_top_Mmux_CurrentState_2_GND_48_o_Mux_43_o11_1385 : STD_LOGIC; 
  signal alu_comp_Mmux_reg_acc_tmp_A1021_1386 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal rom_comp_Mram_n068014_f71 : STD_LOGIC; 
  signal rom_comp_Mram_n0680143_1398 : STD_LOGIC; 
  signal rom_comp_Mram_n0680142_1399 : STD_LOGIC; 
  signal rom_comp_Mram_n068014_f7_1400 : STD_LOGIC; 
  signal rom_comp_Mram_n0680141_1401 : STD_LOGIC; 
  signal rom_comp_Mram_n068014_1402 : STD_LOGIC; 
  signal rom_comp_Mram_n068012_f71 : STD_LOGIC; 
  signal rom_comp_Mram_n0680123_1404 : STD_LOGIC; 
  signal rom_comp_Mram_n0680122_1405 : STD_LOGIC; 
  signal rom_comp_Mram_n068012_f7_1406 : STD_LOGIC; 
  signal rom_comp_Mram_n0680121_1407 : STD_LOGIC; 
  signal rom_comp_Mram_n068012_1408 : STD_LOGIC; 
  signal rom_comp_Mram_n068010_f71 : STD_LOGIC; 
  signal rom_comp_Mram_n0680103_1410 : STD_LOGIC; 
  signal rom_comp_Mram_n0680102_1411 : STD_LOGIC; 
  signal rom_comp_Mram_n068010_f7_1412 : STD_LOGIC; 
  signal rom_comp_Mram_n0680101_1413 : STD_LOGIC; 
  signal rom_comp_Mram_n068010_1414 : STD_LOGIC; 
  signal rom_comp_Mram_n06808_f71 : STD_LOGIC; 
  signal rom_comp_Mram_n068083_1416 : STD_LOGIC; 
  signal rom_comp_Mram_n068082_1417 : STD_LOGIC; 
  signal rom_comp_Mram_n06808_f7_1418 : STD_LOGIC; 
  signal rom_comp_Mram_n068081_1419 : STD_LOGIC; 
  signal rom_comp_Mram_n06808_1420 : STD_LOGIC; 
  signal rom_comp_Mram_n06806_f71 : STD_LOGIC; 
  signal rom_comp_Mram_n068063_1422 : STD_LOGIC; 
  signal rom_comp_Mram_n068062_1423 : STD_LOGIC; 
  signal rom_comp_Mram_n06806_f7_1424 : STD_LOGIC; 
  signal rom_comp_Mram_n068061_1425 : STD_LOGIC; 
  signal rom_comp_Mram_n06806_1426 : STD_LOGIC; 
  signal rom_comp_Mram_n06804_f71 : STD_LOGIC; 
  signal rom_comp_Mram_n068043_1428 : STD_LOGIC; 
  signal rom_comp_Mram_n068042_1429 : STD_LOGIC; 
  signal rom_comp_Mram_n06804_f7_1430 : STD_LOGIC; 
  signal rom_comp_Mram_n068041_1431 : STD_LOGIC; 
  signal rom_comp_Mram_n06804_1432 : STD_LOGIC; 
  signal rom_comp_Mram_n06802_f71 : STD_LOGIC; 
  signal rom_comp_Mram_n068024_1434 : STD_LOGIC; 
  signal rom_comp_Mram_n068023_1435 : STD_LOGIC; 
  signal rom_comp_Mram_n06802_f7_1436 : STD_LOGIC; 
  signal rom_comp_Mram_n068022_1437 : STD_LOGIC; 
  signal rom_comp_Mram_n068021_1438 : STD_LOGIC; 
  signal rom_comp_Mram_n0680_f71 : STD_LOGIC; 
  signal rom_comp_Mram_n06803_1440 : STD_LOGIC; 
  signal rom_comp_Mram_n06802_1441 : STD_LOGIC; 
  signal rom_comp_Mram_n0680_f7_1442 : STD_LOGIC; 
  signal rom_comp_Mram_n06801_1443 : STD_LOGIC; 
  signal rom_comp_Mram_n0680 : STD_LOGIC; 
  signal Data_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal controlador_prog_count : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal RAM_Addr : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal RAM_Data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ALU_op : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal alu_comp_Index_Reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal TX_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_switches : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_temp_l : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal ram_top_periph_ram_temp_h : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal rom_comp_n0680 : STD_LOGIC_VECTOR ( 12 downto 5 ); 
  signal controlador_Mcount_prog_count_lut : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal controlador_Mcount_prog_count_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal controlador_Reg_operand : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal controlador_Reg_instruct : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_comp_Mmux_reg_acc_tmp_rs_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_comp_Mmux_reg_acc_tmp_rs_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal alu_comp_reg_acc_tmp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_comp_Index_reg_tmp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_comp_n0176 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_comp_Mmux_reg_acc_tmp_rs_B : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_comp_Mmux_reg_acc_tmp_rs_A : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal alu_comp_reg_a : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_comp_reg_acc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_comp_reg_b : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_comp_Index_reg_reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal dma_top_data_count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal dma_top_data_count_tmp : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_0 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_63 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_62 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_61 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_60 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_59 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_58 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_57 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_56 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_55 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_54 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_53 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_52 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_51 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_50 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_49 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_48 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_47 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_46 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_45 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_44 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_43 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_42 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_41 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_40 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_39 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_38 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_37 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_36 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_35 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_34 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_33 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_32 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_31 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_30 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_29 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_28 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_27 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_26 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_25 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_24 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_23 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_22 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_21 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_20 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_19 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_18 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_17 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_16 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_15 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_14 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_13 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_12 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_11 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_10 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_9 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_8 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_7 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_6 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_5 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_4 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_3 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_periph_ram_contents_ram_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_top_gp_ram_n0025 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal RS232_PHY_Shift_Q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal RS232_PHY_Data_FF : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal RS232_PHY_Transmitter_Mcount_width_count_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal RS232_PHY_Transmitter_Mcount_width_count_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal RS232_PHY_Transmitter_data_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal RS232_PHY_Transmitter_width_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal RS232_PHY_Receiver_width_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal RS232_PHY_Receiver_data_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal RS232_PHY_Shift_i : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal RS232_PHY_Shift_Result : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => ROM_data_10_Q
    );
  XST_VCC : VCC
    port map (
      P => ram_top_cs_gp
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_xor_7_Q : XORCY
    port map (
      CI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_6_Q_110,
      LI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_7_Q_109,
      O => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_7_Q
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => alu_comp_Index_Reg(7),
      I1 => controlador_Reg_operand(7),
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_7_Q_109
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_xor_6_Q : XORCY
    port map (
      CI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_5_Q_112,
      LI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_6_Q_111,
      O => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_6_Q
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_6_Q : MUXCY
    port map (
      CI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_5_Q_112,
      DI => alu_comp_Index_Reg(6),
      S => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_6_Q_111,
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_6_Q_110
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => alu_comp_Index_Reg(6),
      I1 => controlador_Reg_operand(6),
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_6_Q_111
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_xor_5_Q : XORCY
    port map (
      CI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_4_Q_114,
      LI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_5_Q_113,
      O => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_5_Q
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_5_Q : MUXCY
    port map (
      CI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_4_Q_114,
      DI => alu_comp_Index_Reg(5),
      S => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_5_Q_113,
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_5_Q_112
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => alu_comp_Index_Reg(5),
      I1 => controlador_Reg_operand(5),
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_5_Q_113
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_xor_4_Q : XORCY
    port map (
      CI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_3_Q_116,
      LI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_4_Q_115,
      O => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_4_Q
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_4_Q : MUXCY
    port map (
      CI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_3_Q_116,
      DI => alu_comp_Index_Reg(4),
      S => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_4_Q_115,
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_4_Q_114
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => alu_comp_Index_Reg(4),
      I1 => controlador_Reg_operand(4),
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_4_Q_115
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_xor_3_Q : XORCY
    port map (
      CI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_2_Q_118,
      LI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_3_Q_117,
      O => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_3_Q
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_3_Q : MUXCY
    port map (
      CI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_2_Q_118,
      DI => alu_comp_Index_Reg(3),
      S => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_3_Q_117,
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_3_Q_116
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => alu_comp_Index_Reg(3),
      I1 => controlador_Reg_operand(3),
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_3_Q_117
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_xor_2_Q : XORCY
    port map (
      CI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_1_Q_120,
      LI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_2_Q_119,
      O => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_2_Q
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_2_Q : MUXCY
    port map (
      CI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_1_Q_120,
      DI => alu_comp_Index_Reg(2),
      S => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_2_Q_119,
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_2_Q_118
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => alu_comp_Index_Reg(2),
      I1 => controlador_Reg_operand(2),
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_2_Q_119
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_xor_1_Q : XORCY
    port map (
      CI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_0_Q_122,
      LI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_1_Q_121,
      O => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_1_Q
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_1_Q : MUXCY
    port map (
      CI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_0_Q_122,
      DI => alu_comp_Index_Reg(1),
      S => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_1_Q_121,
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_1_Q_120
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => alu_comp_Index_Reg(1),
      I1 => controlador_Reg_operand(1),
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_1_Q_121
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_xor_0_Q : XORCY
    port map (
      CI => ROM_data_10_Q,
      LI => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_0_Q_123,
      O => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_0_Q
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_0_Q : MUXCY
    port map (
      CI => ROM_data_10_Q,
      DI => alu_comp_Index_Reg(0),
      S => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_0_Q_123,
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_cy_0_Q_122
    );
  controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => alu_comp_Index_Reg(0),
      I1 => controlador_Reg_operand(0),
      O => controlador_Madd_Index_Reg_7_Reg_operand_7_add_32_OUT_lut_0_Q_123
    );
  controlador_CurrentState_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => controlador_CurrentState_FSM_FFd1_In,
      Q => controlador_CurrentState_FSM_FFd1_175
    );
  controlador_CurrentState_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => controlador_CurrentState_FSM_FFd2_In,
      Q => controlador_CurrentState_FSM_FFd2_174
    );
  controlador_prog_count_11 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0461_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => controlador_Mcount_prog_count11,
      Q => controlador_prog_count(11)
    );
  controlador_prog_count_10 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0461_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => controlador_Mcount_prog_count10,
      Q => controlador_prog_count(10)
    );
  controlador_prog_count_9 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0461_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => controlador_Mcount_prog_count9,
      Q => controlador_prog_count(9)
    );
  controlador_prog_count_8 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0461_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => controlador_Mcount_prog_count8,
      Q => controlador_prog_count(8)
    );
  controlador_prog_count_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0461_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => controlador_Mcount_prog_count7,
      Q => controlador_prog_count(7)
    );
  controlador_prog_count_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0461_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => controlador_Mcount_prog_count6,
      Q => controlador_prog_count(6)
    );
  controlador_prog_count_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0461_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => controlador_Mcount_prog_count5,
      Q => controlador_prog_count(5)
    );
  controlador_prog_count_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0461_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => controlador_Mcount_prog_count4,
      Q => controlador_prog_count(4)
    );
  controlador_prog_count_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0461_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => controlador_Mcount_prog_count3,
      Q => controlador_prog_count(3)
    );
  controlador_prog_count_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0461_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => controlador_Mcount_prog_count2,
      Q => controlador_prog_count(2)
    );
  controlador_prog_count_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0461_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => controlador_Mcount_prog_count1,
      Q => controlador_prog_count(1)
    );
  controlador_prog_count_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0461_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => controlador_Mcount_prog_count,
      Q => controlador_prog_count(0)
    );
  controlador_CurrentState_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => controlador_CurrentState_FSM_FFd3_In,
      Q => controlador_CurrentState_FSM_FFd3_173
    );
  controlador_Mcount_prog_count_xor_11_Q : XORCY
    port map (
      CI => controlador_Mcount_prog_count_cy(10),
      LI => controlador_Mcount_prog_count_lut(11),
      O => controlador_Mcount_prog_count11
    );
  controlador_Mcount_prog_count_xor_10_Q : XORCY
    port map (
      CI => controlador_Mcount_prog_count_cy(9),
      LI => controlador_Mcount_prog_count_lut(10),
      O => controlador_Mcount_prog_count10
    );
  controlador_Mcount_prog_count_cy_10_Q : MUXCY
    port map (
      CI => controlador_Mcount_prog_count_cy(9),
      DI => ROM_data_10_Q,
      S => controlador_Mcount_prog_count_lut(10),
      O => controlador_Mcount_prog_count_cy(10)
    );
  controlador_Mcount_prog_count_xor_9_Q : XORCY
    port map (
      CI => controlador_Mcount_prog_count_cy(8),
      LI => controlador_Mcount_prog_count_lut(9),
      O => controlador_Mcount_prog_count9
    );
  controlador_Mcount_prog_count_cy_9_Q : MUXCY
    port map (
      CI => controlador_Mcount_prog_count_cy(8),
      DI => ROM_data_10_Q,
      S => controlador_Mcount_prog_count_lut(9),
      O => controlador_Mcount_prog_count_cy(9)
    );
  controlador_Mcount_prog_count_xor_8_Q : XORCY
    port map (
      CI => controlador_Mcount_prog_count_cy(7),
      LI => controlador_Mcount_prog_count_lut(8),
      O => controlador_Mcount_prog_count8
    );
  controlador_Mcount_prog_count_cy_8_Q : MUXCY
    port map (
      CI => controlador_Mcount_prog_count_cy(7),
      DI => ROM_data_10_Q,
      S => controlador_Mcount_prog_count_lut(8),
      O => controlador_Mcount_prog_count_cy(8)
    );
  controlador_Mcount_prog_count_xor_7_Q : XORCY
    port map (
      CI => controlador_Mcount_prog_count_cy(6),
      LI => controlador_Mcount_prog_count_lut(7),
      O => controlador_Mcount_prog_count7
    );
  controlador_Mcount_prog_count_cy_7_Q : MUXCY
    port map (
      CI => controlador_Mcount_prog_count_cy(6),
      DI => ROM_data_10_Q,
      S => controlador_Mcount_prog_count_lut(7),
      O => controlador_Mcount_prog_count_cy(7)
    );
  controlador_Mcount_prog_count_xor_6_Q : XORCY
    port map (
      CI => controlador_Mcount_prog_count_cy(5),
      LI => controlador_Mcount_prog_count_lut(6),
      O => controlador_Mcount_prog_count6
    );
  controlador_Mcount_prog_count_cy_6_Q : MUXCY
    port map (
      CI => controlador_Mcount_prog_count_cy(5),
      DI => ROM_data_10_Q,
      S => controlador_Mcount_prog_count_lut(6),
      O => controlador_Mcount_prog_count_cy(6)
    );
  controlador_Mcount_prog_count_xor_5_Q : XORCY
    port map (
      CI => controlador_Mcount_prog_count_cy(4),
      LI => controlador_Mcount_prog_count_lut(5),
      O => controlador_Mcount_prog_count5
    );
  controlador_Mcount_prog_count_cy_5_Q : MUXCY
    port map (
      CI => controlador_Mcount_prog_count_cy(4),
      DI => ROM_data_10_Q,
      S => controlador_Mcount_prog_count_lut(5),
      O => controlador_Mcount_prog_count_cy(5)
    );
  controlador_Mcount_prog_count_xor_4_Q : XORCY
    port map (
      CI => controlador_Mcount_prog_count_cy(3),
      LI => controlador_Mcount_prog_count_lut(4),
      O => controlador_Mcount_prog_count4
    );
  controlador_Mcount_prog_count_cy_4_Q : MUXCY
    port map (
      CI => controlador_Mcount_prog_count_cy(3),
      DI => ROM_data_10_Q,
      S => controlador_Mcount_prog_count_lut(4),
      O => controlador_Mcount_prog_count_cy(4)
    );
  controlador_Mcount_prog_count_xor_3_Q : XORCY
    port map (
      CI => controlador_Mcount_prog_count_cy(2),
      LI => controlador_Mcount_prog_count_lut(3),
      O => controlador_Mcount_prog_count3
    );
  controlador_Mcount_prog_count_cy_3_Q : MUXCY
    port map (
      CI => controlador_Mcount_prog_count_cy(2),
      DI => ROM_data_10_Q,
      S => controlador_Mcount_prog_count_lut(3),
      O => controlador_Mcount_prog_count_cy(3)
    );
  controlador_Mcount_prog_count_xor_2_Q : XORCY
    port map (
      CI => controlador_Mcount_prog_count_cy(1),
      LI => controlador_Mcount_prog_count_lut(2),
      O => controlador_Mcount_prog_count2
    );
  controlador_Mcount_prog_count_cy_2_Q : MUXCY
    port map (
      CI => controlador_Mcount_prog_count_cy(1),
      DI => ROM_data_10_Q,
      S => controlador_Mcount_prog_count_lut(2),
      O => controlador_Mcount_prog_count_cy(2)
    );
  controlador_Mcount_prog_count_xor_1_Q : XORCY
    port map (
      CI => controlador_Mcount_prog_count_cy(0),
      LI => controlador_Mcount_prog_count_lut(1),
      O => controlador_Mcount_prog_count1
    );
  controlador_Mcount_prog_count_cy_1_Q : MUXCY
    port map (
      CI => controlador_Mcount_prog_count_cy(0),
      DI => ROM_data_10_Q,
      S => controlador_Mcount_prog_count_lut(1),
      O => controlador_Mcount_prog_count_cy(1)
    );
  controlador_Mcount_prog_count_xor_0_Q : XORCY
    port map (
      CI => controlador_CurrentState_2_inv,
      LI => controlador_Mcount_prog_count_lut(0),
      O => controlador_Mcount_prog_count
    );
  controlador_Mcount_prog_count_cy_0_Q : MUXCY
    port map (
      CI => controlador_CurrentState_2_inv,
      DI => ROM_data_10_Q,
      S => controlador_Mcount_prog_count_lut(0),
      O => controlador_Mcount_prog_count_cy(0)
    );
  controlador_Reg_operand_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0445_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_7_Q,
      Q => controlador_Reg_operand(7)
    );
  controlador_Reg_operand_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0445_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_6_Q,
      Q => controlador_Reg_operand(6)
    );
  controlador_Reg_operand_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0445_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_5_Q,
      Q => controlador_Reg_operand(5)
    );
  controlador_Reg_operand_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0445_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_4_Q,
      Q => controlador_Reg_operand(4)
    );
  controlador_Reg_operand_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0445_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_3_Q,
      Q => controlador_Reg_operand(3)
    );
  controlador_Reg_operand_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0445_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_2_Q,
      Q => controlador_Reg_operand(2)
    );
  controlador_Reg_operand_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0445_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_1_Q,
      Q => controlador_Reg_operand(1)
    );
  controlador_Reg_operand_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0445_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_0_Q,
      Q => controlador_Reg_operand(0)
    );
  controlador_Reg_instruct_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0435_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_7_Q,
      Q => controlador_Reg_instruct(7)
    );
  controlador_Reg_instruct_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0435_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_6_Q,
      Q => controlador_Reg_instruct(6)
    );
  controlador_Reg_instruct_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0435_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_5_Q,
      Q => controlador_Reg_instruct(5)
    );
  controlador_Reg_instruct_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0435_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_4_Q,
      Q => controlador_Reg_instruct(4)
    );
  controlador_Reg_instruct_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0435_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_3_Q,
      Q => controlador_Reg_instruct(3)
    );
  controlador_Reg_instruct_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0435_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_2_Q,
      Q => controlador_Reg_instruct(2)
    );
  controlador_Reg_instruct_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0435_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_1_Q,
      Q => controlador_Reg_instruct(1)
    );
  controlador_Reg_instruct_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0435_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_0_Q,
      Q => controlador_Reg_instruct(0)
    );
  alu_comp_Mmux_reg_acc_tmp_rs_xor_7_Q : XORCY
    port map (
      CI => alu_comp_Mmux_reg_acc_tmp_rs_cy(6),
      LI => alu_comp_Mmux_reg_acc_tmp_rs_lut(7),
      O => alu_comp_reg_acc_tmp(7)
    );
  alu_comp_Mmux_reg_acc_tmp_rs_xor_6_Q : XORCY
    port map (
      CI => alu_comp_Mmux_reg_acc_tmp_rs_cy(5),
      LI => alu_comp_Mmux_reg_acc_tmp_rs_lut(6),
      O => alu_comp_reg_acc_tmp(6)
    );
  alu_comp_Mmux_reg_acc_tmp_rs_cy_6_Q : MUXCY
    port map (
      CI => alu_comp_Mmux_reg_acc_tmp_rs_cy(5),
      DI => alu_comp_Mmux_reg_acc_tmp_rs_A(6),
      S => alu_comp_Mmux_reg_acc_tmp_rs_lut(6),
      O => alu_comp_Mmux_reg_acc_tmp_rs_cy(6)
    );
  alu_comp_Mmux_reg_acc_tmp_rs_xor_5_Q : XORCY
    port map (
      CI => alu_comp_Mmux_reg_acc_tmp_rs_cy(4),
      LI => alu_comp_Mmux_reg_acc_tmp_rs_lut(5),
      O => alu_comp_reg_acc_tmp(5)
    );
  alu_comp_Mmux_reg_acc_tmp_rs_cy_5_Q : MUXCY
    port map (
      CI => alu_comp_Mmux_reg_acc_tmp_rs_cy(4),
      DI => alu_comp_Mmux_reg_acc_tmp_rs_A(5),
      S => alu_comp_Mmux_reg_acc_tmp_rs_lut(5),
      O => alu_comp_Mmux_reg_acc_tmp_rs_cy(5)
    );
  alu_comp_Mmux_reg_acc_tmp_rs_xor_4_Q : XORCY
    port map (
      CI => alu_comp_Mmux_reg_acc_tmp_rs_cy(3),
      LI => alu_comp_Mmux_reg_acc_tmp_rs_lut(4),
      O => alu_comp_reg_acc_tmp(4)
    );
  alu_comp_Mmux_reg_acc_tmp_rs_cy_4_Q : MUXCY
    port map (
      CI => alu_comp_Mmux_reg_acc_tmp_rs_cy(3),
      DI => alu_comp_Mmux_reg_acc_tmp_rs_A(4),
      S => alu_comp_Mmux_reg_acc_tmp_rs_lut(4),
      O => alu_comp_Mmux_reg_acc_tmp_rs_cy(4)
    );
  alu_comp_Mmux_reg_acc_tmp_rs_xor_3_Q : XORCY
    port map (
      CI => alu_comp_Mmux_reg_acc_tmp_rs_cy(2),
      LI => alu_comp_Mmux_reg_acc_tmp_rs_lut(3),
      O => alu_comp_reg_acc_tmp(3)
    );
  alu_comp_Mmux_reg_acc_tmp_rs_cy_3_Q : MUXCY
    port map (
      CI => alu_comp_Mmux_reg_acc_tmp_rs_cy(2),
      DI => alu_comp_Mmux_reg_acc_tmp_rs_A(3),
      S => alu_comp_Mmux_reg_acc_tmp_rs_lut(3),
      O => alu_comp_Mmux_reg_acc_tmp_rs_cy(3)
    );
  alu_comp_Mmux_reg_acc_tmp_rs_xor_2_Q : XORCY
    port map (
      CI => alu_comp_Mmux_reg_acc_tmp_rs_cy(1),
      LI => alu_comp_Mmux_reg_acc_tmp_rs_lut(2),
      O => alu_comp_reg_acc_tmp(2)
    );
  alu_comp_Mmux_reg_acc_tmp_rs_cy_2_Q : MUXCY
    port map (
      CI => alu_comp_Mmux_reg_acc_tmp_rs_cy(1),
      DI => alu_comp_Mmux_reg_acc_tmp_rs_A(2),
      S => alu_comp_Mmux_reg_acc_tmp_rs_lut(2),
      O => alu_comp_Mmux_reg_acc_tmp_rs_cy(2)
    );
  alu_comp_Mmux_reg_acc_tmp_rs_xor_1_Q : XORCY
    port map (
      CI => alu_comp_Mmux_reg_acc_tmp_rs_cy(0),
      LI => alu_comp_Mmux_reg_acc_tmp_rs_lut(1),
      O => alu_comp_reg_acc_tmp(1)
    );
  alu_comp_Mmux_reg_acc_tmp_rs_cy_1_Q : MUXCY
    port map (
      CI => alu_comp_Mmux_reg_acc_tmp_rs_cy(0),
      DI => alu_comp_Mmux_reg_acc_tmp_rs_A(1),
      S => alu_comp_Mmux_reg_acc_tmp_rs_lut(1),
      O => alu_comp_Mmux_reg_acc_tmp_rs_cy(1)
    );
  alu_comp_Mmux_reg_acc_tmp_rs_xor_0_Q : XORCY
    port map (
      CI => alu_comp_Mmux_reg_acc_tmp_rs_AS_inv,
      LI => alu_comp_Mmux_reg_acc_tmp_rs_lut(0),
      O => alu_comp_reg_acc_tmp(0)
    );
  alu_comp_Mmux_reg_acc_tmp_rs_cy_0_Q : MUXCY
    port map (
      CI => alu_comp_Mmux_reg_acc_tmp_rs_AS_inv,
      DI => alu_comp_Mmux_reg_acc_tmp_rs_A(0),
      S => alu_comp_Mmux_reg_acc_tmp_rs_lut(0),
      O => alu_comp_Mmux_reg_acc_tmp_rs_cy(0)
    );
  alu_comp_Index_Reg_7 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => alu_comp_Index_reg_tmp(7),
      Q => alu_comp_Index_Reg(7)
    );
  alu_comp_Index_Reg_6 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => alu_comp_Index_reg_tmp(6),
      Q => alu_comp_Index_Reg(6)
    );
  alu_comp_Index_Reg_5 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => alu_comp_Index_reg_tmp(5),
      Q => alu_comp_Index_Reg(5)
    );
  alu_comp_Index_Reg_4 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => alu_comp_Index_reg_tmp(4),
      Q => alu_comp_Index_Reg(4)
    );
  alu_comp_Index_Reg_3 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => alu_comp_Index_reg_tmp(3),
      Q => alu_comp_Index_Reg(3)
    );
  alu_comp_Index_Reg_2 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => alu_comp_Index_reg_tmp(2),
      Q => alu_comp_Index_Reg(2)
    );
  alu_comp_Index_Reg_1 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => alu_comp_Index_reg_tmp(1),
      Q => alu_comp_Index_Reg(1)
    );
  alu_comp_Index_Reg_0 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => alu_comp_Index_reg_tmp(0),
      Q => alu_comp_Index_Reg(0)
    );
  alu_comp_Index_reg_reg_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_Index_reg_tmp(7),
      Q => alu_comp_Index_reg_reg(7)
    );
  alu_comp_Index_reg_reg_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_Index_reg_tmp(6),
      Q => alu_comp_Index_reg_reg(6)
    );
  alu_comp_Index_reg_reg_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_Index_reg_tmp(5),
      Q => alu_comp_Index_reg_reg(5)
    );
  alu_comp_Index_reg_reg_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_Index_reg_tmp(4),
      Q => alu_comp_Index_reg_reg(4)
    );
  alu_comp_Index_reg_reg_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_Index_reg_tmp(3),
      Q => alu_comp_Index_reg_reg(3)
    );
  alu_comp_Index_reg_reg_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_Index_reg_tmp(2),
      Q => alu_comp_Index_reg_reg(2)
    );
  alu_comp_Index_reg_reg_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_Index_reg_tmp(1),
      Q => alu_comp_Index_reg_reg(1)
    );
  alu_comp_Index_reg_reg_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_Index_reg_tmp(0),
      Q => alu_comp_Index_reg_reg(0)
    );
  alu_comp_reg_acc_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0245_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_reg_acc_tmp(7),
      Q => alu_comp_reg_acc(7)
    );
  alu_comp_reg_acc_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0245_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_reg_acc_tmp(6),
      Q => alu_comp_reg_acc(6)
    );
  alu_comp_reg_acc_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0245_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_reg_acc_tmp(5),
      Q => alu_comp_reg_acc(5)
    );
  alu_comp_reg_acc_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0245_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_reg_acc_tmp(4),
      Q => alu_comp_reg_acc(4)
    );
  alu_comp_reg_acc_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0245_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_reg_acc_tmp(3),
      Q => alu_comp_reg_acc(3)
    );
  alu_comp_reg_acc_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0245_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_reg_acc_tmp(2),
      Q => alu_comp_reg_acc(2)
    );
  alu_comp_reg_acc_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0245_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_reg_acc_tmp(1),
      Q => alu_comp_reg_acc(1)
    );
  alu_comp_reg_acc_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0245_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_reg_acc_tmp(0),
      Q => alu_comp_reg_acc(0)
    );
  alu_comp_reg_a_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0270_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_n0176(7),
      Q => alu_comp_reg_a(7)
    );
  alu_comp_reg_a_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0270_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_n0176(6),
      Q => alu_comp_reg_a(6)
    );
  alu_comp_reg_a_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0270_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_n0176(5),
      Q => alu_comp_reg_a(5)
    );
  alu_comp_reg_a_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0270_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_n0176(4),
      Q => alu_comp_reg_a(4)
    );
  alu_comp_reg_a_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0270_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_n0176(3),
      Q => alu_comp_reg_a(3)
    );
  alu_comp_reg_a_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0270_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_n0176(2),
      Q => alu_comp_reg_a(2)
    );
  alu_comp_reg_a_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0270_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_n0176(1),
      Q => alu_comp_reg_a(1)
    );
  alu_comp_reg_a_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0270_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_n0176(0),
      Q => alu_comp_reg_a(0)
    );
  alu_comp_reg_b_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0196_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_n0176(7),
      Q => alu_comp_reg_b(7)
    );
  alu_comp_reg_b_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0196_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_n0176(6),
      Q => alu_comp_reg_b(6)
    );
  alu_comp_reg_b_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0196_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_n0176(5),
      Q => alu_comp_reg_b(5)
    );
  alu_comp_reg_b_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0196_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_n0176(4),
      Q => alu_comp_reg_b(4)
    );
  alu_comp_reg_b_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0196_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_n0176(3),
      Q => alu_comp_reg_b(3)
    );
  alu_comp_reg_b_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0196_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_n0176(2),
      Q => alu_comp_reg_b(2)
    );
  alu_comp_reg_b_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0196_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_n0176(1),
      Q => alu_comp_reg_b(1)
    );
  alu_comp_reg_b_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => alu_comp_n0196_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_n0176(0),
      Q => alu_comp_reg_b(0)
    );
  dma_top_CurrentState_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => dma_top_CurrentState_FSM_FFd2_In,
      Q => dma_top_CurrentState_FSM_FFd2_321
    );
  dma_top_CurrentState_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => dma_top_CurrentState_FSM_FFd3_In_312,
      Q => dma_top_CurrentState_FSM_FFd3_320
    );
  dma_top_CurrentState_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => dma_top_CurrentState_FSM_FFd1_In_310,
      Q => dma_top_CurrentState_FSM_FFd1_322
    );
  dma_top_data_count_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => dma_top_n0165_inv_313,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => dma_top_data_count_tmp(1),
      Q => dma_top_data_count(1)
    );
  dma_top_data_count_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => dma_top_n0165_inv_313,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => dma_top_data_count_tmp(0),
      Q => dma_top_data_count(0)
    );
  ram_top_periph_ram_mux7_10 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_0(7),
      I1 => ram_top_periph_ram_contents_ram_1(7),
      I2 => ram_top_periph_ram_contents_ram_3(7),
      I3 => ram_top_periph_ram_contents_ram_2(7),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_mux7_10_324
    );
  ram_top_periph_ram_mux7_11 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_4(7),
      I1 => ram_top_periph_ram_contents_ram_5(7),
      I2 => ram_top_periph_ram_contents_ram_7(7),
      I3 => ram_top_periph_ram_contents_ram_6(7),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_mux7_11_325
    );
  ram_top_periph_ram_mux7_111 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_8(7),
      I1 => ram_top_periph_ram_contents_ram_9(7),
      I2 => ram_top_periph_ram_contents_ram_11(7),
      I3 => ram_top_periph_ram_contents_ram_10(7),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux7_111_326
    );
  ram_top_periph_ram_mux7_12 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_12(7),
      I1 => ram_top_periph_ram_contents_ram_13(7),
      I2 => ram_top_periph_ram_contents_ram_15(7),
      I3 => ram_top_periph_ram_contents_ram_14(7),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux7_12_327
    );
  ram_top_periph_ram_mux7_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux7_111_326,
      I3 => ram_top_periph_ram_mux7_12_327,
      I4 => ram_top_periph_ram_mux7_11_325,
      I5 => ram_top_periph_ram_mux7_10_324,
      O => ram_top_periph_ram_mux7_6_328
    );
  ram_top_periph_ram_mux7_112 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_16(7),
      I1 => ram_top_periph_ram_contents_ram_17(7),
      I2 => ram_top_periph_ram_contents_ram_19(7),
      I3 => ram_top_periph_ram_contents_ram_18(7),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_mux7_112_329
    );
  ram_top_periph_ram_mux7_121 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_20(7),
      I1 => ram_top_periph_ram_contents_ram_21(7),
      I2 => ram_top_periph_ram_contents_ram_23(7),
      I3 => ram_top_periph_ram_contents_ram_22(7),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux7_121_330
    );
  ram_top_periph_ram_mux7_122 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_24(7),
      I1 => ram_top_periph_ram_contents_ram_25(7),
      I2 => ram_top_periph_ram_contents_ram_27(7),
      I3 => ram_top_periph_ram_contents_ram_26(7),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux7_122_331
    );
  ram_top_periph_ram_mux7_13 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_28(7),
      I1 => ram_top_periph_ram_contents_ram_29(7),
      I2 => ram_top_periph_ram_contents_ram_31(7),
      I3 => ram_top_periph_ram_contents_ram_30(7),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux7_13_332
    );
  ram_top_periph_ram_mux7_7 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux7_122_331,
      I3 => ram_top_periph_ram_mux7_13_332,
      I4 => ram_top_periph_ram_mux7_121_330,
      I5 => ram_top_periph_ram_mux7_112_329,
      O => ram_top_periph_ram_mux7_7_333
    );
  ram_top_periph_ram_mux7_113 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_32(7),
      I1 => ram_top_periph_ram_contents_ram_33(7),
      I2 => ram_top_periph_ram_contents_ram_35(7),
      I3 => ram_top_periph_ram_contents_ram_34(7),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux7_113_334
    );
  ram_top_periph_ram_mux7_123 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_36(7),
      I1 => ram_top_periph_ram_contents_ram_37(7),
      I2 => ram_top_periph_ram_contents_ram_39(7),
      I3 => ram_top_periph_ram_contents_ram_38(7),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux7_123_335
    );
  ram_top_periph_ram_mux7_124 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_40(7),
      I1 => ram_top_periph_ram_contents_ram_41(7),
      I2 => ram_top_periph_ram_contents_ram_43(7),
      I3 => ram_top_periph_ram_contents_ram_42(7),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux7_124_336
    );
  ram_top_periph_ram_mux7_131 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_44(7),
      I1 => ram_top_periph_ram_contents_ram_45(7),
      I2 => ram_top_periph_ram_contents_ram_47(7),
      I3 => ram_top_periph_ram_contents_ram_46(7),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux7_131_337
    );
  ram_top_periph_ram_mux7_71 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux7_124_336,
      I3 => ram_top_periph_ram_mux7_131_337,
      I4 => ram_top_periph_ram_mux7_123_335,
      I5 => ram_top_periph_ram_mux7_113_334,
      O => ram_top_periph_ram_mux7_71_338
    );
  ram_top_periph_ram_mux7_125 : LUT6
    generic map(
      INIT => X"CCCCF0F0FF00AAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_48(7),
      I1 => ram_top_periph_ram_contents_ram_51(7),
      I2 => ram_top_periph_ram_contents_ram_50(7),
      I3 => ram_top_periph_ram_contents_ram_49(7),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux7_125_339
    );
  ram_top_periph_ram_mux7_132 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_52(7),
      I1 => ram_top_periph_ram_contents_ram_53(7),
      I2 => ram_top_periph_ram_contents_ram_55(7),
      I3 => ram_top_periph_ram_contents_ram_54(7),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux7_132_340
    );
  ram_top_periph_ram_mux7_133 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_56(7),
      I1 => ram_top_periph_ram_contents_ram_57(7),
      I2 => ram_top_periph_ram_contents_ram_59(7),
      I3 => ram_top_periph_ram_contents_ram_58(7),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux7_133_341
    );
  ram_top_periph_ram_mux7_14 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_60(7),
      I1 => ram_top_periph_ram_contents_ram_61(7),
      I2 => ram_top_periph_ram_contents_ram_63(7),
      I3 => ram_top_periph_ram_contents_ram_62(7),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux7_14_342
    );
  ram_top_periph_ram_mux7_8 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux7_133_341,
      I3 => ram_top_periph_ram_mux7_14_342,
      I4 => ram_top_periph_ram_mux7_132_340,
      I5 => ram_top_periph_ram_mux7_125_339,
      O => ram_top_periph_ram_mux7_8_343
    );
  ram_top_periph_ram_mux6_10 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_0(6),
      I1 => ram_top_periph_ram_contents_ram_1(6),
      I2 => ram_top_periph_ram_contents_ram_3(6),
      I3 => ram_top_periph_ram_contents_ram_2(6),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux6_10_344
    );
  ram_top_periph_ram_mux6_11 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_4(6),
      I1 => ram_top_periph_ram_contents_ram_5(6),
      I2 => ram_top_periph_ram_contents_ram_7(6),
      I3 => ram_top_periph_ram_contents_ram_6(6),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux6_11_345
    );
  ram_top_periph_ram_mux6_111 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_8(6),
      I1 => ram_top_periph_ram_contents_ram_9(6),
      I2 => ram_top_periph_ram_contents_ram_11(6),
      I3 => ram_top_periph_ram_contents_ram_10(6),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux6_111_346
    );
  ram_top_periph_ram_mux6_12 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_12(6),
      I1 => ram_top_periph_ram_contents_ram_13(6),
      I2 => ram_top_periph_ram_contents_ram_15(6),
      I3 => ram_top_periph_ram_contents_ram_14(6),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux6_12_347
    );
  ram_top_periph_ram_mux6_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux6_111_346,
      I3 => ram_top_periph_ram_mux6_12_347,
      I4 => ram_top_periph_ram_mux6_11_345,
      I5 => ram_top_periph_ram_mux6_10_344,
      O => ram_top_periph_ram_mux6_6_348
    );
  ram_top_periph_ram_mux6_112 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_16(6),
      I1 => ram_top_periph_ram_contents_ram_17(6),
      I2 => ram_top_periph_ram_contents_ram_19(6),
      I3 => ram_top_periph_ram_contents_ram_18(6),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux6_112_349
    );
  ram_top_periph_ram_mux6_121 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_20(6),
      I1 => ram_top_periph_ram_contents_ram_21(6),
      I2 => ram_top_periph_ram_contents_ram_23(6),
      I3 => ram_top_periph_ram_contents_ram_22(6),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux6_121_350
    );
  ram_top_periph_ram_mux6_122 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_24(6),
      I1 => ram_top_periph_ram_contents_ram_25(6),
      I2 => ram_top_periph_ram_contents_ram_27(6),
      I3 => ram_top_periph_ram_contents_ram_26(6),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux6_122_351
    );
  ram_top_periph_ram_mux6_13 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_28(6),
      I1 => ram_top_periph_ram_contents_ram_29(6),
      I2 => ram_top_periph_ram_contents_ram_31(6),
      I3 => ram_top_periph_ram_contents_ram_30(6),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux6_13_352
    );
  ram_top_periph_ram_mux6_7 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux6_122_351,
      I3 => ram_top_periph_ram_mux6_13_352,
      I4 => ram_top_periph_ram_mux6_121_350,
      I5 => ram_top_periph_ram_mux6_112_349,
      O => ram_top_periph_ram_mux6_7_353
    );
  ram_top_periph_ram_mux6_113 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_32(6),
      I1 => ram_top_periph_ram_contents_ram_33(6),
      I2 => ram_top_periph_ram_contents_ram_35(6),
      I3 => ram_top_periph_ram_contents_ram_34(6),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux6_113_354
    );
  ram_top_periph_ram_mux6_123 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_36(6),
      I1 => ram_top_periph_ram_contents_ram_37(6),
      I2 => ram_top_periph_ram_contents_ram_39(6),
      I3 => ram_top_periph_ram_contents_ram_38(6),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux6_123_355
    );
  ram_top_periph_ram_mux6_124 : LUT6
    generic map(
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_40(6),
      I1 => ram_top_periph_ram_contents_ram_41(6),
      I2 => ram_top_periph_ram_contents_ram_43(6),
      I3 => ram_top_periph_ram_contents_ram_42(6),
      I4 => RAM_Addr_1_LogicTrst34,
      I5 => RAM_Addr_0_LogicTrst33,
      O => ram_top_periph_ram_mux6_124_356
    );
  ram_top_periph_ram_mux6_131 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_44(6),
      I1 => ram_top_periph_ram_contents_ram_45(6),
      I2 => ram_top_periph_ram_contents_ram_47(6),
      I3 => ram_top_periph_ram_contents_ram_46(6),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux6_131_357
    );
  ram_top_periph_ram_mux6_71 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux6_124_356,
      I3 => ram_top_periph_ram_mux6_131_357,
      I4 => ram_top_periph_ram_mux6_123_355,
      I5 => ram_top_periph_ram_mux6_113_354,
      O => ram_top_periph_ram_mux6_71_358
    );
  ram_top_periph_ram_mux6_125 : LUT6
    generic map(
      INIT => X"CCCCF0F0FF00AAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_48(6),
      I1 => ram_top_periph_ram_contents_ram_51(6),
      I2 => ram_top_periph_ram_contents_ram_50(6),
      I3 => ram_top_periph_ram_contents_ram_49(6),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux6_125_359
    );
  ram_top_periph_ram_mux6_132 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_52(6),
      I1 => ram_top_periph_ram_contents_ram_53(6),
      I2 => ram_top_periph_ram_contents_ram_55(6),
      I3 => ram_top_periph_ram_contents_ram_54(6),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux6_132_360
    );
  ram_top_periph_ram_mux6_133 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_56(6),
      I1 => ram_top_periph_ram_contents_ram_57(6),
      I2 => ram_top_periph_ram_contents_ram_59(6),
      I3 => ram_top_periph_ram_contents_ram_58(6),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux6_133_361
    );
  ram_top_periph_ram_mux6_14 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_60(6),
      I1 => ram_top_periph_ram_contents_ram_61(6),
      I2 => ram_top_periph_ram_contents_ram_63(6),
      I3 => ram_top_periph_ram_contents_ram_62(6),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux6_14_362
    );
  ram_top_periph_ram_mux6_8 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux6_133_361,
      I3 => ram_top_periph_ram_mux6_14_362,
      I4 => ram_top_periph_ram_mux6_132_360,
      I5 => ram_top_periph_ram_mux6_125_359,
      O => ram_top_periph_ram_mux6_8_363
    );
  ram_top_periph_ram_mux5_10 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_0(5),
      I1 => ram_top_periph_ram_contents_ram_1(5),
      I2 => ram_top_periph_ram_contents_ram_3(5),
      I3 => ram_top_periph_ram_contents_ram_2(5),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux5_10_364
    );
  ram_top_periph_ram_mux5_11 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_4(5),
      I1 => ram_top_periph_ram_contents_ram_5(5),
      I2 => ram_top_periph_ram_contents_ram_7(5),
      I3 => ram_top_periph_ram_contents_ram_6(5),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux5_11_365
    );
  ram_top_periph_ram_mux5_111 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_8(5),
      I1 => ram_top_periph_ram_contents_ram_9(5),
      I2 => ram_top_periph_ram_contents_ram_11(5),
      I3 => ram_top_periph_ram_contents_ram_10(5),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux5_111_366
    );
  ram_top_periph_ram_mux5_12 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_12(5),
      I1 => ram_top_periph_ram_contents_ram_13(5),
      I2 => ram_top_periph_ram_contents_ram_15(5),
      I3 => ram_top_periph_ram_contents_ram_14(5),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux5_12_367
    );
  ram_top_periph_ram_mux5_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux5_111_366,
      I3 => ram_top_periph_ram_mux5_12_367,
      I4 => ram_top_periph_ram_mux5_11_365,
      I5 => ram_top_periph_ram_mux5_10_364,
      O => ram_top_periph_ram_mux5_6_368
    );
  ram_top_periph_ram_mux5_112 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_16(5),
      I1 => ram_top_periph_ram_contents_ram_17(5),
      I2 => ram_top_periph_ram_contents_ram_19(5),
      I3 => ram_top_periph_ram_contents_ram_18(5),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux5_112_369
    );
  ram_top_periph_ram_mux5_121 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_20(5),
      I1 => ram_top_periph_ram_contents_ram_21(5),
      I2 => ram_top_periph_ram_contents_ram_23(5),
      I3 => ram_top_periph_ram_contents_ram_22(5),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux5_121_370
    );
  ram_top_periph_ram_mux5_122 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_24(5),
      I1 => ram_top_periph_ram_contents_ram_25(5),
      I2 => ram_top_periph_ram_contents_ram_27(5),
      I3 => ram_top_periph_ram_contents_ram_26(5),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux5_122_371
    );
  ram_top_periph_ram_mux5_13 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_28(5),
      I1 => ram_top_periph_ram_contents_ram_29(5),
      I2 => ram_top_periph_ram_contents_ram_31(5),
      I3 => ram_top_periph_ram_contents_ram_30(5),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux5_13_372
    );
  ram_top_periph_ram_mux5_7 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux5_122_371,
      I3 => ram_top_periph_ram_mux5_13_372,
      I4 => ram_top_periph_ram_mux5_121_370,
      I5 => ram_top_periph_ram_mux5_112_369,
      O => ram_top_periph_ram_mux5_7_373
    );
  ram_top_periph_ram_mux5_113 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_32(5),
      I1 => ram_top_periph_ram_contents_ram_33(5),
      I2 => ram_top_periph_ram_contents_ram_35(5),
      I3 => ram_top_periph_ram_contents_ram_34(5),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux5_113_374
    );
  ram_top_periph_ram_mux5_123 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_36(5),
      I1 => ram_top_periph_ram_contents_ram_37(5),
      I2 => ram_top_periph_ram_contents_ram_39(5),
      I3 => ram_top_periph_ram_contents_ram_38(5),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux5_123_375
    );
  ram_top_periph_ram_mux5_124 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_40(5),
      I1 => ram_top_periph_ram_contents_ram_41(5),
      I2 => ram_top_periph_ram_contents_ram_43(5),
      I3 => ram_top_periph_ram_contents_ram_42(5),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux5_124_376
    );
  ram_top_periph_ram_mux5_131 : LUT6
    generic map(
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_44(5),
      I1 => ram_top_periph_ram_contents_ram_45(5),
      I2 => ram_top_periph_ram_contents_ram_47(5),
      I3 => ram_top_periph_ram_contents_ram_46(5),
      I4 => RAM_Addr_1_LogicTrst34,
      I5 => RAM_Addr_0_LogicTrst33,
      O => ram_top_periph_ram_mux5_131_377
    );
  ram_top_periph_ram_mux5_71 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux5_124_376,
      I3 => ram_top_periph_ram_mux5_131_377,
      I4 => ram_top_periph_ram_mux5_123_375,
      I5 => ram_top_periph_ram_mux5_113_374,
      O => ram_top_periph_ram_mux5_71_378
    );
  ram_top_periph_ram_mux5_125 : LUT6
    generic map(
      INIT => X"CCCCF0F0FF00AAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_48(5),
      I1 => ram_top_periph_ram_contents_ram_51(5),
      I2 => ram_top_periph_ram_contents_ram_50(5),
      I3 => ram_top_periph_ram_contents_ram_49(5),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux5_125_379
    );
  ram_top_periph_ram_mux5_132 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_52(5),
      I1 => ram_top_periph_ram_contents_ram_53(5),
      I2 => ram_top_periph_ram_contents_ram_55(5),
      I3 => ram_top_periph_ram_contents_ram_54(5),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux5_132_380
    );
  ram_top_periph_ram_mux5_133 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_56(5),
      I1 => ram_top_periph_ram_contents_ram_57(5),
      I2 => ram_top_periph_ram_contents_ram_59(5),
      I3 => ram_top_periph_ram_contents_ram_58(5),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux5_133_381
    );
  ram_top_periph_ram_mux5_14 : LUT6
    generic map(
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_60(5),
      I1 => ram_top_periph_ram_contents_ram_61(5),
      I2 => ram_top_periph_ram_contents_ram_63(5),
      I3 => ram_top_periph_ram_contents_ram_62(5),
      I4 => RAM_Addr_1_LogicTrst34,
      I5 => RAM_Addr_0_LogicTrst33,
      O => ram_top_periph_ram_mux5_14_382
    );
  ram_top_periph_ram_mux5_8 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux5_133_381,
      I3 => ram_top_periph_ram_mux5_14_382,
      I4 => ram_top_periph_ram_mux5_132_380,
      I5 => ram_top_periph_ram_mux5_125_379,
      O => ram_top_periph_ram_mux5_8_383
    );
  ram_top_periph_ram_mux4_10 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_0(4),
      I1 => ram_top_periph_ram_contents_ram_1(4),
      I2 => ram_top_periph_ram_contents_ram_3(4),
      I3 => ram_top_periph_ram_contents_ram_2(4),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux4_10_384
    );
  ram_top_periph_ram_mux4_11 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_4(4),
      I1 => ram_top_periph_ram_contents_ram_5(4),
      I2 => ram_top_periph_ram_contents_ram_7(4),
      I3 => ram_top_periph_ram_contents_ram_6(4),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux4_11_385
    );
  ram_top_periph_ram_mux4_111 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_8(4),
      I1 => ram_top_periph_ram_contents_ram_9(4),
      I2 => ram_top_periph_ram_contents_ram_11(4),
      I3 => ram_top_periph_ram_contents_ram_10(4),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux4_111_386
    );
  ram_top_periph_ram_mux4_12 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_12(4),
      I1 => ram_top_periph_ram_contents_ram_13(4),
      I2 => ram_top_periph_ram_contents_ram_15(4),
      I3 => ram_top_periph_ram_contents_ram_14(4),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux4_12_387
    );
  ram_top_periph_ram_mux4_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux4_111_386,
      I3 => ram_top_periph_ram_mux4_12_387,
      I4 => ram_top_periph_ram_mux4_11_385,
      I5 => ram_top_periph_ram_mux4_10_384,
      O => ram_top_periph_ram_mux4_6_388
    );
  ram_top_periph_ram_mux4_112 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_16(4),
      I1 => ram_top_periph_ram_contents_ram_17(4),
      I2 => ram_top_periph_ram_contents_ram_19(4),
      I3 => ram_top_periph_ram_contents_ram_18(4),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux4_112_389
    );
  ram_top_periph_ram_mux4_121 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_20(4),
      I1 => ram_top_periph_ram_contents_ram_21(4),
      I2 => ram_top_periph_ram_contents_ram_23(4),
      I3 => ram_top_periph_ram_contents_ram_22(4),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux4_121_390
    );
  ram_top_periph_ram_mux4_122 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_24(4),
      I1 => ram_top_periph_ram_contents_ram_25(4),
      I2 => ram_top_periph_ram_contents_ram_27(4),
      I3 => ram_top_periph_ram_contents_ram_26(4),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux4_122_391
    );
  ram_top_periph_ram_mux4_13 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_28(4),
      I1 => ram_top_periph_ram_contents_ram_29(4),
      I2 => ram_top_periph_ram_contents_ram_31(4),
      I3 => ram_top_periph_ram_contents_ram_30(4),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux4_13_392
    );
  ram_top_periph_ram_mux4_7 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux4_122_391,
      I3 => ram_top_periph_ram_mux4_13_392,
      I4 => ram_top_periph_ram_mux4_121_390,
      I5 => ram_top_periph_ram_mux4_112_389,
      O => ram_top_periph_ram_mux4_7_393
    );
  ram_top_periph_ram_mux4_113 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_32(4),
      I1 => ram_top_periph_ram_contents_ram_33(4),
      I2 => ram_top_periph_ram_contents_ram_35(4),
      I3 => ram_top_periph_ram_contents_ram_34(4),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux4_113_394
    );
  ram_top_periph_ram_mux4_123 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_36(4),
      I1 => ram_top_periph_ram_contents_ram_37(4),
      I2 => ram_top_periph_ram_contents_ram_39(4),
      I3 => ram_top_periph_ram_contents_ram_38(4),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux4_123_395
    );
  ram_top_periph_ram_mux4_124 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_40(4),
      I1 => ram_top_periph_ram_contents_ram_41(4),
      I2 => ram_top_periph_ram_contents_ram_43(4),
      I3 => ram_top_periph_ram_contents_ram_42(4),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux4_124_396
    );
  ram_top_periph_ram_mux4_131 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_44(4),
      I1 => ram_top_periph_ram_contents_ram_45(4),
      I2 => ram_top_periph_ram_contents_ram_47(4),
      I3 => ram_top_periph_ram_contents_ram_46(4),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux4_131_397
    );
  ram_top_periph_ram_mux4_71 : LUT6
    generic map(
      INIT => X"F7B3E6A2D591C480"
    )
    port map (
      I0 => RAM_Addr(2),
      I1 => RAM_Addr_3_LogicTrst3_1382,
      I2 => ram_top_periph_ram_mux4_131_397,
      I3 => ram_top_periph_ram_mux4_124_396,
      I4 => ram_top_periph_ram_mux4_113_394,
      I5 => ram_top_periph_ram_mux4_123_395,
      O => ram_top_periph_ram_mux4_71_398
    );
  ram_top_periph_ram_mux4_125 : LUT6
    generic map(
      INIT => X"CCCCF0F0FF00AAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_48(4),
      I1 => ram_top_periph_ram_contents_ram_51(4),
      I2 => ram_top_periph_ram_contents_ram_50(4),
      I3 => ram_top_periph_ram_contents_ram_49(4),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux4_125_399
    );
  ram_top_periph_ram_mux4_132 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_52(4),
      I1 => ram_top_periph_ram_contents_ram_53(4),
      I2 => ram_top_periph_ram_contents_ram_55(4),
      I3 => ram_top_periph_ram_contents_ram_54(4),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux4_132_400
    );
  ram_top_periph_ram_mux4_133 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_56(4),
      I1 => ram_top_periph_ram_contents_ram_57(4),
      I2 => ram_top_periph_ram_contents_ram_59(4),
      I3 => ram_top_periph_ram_contents_ram_58(4),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux4_133_401
    );
  ram_top_periph_ram_mux4_14 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_60(4),
      I1 => ram_top_periph_ram_contents_ram_61(4),
      I2 => ram_top_periph_ram_contents_ram_63(4),
      I3 => ram_top_periph_ram_contents_ram_62(4),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux4_14_402
    );
  ram_top_periph_ram_mux4_8 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux4_133_401,
      I3 => ram_top_periph_ram_mux4_14_402,
      I4 => ram_top_periph_ram_mux4_132_400,
      I5 => ram_top_periph_ram_mux4_125_399,
      O => ram_top_periph_ram_mux4_8_403
    );
  ram_top_periph_ram_mux3_10 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_0(3),
      I1 => ram_top_periph_ram_contents_ram_1(3),
      I2 => ram_top_periph_ram_contents_ram_3(3),
      I3 => ram_top_periph_ram_contents_ram_2(3),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux3_10_404
    );
  ram_top_periph_ram_mux3_11 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_4(3),
      I1 => ram_top_periph_ram_contents_ram_5(3),
      I2 => ram_top_periph_ram_contents_ram_7(3),
      I3 => ram_top_periph_ram_contents_ram_6(3),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux3_11_405
    );
  ram_top_periph_ram_mux3_111 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_8(3),
      I1 => ram_top_periph_ram_contents_ram_9(3),
      I2 => ram_top_periph_ram_contents_ram_11(3),
      I3 => ram_top_periph_ram_contents_ram_10(3),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux3_111_406
    );
  ram_top_periph_ram_mux3_12 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_12(3),
      I1 => ram_top_periph_ram_contents_ram_13(3),
      I2 => ram_top_periph_ram_contents_ram_15(3),
      I3 => ram_top_periph_ram_contents_ram_14(3),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux3_12_407
    );
  ram_top_periph_ram_mux3_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux3_111_406,
      I3 => ram_top_periph_ram_mux3_12_407,
      I4 => ram_top_periph_ram_mux3_11_405,
      I5 => ram_top_periph_ram_mux3_10_404,
      O => ram_top_periph_ram_mux3_6_408
    );
  ram_top_periph_ram_mux3_112 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_16(3),
      I1 => ram_top_periph_ram_contents_ram_17(3),
      I2 => ram_top_periph_ram_contents_ram_19(3),
      I3 => ram_top_periph_ram_contents_ram_18(3),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux3_112_409
    );
  ram_top_periph_ram_mux3_121 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_20(3),
      I1 => ram_top_periph_ram_contents_ram_21(3),
      I2 => ram_top_periph_ram_contents_ram_23(3),
      I3 => ram_top_periph_ram_contents_ram_22(3),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux3_121_410
    );
  ram_top_periph_ram_mux3_122 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_24(3),
      I1 => ram_top_periph_ram_contents_ram_25(3),
      I2 => ram_top_periph_ram_contents_ram_27(3),
      I3 => ram_top_periph_ram_contents_ram_26(3),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux3_122_411
    );
  ram_top_periph_ram_mux3_13 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_28(3),
      I1 => ram_top_periph_ram_contents_ram_29(3),
      I2 => ram_top_periph_ram_contents_ram_31(3),
      I3 => ram_top_periph_ram_contents_ram_30(3),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux3_13_412
    );
  ram_top_periph_ram_mux3_7 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux3_122_411,
      I3 => ram_top_periph_ram_mux3_13_412,
      I4 => ram_top_periph_ram_mux3_121_410,
      I5 => ram_top_periph_ram_mux3_112_409,
      O => ram_top_periph_ram_mux3_7_413
    );
  ram_top_periph_ram_mux3_113 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_32(3),
      I1 => ram_top_periph_ram_contents_ram_33(3),
      I2 => ram_top_periph_ram_contents_ram_35(3),
      I3 => ram_top_periph_ram_contents_ram_34(3),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux3_113_414
    );
  ram_top_periph_ram_mux3_123 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_36(3),
      I1 => ram_top_periph_ram_contents_ram_37(3),
      I2 => ram_top_periph_ram_contents_ram_39(3),
      I3 => ram_top_periph_ram_contents_ram_38(3),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux3_123_415
    );
  ram_top_periph_ram_mux3_124 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_40(3),
      I1 => ram_top_periph_ram_contents_ram_41(3),
      I2 => ram_top_periph_ram_contents_ram_43(3),
      I3 => ram_top_periph_ram_contents_ram_42(3),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux3_124_416
    );
  ram_top_periph_ram_mux3_131 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_44(3),
      I1 => ram_top_periph_ram_contents_ram_45(3),
      I2 => ram_top_periph_ram_contents_ram_47(3),
      I3 => ram_top_periph_ram_contents_ram_46(3),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux3_131_417
    );
  ram_top_periph_ram_mux3_71 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux3_124_416,
      I3 => ram_top_periph_ram_mux3_131_417,
      I4 => ram_top_periph_ram_mux3_123_415,
      I5 => ram_top_periph_ram_mux3_113_414,
      O => ram_top_periph_ram_mux3_71_418
    );
  ram_top_periph_ram_mux3_125 : LUT6
    generic map(
      INIT => X"CCCCF0F0FF00AAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_48(3),
      I1 => ram_top_periph_ram_contents_ram_51(3),
      I2 => ram_top_periph_ram_contents_ram_50(3),
      I3 => ram_top_periph_ram_contents_ram_49(3),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux3_125_419
    );
  ram_top_periph_ram_mux3_132 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_52(3),
      I1 => ram_top_periph_ram_contents_ram_53(3),
      I2 => ram_top_periph_ram_contents_ram_55(3),
      I3 => ram_top_periph_ram_contents_ram_54(3),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux3_132_420
    );
  ram_top_periph_ram_mux3_133 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_56(3),
      I1 => ram_top_periph_ram_contents_ram_57(3),
      I2 => ram_top_periph_ram_contents_ram_59(3),
      I3 => ram_top_periph_ram_contents_ram_58(3),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux3_133_421
    );
  ram_top_periph_ram_mux3_14 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_60(3),
      I1 => ram_top_periph_ram_contents_ram_61(3),
      I2 => ram_top_periph_ram_contents_ram_63(3),
      I3 => ram_top_periph_ram_contents_ram_62(3),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux3_14_422
    );
  ram_top_periph_ram_mux3_8 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux3_133_421,
      I3 => ram_top_periph_ram_mux3_14_422,
      I4 => ram_top_periph_ram_mux3_132_420,
      I5 => ram_top_periph_ram_mux3_125_419,
      O => ram_top_periph_ram_mux3_8_423
    );
  ram_top_periph_ram_mux2_10 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_0(2),
      I1 => ram_top_periph_ram_contents_ram_1(2),
      I2 => ram_top_periph_ram_contents_ram_3(2),
      I3 => ram_top_periph_ram_contents_ram_2(2),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux2_10_424
    );
  ram_top_periph_ram_mux2_11 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_4(2),
      I1 => ram_top_periph_ram_contents_ram_5(2),
      I2 => ram_top_periph_ram_contents_ram_7(2),
      I3 => ram_top_periph_ram_contents_ram_6(2),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux2_11_425
    );
  ram_top_periph_ram_mux2_111 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_8(2),
      I1 => ram_top_periph_ram_contents_ram_9(2),
      I2 => ram_top_periph_ram_contents_ram_11(2),
      I3 => ram_top_periph_ram_contents_ram_10(2),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux2_111_426
    );
  ram_top_periph_ram_mux2_12 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_12(2),
      I1 => ram_top_periph_ram_contents_ram_13(2),
      I2 => ram_top_periph_ram_contents_ram_15(2),
      I3 => ram_top_periph_ram_contents_ram_14(2),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux2_12_427
    );
  ram_top_periph_ram_mux2_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux2_111_426,
      I3 => ram_top_periph_ram_mux2_12_427,
      I4 => ram_top_periph_ram_mux2_11_425,
      I5 => ram_top_periph_ram_mux2_10_424,
      O => ram_top_periph_ram_mux2_6_428
    );
  ram_top_periph_ram_mux2_112 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_16(2),
      I1 => ram_top_periph_ram_contents_ram_17(2),
      I2 => ram_top_periph_ram_contents_ram_19(2),
      I3 => ram_top_periph_ram_contents_ram_18(2),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux2_112_429
    );
  ram_top_periph_ram_mux2_121 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_20(2),
      I1 => ram_top_periph_ram_contents_ram_21(2),
      I2 => ram_top_periph_ram_contents_ram_23(2),
      I3 => ram_top_periph_ram_contents_ram_22(2),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux2_121_430
    );
  ram_top_periph_ram_mux2_122 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_24(2),
      I1 => ram_top_periph_ram_contents_ram_25(2),
      I2 => ram_top_periph_ram_contents_ram_27(2),
      I3 => ram_top_periph_ram_contents_ram_26(2),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux2_122_431
    );
  ram_top_periph_ram_mux2_13 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_28(2),
      I1 => ram_top_periph_ram_contents_ram_29(2),
      I2 => ram_top_periph_ram_contents_ram_31(2),
      I3 => ram_top_periph_ram_contents_ram_30(2),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux2_13_432
    );
  ram_top_periph_ram_mux2_7 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux2_122_431,
      I3 => ram_top_periph_ram_mux2_13_432,
      I4 => ram_top_periph_ram_mux2_121_430,
      I5 => ram_top_periph_ram_mux2_112_429,
      O => ram_top_periph_ram_mux2_7_433
    );
  ram_top_periph_ram_mux2_113 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_32(2),
      I1 => ram_top_periph_ram_contents_ram_33(2),
      I2 => ram_top_periph_ram_contents_ram_35(2),
      I3 => ram_top_periph_ram_contents_ram_34(2),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux2_113_434
    );
  ram_top_periph_ram_mux2_123 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_36(2),
      I1 => ram_top_periph_ram_contents_ram_37(2),
      I2 => ram_top_periph_ram_contents_ram_39(2),
      I3 => ram_top_periph_ram_contents_ram_38(2),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux2_123_435
    );
  ram_top_periph_ram_mux2_124 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_40(2),
      I1 => ram_top_periph_ram_contents_ram_41(2),
      I2 => ram_top_periph_ram_contents_ram_43(2),
      I3 => ram_top_periph_ram_contents_ram_42(2),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux2_124_436
    );
  ram_top_periph_ram_mux2_131 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_44(2),
      I1 => ram_top_periph_ram_contents_ram_45(2),
      I2 => ram_top_periph_ram_contents_ram_47(2),
      I3 => ram_top_periph_ram_contents_ram_46(2),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux2_131_437
    );
  ram_top_periph_ram_mux2_71 : LUT6
    generic map(
      INIT => X"F7B3E6A2D591C480"
    )
    port map (
      I0 => RAM_Addr(2),
      I1 => RAM_Addr_3_LogicTrst3_1382,
      I2 => ram_top_periph_ram_mux2_131_437,
      I3 => ram_top_periph_ram_mux2_124_436,
      I4 => ram_top_periph_ram_mux2_113_434,
      I5 => ram_top_periph_ram_mux2_123_435,
      O => ram_top_periph_ram_mux2_71_438
    );
  ram_top_periph_ram_mux2_125 : LUT6
    generic map(
      INIT => X"CCCCF0F0FF00AAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_48(2),
      I1 => ram_top_periph_ram_contents_ram_51(2),
      I2 => ram_top_periph_ram_contents_ram_50(2),
      I3 => ram_top_periph_ram_contents_ram_49(2),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux2_125_439
    );
  ram_top_periph_ram_mux2_132 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_52(2),
      I1 => ram_top_periph_ram_contents_ram_53(2),
      I2 => ram_top_periph_ram_contents_ram_55(2),
      I3 => ram_top_periph_ram_contents_ram_54(2),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux2_132_440
    );
  ram_top_periph_ram_mux2_133 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_56(2),
      I1 => ram_top_periph_ram_contents_ram_57(2),
      I2 => ram_top_periph_ram_contents_ram_59(2),
      I3 => ram_top_periph_ram_contents_ram_58(2),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux2_133_441
    );
  ram_top_periph_ram_mux2_14 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_60(2),
      I1 => ram_top_periph_ram_contents_ram_61(2),
      I2 => ram_top_periph_ram_contents_ram_63(2),
      I3 => ram_top_periph_ram_contents_ram_62(2),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux2_14_442
    );
  ram_top_periph_ram_mux2_8 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux2_133_441,
      I3 => ram_top_periph_ram_mux2_14_442,
      I4 => ram_top_periph_ram_mux2_132_440,
      I5 => ram_top_periph_ram_mux2_125_439,
      O => ram_top_periph_ram_mux2_8_443
    );
  ram_top_periph_ram_mux1_10 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_0(1),
      I1 => ram_top_periph_ram_contents_ram_1(1),
      I2 => ram_top_periph_ram_contents_ram_3(1),
      I3 => ram_top_periph_ram_contents_ram_2(1),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux1_10_444
    );
  ram_top_periph_ram_mux1_11 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_4(1),
      I1 => ram_top_periph_ram_contents_ram_5(1),
      I2 => ram_top_periph_ram_contents_ram_7(1),
      I3 => ram_top_periph_ram_contents_ram_6(1),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux1_11_445
    );
  ram_top_periph_ram_mux1_111 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_8(1),
      I1 => ram_top_periph_ram_contents_ram_9(1),
      I2 => ram_top_periph_ram_contents_ram_11(1),
      I3 => ram_top_periph_ram_contents_ram_10(1),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux1_111_446
    );
  ram_top_periph_ram_mux1_12 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_12(1),
      I1 => ram_top_periph_ram_contents_ram_13(1),
      I2 => ram_top_periph_ram_contents_ram_15(1),
      I3 => ram_top_periph_ram_contents_ram_14(1),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux1_12_447
    );
  ram_top_periph_ram_mux1_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux1_111_446,
      I3 => ram_top_periph_ram_mux1_12_447,
      I4 => ram_top_periph_ram_mux1_11_445,
      I5 => ram_top_periph_ram_mux1_10_444,
      O => ram_top_periph_ram_mux1_6_448
    );
  ram_top_periph_ram_mux1_112 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_16(1),
      I1 => ram_top_periph_ram_contents_ram_17(1),
      I2 => ram_top_periph_ram_contents_ram_19(1),
      I3 => ram_top_periph_ram_contents_ram_18(1),
      I4 => RAM_Addr_0_LogicTrst31,
      I5 => RAM_Addr_1_LogicTrst31,
      O => ram_top_periph_ram_mux1_112_449
    );
  ram_top_periph_ram_mux1_121 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_20(1),
      I1 => ram_top_periph_ram_contents_ram_21(1),
      I2 => ram_top_periph_ram_contents_ram_23(1),
      I3 => ram_top_periph_ram_contents_ram_22(1),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux1_121_450
    );
  ram_top_periph_ram_mux1_122 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_24(1),
      I1 => ram_top_periph_ram_contents_ram_25(1),
      I2 => ram_top_periph_ram_contents_ram_27(1),
      I3 => ram_top_periph_ram_contents_ram_26(1),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux1_122_451
    );
  ram_top_periph_ram_mux1_13 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_28(1),
      I1 => ram_top_periph_ram_contents_ram_29(1),
      I2 => ram_top_periph_ram_contents_ram_31(1),
      I3 => ram_top_periph_ram_contents_ram_30(1),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux1_13_452
    );
  ram_top_periph_ram_mux1_7 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux1_122_451,
      I3 => ram_top_periph_ram_mux1_13_452,
      I4 => ram_top_periph_ram_mux1_121_450,
      I5 => ram_top_periph_ram_mux1_112_449,
      O => ram_top_periph_ram_mux1_7_453
    );
  ram_top_periph_ram_mux1_113 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_32(1),
      I1 => ram_top_periph_ram_contents_ram_33(1),
      I2 => ram_top_periph_ram_contents_ram_35(1),
      I3 => ram_top_periph_ram_contents_ram_34(1),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux1_113_454
    );
  ram_top_periph_ram_mux1_123 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_36(1),
      I1 => ram_top_periph_ram_contents_ram_37(1),
      I2 => ram_top_periph_ram_contents_ram_39(1),
      I3 => ram_top_periph_ram_contents_ram_38(1),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux1_123_455
    );
  ram_top_periph_ram_mux1_124 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_40(1),
      I1 => ram_top_periph_ram_contents_ram_41(1),
      I2 => ram_top_periph_ram_contents_ram_43(1),
      I3 => ram_top_periph_ram_contents_ram_42(1),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux1_124_456
    );
  ram_top_periph_ram_mux1_131 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_44(1),
      I1 => ram_top_periph_ram_contents_ram_45(1),
      I2 => ram_top_periph_ram_contents_ram_47(1),
      I3 => ram_top_periph_ram_contents_ram_46(1),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux1_131_457
    );
  ram_top_periph_ram_mux1_71 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux1_124_456,
      I3 => ram_top_periph_ram_mux1_131_457,
      I4 => ram_top_periph_ram_mux1_123_455,
      I5 => ram_top_periph_ram_mux1_113_454,
      O => ram_top_periph_ram_mux1_71_458
    );
  ram_top_periph_ram_mux1_125 : LUT6
    generic map(
      INIT => X"CCCCF0F0FF00AAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_48(1),
      I1 => ram_top_periph_ram_contents_ram_51(1),
      I2 => ram_top_periph_ram_contents_ram_50(1),
      I3 => ram_top_periph_ram_contents_ram_49(1),
      I4 => RAM_Addr_0_LogicTrst32,
      I5 => RAM_Addr_1_LogicTrst32,
      O => ram_top_periph_ram_mux1_125_459
    );
  ram_top_periph_ram_mux1_132 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_52(1),
      I1 => ram_top_periph_ram_contents_ram_53(1),
      I2 => ram_top_periph_ram_contents_ram_55(1),
      I3 => ram_top_periph_ram_contents_ram_54(1),
      I4 => RAM_Addr_0_LogicTrst33,
      I5 => RAM_Addr_1_LogicTrst33,
      O => ram_top_periph_ram_mux1_132_460
    );
  ram_top_periph_ram_mux1_133 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_56(1),
      I1 => ram_top_periph_ram_contents_ram_57(1),
      I2 => ram_top_periph_ram_contents_ram_59(1),
      I3 => ram_top_periph_ram_contents_ram_58(1),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux1_133_461
    );
  ram_top_periph_ram_mux1_14 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_60(1),
      I1 => ram_top_periph_ram_contents_ram_61(1),
      I2 => ram_top_periph_ram_contents_ram_63(1),
      I3 => ram_top_periph_ram_contents_ram_62(1),
      I4 => RAM_Addr_0_LogicTrst34,
      I5 => RAM_Addr_1_LogicTrst34,
      O => ram_top_periph_ram_mux1_14_462
    );
  ram_top_periph_ram_mux1_8 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst3_1382,
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux1_133_461,
      I3 => ram_top_periph_ram_mux1_14_462,
      I4 => ram_top_periph_ram_mux1_132_460,
      I5 => ram_top_periph_ram_mux1_125_459,
      O => ram_top_periph_ram_mux1_8_463
    );
  ram_top_periph_ram_mux_10 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_0(0),
      I1 => ram_top_periph_ram_contents_ram_1(0),
      I2 => ram_top_periph_ram_contents_ram_3(0),
      I3 => ram_top_periph_ram_contents_ram_2(0),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_mux_10_464
    );
  ram_top_periph_ram_mux_11 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_4(0),
      I1 => ram_top_periph_ram_contents_ram_5(0),
      I2 => ram_top_periph_ram_contents_ram_7(0),
      I3 => ram_top_periph_ram_contents_ram_6(0),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_mux_11_465
    );
  ram_top_periph_ram_mux_111 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_8(0),
      I1 => ram_top_periph_ram_contents_ram_9(0),
      I2 => ram_top_periph_ram_contents_ram_11(0),
      I3 => ram_top_periph_ram_contents_ram_10(0),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_mux_111_466
    );
  ram_top_periph_ram_mux_12 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_12(0),
      I1 => ram_top_periph_ram_contents_ram_13(0),
      I2 => ram_top_periph_ram_contents_ram_15(0),
      I3 => ram_top_periph_ram_contents_ram_14(0),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_mux_12_467
    );
  ram_top_periph_ram_mux_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux_111_466,
      I3 => ram_top_periph_ram_mux_12_467,
      I4 => ram_top_periph_ram_mux_11_465,
      I5 => ram_top_periph_ram_mux_10_464,
      O => ram_top_periph_ram_mux_6_468
    );
  ram_top_periph_ram_mux_112 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_16(0),
      I1 => ram_top_periph_ram_contents_ram_17(0),
      I2 => ram_top_periph_ram_contents_ram_19(0),
      I3 => ram_top_periph_ram_contents_ram_18(0),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_mux_112_469
    );
  ram_top_periph_ram_mux_121 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_20(0),
      I1 => ram_top_periph_ram_contents_ram_21(0),
      I2 => ram_top_periph_ram_contents_ram_23(0),
      I3 => ram_top_periph_ram_contents_ram_22(0),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_mux_121_470
    );
  ram_top_periph_ram_mux_122 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_24(0),
      I1 => ram_top_periph_ram_contents_ram_25(0),
      I2 => ram_top_periph_ram_contents_ram_27(0),
      I3 => ram_top_periph_ram_contents_ram_26(0),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_mux_122_471
    );
  ram_top_periph_ram_mux_13 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_28(0),
      I1 => ram_top_periph_ram_contents_ram_29(0),
      I2 => ram_top_periph_ram_contents_ram_31(0),
      I3 => ram_top_periph_ram_contents_ram_30(0),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_mux_13_472
    );
  ram_top_periph_ram_mux_7 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux_122_471,
      I3 => ram_top_periph_ram_mux_13_472,
      I4 => ram_top_periph_ram_mux_121_470,
      I5 => ram_top_periph_ram_mux_112_469,
      O => ram_top_periph_ram_mux_7_473
    );
  ram_top_periph_ram_mux_113 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_32(0),
      I1 => ram_top_periph_ram_contents_ram_33(0),
      I2 => ram_top_periph_ram_contents_ram_35(0),
      I3 => ram_top_periph_ram_contents_ram_34(0),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_mux_113_474
    );
  ram_top_periph_ram_mux_123 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_36(0),
      I1 => ram_top_periph_ram_contents_ram_37(0),
      I2 => ram_top_periph_ram_contents_ram_39(0),
      I3 => ram_top_periph_ram_contents_ram_38(0),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_mux_123_475
    );
  ram_top_periph_ram_mux_124 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_40(0),
      I1 => ram_top_periph_ram_contents_ram_41(0),
      I2 => ram_top_periph_ram_contents_ram_43(0),
      I3 => ram_top_periph_ram_contents_ram_42(0),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux_124_476
    );
  ram_top_periph_ram_mux_131 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_44(0),
      I1 => ram_top_periph_ram_contents_ram_45(0),
      I2 => ram_top_periph_ram_contents_ram_47(0),
      I3 => ram_top_periph_ram_contents_ram_46(0),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux_131_477
    );
  ram_top_periph_ram_mux_71 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux_124_476,
      I3 => ram_top_periph_ram_mux_131_477,
      I4 => ram_top_periph_ram_mux_123_475,
      I5 => ram_top_periph_ram_mux_113_474,
      O => ram_top_periph_ram_mux_71_478
    );
  ram_top_periph_ram_mux_125 : LUT6
    generic map(
      INIT => X"CCCCF0F0FF00AAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_48(0),
      I1 => ram_top_periph_ram_contents_ram_51(0),
      I2 => ram_top_periph_ram_contents_ram_50(0),
      I3 => ram_top_periph_ram_contents_ram_49(0),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_mux_125_479
    );
  ram_top_periph_ram_mux_132 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_52(0),
      I1 => ram_top_periph_ram_contents_ram_53(0),
      I2 => ram_top_periph_ram_contents_ram_55(0),
      I3 => ram_top_periph_ram_contents_ram_54(0),
      I4 => RAM_Addr_0_LogicTrst35,
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_mux_132_480
    );
  ram_top_periph_ram_mux_133 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_56(0),
      I1 => ram_top_periph_ram_contents_ram_57(0),
      I2 => ram_top_periph_ram_contents_ram_59(0),
      I3 => ram_top_periph_ram_contents_ram_58(0),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux_133_481
    );
  ram_top_periph_ram_mux_14 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_60(0),
      I1 => ram_top_periph_ram_contents_ram_61(0),
      I2 => ram_top_periph_ram_contents_ram_63(0),
      I3 => ram_top_periph_ram_contents_ram_62(0),
      I4 => RAM_Addr_0_LogicTrst3_1373,
      I5 => RAM_Addr_1_LogicTrst3_1364,
      O => ram_top_periph_ram_mux_14_482
    );
  ram_top_periph_ram_mux_8 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(2),
      I2 => ram_top_periph_ram_mux_133_481,
      I3 => ram_top_periph_ram_mux_14_482,
      I4 => ram_top_periph_ram_mux_132_480,
      I5 => ram_top_periph_ram_mux_125_479,
      O => ram_top_periph_ram_mux_8_483
    );
  ram_top_periph_ram_contents_ram_1_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0700_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_1(7)
    );
  ram_top_periph_ram_contents_ram_1_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0700_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_1(6)
    );
  ram_top_periph_ram_contents_ram_1_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0700_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_1(5)
    );
  ram_top_periph_ram_contents_ram_1_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0700_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_1(4)
    );
  ram_top_periph_ram_contents_ram_1_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0700_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_1(3)
    );
  ram_top_periph_ram_contents_ram_1_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0700_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_1(2)
    );
  ram_top_periph_ram_contents_ram_1_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0700_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_1(1)
    );
  ram_top_periph_ram_contents_ram_1_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0700_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_1(0)
    );
  ram_top_periph_ram_temp_l_6 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT6,
      Q => ram_top_periph_ram_temp_l(6)
    );
  ram_top_periph_ram_temp_l_5 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT5,
      Q => ram_top_periph_ram_temp_l(5)
    );
  ram_top_periph_ram_temp_l_4 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT4,
      Q => ram_top_periph_ram_temp_l(4)
    );
  ram_top_periph_ram_temp_l_3 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT3,
      Q => ram_top_periph_ram_temp_l(3)
    );
  ram_top_periph_ram_temp_l_2 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT2,
      Q => ram_top_periph_ram_temp_l(2)
    );
  ram_top_periph_ram_temp_l_1 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT1,
      Q => ram_top_periph_ram_temp_l(1)
    );
  ram_top_periph_ram_temp_l_0 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT,
      Q => ram_top_periph_ram_temp_l(0)
    );
  ram_top_periph_ram_temp_h_6 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT6,
      Q => ram_top_periph_ram_temp_h(6)
    );
  ram_top_periph_ram_temp_h_5 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT5,
      Q => ram_top_periph_ram_temp_h(5)
    );
  ram_top_periph_ram_temp_h_4 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT4,
      Q => ram_top_periph_ram_temp_h(4)
    );
  ram_top_periph_ram_temp_h_3 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT3,
      Q => ram_top_periph_ram_temp_h(3)
    );
  ram_top_periph_ram_temp_h_2 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT2,
      Q => ram_top_periph_ram_temp_h(2)
    );
  ram_top_periph_ram_temp_h_1 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT1,
      Q => ram_top_periph_ram_temp_h(1)
    );
  ram_top_periph_ram_temp_h_0 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT,
      Q => ram_top_periph_ram_temp_h(0)
    );
  ram_top_periph_ram_switches_7 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_contents_ram_23(0),
      Q => ram_top_periph_ram_switches(7)
    );
  ram_top_periph_ram_switches_6 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_contents_ram_22(0),
      Q => ram_top_periph_ram_switches(6)
    );
  ram_top_periph_ram_switches_5 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_contents_ram_21(0),
      Q => ram_top_periph_ram_switches(5)
    );
  ram_top_periph_ram_switches_4 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_contents_ram_20(0),
      Q => ram_top_periph_ram_switches(4)
    );
  ram_top_periph_ram_switches_3 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_contents_ram_19(0),
      Q => ram_top_periph_ram_switches(3)
    );
  ram_top_periph_ram_switches_2 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_contents_ram_18(0),
      Q => ram_top_periph_ram_switches(2)
    );
  ram_top_periph_ram_switches_1 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_contents_ram_17(0),
      Q => ram_top_periph_ram_switches(1)
    );
  ram_top_periph_ram_switches_0 : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => ram_top_periph_ram_contents_ram_16(0),
      Q => ram_top_periph_ram_switches(0)
    );
  ram_top_periph_ram_contents_ram_0_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1141_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_0(7)
    );
  ram_top_periph_ram_contents_ram_0_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1141_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_0(6)
    );
  ram_top_periph_ram_contents_ram_0_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1141_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_0(5)
    );
  ram_top_periph_ram_contents_ram_0_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1141_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_0(4)
    );
  ram_top_periph_ram_contents_ram_0_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1141_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_0(3)
    );
  ram_top_periph_ram_contents_ram_0_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1141_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_0(2)
    );
  ram_top_periph_ram_contents_ram_0_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1141_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_0(1)
    );
  ram_top_periph_ram_contents_ram_0_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1141_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_0(0)
    );
  ram_top_periph_ram_contents_ram_63_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1134_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_63(7)
    );
  ram_top_periph_ram_contents_ram_63_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1134_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_63(6)
    );
  ram_top_periph_ram_contents_ram_63_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1134_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_63(5)
    );
  ram_top_periph_ram_contents_ram_63_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1134_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_63(4)
    );
  ram_top_periph_ram_contents_ram_63_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1134_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_63(3)
    );
  ram_top_periph_ram_contents_ram_63_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1134_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_63(2)
    );
  ram_top_periph_ram_contents_ram_63_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1134_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_63(1)
    );
  ram_top_periph_ram_contents_ram_63_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1134_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_63(0)
    );
  ram_top_periph_ram_contents_ram_61_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1120_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_61(7)
    );
  ram_top_periph_ram_contents_ram_61_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1120_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_61(6)
    );
  ram_top_periph_ram_contents_ram_61_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1120_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_61(5)
    );
  ram_top_periph_ram_contents_ram_61_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1120_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_61(4)
    );
  ram_top_periph_ram_contents_ram_61_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1120_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_61(3)
    );
  ram_top_periph_ram_contents_ram_61_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1120_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_61(2)
    );
  ram_top_periph_ram_contents_ram_61_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1120_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_61(1)
    );
  ram_top_periph_ram_contents_ram_61_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1120_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_61(0)
    );
  ram_top_periph_ram_contents_ram_60_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1113_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_60(7)
    );
  ram_top_periph_ram_contents_ram_60_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1113_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_60(6)
    );
  ram_top_periph_ram_contents_ram_60_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1113_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_60(5)
    );
  ram_top_periph_ram_contents_ram_60_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1113_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_60(4)
    );
  ram_top_periph_ram_contents_ram_60_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1113_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_60(3)
    );
  ram_top_periph_ram_contents_ram_60_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1113_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_60(2)
    );
  ram_top_periph_ram_contents_ram_60_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1113_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_60(1)
    );
  ram_top_periph_ram_contents_ram_60_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1113_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_60(0)
    );
  ram_top_periph_ram_contents_ram_62_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1127_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_62(7)
    );
  ram_top_periph_ram_contents_ram_62_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1127_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_62(6)
    );
  ram_top_periph_ram_contents_ram_62_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1127_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_62(5)
    );
  ram_top_periph_ram_contents_ram_62_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1127_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_62(4)
    );
  ram_top_periph_ram_contents_ram_62_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1127_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_62(3)
    );
  ram_top_periph_ram_contents_ram_62_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1127_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_62(2)
    );
  ram_top_periph_ram_contents_ram_62_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1127_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_62(1)
    );
  ram_top_periph_ram_contents_ram_62_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1127_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_62(0)
    );
  ram_top_periph_ram_contents_ram_59_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1106_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_59(7)
    );
  ram_top_periph_ram_contents_ram_59_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1106_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_59(6)
    );
  ram_top_periph_ram_contents_ram_59_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1106_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_59(5)
    );
  ram_top_periph_ram_contents_ram_59_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1106_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_59(4)
    );
  ram_top_periph_ram_contents_ram_59_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1106_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_59(3)
    );
  ram_top_periph_ram_contents_ram_59_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1106_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_59(2)
    );
  ram_top_periph_ram_contents_ram_59_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1106_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_59(1)
    );
  ram_top_periph_ram_contents_ram_59_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1106_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_59(0)
    );
  ram_top_periph_ram_contents_ram_58_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1099_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_58(7)
    );
  ram_top_periph_ram_contents_ram_58_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1099_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_58(6)
    );
  ram_top_periph_ram_contents_ram_58_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1099_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_58(5)
    );
  ram_top_periph_ram_contents_ram_58_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1099_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_58(4)
    );
  ram_top_periph_ram_contents_ram_58_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1099_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_58(3)
    );
  ram_top_periph_ram_contents_ram_58_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1099_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_58(2)
    );
  ram_top_periph_ram_contents_ram_58_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1099_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_58(1)
    );
  ram_top_periph_ram_contents_ram_58_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1099_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_58(0)
    );
  ram_top_periph_ram_contents_ram_56_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1085_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_56(7)
    );
  ram_top_periph_ram_contents_ram_56_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1085_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_56(6)
    );
  ram_top_periph_ram_contents_ram_56_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1085_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_56(5)
    );
  ram_top_periph_ram_contents_ram_56_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1085_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_56(4)
    );
  ram_top_periph_ram_contents_ram_56_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1085_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_56(3)
    );
  ram_top_periph_ram_contents_ram_56_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1085_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_56(2)
    );
  ram_top_periph_ram_contents_ram_56_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1085_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_56(1)
    );
  ram_top_periph_ram_contents_ram_56_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1085_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_56(0)
    );
  ram_top_periph_ram_contents_ram_55_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1078_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_55(7)
    );
  ram_top_periph_ram_contents_ram_55_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1078_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_55(6)
    );
  ram_top_periph_ram_contents_ram_55_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1078_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_55(5)
    );
  ram_top_periph_ram_contents_ram_55_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1078_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_55(4)
    );
  ram_top_periph_ram_contents_ram_55_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1078_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_55(3)
    );
  ram_top_periph_ram_contents_ram_55_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1078_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_55(2)
    );
  ram_top_periph_ram_contents_ram_55_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1078_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_55(1)
    );
  ram_top_periph_ram_contents_ram_55_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1078_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_55(0)
    );
  ram_top_periph_ram_contents_ram_57_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1092_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_57(7)
    );
  ram_top_periph_ram_contents_ram_57_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1092_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_57(6)
    );
  ram_top_periph_ram_contents_ram_57_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1092_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_57(5)
    );
  ram_top_periph_ram_contents_ram_57_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1092_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_57(4)
    );
  ram_top_periph_ram_contents_ram_57_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1092_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_57(3)
    );
  ram_top_periph_ram_contents_ram_57_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1092_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_57(2)
    );
  ram_top_periph_ram_contents_ram_57_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1092_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_57(1)
    );
  ram_top_periph_ram_contents_ram_57_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1092_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_57(0)
    );
  ram_top_periph_ram_contents_ram_54_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1071_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_54(7)
    );
  ram_top_periph_ram_contents_ram_54_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1071_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_54(6)
    );
  ram_top_periph_ram_contents_ram_54_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1071_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_54(5)
    );
  ram_top_periph_ram_contents_ram_54_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1071_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_54(4)
    );
  ram_top_periph_ram_contents_ram_54_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1071_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_54(3)
    );
  ram_top_periph_ram_contents_ram_54_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1071_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_54(2)
    );
  ram_top_periph_ram_contents_ram_54_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1071_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_54(1)
    );
  ram_top_periph_ram_contents_ram_54_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1071_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_54(0)
    );
  ram_top_periph_ram_contents_ram_53_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1064_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_53(7)
    );
  ram_top_periph_ram_contents_ram_53_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1064_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_53(6)
    );
  ram_top_periph_ram_contents_ram_53_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1064_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_53(5)
    );
  ram_top_periph_ram_contents_ram_53_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1064_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_53(4)
    );
  ram_top_periph_ram_contents_ram_53_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1064_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_53(3)
    );
  ram_top_periph_ram_contents_ram_53_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1064_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_53(2)
    );
  ram_top_periph_ram_contents_ram_53_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1064_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_53(1)
    );
  ram_top_periph_ram_contents_ram_53_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1064_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_53(0)
    );
  ram_top_periph_ram_contents_ram_51_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1050_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_51(7)
    );
  ram_top_periph_ram_contents_ram_51_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1050_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_51(6)
    );
  ram_top_periph_ram_contents_ram_51_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1050_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_51(5)
    );
  ram_top_periph_ram_contents_ram_51_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1050_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_51(4)
    );
  ram_top_periph_ram_contents_ram_51_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1050_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_51(3)
    );
  ram_top_periph_ram_contents_ram_51_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1050_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_51(2)
    );
  ram_top_periph_ram_contents_ram_51_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1050_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_51(1)
    );
  ram_top_periph_ram_contents_ram_51_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1050_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_51(0)
    );
  ram_top_periph_ram_contents_ram_50_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1043_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_50(7)
    );
  ram_top_periph_ram_contents_ram_50_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1043_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_50(6)
    );
  ram_top_periph_ram_contents_ram_50_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1043_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_50(5)
    );
  ram_top_periph_ram_contents_ram_50_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1043_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_50(4)
    );
  ram_top_periph_ram_contents_ram_50_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1043_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_50(3)
    );
  ram_top_periph_ram_contents_ram_50_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1043_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_50(2)
    );
  ram_top_periph_ram_contents_ram_50_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1043_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_50(1)
    );
  ram_top_periph_ram_contents_ram_50_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1043_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_50(0)
    );
  ram_top_periph_ram_contents_ram_52_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1057_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_52(7)
    );
  ram_top_periph_ram_contents_ram_52_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1057_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_52(6)
    );
  ram_top_periph_ram_contents_ram_52_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1057_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_52(5)
    );
  ram_top_periph_ram_contents_ram_52_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1057_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_52(4)
    );
  ram_top_periph_ram_contents_ram_52_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1057_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_52(3)
    );
  ram_top_periph_ram_contents_ram_52_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1057_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_52(2)
    );
  ram_top_periph_ram_contents_ram_52_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1057_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_52(1)
    );
  ram_top_periph_ram_contents_ram_52_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1057_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_52(0)
    );
  ram_top_periph_ram_contents_ram_49_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1036_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_49(7)
    );
  ram_top_periph_ram_contents_ram_49_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1036_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_49(6)
    );
  ram_top_periph_ram_contents_ram_49_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1036_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_49(5)
    );
  ram_top_periph_ram_contents_ram_49_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1036_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_49(4)
    );
  ram_top_periph_ram_contents_ram_49_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1036_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_49(3)
    );
  ram_top_periph_ram_contents_ram_49_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1036_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_49(2)
    );
  ram_top_periph_ram_contents_ram_49_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1036_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_49(1)
    );
  ram_top_periph_ram_contents_ram_49_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1036_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_49(0)
    );
  ram_top_periph_ram_contents_ram_48_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1029_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_48(7)
    );
  ram_top_periph_ram_contents_ram_48_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1029_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_48(6)
    );
  ram_top_periph_ram_contents_ram_48_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1029_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_48(5)
    );
  ram_top_periph_ram_contents_ram_48_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1029_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_48(4)
    );
  ram_top_periph_ram_contents_ram_48_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1029_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_48(3)
    );
  ram_top_periph_ram_contents_ram_48_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1029_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_48(2)
    );
  ram_top_periph_ram_contents_ram_48_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1029_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_48(1)
    );
  ram_top_periph_ram_contents_ram_48_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1029_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_48(0)
    );
  ram_top_periph_ram_contents_ram_46_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1015_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_46(7)
    );
  ram_top_periph_ram_contents_ram_46_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1015_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_46(6)
    );
  ram_top_periph_ram_contents_ram_46_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1015_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_46(5)
    );
  ram_top_periph_ram_contents_ram_46_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1015_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_46(4)
    );
  ram_top_periph_ram_contents_ram_46_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1015_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_46(3)
    );
  ram_top_periph_ram_contents_ram_46_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1015_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_46(2)
    );
  ram_top_periph_ram_contents_ram_46_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1015_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_46(1)
    );
  ram_top_periph_ram_contents_ram_46_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1015_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_46(0)
    );
  ram_top_periph_ram_contents_ram_45_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1008_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_45(7)
    );
  ram_top_periph_ram_contents_ram_45_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1008_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_45(6)
    );
  ram_top_periph_ram_contents_ram_45_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1008_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_45(5)
    );
  ram_top_periph_ram_contents_ram_45_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1008_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_45(4)
    );
  ram_top_periph_ram_contents_ram_45_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1008_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_45(3)
    );
  ram_top_periph_ram_contents_ram_45_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1008_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_45(2)
    );
  ram_top_periph_ram_contents_ram_45_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1008_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_45(1)
    );
  ram_top_periph_ram_contents_ram_45_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1008_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_45(0)
    );
  ram_top_periph_ram_contents_ram_47_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1022_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_47(7)
    );
  ram_top_periph_ram_contents_ram_47_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1022_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_47(6)
    );
  ram_top_periph_ram_contents_ram_47_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1022_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_47(5)
    );
  ram_top_periph_ram_contents_ram_47_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1022_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_47(4)
    );
  ram_top_periph_ram_contents_ram_47_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1022_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_47(3)
    );
  ram_top_periph_ram_contents_ram_47_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1022_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_47(2)
    );
  ram_top_periph_ram_contents_ram_47_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1022_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_47(1)
    );
  ram_top_periph_ram_contents_ram_47_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1022_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_47(0)
    );
  ram_top_periph_ram_contents_ram_44_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1001_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_44(7)
    );
  ram_top_periph_ram_contents_ram_44_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1001_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_44(6)
    );
  ram_top_periph_ram_contents_ram_44_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1001_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_44(5)
    );
  ram_top_periph_ram_contents_ram_44_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1001_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_44(4)
    );
  ram_top_periph_ram_contents_ram_44_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1001_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_44(3)
    );
  ram_top_periph_ram_contents_ram_44_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1001_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_44(2)
    );
  ram_top_periph_ram_contents_ram_44_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1001_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_44(1)
    );
  ram_top_periph_ram_contents_ram_44_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n1001_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_44(0)
    );
  ram_top_periph_ram_contents_ram_43_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0994_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_43(7)
    );
  ram_top_periph_ram_contents_ram_43_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0994_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_43(6)
    );
  ram_top_periph_ram_contents_ram_43_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0994_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_43(5)
    );
  ram_top_periph_ram_contents_ram_43_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0994_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_43(4)
    );
  ram_top_periph_ram_contents_ram_43_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0994_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_43(3)
    );
  ram_top_periph_ram_contents_ram_43_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0994_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_43(2)
    );
  ram_top_periph_ram_contents_ram_43_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0994_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_43(1)
    );
  ram_top_periph_ram_contents_ram_43_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0994_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_43(0)
    );
  ram_top_periph_ram_contents_ram_41_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0980_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_41(7)
    );
  ram_top_periph_ram_contents_ram_41_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0980_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_41(6)
    );
  ram_top_periph_ram_contents_ram_41_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0980_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_41(5)
    );
  ram_top_periph_ram_contents_ram_41_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0980_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_41(4)
    );
  ram_top_periph_ram_contents_ram_41_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0980_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_41(3)
    );
  ram_top_periph_ram_contents_ram_41_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0980_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_41(2)
    );
  ram_top_periph_ram_contents_ram_41_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0980_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_41(1)
    );
  ram_top_periph_ram_contents_ram_41_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0980_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_41(0)
    );
  ram_top_periph_ram_contents_ram_40_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0973_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_40(7)
    );
  ram_top_periph_ram_contents_ram_40_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0973_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_40(6)
    );
  ram_top_periph_ram_contents_ram_40_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0973_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_40(5)
    );
  ram_top_periph_ram_contents_ram_40_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0973_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_40(4)
    );
  ram_top_periph_ram_contents_ram_40_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0973_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_40(3)
    );
  ram_top_periph_ram_contents_ram_40_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0973_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_40(2)
    );
  ram_top_periph_ram_contents_ram_40_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0973_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_40(1)
    );
  ram_top_periph_ram_contents_ram_40_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0973_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_40(0)
    );
  ram_top_periph_ram_contents_ram_42_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0987_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_42(7)
    );
  ram_top_periph_ram_contents_ram_42_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0987_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_42(6)
    );
  ram_top_periph_ram_contents_ram_42_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0987_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_42(5)
    );
  ram_top_periph_ram_contents_ram_42_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0987_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_42(4)
    );
  ram_top_periph_ram_contents_ram_42_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0987_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_42(3)
    );
  ram_top_periph_ram_contents_ram_42_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0987_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_42(2)
    );
  ram_top_periph_ram_contents_ram_42_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0987_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_42(1)
    );
  ram_top_periph_ram_contents_ram_42_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0987_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_42(0)
    );
  ram_top_periph_ram_contents_ram_39_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0966_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_39(7)
    );
  ram_top_periph_ram_contents_ram_39_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0966_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_39(6)
    );
  ram_top_periph_ram_contents_ram_39_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0966_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_39(5)
    );
  ram_top_periph_ram_contents_ram_39_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0966_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_39(4)
    );
  ram_top_periph_ram_contents_ram_39_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0966_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_39(3)
    );
  ram_top_periph_ram_contents_ram_39_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0966_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_39(2)
    );
  ram_top_periph_ram_contents_ram_39_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0966_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_39(1)
    );
  ram_top_periph_ram_contents_ram_39_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0966_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_39(0)
    );
  ram_top_periph_ram_contents_ram_38_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0959_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_38(7)
    );
  ram_top_periph_ram_contents_ram_38_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0959_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_38(6)
    );
  ram_top_periph_ram_contents_ram_38_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0959_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_38(5)
    );
  ram_top_periph_ram_contents_ram_38_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0959_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_38(4)
    );
  ram_top_periph_ram_contents_ram_38_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0959_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_38(3)
    );
  ram_top_periph_ram_contents_ram_38_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0959_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_38(2)
    );
  ram_top_periph_ram_contents_ram_38_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0959_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_38(1)
    );
  ram_top_periph_ram_contents_ram_38_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0959_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_38(0)
    );
  ram_top_periph_ram_contents_ram_37_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0952_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_37(7)
    );
  ram_top_periph_ram_contents_ram_37_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0952_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_37(6)
    );
  ram_top_periph_ram_contents_ram_37_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0952_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_37(5)
    );
  ram_top_periph_ram_contents_ram_37_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0952_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_37(4)
    );
  ram_top_periph_ram_contents_ram_37_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0952_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_37(3)
    );
  ram_top_periph_ram_contents_ram_37_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0952_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_37(2)
    );
  ram_top_periph_ram_contents_ram_37_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0952_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_37(1)
    );
  ram_top_periph_ram_contents_ram_37_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0952_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_37(0)
    );
  ram_top_periph_ram_contents_ram_36_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0945_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_36(7)
    );
  ram_top_periph_ram_contents_ram_36_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0945_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_36(6)
    );
  ram_top_periph_ram_contents_ram_36_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0945_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_36(5)
    );
  ram_top_periph_ram_contents_ram_36_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0945_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_36(4)
    );
  ram_top_periph_ram_contents_ram_36_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0945_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_36(3)
    );
  ram_top_periph_ram_contents_ram_36_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0945_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_36(2)
    );
  ram_top_periph_ram_contents_ram_36_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0945_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_36(1)
    );
  ram_top_periph_ram_contents_ram_36_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0945_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_36(0)
    );
  ram_top_periph_ram_contents_ram_35_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0938_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_35(7)
    );
  ram_top_periph_ram_contents_ram_35_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0938_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_35(6)
    );
  ram_top_periph_ram_contents_ram_35_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0938_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_35(5)
    );
  ram_top_periph_ram_contents_ram_35_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0938_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_35(4)
    );
  ram_top_periph_ram_contents_ram_35_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0938_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_35(3)
    );
  ram_top_periph_ram_contents_ram_35_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0938_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_35(2)
    );
  ram_top_periph_ram_contents_ram_35_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0938_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_35(1)
    );
  ram_top_periph_ram_contents_ram_35_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0938_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_35(0)
    );
  ram_top_periph_ram_contents_ram_34_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0931_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_34(7)
    );
  ram_top_periph_ram_contents_ram_34_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0931_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_34(6)
    );
  ram_top_periph_ram_contents_ram_34_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0931_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_34(5)
    );
  ram_top_periph_ram_contents_ram_34_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0931_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_34(4)
    );
  ram_top_periph_ram_contents_ram_34_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0931_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_34(3)
    );
  ram_top_periph_ram_contents_ram_34_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0931_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_34(2)
    );
  ram_top_periph_ram_contents_ram_34_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0931_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_34(1)
    );
  ram_top_periph_ram_contents_ram_34_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0931_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_34(0)
    );
  ram_top_periph_ram_contents_ram_32_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0917_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_32(7)
    );
  ram_top_periph_ram_contents_ram_32_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0917_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_32(6)
    );
  ram_top_periph_ram_contents_ram_32_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0917_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_32(5)
    );
  ram_top_periph_ram_contents_ram_32_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0917_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_32(4)
    );
  ram_top_periph_ram_contents_ram_32_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0917_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_32(3)
    );
  ram_top_periph_ram_contents_ram_32_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0917_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_32(2)
    );
  ram_top_periph_ram_contents_ram_32_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0917_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_32(1)
    );
  ram_top_periph_ram_contents_ram_32_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0917_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_32(0)
    );
  ram_top_periph_ram_contents_ram_31_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0910_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_31(7)
    );
  ram_top_periph_ram_contents_ram_31_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0910_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_31(6)
    );
  ram_top_periph_ram_contents_ram_31_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0910_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_31(5)
    );
  ram_top_periph_ram_contents_ram_31_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0910_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_31(4)
    );
  ram_top_periph_ram_contents_ram_31_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0910_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_31(3)
    );
  ram_top_periph_ram_contents_ram_31_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0910_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_31(2)
    );
  ram_top_periph_ram_contents_ram_31_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0910_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_31(1)
    );
  ram_top_periph_ram_contents_ram_31_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0910_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_31(0)
    );
  ram_top_periph_ram_contents_ram_33_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0924_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_33(7)
    );
  ram_top_periph_ram_contents_ram_33_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0924_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_33(6)
    );
  ram_top_periph_ram_contents_ram_33_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0924_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_33(5)
    );
  ram_top_periph_ram_contents_ram_33_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0924_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_33(4)
    );
  ram_top_periph_ram_contents_ram_33_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0924_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_33(3)
    );
  ram_top_periph_ram_contents_ram_33_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0924_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_33(2)
    );
  ram_top_periph_ram_contents_ram_33_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0924_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_33(1)
    );
  ram_top_periph_ram_contents_ram_33_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0924_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_33(0)
    );
  ram_top_periph_ram_contents_ram_30_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0903_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_30(7)
    );
  ram_top_periph_ram_contents_ram_30_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0903_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_30(6)
    );
  ram_top_periph_ram_contents_ram_30_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0903_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_30(5)
    );
  ram_top_periph_ram_contents_ram_30_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0903_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_30(4)
    );
  ram_top_periph_ram_contents_ram_30_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0903_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_30(3)
    );
  ram_top_periph_ram_contents_ram_30_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0903_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_30(2)
    );
  ram_top_periph_ram_contents_ram_30_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0903_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_30(1)
    );
  ram_top_periph_ram_contents_ram_30_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0903_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_30(0)
    );
  ram_top_periph_ram_contents_ram_29_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0896_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_29(7)
    );
  ram_top_periph_ram_contents_ram_29_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0896_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_29(6)
    );
  ram_top_periph_ram_contents_ram_29_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0896_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_29(5)
    );
  ram_top_periph_ram_contents_ram_29_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0896_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_29(4)
    );
  ram_top_periph_ram_contents_ram_29_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0896_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_29(3)
    );
  ram_top_periph_ram_contents_ram_29_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0896_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_29(2)
    );
  ram_top_periph_ram_contents_ram_29_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0896_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_29(1)
    );
  ram_top_periph_ram_contents_ram_29_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0896_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_29(0)
    );
  ram_top_periph_ram_contents_ram_27_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0882_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_27(7)
    );
  ram_top_periph_ram_contents_ram_27_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0882_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_27(6)
    );
  ram_top_periph_ram_contents_ram_27_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0882_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_27(5)
    );
  ram_top_periph_ram_contents_ram_27_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0882_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_27(4)
    );
  ram_top_periph_ram_contents_ram_27_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0882_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_27(3)
    );
  ram_top_periph_ram_contents_ram_27_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0882_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_27(2)
    );
  ram_top_periph_ram_contents_ram_27_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0882_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_27(1)
    );
  ram_top_periph_ram_contents_ram_27_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0882_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_27(0)
    );
  ram_top_periph_ram_contents_ram_26_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0875_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_26(7)
    );
  ram_top_periph_ram_contents_ram_26_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0875_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_26(6)
    );
  ram_top_periph_ram_contents_ram_26_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0875_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_26(5)
    );
  ram_top_periph_ram_contents_ram_26_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0875_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_26(4)
    );
  ram_top_periph_ram_contents_ram_26_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0875_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_26(3)
    );
  ram_top_periph_ram_contents_ram_26_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0875_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_26(2)
    );
  ram_top_periph_ram_contents_ram_26_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0875_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_26(1)
    );
  ram_top_periph_ram_contents_ram_26_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0875_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_26(0)
    );
  ram_top_periph_ram_contents_ram_28_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0889_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_28(7)
    );
  ram_top_periph_ram_contents_ram_28_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0889_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_28(6)
    );
  ram_top_periph_ram_contents_ram_28_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0889_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_28(5)
    );
  ram_top_periph_ram_contents_ram_28_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0889_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_28(4)
    );
  ram_top_periph_ram_contents_ram_28_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0889_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_28(3)
    );
  ram_top_periph_ram_contents_ram_28_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0889_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_28(2)
    );
  ram_top_periph_ram_contents_ram_28_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0889_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_28(1)
    );
  ram_top_periph_ram_contents_ram_28_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0889_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_28(0)
    );
  ram_top_periph_ram_contents_ram_25_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0868_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_25(7)
    );
  ram_top_periph_ram_contents_ram_25_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0868_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_25(6)
    );
  ram_top_periph_ram_contents_ram_25_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0868_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_25(5)
    );
  ram_top_periph_ram_contents_ram_25_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0868_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_25(4)
    );
  ram_top_periph_ram_contents_ram_25_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0868_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_25(3)
    );
  ram_top_periph_ram_contents_ram_25_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0868_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_25(2)
    );
  ram_top_periph_ram_contents_ram_25_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0868_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_25(1)
    );
  ram_top_periph_ram_contents_ram_25_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0868_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_25(0)
    );
  ram_top_periph_ram_contents_ram_24_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0861_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_24(7)
    );
  ram_top_periph_ram_contents_ram_24_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0861_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_24(6)
    );
  ram_top_periph_ram_contents_ram_24_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0861_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_24(5)
    );
  ram_top_periph_ram_contents_ram_24_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0861_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_24(4)
    );
  ram_top_periph_ram_contents_ram_24_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0861_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_24(3)
    );
  ram_top_periph_ram_contents_ram_24_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0861_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_24(2)
    );
  ram_top_periph_ram_contents_ram_24_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0861_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_24(1)
    );
  ram_top_periph_ram_contents_ram_24_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0861_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_24(0)
    );
  ram_top_periph_ram_contents_ram_22_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0847_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_22(7)
    );
  ram_top_periph_ram_contents_ram_22_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0847_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_22(6)
    );
  ram_top_periph_ram_contents_ram_22_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0847_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_22(5)
    );
  ram_top_periph_ram_contents_ram_22_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0847_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_22(4)
    );
  ram_top_periph_ram_contents_ram_22_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0847_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_22(3)
    );
  ram_top_periph_ram_contents_ram_22_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0847_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_22(2)
    );
  ram_top_periph_ram_contents_ram_22_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0847_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_22(1)
    );
  ram_top_periph_ram_contents_ram_22_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0847_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_22(0)
    );
  ram_top_periph_ram_contents_ram_21_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0840_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_21(7)
    );
  ram_top_periph_ram_contents_ram_21_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0840_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_21(6)
    );
  ram_top_periph_ram_contents_ram_21_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0840_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_21(5)
    );
  ram_top_periph_ram_contents_ram_21_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0840_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_21(4)
    );
  ram_top_periph_ram_contents_ram_21_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0840_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_21(3)
    );
  ram_top_periph_ram_contents_ram_21_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0840_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_21(2)
    );
  ram_top_periph_ram_contents_ram_21_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0840_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_21(1)
    );
  ram_top_periph_ram_contents_ram_21_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0840_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_21(0)
    );
  ram_top_periph_ram_contents_ram_23_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0854_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_23(7)
    );
  ram_top_periph_ram_contents_ram_23_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0854_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_23(6)
    );
  ram_top_periph_ram_contents_ram_23_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0854_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_23(5)
    );
  ram_top_periph_ram_contents_ram_23_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0854_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_23(4)
    );
  ram_top_periph_ram_contents_ram_23_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0854_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_23(3)
    );
  ram_top_periph_ram_contents_ram_23_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0854_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_23(2)
    );
  ram_top_periph_ram_contents_ram_23_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0854_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_23(1)
    );
  ram_top_periph_ram_contents_ram_23_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0854_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_23(0)
    );
  ram_top_periph_ram_contents_ram_20_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0833_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_20(7)
    );
  ram_top_periph_ram_contents_ram_20_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0833_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_20(6)
    );
  ram_top_periph_ram_contents_ram_20_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0833_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_20(5)
    );
  ram_top_periph_ram_contents_ram_20_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0833_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_20(4)
    );
  ram_top_periph_ram_contents_ram_20_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0833_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_20(3)
    );
  ram_top_periph_ram_contents_ram_20_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0833_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_20(2)
    );
  ram_top_periph_ram_contents_ram_20_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0833_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_20(1)
    );
  ram_top_periph_ram_contents_ram_20_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0833_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_20(0)
    );
  ram_top_periph_ram_contents_ram_19_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0826_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_19(7)
    );
  ram_top_periph_ram_contents_ram_19_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0826_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_19(6)
    );
  ram_top_periph_ram_contents_ram_19_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0826_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_19(5)
    );
  ram_top_periph_ram_contents_ram_19_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0826_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_19(4)
    );
  ram_top_periph_ram_contents_ram_19_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0826_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_19(3)
    );
  ram_top_periph_ram_contents_ram_19_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0826_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_19(2)
    );
  ram_top_periph_ram_contents_ram_19_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0826_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_19(1)
    );
  ram_top_periph_ram_contents_ram_19_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0826_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_19(0)
    );
  ram_top_periph_ram_contents_ram_17_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0812_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_17(7)
    );
  ram_top_periph_ram_contents_ram_17_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0812_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_17(6)
    );
  ram_top_periph_ram_contents_ram_17_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0812_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_17(5)
    );
  ram_top_periph_ram_contents_ram_17_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0812_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_17(4)
    );
  ram_top_periph_ram_contents_ram_17_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0812_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_17(3)
    );
  ram_top_periph_ram_contents_ram_17_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0812_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_17(2)
    );
  ram_top_periph_ram_contents_ram_17_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0812_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_17(1)
    );
  ram_top_periph_ram_contents_ram_17_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0812_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_17(0)
    );
  ram_top_periph_ram_contents_ram_16_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0805_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_16(7)
    );
  ram_top_periph_ram_contents_ram_16_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0805_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_16(6)
    );
  ram_top_periph_ram_contents_ram_16_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0805_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_16(5)
    );
  ram_top_periph_ram_contents_ram_16_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0805_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_16(4)
    );
  ram_top_periph_ram_contents_ram_16_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0805_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_16(3)
    );
  ram_top_periph_ram_contents_ram_16_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0805_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_16(2)
    );
  ram_top_periph_ram_contents_ram_16_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0805_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_16(1)
    );
  ram_top_periph_ram_contents_ram_16_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0805_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_16(0)
    );
  ram_top_periph_ram_contents_ram_18_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0819_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_18(7)
    );
  ram_top_periph_ram_contents_ram_18_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0819_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_18(6)
    );
  ram_top_periph_ram_contents_ram_18_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0819_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_18(5)
    );
  ram_top_periph_ram_contents_ram_18_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0819_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_18(4)
    );
  ram_top_periph_ram_contents_ram_18_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0819_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_18(3)
    );
  ram_top_periph_ram_contents_ram_18_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0819_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_18(2)
    );
  ram_top_periph_ram_contents_ram_18_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0819_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_18(1)
    );
  ram_top_periph_ram_contents_ram_18_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0819_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_18(0)
    );
  ram_top_periph_ram_contents_ram_15_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0798_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_15(7)
    );
  ram_top_periph_ram_contents_ram_15_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0798_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_15(6)
    );
  ram_top_periph_ram_contents_ram_15_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0798_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_15(5)
    );
  ram_top_periph_ram_contents_ram_15_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0798_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_15(4)
    );
  ram_top_periph_ram_contents_ram_15_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0798_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_15(3)
    );
  ram_top_periph_ram_contents_ram_15_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0798_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_15(2)
    );
  ram_top_periph_ram_contents_ram_15_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0798_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_15(1)
    );
  ram_top_periph_ram_contents_ram_15_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0798_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_15(0)
    );
  ram_top_periph_ram_contents_ram_14_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0791_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_14(7)
    );
  ram_top_periph_ram_contents_ram_14_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0791_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_14(6)
    );
  ram_top_periph_ram_contents_ram_14_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0791_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_14(5)
    );
  ram_top_periph_ram_contents_ram_14_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0791_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_14(4)
    );
  ram_top_periph_ram_contents_ram_14_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0791_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_14(3)
    );
  ram_top_periph_ram_contents_ram_14_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0791_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_14(2)
    );
  ram_top_periph_ram_contents_ram_14_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0791_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_14(1)
    );
  ram_top_periph_ram_contents_ram_14_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0791_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_14(0)
    );
  ram_top_periph_ram_contents_ram_12_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0777_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_12(7)
    );
  ram_top_periph_ram_contents_ram_12_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0777_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_12(6)
    );
  ram_top_periph_ram_contents_ram_12_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0777_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_12(5)
    );
  ram_top_periph_ram_contents_ram_12_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0777_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_12(4)
    );
  ram_top_periph_ram_contents_ram_12_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0777_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_12(3)
    );
  ram_top_periph_ram_contents_ram_12_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0777_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_12(2)
    );
  ram_top_periph_ram_contents_ram_12_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0777_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_12(1)
    );
  ram_top_periph_ram_contents_ram_12_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0777_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_12(0)
    );
  ram_top_periph_ram_contents_ram_11_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0770_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_11(7)
    );
  ram_top_periph_ram_contents_ram_11_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0770_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_11(6)
    );
  ram_top_periph_ram_contents_ram_11_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0770_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_11(5)
    );
  ram_top_periph_ram_contents_ram_11_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0770_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_11(4)
    );
  ram_top_periph_ram_contents_ram_11_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0770_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_11(3)
    );
  ram_top_periph_ram_contents_ram_11_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0770_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_11(2)
    );
  ram_top_periph_ram_contents_ram_11_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0770_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_11(1)
    );
  ram_top_periph_ram_contents_ram_11_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0770_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_11(0)
    );
  ram_top_periph_ram_contents_ram_13_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0784_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_13(7)
    );
  ram_top_periph_ram_contents_ram_13_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0784_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_13(6)
    );
  ram_top_periph_ram_contents_ram_13_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0784_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_13(5)
    );
  ram_top_periph_ram_contents_ram_13_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0784_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_13(4)
    );
  ram_top_periph_ram_contents_ram_13_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0784_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_13(3)
    );
  ram_top_periph_ram_contents_ram_13_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0784_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_13(2)
    );
  ram_top_periph_ram_contents_ram_13_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0784_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_13(1)
    );
  ram_top_periph_ram_contents_ram_13_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0784_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_13(0)
    );
  ram_top_periph_ram_contents_ram_10_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0763_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_10(7)
    );
  ram_top_periph_ram_contents_ram_10_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0763_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_10(6)
    );
  ram_top_periph_ram_contents_ram_10_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0763_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_10(5)
    );
  ram_top_periph_ram_contents_ram_10_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0763_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_10(4)
    );
  ram_top_periph_ram_contents_ram_10_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0763_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_10(3)
    );
  ram_top_periph_ram_contents_ram_10_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0763_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_10(2)
    );
  ram_top_periph_ram_contents_ram_10_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0763_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_10(1)
    );
  ram_top_periph_ram_contents_ram_10_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0763_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_10(0)
    );
  ram_top_periph_ram_contents_ram_9_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0756_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_9(7)
    );
  ram_top_periph_ram_contents_ram_9_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0756_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_9(6)
    );
  ram_top_periph_ram_contents_ram_9_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0756_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_9(5)
    );
  ram_top_periph_ram_contents_ram_9_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0756_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_9(4)
    );
  ram_top_periph_ram_contents_ram_9_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0756_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_9(3)
    );
  ram_top_periph_ram_contents_ram_9_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0756_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_9(2)
    );
  ram_top_periph_ram_contents_ram_9_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0756_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_9(1)
    );
  ram_top_periph_ram_contents_ram_9_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0756_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_9(0)
    );
  ram_top_periph_ram_contents_ram_7_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0742_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_7(7)
    );
  ram_top_periph_ram_contents_ram_7_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0742_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_7(6)
    );
  ram_top_periph_ram_contents_ram_7_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0742_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_7(5)
    );
  ram_top_periph_ram_contents_ram_7_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0742_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_7(4)
    );
  ram_top_periph_ram_contents_ram_7_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0742_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_7(3)
    );
  ram_top_periph_ram_contents_ram_7_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0742_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_7(2)
    );
  ram_top_periph_ram_contents_ram_7_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0742_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_7(1)
    );
  ram_top_periph_ram_contents_ram_7_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0742_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_7(0)
    );
  ram_top_periph_ram_contents_ram_6_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0735_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_6(7)
    );
  ram_top_periph_ram_contents_ram_6_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0735_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_6(6)
    );
  ram_top_periph_ram_contents_ram_6_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0735_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_6(5)
    );
  ram_top_periph_ram_contents_ram_6_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0735_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_6(4)
    );
  ram_top_periph_ram_contents_ram_6_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0735_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_6(3)
    );
  ram_top_periph_ram_contents_ram_6_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0735_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_6(2)
    );
  ram_top_periph_ram_contents_ram_6_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0735_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_6(1)
    );
  ram_top_periph_ram_contents_ram_6_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0735_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_6(0)
    );
  ram_top_periph_ram_contents_ram_8_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0749_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_8(7)
    );
  ram_top_periph_ram_contents_ram_8_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0749_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_8(6)
    );
  ram_top_periph_ram_contents_ram_8_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0749_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_8(5)
    );
  ram_top_periph_ram_contents_ram_8_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0749_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_8(4)
    );
  ram_top_periph_ram_contents_ram_8_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0749_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_8(3)
    );
  ram_top_periph_ram_contents_ram_8_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0749_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_8(2)
    );
  ram_top_periph_ram_contents_ram_8_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0749_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_8(1)
    );
  ram_top_periph_ram_contents_ram_8_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0749_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_8(0)
    );
  ram_top_periph_ram_contents_ram_5_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0728_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_5(7)
    );
  ram_top_periph_ram_contents_ram_5_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0728_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_5(6)
    );
  ram_top_periph_ram_contents_ram_5_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0728_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_5(5)
    );
  ram_top_periph_ram_contents_ram_5_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0728_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_5(4)
    );
  ram_top_periph_ram_contents_ram_5_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0728_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_5(3)
    );
  ram_top_periph_ram_contents_ram_5_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0728_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_5(2)
    );
  ram_top_periph_ram_contents_ram_5_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0728_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_5(1)
    );
  ram_top_periph_ram_contents_ram_5_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0728_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_5(0)
    );
  ram_top_periph_ram_contents_ram_4_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0721_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_4(7)
    );
  ram_top_periph_ram_contents_ram_4_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0721_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_4(6)
    );
  ram_top_periph_ram_contents_ram_4_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0721_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_4(5)
    );
  ram_top_periph_ram_contents_ram_4_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0721_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_4(4)
    );
  ram_top_periph_ram_contents_ram_4_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0721_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_4(3)
    );
  ram_top_periph_ram_contents_ram_4_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0721_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_4(2)
    );
  ram_top_periph_ram_contents_ram_4_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0721_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_4(1)
    );
  ram_top_periph_ram_contents_ram_4_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0721_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_4(0)
    );
  ram_top_periph_ram_contents_ram_2_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0707_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_2(7)
    );
  ram_top_periph_ram_contents_ram_2_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0707_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_2(6)
    );
  ram_top_periph_ram_contents_ram_2_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0707_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_2(5)
    );
  ram_top_periph_ram_contents_ram_2_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0707_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_2(4)
    );
  ram_top_periph_ram_contents_ram_2_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0707_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_2(3)
    );
  ram_top_periph_ram_contents_ram_2_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0707_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_2(2)
    );
  ram_top_periph_ram_contents_ram_2_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0707_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_2(1)
    );
  ram_top_periph_ram_contents_ram_2_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0707_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_2(0)
    );
  ram_top_periph_ram_contents_ram_3_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0714_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(7),
      Q => ram_top_periph_ram_contents_ram_3(7)
    );
  ram_top_periph_ram_contents_ram_3_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0714_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(6),
      Q => ram_top_periph_ram_contents_ram_3(6)
    );
  ram_top_periph_ram_contents_ram_3_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0714_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(5),
      Q => ram_top_periph_ram_contents_ram_3(5)
    );
  ram_top_periph_ram_contents_ram_3_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0714_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(4),
      Q => ram_top_periph_ram_contents_ram_3(4)
    );
  ram_top_periph_ram_contents_ram_3_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0714_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(3),
      Q => ram_top_periph_ram_contents_ram_3(3)
    );
  ram_top_periph_ram_contents_ram_3_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0714_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(2),
      Q => ram_top_periph_ram_contents_ram_3(2)
    );
  ram_top_periph_ram_contents_ram_3_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0714_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(1),
      Q => ram_top_periph_ram_contents_ram_3(1)
    );
  ram_top_periph_ram_contents_ram_3_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => ram_top_periph_ram_n0714_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RAM_Data(0),
      Q => ram_top_periph_ram_contents_ram_3(0)
    );
  ram_top_gp_ram_Mram_contents_ram8 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => Clk_BUFGP_1,
      D => RAM_Data(7),
      WE => ram_top_cs_gp,
      O => ram_top_gp_ram_n0025(7),
      A(7) => RAM_Addr(7),
      A(6) => RAM_Addr(6),
      A(5) => RAM_Addr(5),
      A(4) => RAM_Addr(4),
      A(3) => RAM_Addr(3),
      A(2) => RAM_Addr(2),
      A(1) => RAM_Addr(1),
      A(0) => RAM_Addr(0)
    );
  ram_top_gp_ram_Mram_contents_ram7 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => Clk_BUFGP_1,
      D => RAM_Data(6),
      WE => ram_top_cs_gp,
      O => ram_top_gp_ram_n0025(6),
      A(7) => RAM_Addr(7),
      A(6) => RAM_Addr(6),
      A(5) => RAM_Addr(5),
      A(4) => RAM_Addr(4),
      A(3) => RAM_Addr(3),
      A(2) => RAM_Addr(2),
      A(1) => RAM_Addr(1),
      A(0) => RAM_Addr(0)
    );
  ram_top_gp_ram_Mram_contents_ram6 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => Clk_BUFGP_1,
      D => RAM_Data(5),
      WE => ram_top_cs_gp,
      O => ram_top_gp_ram_n0025(5),
      A(7) => RAM_Addr(7),
      A(6) => RAM_Addr(6),
      A(5) => RAM_Addr(5),
      A(4) => RAM_Addr(4),
      A(3) => RAM_Addr(3),
      A(2) => RAM_Addr(2),
      A(1) => RAM_Addr(1),
      A(0) => RAM_Addr(0)
    );
  ram_top_gp_ram_Mram_contents_ram5 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => Clk_BUFGP_1,
      D => RAM_Data(4),
      WE => ram_top_cs_gp,
      O => ram_top_gp_ram_n0025(4),
      A(7) => RAM_Addr(7),
      A(6) => RAM_Addr(6),
      A(5) => RAM_Addr(5),
      A(4) => RAM_Addr(4),
      A(3) => RAM_Addr(3),
      A(2) => RAM_Addr(2),
      A(1) => RAM_Addr(1),
      A(0) => RAM_Addr(0)
    );
  ram_top_gp_ram_Mram_contents_ram4 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => Clk_BUFGP_1,
      D => RAM_Data(3),
      WE => ram_top_cs_gp,
      O => ram_top_gp_ram_n0025(3),
      A(7) => RAM_Addr(7),
      A(6) => RAM_Addr(6),
      A(5) => RAM_Addr(5),
      A(4) => RAM_Addr(4),
      A(3) => RAM_Addr(3),
      A(2) => RAM_Addr(2),
      A(1) => RAM_Addr(1),
      A(0) => RAM_Addr(0)
    );
  ram_top_gp_ram_Mram_contents_ram3 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => Clk_BUFGP_1,
      D => RAM_Data(2),
      WE => ram_top_cs_gp,
      O => ram_top_gp_ram_n0025(2),
      A(7) => RAM_Addr(7),
      A(6) => RAM_Addr(6),
      A(5) => RAM_Addr(5),
      A(4) => RAM_Addr(4),
      A(3) => RAM_Addr(3),
      A(2) => RAM_Addr(2),
      A(1) => RAM_Addr(1),
      A(0) => RAM_Addr(0)
    );
  ram_top_gp_ram_Mram_contents_ram2 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => Clk_BUFGP_1,
      D => RAM_Data(1),
      WE => ram_top_cs_gp,
      O => ram_top_gp_ram_n0025(1),
      A(7) => RAM_Addr(7),
      A(6) => RAM_Addr(6),
      A(5) => RAM_Addr(5),
      A(4) => RAM_Addr(4),
      A(3) => RAM_Addr(3),
      A(2) => RAM_Addr(2),
      A(1) => RAM_Addr(1),
      A(0) => RAM_Addr(0)
    );
  ram_top_gp_ram_Mram_contents_ram1 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => Clk_BUFGP_1,
      D => RAM_Data(0),
      WE => ram_top_cs_gp,
      O => ram_top_gp_ram_n0025(0),
      A(7) => RAM_Addr(7),
      A(6) => RAM_Addr(6),
      A(5) => RAM_Addr(5),
      A(4) => RAM_Addr(4),
      A(3) => RAM_Addr(3),
      A(2) => RAM_Addr(2),
      A(1) => RAM_Addr(1),
      A(0) => RAM_Addr(0)
    );
  RS232_PHY_StartTX : FDE
    port map (
      C => Clk_BUFGP_1,
      CE => Reset_IBUF_0,
      D => RS232_PHY_Valid_D_TX_RDY_i_AND_20_o,
      Q => RS232_PHY_StartTX_1094
    );
  RS232_PHY_LineRD_in : FDP
    port map (
      C => Clk_BUFGP_1,
      D => RS232_RX_IBUF_2,
      PRE => RS232_PHY_Receiver_Reset_inv,
      Q => RS232_PHY_LineRD_in_1095
    );
  RS232_PHY_Ack_in : FDP
    port map (
      C => Clk_BUFGP_1,
      D => Valid_d,
      PRE => RS232_PHY_Receiver_Reset_inv,
      Q => RS232_PHY_Ack_in_11
    );
  RS232_PHY_Data_FF_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_D_TX_RDY_i_AND_20_o,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => TX_data(7),
      Q => RS232_PHY_Data_FF(7)
    );
  RS232_PHY_Data_FF_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_D_TX_RDY_i_AND_20_o,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => TX_data(6),
      Q => RS232_PHY_Data_FF(6)
    );
  RS232_PHY_Data_FF_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_D_TX_RDY_i_AND_20_o,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => TX_data(5),
      Q => RS232_PHY_Data_FF(5)
    );
  RS232_PHY_Data_FF_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_D_TX_RDY_i_AND_20_o,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => TX_data(4),
      Q => RS232_PHY_Data_FF(4)
    );
  RS232_PHY_Data_FF_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_D_TX_RDY_i_AND_20_o,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => TX_data(3),
      Q => RS232_PHY_Data_FF(3)
    );
  RS232_PHY_Data_FF_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_D_TX_RDY_i_AND_20_o,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => TX_data(2),
      Q => RS232_PHY_Data_FF(2)
    );
  RS232_PHY_Data_FF_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_D_TX_RDY_i_AND_20_o,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => TX_data(1),
      Q => RS232_PHY_Data_FF(1)
    );
  RS232_PHY_Data_FF_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_D_TX_RDY_i_AND_20_o,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => TX_data(0),
      Q => RS232_PHY_Data_FF(0)
    );
  RS232_PHY_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_3 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RS232_PHY_Transmitter_data_count(1),
      I1 => RS232_PHY_Transmitter_data_count(0),
      I2 => RS232_PHY_Data_FF(6),
      I3 => RS232_PHY_Data_FF(7),
      I4 => RS232_PHY_Data_FF(5),
      I5 => RS232_PHY_Data_FF(4),
      O => RS232_PHY_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_3_1115
    );
  RS232_PHY_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_4 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RS232_PHY_Transmitter_data_count(1),
      I1 => RS232_PHY_Transmitter_data_count(0),
      I2 => RS232_PHY_Data_FF(2),
      I3 => RS232_PHY_Data_FF(3),
      I4 => RS232_PHY_Data_FF(1),
      I5 => RS232_PHY_Data_FF(0),
      O => RS232_PHY_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_4_1116
    );
  RS232_PHY_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_2_f7 : MUXF7
    port map (
      I0 => RS232_PHY_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_4_1116,
      I1 => RS232_PHY_Transmitter_Mmux_data_count_2_Data_7_Mux_6_o_3_1115,
      S => RS232_PHY_Transmitter_data_count(2),
      O => RS232_PHY_Transmitter_data_count_2_Data_7_Mux_6_o
    );
  RS232_PHY_Transmitter_width_count_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Transmitter_en_width_count,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Transmitter_Mcount_width_count7,
      Q => RS232_PHY_Transmitter_width_count(7)
    );
  RS232_PHY_Transmitter_width_count_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Transmitter_en_width_count,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Transmitter_Mcount_width_count6,
      Q => RS232_PHY_Transmitter_width_count(6)
    );
  RS232_PHY_Transmitter_width_count_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Transmitter_en_width_count,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Transmitter_Mcount_width_count5,
      Q => RS232_PHY_Transmitter_width_count(5)
    );
  RS232_PHY_Transmitter_width_count_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Transmitter_en_width_count,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Transmitter_Mcount_width_count4,
      Q => RS232_PHY_Transmitter_width_count(4)
    );
  RS232_PHY_Transmitter_width_count_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Transmitter_en_width_count,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Transmitter_Mcount_width_count3,
      Q => RS232_PHY_Transmitter_width_count(3)
    );
  RS232_PHY_Transmitter_width_count_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Transmitter_en_width_count,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Transmitter_Mcount_width_count2,
      Q => RS232_PHY_Transmitter_width_count(2)
    );
  RS232_PHY_Transmitter_width_count_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Transmitter_en_width_count,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Transmitter_Mcount_width_count1,
      Q => RS232_PHY_Transmitter_width_count(1)
    );
  RS232_PHY_Transmitter_width_count_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Transmitter_en_width_count,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Transmitter_Mcount_width_count,
      Q => RS232_PHY_Transmitter_width_count(0)
    );
  RS232_PHY_Transmitter_data_count_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Transmitter_en_data_count_width_count_7_AND_2_o,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Transmitter_Mcount_data_count2,
      Q => RS232_PHY_Transmitter_data_count(2)
    );
  RS232_PHY_Transmitter_data_count_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Transmitter_en_data_count_width_count_7_AND_2_o,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Transmitter_Mcount_data_count1,
      Q => RS232_PHY_Transmitter_data_count(1)
    );
  RS232_PHY_Transmitter_data_count_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Transmitter_en_data_count_width_count_7_AND_2_o,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Transmitter_Mcount_data_count,
      Q => RS232_PHY_Transmitter_data_count(0)
    );
  RS232_PHY_Transmitter_CurrentState_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Transmitter_CurrentState_FSM_FFd2_In_1146,
      Q => RS232_PHY_Transmitter_CurrentState_FSM_FFd2_1144
    );
  RS232_PHY_Transmitter_CurrentState_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Transmitter_CurrentState_FSM_FFd1_In,
      Q => RS232_PHY_Transmitter_CurrentState_FSM_FFd1_1162
    );
  RS232_PHY_Transmitter_Mcount_width_count_xor_7_Q : XORCY
    port map (
      CI => RS232_PHY_Transmitter_Mcount_width_count_cy(6),
      LI => RS232_PHY_Transmitter_Mcount_width_count_lut(7),
      O => RS232_PHY_Transmitter_Mcount_width_count7
    );
  RS232_PHY_Transmitter_Mcount_width_count_xor_6_Q : XORCY
    port map (
      CI => RS232_PHY_Transmitter_Mcount_width_count_cy(5),
      LI => RS232_PHY_Transmitter_Mcount_width_count_lut(6),
      O => RS232_PHY_Transmitter_Mcount_width_count6
    );
  RS232_PHY_Transmitter_Mcount_width_count_cy_6_Q : MUXCY
    port map (
      CI => RS232_PHY_Transmitter_Mcount_width_count_cy(5),
      DI => ROM_data_10_Q,
      S => RS232_PHY_Transmitter_Mcount_width_count_lut(6),
      O => RS232_PHY_Transmitter_Mcount_width_count_cy(6)
    );
  RS232_PHY_Transmitter_Mcount_width_count_lut_6_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o,
      I1 => RS232_PHY_Transmitter_width_count(6),
      I2 => ROM_data_10_Q,
      O => RS232_PHY_Transmitter_Mcount_width_count_lut(6)
    );
  RS232_PHY_Transmitter_Mcount_width_count_xor_5_Q : XORCY
    port map (
      CI => RS232_PHY_Transmitter_Mcount_width_count_cy(4),
      LI => RS232_PHY_Transmitter_Mcount_width_count_lut(5),
      O => RS232_PHY_Transmitter_Mcount_width_count5
    );
  RS232_PHY_Transmitter_Mcount_width_count_cy_5_Q : MUXCY
    port map (
      CI => RS232_PHY_Transmitter_Mcount_width_count_cy(4),
      DI => ROM_data_10_Q,
      S => RS232_PHY_Transmitter_Mcount_width_count_lut(5),
      O => RS232_PHY_Transmitter_Mcount_width_count_cy(5)
    );
  RS232_PHY_Transmitter_Mcount_width_count_lut_5_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o,
      I1 => RS232_PHY_Transmitter_width_count(5),
      I2 => ROM_data_10_Q,
      O => RS232_PHY_Transmitter_Mcount_width_count_lut(5)
    );
  RS232_PHY_Transmitter_Mcount_width_count_xor_4_Q : XORCY
    port map (
      CI => RS232_PHY_Transmitter_Mcount_width_count_cy(3),
      LI => RS232_PHY_Transmitter_Mcount_width_count_lut(4),
      O => RS232_PHY_Transmitter_Mcount_width_count4
    );
  RS232_PHY_Transmitter_Mcount_width_count_cy_4_Q : MUXCY
    port map (
      CI => RS232_PHY_Transmitter_Mcount_width_count_cy(3),
      DI => ROM_data_10_Q,
      S => RS232_PHY_Transmitter_Mcount_width_count_lut(4),
      O => RS232_PHY_Transmitter_Mcount_width_count_cy(4)
    );
  RS232_PHY_Transmitter_Mcount_width_count_lut_4_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o,
      I1 => RS232_PHY_Transmitter_width_count(4),
      I2 => ROM_data_10_Q,
      O => RS232_PHY_Transmitter_Mcount_width_count_lut(4)
    );
  RS232_PHY_Transmitter_Mcount_width_count_xor_3_Q : XORCY
    port map (
      CI => RS232_PHY_Transmitter_Mcount_width_count_cy(2),
      LI => RS232_PHY_Transmitter_Mcount_width_count_lut(3),
      O => RS232_PHY_Transmitter_Mcount_width_count3
    );
  RS232_PHY_Transmitter_Mcount_width_count_cy_3_Q : MUXCY
    port map (
      CI => RS232_PHY_Transmitter_Mcount_width_count_cy(2),
      DI => ROM_data_10_Q,
      S => RS232_PHY_Transmitter_Mcount_width_count_lut(3),
      O => RS232_PHY_Transmitter_Mcount_width_count_cy(3)
    );
  RS232_PHY_Transmitter_Mcount_width_count_lut_3_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o,
      I1 => RS232_PHY_Transmitter_width_count(3),
      I2 => ROM_data_10_Q,
      O => RS232_PHY_Transmitter_Mcount_width_count_lut(3)
    );
  RS232_PHY_Transmitter_Mcount_width_count_xor_2_Q : XORCY
    port map (
      CI => RS232_PHY_Transmitter_Mcount_width_count_cy(1),
      LI => RS232_PHY_Transmitter_Mcount_width_count_lut(2),
      O => RS232_PHY_Transmitter_Mcount_width_count2
    );
  RS232_PHY_Transmitter_Mcount_width_count_cy_2_Q : MUXCY
    port map (
      CI => RS232_PHY_Transmitter_Mcount_width_count_cy(1),
      DI => ROM_data_10_Q,
      S => RS232_PHY_Transmitter_Mcount_width_count_lut(2),
      O => RS232_PHY_Transmitter_Mcount_width_count_cy(2)
    );
  RS232_PHY_Transmitter_Mcount_width_count_lut_2_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o,
      I1 => RS232_PHY_Transmitter_width_count(2),
      I2 => ROM_data_10_Q,
      O => RS232_PHY_Transmitter_Mcount_width_count_lut(2)
    );
  RS232_PHY_Transmitter_Mcount_width_count_xor_1_Q : XORCY
    port map (
      CI => RS232_PHY_Transmitter_Mcount_width_count_cy(0),
      LI => RS232_PHY_Transmitter_Mcount_width_count_lut(1),
      O => RS232_PHY_Transmitter_Mcount_width_count1
    );
  RS232_PHY_Transmitter_Mcount_width_count_cy_1_Q : MUXCY
    port map (
      CI => RS232_PHY_Transmitter_Mcount_width_count_cy(0),
      DI => ROM_data_10_Q,
      S => RS232_PHY_Transmitter_Mcount_width_count_lut(1),
      O => RS232_PHY_Transmitter_Mcount_width_count_cy(1)
    );
  RS232_PHY_Transmitter_Mcount_width_count_lut_1_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o,
      I1 => RS232_PHY_Transmitter_width_count(1),
      I2 => ROM_data_10_Q,
      O => RS232_PHY_Transmitter_Mcount_width_count_lut(1)
    );
  RS232_PHY_Transmitter_Mcount_width_count_xor_0_Q : XORCY
    port map (
      CI => RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o_inv,
      LI => RS232_PHY_Transmitter_Mcount_width_count_lut(0),
      O => RS232_PHY_Transmitter_Mcount_width_count
    );
  RS232_PHY_Transmitter_Mcount_width_count_cy_0_Q : MUXCY
    port map (
      CI => RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o_inv,
      DI => ROM_data_10_Q,
      S => RS232_PHY_Transmitter_Mcount_width_count_lut(0),
      O => RS232_PHY_Transmitter_Mcount_width_count_cy(0)
    );
  RS232_PHY_Transmitter_Mcount_width_count_lut_0_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o,
      I1 => RS232_PHY_Transmitter_width_count(0),
      I2 => ROM_data_10_Q,
      O => RS232_PHY_Transmitter_Mcount_width_count_lut(0)
    );
  RS232_PHY_Receiver_data_count_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_out,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Receiver_Mcount_data_count2,
      Q => RS232_PHY_Receiver_data_count(2)
    );
  RS232_PHY_Receiver_data_count_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_out,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Receiver_Mcount_data_count1,
      Q => RS232_PHY_Receiver_data_count(1)
    );
  RS232_PHY_Receiver_data_count_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_out,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Receiver_Mcount_data_count,
      Q => RS232_PHY_Receiver_data_count(0)
    );
  RS232_PHY_Receiver_CurrentState_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Receiver_CurrentState_FSM_FFd1_In,
      Q => RS232_PHY_Receiver_CurrentState_FSM_FFd1_1195
    );
  RS232_PHY_Receiver_CurrentState_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Receiver_CurrentState_FSM_FFd2_In_1181,
      Q => RS232_PHY_Receiver_CurrentState_FSM_FFd2_1179
    );
  RS232_PHY_Receiver_width_count_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Receiver_n0066_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q,
      Q => RS232_PHY_Receiver_width_count(7)
    );
  RS232_PHY_Receiver_width_count_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Receiver_n0066_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q,
      Q => RS232_PHY_Receiver_width_count(6)
    );
  RS232_PHY_Receiver_width_count_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Receiver_n0066_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q,
      Q => RS232_PHY_Receiver_width_count(5)
    );
  RS232_PHY_Receiver_width_count_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Receiver_n0066_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q,
      Q => RS232_PHY_Receiver_width_count(4)
    );
  RS232_PHY_Receiver_width_count_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Receiver_n0066_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q,
      Q => RS232_PHY_Receiver_width_count(3)
    );
  RS232_PHY_Receiver_width_count_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Receiver_n0066_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q,
      Q => RS232_PHY_Receiver_width_count(2)
    );
  RS232_PHY_Receiver_width_count_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Receiver_n0066_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q,
      Q => RS232_PHY_Receiver_width_count(1)
    );
  RS232_PHY_Receiver_width_count_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Receiver_n0066_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q,
      Q => RS232_PHY_Receiver_width_count(0)
    );
  RS232_PHY_Shift_i_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_out,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Shift_Result(2),
      Q => RS232_PHY_Shift_i(2)
    );
  RS232_PHY_Shift_i_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_out,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Shift_Result(1),
      Q => RS232_PHY_Shift_i(1)
    );
  RS232_PHY_Shift_i_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_out,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Shift_Result(0),
      Q => RS232_PHY_Shift_i(0)
    );
  RS232_PHY_Shift_Q_7 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_out,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Shift_Q_7_D_MUX_25_o,
      Q => RS232_PHY_Shift_Q(7)
    );
  RS232_PHY_Shift_Q_6 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_out,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Shift_Q_6_D_MUX_26_o,
      Q => RS232_PHY_Shift_Q(6)
    );
  RS232_PHY_Shift_Q_5 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_out,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Shift_Q_5_D_MUX_27_o,
      Q => RS232_PHY_Shift_Q(5)
    );
  RS232_PHY_Shift_Q_4 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_out,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Shift_Q_4_D_MUX_28_o,
      Q => RS232_PHY_Shift_Q(4)
    );
  RS232_PHY_Shift_Q_3 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_out,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Shift_Q_3_D_MUX_29_o,
      Q => RS232_PHY_Shift_Q(3)
    );
  RS232_PHY_Shift_Q_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_out,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Shift_Q_2_D_MUX_30_o,
      Q => RS232_PHY_Shift_Q(2)
    );
  RS232_PHY_Shift_Q_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_out,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Shift_Q_1_D_MUX_31_o,
      Q => RS232_PHY_Shift_Q(1)
    );
  RS232_PHY_Shift_Q_0 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => RS232_PHY_Valid_out,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => RS232_PHY_Shift_Q_0_D_MUX_32_o,
      Q => RS232_PHY_Shift_Q(0)
    );
  controlador_n0445_inv1 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => controlador_CurrentState_FSM_FFd1_175,
      I1 => controlador_CurrentState_FSM_FFd2_174,
      I2 => controlador_CurrentState_FSM_FFd3_173,
      O => controlador_n0445_inv
    );
  controlador_n0435_inv1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => controlador_CurrentState_FSM_FFd1_175,
      I1 => controlador_CurrentState_FSM_FFd2_174,
      I2 => controlador_CurrentState_FSM_FFd3_173,
      O => controlador_n0435_inv
    );
  alu_comp_Mmux_reg_acc_tmp_rs_AS_inv2 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_op(0),
      I1 => ALU_op(4),
      O => alu_comp_Mmux_reg_acc_tmp_rs_AS_inv
    );
  alu_comp_reg_a_7_reg_b_7_equal_11_o71 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => alu_comp_reg_a(7),
      I1 => alu_comp_reg_b(7),
      O => alu_comp_reg_a_7_reg_b_7_equal_11_o8
    );
  alu_comp_reg_a_7_reg_b_7_equal_11_o61 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => alu_comp_reg_a(6),
      I1 => alu_comp_reg_b(6),
      O => alu_comp_reg_a_7_reg_b_7_equal_11_o7
    );
  alu_comp_reg_a_7_reg_b_7_equal_11_o51 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => alu_comp_reg_a(5),
      I1 => alu_comp_reg_b(5),
      O => alu_comp_reg_a_7_reg_b_7_equal_11_o6
    );
  alu_comp_reg_a_7_reg_b_7_equal_11_o41 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => alu_comp_reg_a(4),
      I1 => alu_comp_reg_b(4),
      O => alu_comp_reg_a_7_reg_b_7_equal_11_o5
    );
  alu_comp_reg_a_7_reg_b_7_equal_11_o31 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => alu_comp_reg_a(3),
      I1 => alu_comp_reg_b(3),
      O => alu_comp_reg_a_7_reg_b_7_equal_11_o4
    );
  alu_comp_reg_a_7_reg_b_7_equal_11_o21 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => alu_comp_reg_a(2),
      I1 => alu_comp_reg_b(2),
      O => alu_comp_reg_a_7_reg_b_7_equal_11_o3
    );
  alu_comp_reg_a_7_reg_b_7_equal_11_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => alu_comp_reg_a(1),
      I1 => alu_comp_reg_b(1),
      O => alu_comp_reg_a_7_reg_b_7_equal_11_o2
    );
  alu_comp_Alu_op_4_GND_35_o_Mux_27_o_inv1 : LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
    port map (
      I0 => ALU_op(1),
      I1 => ALU_op(3),
      I2 => controlador_Mmux_ALU_op6_1383,
      I3 => controlador_Mmux_ALU_op91_1378,
      I4 => controlador_Mmux_ALU_op2_1384,
      O => alu_comp_Alu_op_4_GND_35_o_Mux_27_o_inv
    );
  alu_comp_n0276_4_1 : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => ALU_op(4),
      I1 => ALU_op(3),
      I2 => ALU_op(2),
      I3 => ALU_op(1),
      I4 => ALU_op(0),
      O => alu_comp_n0276
    );
  dma_top_data_count_2_GND_47_o_equal_18_o_2_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => dma_top_data_count(1),
      I1 => dma_top_data_count(0),
      O => dma_top_data_count_2_GND_47_o_equal_18_o
    );
  dma_top_data_count_2_RX_Full_AND_272_o1 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => RX_Empty,
      I1 => RX_Full,
      I2 => dma_top_data_count(1),
      O => dma_top_data_count_2_RX_Full_AND_272_o
    );
  dma_top_Mmux_DMA_RQ11 : LUT5
    generic map(
      INIT => X"EEEEEEEF"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd2_321,
      I1 => dma_top_CurrentState_FSM_FFd1_322,
      I2 => dma_top_CurrentState_FSM_FFd3_320,
      I3 => RX_Empty,
      I4 => RX_Full,
      O => DMA_RQ
    );
  controlador_GND_14_o_Reg_instruct_5_equal_13_o111 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => controlador_Reg_instruct(4),
      I1 => controlador_Reg_instruct(3),
      I2 => controlador_Reg_instruct(5),
      O => controlador_GND_14_o_Reg_instruct_5_equal_13_o11_1085
    );
  alu_comp_n0196_inv1 : LUT5
    generic map(
      INIT => X"02000002"
    )
    port map (
      I0 => ALU_op(1),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => ALU_op(0),
      I4 => ALU_op(2),
      O => alu_comp_n0196_inv
    );
  alu_comp_n0171_inv11 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => ALU_op(0),
      I1 => ALU_op(2),
      O => alu_comp_n0171_inv1_1086
    );
  controlador_Mmux_ALU_op91 : LUT6
    generic map(
      INIT => X"AAAAAAAA22200200"
    )
    port map (
      I0 => controlador_n0461_inv1_1091,
      I1 => controlador_Reg_instruct(6),
      I2 => controlador_Reg_instruct(7),
      I3 => controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_4_Q,
      I4 => controlador_Mmux_ALU_op9111,
      I5 => controlador_Mmux_ALU_op221,
      O => ALU_op(4)
    );
  alu_comp_n0245_inv1 : LUT5
    generic map(
      INIT => X"04447644"
    )
    port map (
      I0 => ALU_op(4),
      I1 => ALU_op(3),
      I2 => ALU_op(0),
      I3 => ALU_op(1),
      I4 => ALU_op(2),
      O => alu_comp_n0245_inv
    );
  alu_comp_n0270_inv1 : LUT5
    generic map(
      INIT => X"01000010"
    )
    port map (
      I0 => ALU_op(3),
      I1 => ALU_op(4),
      I2 => ALU_op(0),
      I3 => ALU_op(1),
      I4 => ALU_op(2),
      O => alu_comp_n0270_inv
    );
  alu_comp_Mmux_reg_acc_tmp_A1021 : LUT5
    generic map(
      INIT => X"FFFF8088"
    )
    port map (
      I0 => ALU_op(0),
      I1 => ALU_op(4),
      I2 => alu_comp_reg_a(7),
      I3 => alu_comp_reg_a_7_GND_34_o_LessThan_18_o1_216,
      I4 => alu_comp_Mmux_reg_acc_tmp_A101_1082,
      O => alu_comp_Mmux_reg_acc_tmp_A102_1083
    );
  controlador_CurrentState_FSM_FFd3_In1 : LUT6
    generic map(
      INIT => X"8D9D9D9D88989898"
    )
    port map (
      I0 => controlador_CurrentState_FSM_FFd2_174,
      I1 => controlador_CurrentState_FSM_FFd3_173,
      I2 => controlador_CurrentState_FSM_FFd1_175,
      I3 => controlador_Reg_instruct(6),
      I4 => controlador_Reg_instruct(7),
      I5 => DMA_RQ,
      O => controlador_CurrentState_FSM_FFd3_In
    );
  alu_comp_Mmux_Index_reg_tmp11 : LUT5
    generic map(
      INIT => X"CFCAC0CA"
    )
    port map (
      I0 => alu_comp_Index_reg_reg(0),
      I1 => alu_comp_reg_acc(0),
      I2 => alu_comp_n0281,
      I3 => alu_comp_n0276,
      I4 => RAM_Data_0_LogicTrst5_1363,
      O => alu_comp_Index_reg_tmp(0)
    );
  alu_comp_Mmux_Index_reg_tmp21 : LUT5
    generic map(
      INIT => X"CFCAC0CA"
    )
    port map (
      I0 => alu_comp_Index_reg_reg(1),
      I1 => alu_comp_reg_acc(1),
      I2 => alu_comp_n0281,
      I3 => alu_comp_n0276,
      I4 => RAM_Data_1_LogicTrst5_1356,
      O => alu_comp_Index_reg_tmp(1)
    );
  alu_comp_Mmux_Index_reg_tmp31 : LUT5
    generic map(
      INIT => X"CFCAC0CA"
    )
    port map (
      I0 => alu_comp_Index_reg_reg(2),
      I1 => alu_comp_reg_acc(2),
      I2 => alu_comp_n0281,
      I3 => alu_comp_n0276,
      I4 => RAM_Data_2_LogicTrst5_1357,
      O => alu_comp_Index_reg_tmp(2)
    );
  alu_comp_Mmux_Index_reg_tmp41 : LUT5
    generic map(
      INIT => X"CFCAC0CA"
    )
    port map (
      I0 => alu_comp_Index_reg_reg(3),
      I1 => alu_comp_reg_acc(3),
      I2 => alu_comp_n0281,
      I3 => alu_comp_n0276,
      I4 => RAM_Data_3_LogicTrst5_1358,
      O => alu_comp_Index_reg_tmp(3)
    );
  alu_comp_Mmux_Index_reg_tmp51 : LUT5
    generic map(
      INIT => X"CFCAC0CA"
    )
    port map (
      I0 => alu_comp_Index_reg_reg(4),
      I1 => alu_comp_reg_acc(4),
      I2 => alu_comp_n0281,
      I3 => alu_comp_n0276,
      I4 => RAM_Data_4_LogicTrst5_1359,
      O => alu_comp_Index_reg_tmp(4)
    );
  alu_comp_Mmux_Index_reg_tmp61 : LUT5
    generic map(
      INIT => X"CFCAC0CA"
    )
    port map (
      I0 => alu_comp_Index_reg_reg(5),
      I1 => alu_comp_reg_acc(5),
      I2 => alu_comp_n0281,
      I3 => alu_comp_n0276,
      I4 => RAM_Data_5_LogicTrst5_1360,
      O => alu_comp_Index_reg_tmp(5)
    );
  alu_comp_Mmux_Index_reg_tmp71 : LUT5
    generic map(
      INIT => X"CFCAC0CA"
    )
    port map (
      I0 => alu_comp_Index_reg_reg(6),
      I1 => alu_comp_reg_acc(6),
      I2 => alu_comp_n0281,
      I3 => alu_comp_n0276,
      I4 => RAM_Data_6_LogicTrst5_1361,
      O => alu_comp_Index_reg_tmp(6)
    );
  alu_comp_Mmux_Index_reg_tmp81 : LUT5
    generic map(
      INIT => X"CFCAC0CA"
    )
    port map (
      I0 => alu_comp_Index_reg_reg(7),
      I1 => alu_comp_reg_acc(7),
      I2 => alu_comp_n0281,
      I3 => alu_comp_n0276,
      I4 => RAM_Data_7_LogicTrst5_1362,
      O => alu_comp_Index_reg_tmp(7)
    );
  RAM_Data_0_LogicTrst31 : LUT5
    generic map(
      INIT => X"22272222"
    )
    port map (
      I0 => dma_top_CurrentState_2_GND_56_o_Mux_59_o,
      I1 => dma_top_CurrentState_FSM_FFd1_322,
      I2 => controlador_CurrentState_2_PWR_81_o_Mux_196_o,
      I3 => RAM_OE,
      I4 => alu_comp_Alu_op_4_GND_35_o_Mux_27_o_inv,
      O => RAM_Data_0_LogicTrst3
    );
  controlador_Mmux_ALU_op2211 : LUT5
    generic map(
      INIT => X"20000000"
    )
    port map (
      I0 => controlador_Reg_instruct(6),
      I1 => controlador_Reg_instruct(7),
      I2 => alu_comp_FlagZ_58,
      I3 => controlador_Reg_instruct(0),
      I4 => controlador_GND_14_o_Reg_instruct_5_equal_13_o1,
      O => controlador_Mmux_ALU_op221
    );
  alu_comp_reg_a_7_reg_b_7_LessThan_12_o2 : LUT6
    generic map(
      INIT => X"4D44DD4D4D444D44"
    )
    port map (
      I0 => alu_comp_reg_a(2),
      I1 => alu_comp_reg_b(2),
      I2 => alu_comp_reg_a(1),
      I3 => alu_comp_reg_b(1),
      I4 => alu_comp_reg_a(0),
      I5 => alu_comp_reg_b(0),
      O => alu_comp_reg_a_7_reg_b_7_LessThan_12_o1
    );
  alu_comp_reg_b_7_reg_a_7_LessThan_13_o2 : LUT6
    generic map(
      INIT => X"4D44DD4D4D444D44"
    )
    port map (
      I0 => alu_comp_reg_b(2),
      I1 => alu_comp_reg_a(2),
      I2 => alu_comp_reg_b(1),
      I3 => alu_comp_reg_a(1),
      I4 => alu_comp_reg_b(0),
      I5 => alu_comp_reg_a(0),
      O => alu_comp_reg_b_7_reg_a_7_LessThan_13_o1
    );
  alu_comp_Mmux_reg_acc_tmp_A103311 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => ALU_op(0),
      I1 => ALU_op(2),
      I2 => ALU_op(4),
      O => alu_comp_Mmux_reg_acc_tmp_A10331
    );
  RAM_OELogicTrst11 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => controlador_Reg_instruct_5_1_1371,
      I1 => controlador_Reg_instruct(4),
      I2 => controlador_Reg_instruct(2),
      O => RAM_OELogicTrst1
    );
  controlador_n0461_inv11 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => controlador_CurrentState_FSM_FFd2_174,
      I1 => controlador_CurrentState_FSM_FFd3_173,
      I2 => controlador_CurrentState_FSM_FFd1_175,
      O => controlador_n0461_inv1_1091
    );
  ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT31 : LUT4
    generic map(
      INIT => X"150B"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_49(7),
      I1 => ram_top_periph_ram_contents_ram_49(4),
      I2 => ram_top_periph_ram_contents_ram_49(6),
      I3 => ram_top_periph_ram_contents_ram_49(5),
      O => ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT3
    );
  ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT31 : LUT4
    generic map(
      INIT => X"150B"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_49(3),
      I1 => ram_top_periph_ram_contents_ram_49(0),
      I2 => ram_top_periph_ram_contents_ram_49(2),
      I3 => ram_top_periph_ram_contents_ram_49(1),
      O => ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT3
    );
  ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT111 : LUT4
    generic map(
      INIT => X"455F"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_49(3),
      I1 => ram_top_periph_ram_contents_ram_49(0),
      I2 => ram_top_periph_ram_contents_ram_49(2),
      I3 => ram_top_periph_ram_contents_ram_49(1),
      O => ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT1
    );
  ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT111 : LUT4
    generic map(
      INIT => X"455F"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_49(7),
      I1 => ram_top_periph_ram_contents_ram_49(4),
      I2 => ram_top_periph_ram_contents_ram_49(6),
      I3 => ram_top_periph_ram_contents_ram_49(5),
      O => ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT1
    );
  controlador_Mmux_ALU_op91111 : LUT6
    generic map(
      INIT => X"00000000000020C0"
    )
    port map (
      I0 => controlador_Reg_instruct_0_1_1370,
      I1 => controlador_Reg_instruct_2_1_1372,
      I2 => controlador_Reg_instruct_5_1_1371,
      I3 => controlador_Reg_instruct(1),
      I4 => controlador_Reg_instruct(4),
      I5 => controlador_Reg_instruct(3),
      O => controlador_Mmux_ALU_op9111
    );
  ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT11 : LUT4
    generic map(
      INIT => X"5523"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_49(3),
      I1 => ram_top_periph_ram_contents_ram_49(2),
      I2 => ram_top_periph_ram_contents_ram_49(0),
      I3 => ram_top_periph_ram_contents_ram_49(1),
      O => ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT
    );
  ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT11 : LUT4
    generic map(
      INIT => X"5523"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_49(7),
      I1 => ram_top_periph_ram_contents_ram_49(6),
      I2 => ram_top_periph_ram_contents_ram_49(4),
      I3 => ram_top_periph_ram_contents_ram_49(5),
      O => ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT
    );
  ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT21 : LUT4
    generic map(
      INIT => X"545F"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_49(3),
      I1 => ram_top_periph_ram_contents_ram_49(0),
      I2 => ram_top_periph_ram_contents_ram_49(2),
      I3 => ram_top_periph_ram_contents_ram_49(1),
      O => ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT2
    );
  ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT41 : LUT4
    generic map(
      INIT => X"0145"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_49(0),
      I1 => ram_top_periph_ram_contents_ram_49(1),
      I2 => ram_top_periph_ram_contents_ram_49(2),
      I3 => ram_top_periph_ram_contents_ram_49(3),
      O => ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT4
    );
  ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT51 : LUT4
    generic map(
      INIT => X"150B"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_49(3),
      I1 => ram_top_periph_ram_contents_ram_49(0),
      I2 => ram_top_periph_ram_contents_ram_49(1),
      I3 => ram_top_periph_ram_contents_ram_49(2),
      O => ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT5
    );
  ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT61 : LUT4
    generic map(
      INIT => X"1566"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_49(3),
      I1 => ram_top_periph_ram_contents_ram_49(1),
      I2 => ram_top_periph_ram_contents_ram_49(0),
      I3 => ram_top_periph_ram_contents_ram_49(2),
      O => ram_top_periph_ram_Mram_contents_ram_49_3_GND_67_o_wide_mux_129_OUT6
    );
  ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT21 : LUT4
    generic map(
      INIT => X"545F"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_49(7),
      I1 => ram_top_periph_ram_contents_ram_49(4),
      I2 => ram_top_periph_ram_contents_ram_49(6),
      I3 => ram_top_periph_ram_contents_ram_49(5),
      O => ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT2
    );
  ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT41 : LUT4
    generic map(
      INIT => X"0145"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_49(4),
      I1 => ram_top_periph_ram_contents_ram_49(5),
      I2 => ram_top_periph_ram_contents_ram_49(6),
      I3 => ram_top_periph_ram_contents_ram_49(7),
      O => ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT4
    );
  ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT51 : LUT4
    generic map(
      INIT => X"150B"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_49(7),
      I1 => ram_top_periph_ram_contents_ram_49(4),
      I2 => ram_top_periph_ram_contents_ram_49(5),
      I3 => ram_top_periph_ram_contents_ram_49(6),
      O => ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT5
    );
  ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT61 : LUT4
    generic map(
      INIT => X"1566"
    )
    port map (
      I0 => ram_top_periph_ram_contents_ram_49(7),
      I1 => ram_top_periph_ram_contents_ram_49(5),
      I2 => ram_top_periph_ram_contents_ram_49(4),
      I3 => ram_top_periph_ram_contents_ram_49(6),
      O => ram_top_periph_ram_Mram_contents_ram_49_7_GND_67_o_wide_mux_130_OUT6
    );
  dma_top_Mmux_Valid_D11 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd3_320,
      I1 => dma_top_CurrentState_FSM_FFd2_321,
      I2 => RS232_PHY_Ack_in_11,
      I3 => TX_RDY,
      I4 => dma_top_data_count_2_GND_47_o_equal_18_o,
      I5 => dma_top_CurrentState_FSM_FFd1_322,
      O => Valid_d
    );
  alu_comp_reg_a_7_GND_34_o_LessThan_18_o1 : LUT6
    generic map(
      INIT => X"0000000101010101"
    )
    port map (
      I0 => alu_comp_reg_a(4),
      I1 => alu_comp_reg_a(5),
      I2 => alu_comp_reg_a(6),
      I3 => alu_comp_reg_a(2),
      I4 => alu_comp_reg_a(1),
      I5 => alu_comp_reg_a(3),
      O => alu_comp_reg_a_7_GND_34_o_LessThan_18_o1_216
    );
  ram_top_periph_ram_n0700_inv1 : LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(3),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0700_inv
    );
  ram_top_periph_ram_n0707_inv1 : LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => RAM_Addr(2),
      I1 => RAM_Addr(1),
      I2 => RAM_Addr(4),
      I3 => RAM_Addr(5),
      I4 => RAM_Addr(0),
      I5 => RAM_Addr(3),
      O => ram_top_periph_ram_n0707_inv
    );
  ram_top_periph_ram_n0714_inv1 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => RAM_Addr(2),
      I1 => RAM_Addr(4),
      I2 => RAM_Addr(5),
      I3 => RAM_Addr(1),
      I4 => RAM_Addr(0),
      I5 => RAM_Addr(3),
      O => ram_top_periph_ram_n0714_inv
    );
  ram_top_periph_ram_n1141_inv1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => RAM_Addr(2),
      I1 => RAM_Addr(4),
      I2 => RAM_Addr(5),
      I3 => RAM_Addr(1),
      I4 => RAM_Addr(0),
      I5 => RAM_Addr(3),
      O => ram_top_periph_ram_n1141_inv
    );
  ram_top_periph_ram_n0728_inv1 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(3),
      I2 => RAM_Addr(4),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(0),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0728_inv
    );
  ram_top_periph_ram_n0735_inv1 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => RAM_Addr(0),
      I1 => RAM_Addr(3),
      I2 => RAM_Addr(4),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(1),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0735_inv
    );
  ram_top_periph_ram_n0742_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(3),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0742_inv
    );
  ram_top_periph_ram_n0721_inv1 : LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(2),
      I2 => RAM_Addr(0),
      I3 => RAM_Addr(3),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0721_inv
    );
  ram_top_periph_ram_n0749_inv1 : LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => RAM_Addr(2),
      I1 => RAM_Addr(3),
      I2 => RAM_Addr(4),
      I3 => RAM_Addr(5),
      I4 => RAM_Addr(1),
      I5 => RAM_Addr(0),
      O => ram_top_periph_ram_n0749_inv
    );
  ram_top_periph_ram_n0777_inv1 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => RAM_Addr(4),
      I1 => RAM_Addr(5),
      I2 => RAM_Addr(1),
      I3 => RAM_Addr(3),
      I4 => RAM_Addr(2),
      I5 => RAM_Addr(0),
      O => ram_top_periph_ram_n0777_inv
    );
  ram_top_periph_ram_n0756_inv1 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => RAM_Addr(2),
      I1 => RAM_Addr(4),
      I2 => RAM_Addr(5),
      I3 => RAM_Addr(3),
      I4 => RAM_Addr(0),
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_n0756_inv
    );
  ram_top_periph_ram_n0784_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(4),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(5),
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_n0784_inv
    );
  ram_top_periph_ram_n0763_inv1 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => RAM_Addr(2),
      I1 => RAM_Addr(4),
      I2 => RAM_Addr(5),
      I3 => RAM_Addr(3),
      I4 => RAM_Addr(1),
      I5 => RAM_Addr(0),
      O => ram_top_periph_ram_n0763_inv
    );
  ram_top_periph_ram_n0791_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(2),
      I2 => RAM_Addr(4),
      I3 => RAM_Addr(1),
      I4 => RAM_Addr(5),
      I5 => RAM_Addr(0),
      O => ram_top_periph_ram_n0791_inv
    );
  ram_top_periph_ram_n0770_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(2),
      I3 => RAM_Addr(1),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0770_inv
    );
  ram_top_periph_ram_n0798_inv1 : LUT6
    generic map(
      INIT => X"0200000000000000"
    )
    port map (
      I0 => RAM_Addr(2),
      I1 => RAM_Addr(4),
      I2 => RAM_Addr(5),
      I3 => RAM_Addr(1),
      I4 => RAM_Addr(0),
      I5 => RAM_Addr(3),
      O => ram_top_periph_ram_n0798_inv
    );
  ram_top_periph_ram_n0812_inv1 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(3),
      I2 => RAM_Addr(2),
      I3 => RAM_Addr(0),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0812_inv
    );
  ram_top_periph_ram_n0819_inv1 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => RAM_Addr(0),
      I1 => RAM_Addr(3),
      I2 => RAM_Addr(2),
      I3 => RAM_Addr(1),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0819_inv
    );
  ram_top_periph_ram_n0826_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(4),
      I2 => RAM_Addr(3),
      I3 => RAM_Addr(0),
      I4 => RAM_Addr(2),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0826_inv
    );
  ram_top_periph_ram_n0805_inv1 : LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(4),
      I2 => RAM_Addr(0),
      I3 => RAM_Addr(3),
      I4 => RAM_Addr(2),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0805_inv
    );
  ram_top_periph_ram_n0861_inv1 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(2),
      I3 => RAM_Addr(3),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0861_inv
    );
  ram_top_periph_ram_n0868_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(4),
      I2 => RAM_Addr(1),
      I3 => RAM_Addr(0),
      I4 => RAM_Addr(2),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0868_inv
    );
  ram_top_periph_ram_n0875_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(4),
      I2 => RAM_Addr(0),
      I3 => RAM_Addr(1),
      I4 => RAM_Addr(2),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0875_inv
    );
  ram_top_periph_ram_n0882_inv1 : LUT6
    generic map(
      INIT => X"0200000000000000"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(2),
      I2 => RAM_Addr(5),
      I3 => RAM_Addr(1),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(0),
      O => ram_top_periph_ram_n0882_inv
    );
  ram_top_periph_ram_n0840_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(0),
      I1 => RAM_Addr(4),
      I2 => RAM_Addr(1),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(3),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0840_inv
    );
  ram_top_periph_ram_n0847_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(4),
      I2 => RAM_Addr(0),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(3),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0847_inv
    );
  ram_top_periph_ram_n0854_inv1 : LUT6
    generic map(
      INIT => X"0200000000000000"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(3),
      I2 => RAM_Addr(5),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(0),
      O => ram_top_periph_ram_n0854_inv
    );
  ram_top_periph_ram_n0833_inv1 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(3),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0833_inv
    );
  ram_top_periph_ram_n0889_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(4),
      I2 => RAM_Addr(1),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(0),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0889_inv
    );
  ram_top_periph_ram_n0896_inv1 : LUT6
    generic map(
      INIT => X"0200000000000000"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(1),
      I2 => RAM_Addr(5),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(0),
      O => ram_top_periph_ram_n0896_inv
    );
  ram_top_periph_ram_n0903_inv1 : LUT6
    generic map(
      INIT => X"0200000000000000"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(5),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_n0903_inv
    );
  ram_top_periph_ram_n0910_inv1 : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(3),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0910_inv
    );
  ram_top_periph_ram_n0924_inv1 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(3),
      I2 => RAM_Addr(2),
      I3 => RAM_Addr(5),
      I4 => RAM_Addr(0),
      I5 => RAM_Addr(4),
      O => ram_top_periph_ram_n0924_inv
    );
  ram_top_periph_ram_n0931_inv1 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => RAM_Addr(0),
      I1 => RAM_Addr(3),
      I2 => RAM_Addr(2),
      I3 => RAM_Addr(5),
      I4 => RAM_Addr(1),
      I5 => RAM_Addr(4),
      O => ram_top_periph_ram_n0931_inv
    );
  ram_top_periph_ram_n0938_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(1),
      I2 => RAM_Addr(3),
      I3 => RAM_Addr(0),
      I4 => RAM_Addr(2),
      I5 => RAM_Addr(4),
      O => ram_top_periph_ram_n0938_inv
    );
  ram_top_periph_ram_n0917_inv1 : LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(5),
      I2 => RAM_Addr(0),
      I3 => RAM_Addr(3),
      I4 => RAM_Addr(2),
      I5 => RAM_Addr(4),
      O => ram_top_periph_ram_n0917_inv
    );
  ram_top_periph_ram_n0973_inv1 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(2),
      I3 => RAM_Addr(5),
      I4 => RAM_Addr(3),
      I5 => RAM_Addr(4),
      O => ram_top_periph_ram_n0973_inv
    );
  ram_top_periph_ram_n0980_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(3),
      I2 => RAM_Addr(1),
      I3 => RAM_Addr(0),
      I4 => RAM_Addr(2),
      I5 => RAM_Addr(4),
      O => ram_top_periph_ram_n0980_inv
    );
  ram_top_periph_ram_n0987_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(3),
      I2 => RAM_Addr(0),
      I3 => RAM_Addr(1),
      I4 => RAM_Addr(2),
      I5 => RAM_Addr(4),
      O => ram_top_periph_ram_n0987_inv
    );
  ram_top_periph_ram_n0994_inv1 : LUT6
    generic map(
      INIT => X"0200000000000000"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(2),
      I2 => RAM_Addr(4),
      I3 => RAM_Addr(1),
      I4 => RAM_Addr(0),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0994_inv
    );
  ram_top_periph_ram_n0952_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(1),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(3),
      I5 => RAM_Addr(4),
      O => ram_top_periph_ram_n0952_inv
    );
  ram_top_periph_ram_n0959_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(1),
      I2 => RAM_Addr(0),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(3),
      I5 => RAM_Addr(4),
      O => ram_top_periph_ram_n0959_inv
    );
  ram_top_periph_ram_n0966_inv1 : LUT6
    generic map(
      INIT => X"0200000000000000"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(3),
      I2 => RAM_Addr(4),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(0),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n0966_inv
    );
  ram_top_periph_ram_n0945_inv1 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(3),
      I3 => RAM_Addr(5),
      I4 => RAM_Addr(2),
      I5 => RAM_Addr(4),
      O => ram_top_periph_ram_n0945_inv
    );
  ram_top_periph_ram_n1001_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(3),
      I2 => RAM_Addr(1),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(0),
      I5 => RAM_Addr(4),
      O => ram_top_periph_ram_n1001_inv
    );
  ram_top_periph_ram_n1008_inv1 : LUT6
    generic map(
      INIT => X"0200000000000000"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(1),
      I2 => RAM_Addr(4),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(0),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n1008_inv
    );
  ram_top_periph_ram_n1015_inv1 : LUT6
    generic map(
      INIT => X"0200000000000000"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(4),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(1),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n1015_inv
    );
  ram_top_periph_ram_n1022_inv1 : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(3),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(1),
      I5 => RAM_Addr(4),
      O => ram_top_periph_ram_n1022_inv
    );
  ram_top_periph_ram_n1036_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(4),
      I2 => RAM_Addr(1),
      I3 => RAM_Addr(0),
      I4 => RAM_Addr(3),
      I5 => RAM_Addr(2),
      O => ram_top_periph_ram_n1036_inv
    );
  ram_top_periph_ram_n1043_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(4),
      I2 => RAM_Addr(0),
      I3 => RAM_Addr(1),
      I4 => RAM_Addr(3),
      I5 => RAM_Addr(2),
      O => ram_top_periph_ram_n1043_inv
    );
  ram_top_periph_ram_n1050_inv1 : LUT6
    generic map(
      INIT => X"0200000000000000"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(3),
      I2 => RAM_Addr(2),
      I3 => RAM_Addr(0),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n1050_inv
    );
  ram_top_periph_ram_n1029_inv1 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(3),
      I3 => RAM_Addr(5),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(2),
      O => ram_top_periph_ram_n1029_inv
    );
  ram_top_periph_ram_n1085_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(4),
      I2 => RAM_Addr(1),
      I3 => RAM_Addr(3),
      I4 => RAM_Addr(0),
      I5 => RAM_Addr(2),
      O => ram_top_periph_ram_n1085_inv
    );
  ram_top_periph_ram_n1092_inv1 : LUT6
    generic map(
      INIT => X"0200000000000000"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(1),
      I2 => RAM_Addr(2),
      I3 => RAM_Addr(0),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n1092_inv
    );
  ram_top_periph_ram_n1099_inv1 : LUT6
    generic map(
      INIT => X"0200000000000000"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(2),
      I3 => RAM_Addr(1),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n1099_inv
    );
  ram_top_periph_ram_n1106_inv1 : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(3),
      I3 => RAM_Addr(1),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(2),
      O => ram_top_periph_ram_n1106_inv
    );
  ram_top_periph_ram_n1064_inv1 : LUT6
    generic map(
      INIT => X"0200000000000000"
    )
    port map (
      I0 => RAM_Addr(0),
      I1 => RAM_Addr(1),
      I2 => RAM_Addr(3),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n1064_inv
    );
  ram_top_periph_ram_n1071_inv1 : LUT6
    generic map(
      INIT => X"0200000000000000"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(3),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n1071_inv
    );
  ram_top_periph_ram_n1078_inv1 : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(1),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(3),
      O => ram_top_periph_ram_n1078_inv
    );
  ram_top_periph_ram_n1057_inv1 : LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(4),
      I2 => RAM_Addr(1),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(0),
      I5 => RAM_Addr(3),
      O => ram_top_periph_ram_n1057_inv
    );
  ram_top_periph_ram_n1113_inv1 : LUT6
    generic map(
      INIT => X"0200000000000000"
    )
    port map (
      I0 => RAM_Addr(3),
      I1 => RAM_Addr(1),
      I2 => RAM_Addr(0),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n1113_inv
    );
  ram_top_periph_ram_n1120_inv1 : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(3),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(1),
      O => ram_top_periph_ram_n1120_inv
    );
  ram_top_periph_ram_n1127_inv1 : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(1),
      I2 => RAM_Addr(3),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(0),
      O => ram_top_periph_ram_n1127_inv
    );
  ram_top_periph_ram_n1134_inv1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => RAM_Addr(1),
      I1 => RAM_Addr(0),
      I2 => RAM_Addr(3),
      I3 => RAM_Addr(2),
      I4 => RAM_Addr(4),
      I5 => RAM_Addr(5),
      O => ram_top_periph_ram_n1134_inv
    );
  alu_comp_Mmux_reg_acc_tmp_B11 : LUT5
    generic map(
      INIT => X"00000020"
    )
    port map (
      I0 => alu_comp_reg_b(0),
      I1 => ALU_op(1),
      I2 => ALU_op(3),
      I3 => ALU_op(2),
      I4 => ALU_op(4),
      O => alu_comp_Mmux_reg_acc_tmp_rs_B(0)
    );
  alu_comp_Mmux_reg_acc_tmp_B21 : LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => alu_comp_reg_b(1),
      I1 => ALU_op(2),
      I2 => ALU_op(4),
      I3 => ALU_op(1),
      I4 => ALU_op(3),
      O => alu_comp_Mmux_reg_acc_tmp_rs_B(1)
    );
  alu_comp_Mmux_reg_acc_tmp_B31 : LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => alu_comp_reg_b(2),
      I1 => ALU_op(2),
      I2 => ALU_op(4),
      I3 => ALU_op(1),
      I4 => ALU_op(3),
      O => alu_comp_Mmux_reg_acc_tmp_rs_B(2)
    );
  alu_comp_Mmux_reg_acc_tmp_B41 : LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => alu_comp_reg_b(3),
      I1 => ALU_op(2),
      I2 => ALU_op(4),
      I3 => ALU_op(1),
      I4 => ALU_op(3),
      O => alu_comp_Mmux_reg_acc_tmp_rs_B(3)
    );
  alu_comp_Mmux_reg_acc_tmp_B51 : LUT6
    generic map(
      INIT => X"FFFF002000000020"
    )
    port map (
      I0 => alu_comp_reg_b(4),
      I1 => ALU_op(1),
      I2 => ALU_op(3),
      I3 => ALU_op(2),
      I4 => ALU_op(4),
      I5 => alu_comp_Alu_op_0_mmx_out,
      O => alu_comp_Mmux_reg_acc_tmp_rs_B(4)
    );
  alu_comp_Mmux_reg_acc_tmp_B61 : LUT6
    generic map(
      INIT => X"FFFF002000000020"
    )
    port map (
      I0 => alu_comp_reg_b(5),
      I1 => ALU_op(1),
      I2 => ALU_op(3),
      I3 => ALU_op(2),
      I4 => ALU_op(4),
      I5 => alu_comp_Alu_op_0_mmx_out,
      O => alu_comp_Mmux_reg_acc_tmp_rs_B(5)
    );
  alu_comp_Mmux_reg_acc_tmp_B71 : LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => alu_comp_reg_b(6),
      I1 => ALU_op(2),
      I2 => ALU_op(4),
      I3 => ALU_op(1),
      I4 => ALU_op(3),
      O => alu_comp_Mmux_reg_acc_tmp_rs_B(6)
    );
  alu_comp_Mmux_reg_acc_tmp_B81 : LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => alu_comp_reg_b(7),
      I1 => ALU_op(2),
      I2 => ALU_op(4),
      I3 => ALU_op(1),
      I4 => ALU_op(3),
      O => alu_comp_Mmux_reg_acc_tmp_rs_B(7)
    );
  rom_comp_Mmux_Instruction101 : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => controlador_prog_count(11),
      I1 => controlador_prog_count(10),
      I2 => rom_comp_n0680(5),
      I3 => controlador_prog_count(9),
      I4 => controlador_prog_count(8),
      O => ROM_data_7_Q
    );
  rom_comp_Mmux_Instruction91 : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => controlador_prog_count(11),
      I1 => controlador_prog_count(10),
      I2 => rom_comp_n0680(6),
      I3 => controlador_prog_count(9),
      I4 => controlador_prog_count(8),
      O => ROM_data_6_Q
    );
  rom_comp_Mmux_Instruction81 : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => controlador_prog_count(11),
      I1 => controlador_prog_count(10),
      I2 => rom_comp_n0680(7),
      I3 => controlador_prog_count(9),
      I4 => controlador_prog_count(8),
      O => ROM_data_5_Q
    );
  rom_comp_Mmux_Instruction71 : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => controlador_prog_count(11),
      I1 => controlador_prog_count(10),
      I2 => rom_comp_n0680(8),
      I3 => controlador_prog_count(9),
      I4 => controlador_prog_count(8),
      O => ROM_data_4_Q
    );
  rom_comp_Mmux_Instruction61 : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => controlador_prog_count(11),
      I1 => controlador_prog_count(10),
      I2 => rom_comp_n0680(9),
      I3 => controlador_prog_count(9),
      I4 => controlador_prog_count(8),
      O => ROM_data_3_Q
    );
  rom_comp_Mmux_Instruction51 : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => controlador_prog_count(11),
      I1 => controlador_prog_count(10),
      I2 => rom_comp_n0680(10),
      I3 => controlador_prog_count(9),
      I4 => controlador_prog_count(8),
      O => ROM_data_2_Q
    );
  rom_comp_Mmux_Instruction41 : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => controlador_prog_count(11),
      I1 => controlador_prog_count(10),
      I2 => rom_comp_n0680(11),
      I3 => controlador_prog_count(9),
      I4 => controlador_prog_count(8),
      O => ROM_data_1_Q
    );
  rom_comp_Mmux_Instruction11 : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => controlador_prog_count(11),
      I1 => controlador_prog_count(10),
      I2 => rom_comp_n0680(12),
      I3 => controlador_prog_count(9),
      I4 => controlador_prog_count(8),
      O => ROM_data_0_Q
    );
  RS232_PHY_Transmitter_Mcount_data_count_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => RS232_PHY_Transmitter_data_count(2),
      I1 => RS232_PHY_Transmitter_data_count(0),
      I2 => RS232_PHY_Transmitter_data_count(1),
      O => RS232_PHY_Transmitter_Mcount_data_count2
    );
  RS232_PHY_Transmitter_Mcount_data_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => RS232_PHY_Transmitter_data_count(1),
      I1 => RS232_PHY_Transmitter_data_count(0),
      O => RS232_PHY_Transmitter_Mcount_data_count1
    );
  RS232_PHY_Transmitter_en_data_count_width_count_7_AND_2_o1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o,
      I1 => RS232_PHY_Transmitter_CurrentState_FSM_FFd2_1144,
      I2 => RS232_PHY_Transmitter_CurrentState_FSM_FFd1_1162,
      O => RS232_PHY_Transmitter_en_data_count_width_count_7_AND_2_o
    );
  RS232_PHY_Transmitter_TX1 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => RS232_PHY_Transmitter_CurrentState_FSM_FFd2_1144,
      I1 => RS232_PHY_Transmitter_data_count_2_Data_7_Mux_6_o,
      I2 => RS232_PHY_Transmitter_CurrentState_FSM_FFd1_1162,
      O => RS232_TX_OBUF_13
    );
  RS232_PHY_Transmitter_CurrentState_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o,
      I1 => RS232_PHY_Transmitter_CurrentState_FSM_FFd1_1162,
      I2 => RS232_PHY_Transmitter_CurrentState_FSM_FFd2_1144,
      O => RS232_PHY_Transmitter_CurrentState_FSM_FFd1_In
    );
  RS232_PHY_Transmitter_CurrentState_n0054_0_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => RS232_PHY_Transmitter_CurrentState_FSM_FFd2_1144,
      I1 => RS232_PHY_Transmitter_CurrentState_FSM_FFd1_1162,
      O => TX_RDY
    );
  RS232_PHY_Transmitter_CurrentState_n0054_1_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => RS232_PHY_Transmitter_CurrentState_FSM_FFd1_1162,
      I1 => RS232_PHY_Transmitter_CurrentState_FSM_FFd2_1144,
      O => RS232_PHY_Transmitter_en_width_count
    );
  RS232_PHY_Receiver_Mmux_Code_out11 : LUT5
    generic map(
      INIT => X"88800800"
    )
    port map (
      I0 => RS232_PHY_Receiver_CurrentState_FSM_FFd1_1195,
      I1 => RS232_PHY_LineRD_in_1095,
      I2 => RS232_PHY_Receiver_CurrentState_FSM_FFd2_1179,
      I3 => RS232_PHY_Receiver_width_count_7_GND_10_o_equal_8_o,
      I4 => RS232_PHY_Receiver_width_count_7_PWR_10_o_equal_4_o,
      O => RS232_PHY_Code_out
    );
  RS232_PHY_Receiver_Valid_out1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => RS232_PHY_Receiver_width_count_7_PWR_10_o_equal_4_o,
      I1 => RS232_PHY_Receiver_CurrentState_FSM_FFd1_1195,
      I2 => RS232_PHY_Receiver_CurrentState_FSM_FFd2_1179,
      O => RS232_PHY_Valid_out
    );
  RS232_PHY_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT11 : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => RS232_PHY_Receiver_width_count(0),
      I1 => RS232_PHY_Receiver_CurrentState_FSM_FFd1_1195,
      I2 => RS232_PHY_Receiver_CurrentState_FSM_FFd2_1179,
      I3 => RS232_PHY_Receiver_width_count_7_PWR_10_o_equal_4_o,
      O => RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_0_Q
    );
  RS232_PHY_Receiver_Madd_width_count_7_GND_10_o_add_26_OUT_xor_6_111 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => RS232_PHY_Receiver_width_count(5),
      I1 => RS232_PHY_Receiver_width_count(2),
      I2 => RS232_PHY_Receiver_width_count(3),
      I3 => RS232_PHY_Receiver_width_count(0),
      I4 => RS232_PHY_Receiver_width_count(1),
      I5 => RS232_PHY_Receiver_width_count(4),
      O => RS232_PHY_Receiver_Madd_width_count_7_GND_10_o_add_26_OUT_xor_6_11
    );
  RS232_PHY_Receiver_Mmux_Store_out11 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => RS232_PHY_LineRD_in_1095,
      I1 => RS232_PHY_Receiver_CurrentState_FSM_FFd1_1195,
      I2 => RS232_PHY_Receiver_CurrentState_FSM_FFd2_1179,
      I3 => RS232_PHY_Receiver_width_count_7_GND_10_o_equal_8_o,
      O => RS232_PHY_Fifo_write
    );
  RS232_PHY_Receiver_Madd_width_count_7_GND_10_o_add_26_OUT_xor_5_131 : LUT5
    generic map(
      INIT => X"20000000"
    )
    port map (
      I0 => RS232_PHY_Receiver_width_count(4),
      I1 => RS232_PHY_Receiver_width_count(5),
      I2 => RS232_PHY_Receiver_width_count(2),
      I3 => RS232_PHY_Receiver_width_count(0),
      I4 => RS232_PHY_Receiver_width_count(1),
      O => RS232_PHY_Receiver_Madd_width_count_7_GND_10_o_add_26_OUT_xor_5_13
    );
  RS232_PHY_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT41 : LUT5
    generic map(
      INIT => X"28888888"
    )
    port map (
      I0 => RS232_PHY_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      I1 => RS232_PHY_Receiver_width_count(3),
      I2 => RS232_PHY_Receiver_width_count(0),
      I3 => RS232_PHY_Receiver_width_count(1),
      I4 => RS232_PHY_Receiver_width_count(2),
      O => RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_3_Q
    );
  RS232_PHY_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT52 : LUT6
    generic map(
      INIT => X"2888888888888888"
    )
    port map (
      I0 => RS232_PHY_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      I1 => RS232_PHY_Receiver_width_count(4),
      I2 => RS232_PHY_Receiver_width_count(0),
      I3 => RS232_PHY_Receiver_width_count(1),
      I4 => RS232_PHY_Receiver_width_count(2),
      I5 => RS232_PHY_Receiver_width_count(3),
      O => RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_4_Q
    );
  RS232_PHY_Receiver_width_count_7_GND_10_o_equal_8_o_7_1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => RS232_PHY_Receiver_width_count(6),
      I1 => RS232_PHY_Receiver_width_count(3),
      I2 => RS232_PHY_Receiver_width_count(7),
      I3 => RS232_PHY_Receiver_Madd_width_count_7_GND_10_o_add_26_OUT_xor_5_13,
      O => RS232_PHY_Receiver_width_count_7_GND_10_o_equal_8_o
    );
  RS232_PHY_Receiver_CurrentState_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"8EAA"
    )
    port map (
      I0 => RS232_PHY_Receiver_CurrentState_FSM_FFd1_1195,
      I1 => RS232_PHY_Receiver_CurrentState_FSM_FFd2_1179,
      I2 => RS232_PHY_LineRD_in_1095,
      I3 => RS232_PHY_Receiver_width_count_7_GND_10_o_equal_8_o,
      O => RS232_PHY_Receiver_CurrentState_FSM_FFd1_In
    );
  RS232_PHY_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT511 : LUT4
    generic map(
      INIT => X"15D5"
    )
    port map (
      I0 => RS232_PHY_Receiver_width_count_7_GND_10_o_equal_8_o,
      I1 => RS232_PHY_Receiver_CurrentState_FSM_FFd2_1179,
      I2 => RS232_PHY_Receiver_CurrentState_FSM_FFd1_1195,
      I3 => RS232_PHY_Receiver_width_count_7_PWR_10_o_equal_4_o,
      O => RS232_PHY_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51
    );
  RS232_PHY_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT81 : LUT4
    generic map(
      INIT => X"8288"
    )
    port map (
      I0 => RS232_PHY_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      I1 => RS232_PHY_Receiver_width_count(7),
      I2 => RS232_PHY_Receiver_Madd_width_count_7_GND_10_o_add_26_OUT_xor_6_11,
      I3 => RS232_PHY_Receiver_width_count(6),
      O => RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_7_Q
    );
  RS232_PHY_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT31 : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => RS232_PHY_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      I1 => RS232_PHY_Receiver_width_count(2),
      I2 => RS232_PHY_Receiver_width_count(0),
      I3 => RS232_PHY_Receiver_width_count(1),
      O => RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_2_Q
    );
  RS232_PHY_Receiver_Mcount_data_count_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => RS232_PHY_Receiver_data_count(2),
      I1 => RS232_PHY_Receiver_data_count(0),
      I2 => RS232_PHY_Receiver_data_count(1),
      O => RS232_PHY_Receiver_Mcount_data_count2
    );
  RS232_PHY_Receiver_Mcount_data_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => RS232_PHY_Receiver_data_count(1),
      I1 => RS232_PHY_Receiver_data_count(0),
      O => RS232_PHY_Receiver_Mcount_data_count1
    );
  RS232_PHY_Receiver_n0066_inv1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => RS232_PHY_Receiver_CurrentState_FSM_FFd2_1179,
      I1 => RS232_PHY_Receiver_CurrentState_FSM_FFd1_1195,
      O => RS232_PHY_Receiver_n0066_inv
    );
  RS232_PHY_Shift_Mmux_Q_7_D_MUX_25_o11 : LUT5
    generic map(
      INIT => X"EAAA2AAA"
    )
    port map (
      I0 => RS232_PHY_Shift_Q(7),
      I1 => RS232_PHY_Shift_i(0),
      I2 => RS232_PHY_Shift_i(1),
      I3 => RS232_PHY_Shift_i(2),
      I4 => RS232_PHY_Code_out,
      O => RS232_PHY_Shift_Q_7_D_MUX_25_o
    );
  RS232_PHY_Shift_Mmux_Q_6_D_MUX_26_o11 : LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      I0 => RS232_PHY_Shift_Q(6),
      I1 => RS232_PHY_Shift_i(0),
      I2 => RS232_PHY_Shift_i(1),
      I3 => RS232_PHY_Shift_i(2),
      I4 => RS232_PHY_Code_out,
      O => RS232_PHY_Shift_Q_6_D_MUX_26_o
    );
  RS232_PHY_Shift_Mmux_Q_5_D_MUX_27_o11 : LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      I0 => RS232_PHY_Shift_Q(5),
      I1 => RS232_PHY_Shift_i(1),
      I2 => RS232_PHY_Shift_i(2),
      I3 => RS232_PHY_Shift_i(0),
      I4 => RS232_PHY_Code_out,
      O => RS232_PHY_Shift_Q_5_D_MUX_27_o
    );
  RS232_PHY_Shift_Mmux_Q_4_D_MUX_28_o11 : LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
    port map (
      I0 => RS232_PHY_Shift_Q(4),
      I1 => RS232_PHY_Shift_i(0),
      I2 => RS232_PHY_Shift_i(1),
      I3 => RS232_PHY_Shift_i(2),
      I4 => RS232_PHY_Code_out,
      O => RS232_PHY_Shift_Q_4_D_MUX_28_o
    );
  RS232_PHY_Shift_Mmux_Q_2_D_MUX_30_o11 : LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
    port map (
      I0 => RS232_PHY_Shift_Q(2),
      I1 => RS232_PHY_Shift_i(2),
      I2 => RS232_PHY_Shift_i(0),
      I3 => RS232_PHY_Shift_i(1),
      I4 => RS232_PHY_Code_out,
      O => RS232_PHY_Shift_Q_2_D_MUX_30_o
    );
  RS232_PHY_Shift_Mmux_Q_1_D_MUX_31_o11 : LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
    port map (
      I0 => RS232_PHY_Shift_Q(1),
      I1 => RS232_PHY_Shift_i(2),
      I2 => RS232_PHY_Shift_i(1),
      I3 => RS232_PHY_Shift_i(0),
      I4 => RS232_PHY_Code_out,
      O => RS232_PHY_Shift_Q_1_D_MUX_31_o
    );
  RS232_PHY_Shift_Mmux_Q_0_D_MUX_32_o11 : LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
    port map (
      I0 => RS232_PHY_Shift_Q(0),
      I1 => RS232_PHY_Shift_i(0),
      I2 => RS232_PHY_Shift_i(1),
      I3 => RS232_PHY_Shift_i(2),
      I4 => RS232_PHY_Code_out,
      O => RS232_PHY_Shift_Q_0_D_MUX_32_o
    );
  RS232_PHY_Shift_Mmux_Q_3_D_MUX_29_o11 : LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      I0 => RS232_PHY_Shift_Q(3),
      I1 => RS232_PHY_Shift_i(2),
      I2 => RS232_PHY_Shift_i(1),
      I3 => RS232_PHY_Shift_i(0),
      I4 => RS232_PHY_Code_out,
      O => RS232_PHY_Shift_Q_3_D_MUX_29_o
    );
  RS232_PHY_Shift_Mcount_i_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => RS232_PHY_Shift_i(2),
      I1 => RS232_PHY_Shift_i(0),
      I2 => RS232_PHY_Shift_i(1),
      O => RS232_PHY_Shift_Result(2)
    );
  RS232_PHY_Shift_Mcount_i_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => RS232_PHY_Shift_i(1),
      I1 => RS232_PHY_Shift_i(0),
      O => RS232_PHY_Shift_Result(1)
    );
  alu_comp_Mmux_reg_acc_tmp_A102 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ALU_op(1),
      I1 => controlador_Mmux_ALU_op91_1378,
      O => alu_comp_Mmux_reg_acc_tmp_A10
    );
  alu_comp_Mmux_reg_acc_tmp_A103 : LUT6
    generic map(
      INIT => X"0F0FCCAA00000000"
    )
    port map (
      I0 => alu_comp_reg_acc(3),
      I1 => alu_comp_reg_acc(5),
      I2 => alu_comp_reg_a_7_reg_b_7_equal_11_o5,
      I3 => ALU_op(0),
      I4 => ALU_op(2),
      I5 => alu_comp_Mmux_reg_acc_tmp_A10,
      O => alu_comp_Mmux_reg_acc_tmp_A103_1211
    );
  alu_comp_Mmux_reg_acc_tmp_A104 : LUT6
    generic map(
      INIT => X"FFFF0E0AFFFF0C08"
    )
    port map (
      I0 => alu_comp_reg_b(4),
      I1 => alu_comp_reg_a(4),
      I2 => ALU_op(1),
      I3 => alu_comp_n0171_inv1_1086,
      I4 => alu_comp_Mmux_reg_acc_tmp_A103_1211,
      I5 => alu_comp_Mmux_reg_acc_tmp_A10331,
      O => alu_comp_Mmux_reg_acc_tmp_A104_1212
    );
  alu_comp_Mmux_reg_acc_tmp_A122 : LUT6
    generic map(
      INIT => X"0F0FCCAA00000000"
    )
    port map (
      I0 => alu_comp_reg_acc(4),
      I1 => alu_comp_reg_acc(6),
      I2 => alu_comp_reg_a_7_reg_b_7_equal_11_o6,
      I3 => ALU_op(0),
      I4 => ALU_op(2),
      I5 => alu_comp_Mmux_reg_acc_tmp_A10,
      O => alu_comp_Mmux_reg_acc_tmp_A121
    );
  alu_comp_Mmux_reg_acc_tmp_A123 : LUT6
    generic map(
      INIT => X"FFFF0E0AFFFF0C08"
    )
    port map (
      I0 => alu_comp_reg_b(5),
      I1 => alu_comp_reg_a(5),
      I2 => ALU_op(1),
      I3 => alu_comp_n0171_inv1_1086,
      I4 => alu_comp_Mmux_reg_acc_tmp_A121,
      I5 => alu_comp_Mmux_reg_acc_tmp_A10331,
      O => alu_comp_Mmux_reg_acc_tmp_A122_1214
    );
  alu_comp_Mmux_reg_acc_tmp_A142 : LUT6
    generic map(
      INIT => X"0F0FAACC00000000"
    )
    port map (
      I0 => alu_comp_reg_acc(7),
      I1 => alu_comp_reg_acc(5),
      I2 => alu_comp_reg_a_7_reg_b_7_equal_11_o7,
      I3 => ALU_op(0),
      I4 => ALU_op(2),
      I5 => alu_comp_Mmux_reg_acc_tmp_A10,
      O => alu_comp_Mmux_reg_acc_tmp_A141
    );
  alu_comp_Mmux_reg_acc_tmp_A143 : LUT6
    generic map(
      INIT => X"FFFF0E0AFFFF0C08"
    )
    port map (
      I0 => alu_comp_reg_b(6),
      I1 => alu_comp_reg_a(6),
      I2 => ALU_op(1),
      I3 => alu_comp_n0171_inv1_1086,
      I4 => alu_comp_Mmux_reg_acc_tmp_A141,
      I5 => alu_comp_Mmux_reg_acc_tmp_A10331,
      O => alu_comp_Mmux_reg_acc_tmp_A142_1216
    );
  alu_comp_Mmux_reg_acc_tmp_A42 : LUT6
    generic map(
      INIT => X"0F0FCCAA00000000"
    )
    port map (
      I0 => alu_comp_reg_acc(0),
      I1 => alu_comp_reg_acc(2),
      I2 => alu_comp_reg_a_7_reg_b_7_equal_11_o2,
      I3 => ALU_op(0),
      I4 => ALU_op(2),
      I5 => alu_comp_Mmux_reg_acc_tmp_A10,
      O => alu_comp_Mmux_reg_acc_tmp_A41
    );
  alu_comp_Mmux_reg_acc_tmp_A43 : LUT6
    generic map(
      INIT => X"FFFF0E0AFFFF0C08"
    )
    port map (
      I0 => alu_comp_reg_b(1),
      I1 => alu_comp_reg_a(1),
      I2 => ALU_op(1),
      I3 => alu_comp_n0171_inv1_1086,
      I4 => alu_comp_Mmux_reg_acc_tmp_A41,
      I5 => alu_comp_Mmux_reg_acc_tmp_A10331,
      O => alu_comp_Mmux_reg_acc_tmp_A42_1218
    );
  alu_comp_Mmux_reg_acc_tmp_A62 : LUT6
    generic map(
      INIT => X"0F0FCCAA00000000"
    )
    port map (
      I0 => alu_comp_reg_acc(1),
      I1 => alu_comp_reg_acc(3),
      I2 => alu_comp_reg_a_7_reg_b_7_equal_11_o3,
      I3 => ALU_op(0),
      I4 => ALU_op(2),
      I5 => alu_comp_Mmux_reg_acc_tmp_A10,
      O => alu_comp_Mmux_reg_acc_tmp_A61
    );
  alu_comp_Mmux_reg_acc_tmp_A63 : LUT6
    generic map(
      INIT => X"FFFF0E0AFFFF0C08"
    )
    port map (
      I0 => alu_comp_reg_b(2),
      I1 => alu_comp_reg_a(2),
      I2 => ALU_op(1),
      I3 => alu_comp_n0171_inv1_1086,
      I4 => alu_comp_Mmux_reg_acc_tmp_A61,
      I5 => alu_comp_Mmux_reg_acc_tmp_A10331,
      O => alu_comp_Mmux_reg_acc_tmp_A62_1220
    );
  alu_comp_Mmux_reg_acc_tmp_A82 : LUT6
    generic map(
      INIT => X"0F0FCCAA00000000"
    )
    port map (
      I0 => alu_comp_reg_acc(2),
      I1 => alu_comp_reg_acc(4),
      I2 => alu_comp_reg_a_7_reg_b_7_equal_11_o4,
      I3 => ALU_op(0),
      I4 => ALU_op(2),
      I5 => alu_comp_Mmux_reg_acc_tmp_A10,
      O => alu_comp_Mmux_reg_acc_tmp_A81
    );
  alu_comp_Mmux_reg_acc_tmp_A83 : LUT6
    generic map(
      INIT => X"FFFF0E0AFFFF0C08"
    )
    port map (
      I0 => alu_comp_reg_b(3),
      I1 => alu_comp_reg_a(3),
      I2 => ALU_op(1),
      I3 => alu_comp_n0171_inv1_1086,
      I4 => alu_comp_Mmux_reg_acc_tmp_A81,
      I5 => alu_comp_Mmux_reg_acc_tmp_A10331,
      O => alu_comp_Mmux_reg_acc_tmp_A82_1222
    );
  RAM_Data_0_LogicTrst1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => controlador_CurrentState_2_PWR_81_o_Mux_196_o,
      I1 => controlador_Reg_operand(0),
      I2 => Data_out(0),
      I3 => dma_top_CurrentState_2_GND_56_o_Mux_59_o,
      O => RAM_Data_0_LogicTrst
    );
  RAM_Data_0_LogicTrst2 : LUT4
    generic map(
      INIT => X"FFCE"
    )
    port map (
      I0 => alu_comp_reg_acc(0),
      I1 => RAM_Data_0_LogicTrst,
      I2 => alu_comp_Alu_op_4_GND_35_o_Mux_27_o_inv,
      I3 => RAM_Data_0_LogicTrst3,
      O => RAM_Data_0_LogicTrst1_1224
    );
  RAM_Data_7_LogicTrst1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => controlador_CurrentState_2_PWR_81_o_Mux_196_o,
      I1 => controlador_Reg_operand(7),
      I2 => Data_out(7),
      I3 => dma_top_CurrentState_2_GND_56_o_Mux_59_o,
      O => RAM_Data_7_LogicTrst
    );
  RAM_Data_7_LogicTrst2 : LUT4
    generic map(
      INIT => X"FFCE"
    )
    port map (
      I0 => alu_comp_reg_acc(7),
      I1 => RAM_Data_7_LogicTrst,
      I2 => alu_comp_Alu_op_4_GND_35_o_Mux_27_o_inv,
      I3 => RAM_Data_0_LogicTrst3,
      O => RAM_Data_7_LogicTrst1_1226
    );
  RAM_Data_6_LogicTrst1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => controlador_CurrentState_2_PWR_81_o_Mux_196_o,
      I1 => controlador_Reg_operand(6),
      I2 => Data_out(6),
      I3 => dma_top_CurrentState_2_GND_56_o_Mux_59_o,
      O => RAM_Data_6_LogicTrst
    );
  RAM_Data_6_LogicTrst2 : LUT4
    generic map(
      INIT => X"FFCE"
    )
    port map (
      I0 => alu_comp_reg_acc(6),
      I1 => RAM_Data_6_LogicTrst,
      I2 => alu_comp_Alu_op_4_GND_35_o_Mux_27_o_inv,
      I3 => RAM_Data_0_LogicTrst3,
      O => RAM_Data_6_LogicTrst1_1228
    );
  RAM_Data_5_LogicTrst1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => controlador_CurrentState_2_PWR_81_o_Mux_196_o,
      I1 => controlador_Reg_operand(5),
      I2 => Data_out(5),
      I3 => dma_top_CurrentState_2_GND_56_o_Mux_59_o,
      O => RAM_Data_5_LogicTrst
    );
  RAM_Data_5_LogicTrst2 : LUT4
    generic map(
      INIT => X"FFCE"
    )
    port map (
      I0 => alu_comp_reg_acc(5),
      I1 => RAM_Data_5_LogicTrst,
      I2 => alu_comp_Alu_op_4_GND_35_o_Mux_27_o_inv,
      I3 => RAM_Data_0_LogicTrst3,
      O => RAM_Data_5_LogicTrst1_1230
    );
  RAM_Data_4_LogicTrst1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => controlador_CurrentState_2_PWR_81_o_Mux_196_o,
      I1 => controlador_Reg_operand(4),
      I2 => Data_out(4),
      I3 => dma_top_CurrentState_2_GND_56_o_Mux_59_o,
      O => RAM_Data_4_LogicTrst
    );
  RAM_Data_4_LogicTrst2 : LUT4
    generic map(
      INIT => X"FFCE"
    )
    port map (
      I0 => alu_comp_reg_acc(4),
      I1 => RAM_Data_4_LogicTrst,
      I2 => alu_comp_Alu_op_4_GND_35_o_Mux_27_o_inv,
      I3 => RAM_Data_0_LogicTrst3,
      O => RAM_Data_4_LogicTrst1_1232
    );
  RAM_Data_3_LogicTrst1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => controlador_CurrentState_2_PWR_81_o_Mux_196_o,
      I1 => controlador_Reg_operand(3),
      I2 => Data_out(3),
      I3 => dma_top_CurrentState_2_GND_56_o_Mux_59_o,
      O => RAM_Data_3_LogicTrst
    );
  RAM_Data_3_LogicTrst2 : LUT4
    generic map(
      INIT => X"FFCE"
    )
    port map (
      I0 => alu_comp_reg_acc(3),
      I1 => RAM_Data_3_LogicTrst,
      I2 => alu_comp_Alu_op_4_GND_35_o_Mux_27_o_inv,
      I3 => RAM_Data_0_LogicTrst3,
      O => RAM_Data_3_LogicTrst1_1234
    );
  RAM_Data_2_LogicTrst1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => controlador_CurrentState_2_PWR_81_o_Mux_196_o,
      I1 => controlador_Reg_operand(2),
      I2 => Data_out(2),
      I3 => dma_top_CurrentState_2_GND_56_o_Mux_59_o,
      O => RAM_Data_2_LogicTrst
    );
  RAM_Data_2_LogicTrst2 : LUT4
    generic map(
      INIT => X"FFCE"
    )
    port map (
      I0 => alu_comp_reg_acc(2),
      I1 => RAM_Data_2_LogicTrst,
      I2 => alu_comp_Alu_op_4_GND_35_o_Mux_27_o_inv,
      I3 => RAM_Data_0_LogicTrst3,
      O => RAM_Data_2_LogicTrst1_1236
    );
  RAM_Data_1_LogicTrst1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => controlador_CurrentState_2_PWR_81_o_Mux_196_o,
      I1 => controlador_Reg_operand(1),
      I2 => Data_out(1),
      I3 => dma_top_CurrentState_2_GND_56_o_Mux_59_o,
      O => RAM_Data_1_LogicTrst
    );
  RAM_Data_1_LogicTrst2 : LUT4
    generic map(
      INIT => X"FFCE"
    )
    port map (
      I0 => alu_comp_reg_acc(1),
      I1 => RAM_Data_1_LogicTrst,
      I2 => alu_comp_Alu_op_4_GND_35_o_Mux_27_o_inv,
      I3 => RAM_Data_0_LogicTrst3,
      O => RAM_Data_1_LogicTrst1_1238
    );
  controlador_Mmux_ALU_op4_SW0 : LUT5
    generic map(
      INIT => X"FFFEFF01"
    )
    port map (
      I0 => controlador_Reg_instruct(1),
      I1 => controlador_Reg_instruct(4),
      I2 => controlador_Reg_instruct(3),
      I3 => controlador_Reg_instruct(2),
      I4 => controlador_Reg_instruct(0),
      O => N2
    );
  controlador_Mmux_ALU_op4 : LUT6
    generic map(
      INIT => X"1113000000020000"
    )
    port map (
      I0 => controlador_Reg_instruct(7),
      I1 => controlador_Reg_instruct(6),
      I2 => controlador_Reg_instruct(5),
      I3 => N2,
      I4 => controlador_n0461_inv1_1091,
      I5 => controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_1_Q,
      O => ALU_op(1)
    );
  alu_comp_reg_a_7_reg_b_7_LessThan_12_o11 : LUT3
    generic map(
      INIT => X"B2"
    )
    port map (
      I0 => alu_comp_reg_b(3),
      I1 => alu_comp_reg_a(3),
      I2 => alu_comp_reg_a_7_reg_b_7_LessThan_12_o1,
      O => alu_comp_reg_a_7_reg_b_7_LessThan_12_o11_1240
    );
  alu_comp_reg_a_7_reg_b_7_LessThan_12_o12 : LUT5
    generic map(
      INIT => X"B2BB22B2"
    )
    port map (
      I0 => alu_comp_reg_b(5),
      I1 => alu_comp_reg_a(5),
      I2 => alu_comp_reg_b(4),
      I3 => alu_comp_reg_a(4),
      I4 => alu_comp_reg_a_7_reg_b_7_LessThan_12_o11_1240,
      O => alu_comp_reg_a_7_reg_b_7_LessThan_12_o2_226
    );
  alu_comp_reg_b_7_reg_a_7_LessThan_13_o11 : LUT3
    generic map(
      INIT => X"B2"
    )
    port map (
      I0 => alu_comp_reg_b_7_reg_a_7_LessThan_13_o1,
      I1 => alu_comp_reg_b(3),
      I2 => alu_comp_reg_a(3),
      O => alu_comp_reg_b_7_reg_a_7_LessThan_13_o11_1241
    );
  alu_comp_reg_b_7_reg_a_7_LessThan_13_o12 : LUT5
    generic map(
      INIT => X"B2BB22B2"
    )
    port map (
      I0 => alu_comp_reg_a(5),
      I1 => alu_comp_reg_b(5),
      I2 => alu_comp_reg_a(4),
      I3 => alu_comp_reg_b(4),
      I4 => alu_comp_reg_b_7_reg_a_7_LessThan_13_o11_1241,
      O => alu_comp_reg_b_7_reg_a_7_LessThan_13_o2_217
    );
  alu_comp_Mmux_FlagZ_tmp11 : LUT5
    generic map(
      INIT => X"B2BB22B2"
    )
    port map (
      I0 => alu_comp_reg_a(7),
      I1 => alu_comp_reg_b(7),
      I2 => alu_comp_reg_b_7_reg_a_7_LessThan_13_o2_217,
      I3 => alu_comp_reg_b(6),
      I4 => alu_comp_reg_a(6),
      O => alu_comp_Mmux_FlagZ_tmp1
    );
  alu_comp_Mmux_FlagZ_tmp12 : LUT5
    generic map(
      INIT => X"B2BB22B2"
    )
    port map (
      I0 => alu_comp_reg_b(7),
      I1 => alu_comp_reg_a(7),
      I2 => alu_comp_reg_b(6),
      I3 => alu_comp_reg_a(6),
      I4 => alu_comp_reg_a_7_reg_b_7_LessThan_12_o2_226,
      O => alu_comp_Mmux_FlagZ_tmp11_1243
    );
  alu_comp_Mmux_FlagZ_tmp13 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => alu_comp_reg_acc(6),
      I1 => alu_comp_reg_acc(7),
      I2 => alu_comp_reg_acc(5),
      I3 => alu_comp_reg_acc(4),
      I4 => alu_comp_reg_acc(3),
      I5 => alu_comp_reg_acc(2),
      O => alu_comp_Mmux_FlagZ_tmp12_1244
    );
  alu_comp_Mmux_FlagZ_tmp14 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => alu_comp_reg_acc(0),
      I1 => alu_comp_Mmux_FlagZ_tmp12_1244,
      I2 => alu_comp_reg_acc(1),
      O => alu_comp_Mmux_FlagZ_tmp13_1245
    );
  alu_comp_Mmux_FlagZ_tmp17 : LUT5
    generic map(
      INIT => X"EAAA2AAA"
    )
    port map (
      I0 => alu_comp_Mmux_FlagZ_tmp13_1245,
      I1 => ALU_op(2),
      I2 => ALU_op(0),
      I3 => ALU_op(1),
      I4 => alu_comp_Mmux_FlagZ_tmp15_1247,
      O => alu_comp_Mmux_FlagZ_tmp16_1248
    );
  alu_comp_Mmux_FlagZ_tmp18 : LUT6
    generic map(
      INIT => X"7775575522200200"
    )
    port map (
      I0 => ALU_op(4),
      I1 => ALU_op(2),
      I2 => ALU_op(0),
      I3 => alu_comp_Mmux_FlagZ_tmp11_1243,
      I4 => alu_comp_Mmux_FlagZ_tmp1,
      I5 => alu_comp_Mmux_FlagZ_tmp16_1248,
      O => alu_comp_FlagZ_tmp
    );
  RAM_Addr_0_LogicTrst2 : LUT6
    generic map(
      INIT => X"FCAA00000CAA0000"
    )
    port map (
      I0 => alu_comp_Index_Reg(0),
      I1 => controlador_Reg_operand(0),
      I2 => controlador_Reg_instruct(0),
      I3 => controlador_Reg_instruct(2),
      I4 => controlador_Reg_instruct(5),
      I5 => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_0_Q,
      O => RAM_Addr_0_LogicTrst1_1250
    );
  RAM_Addr_7_LogicTrst2 : LUT6
    generic map(
      INIT => X"AAA22A2288800800"
    )
    port map (
      I0 => controlador_Reg_instruct(5),
      I1 => controlador_Reg_instruct(2),
      I2 => controlador_Reg_instruct(0),
      I3 => controlador_Reg_operand(7),
      I4 => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_7_Q,
      I5 => alu_comp_Index_Reg(7),
      O => RAM_Addr_7_LogicTrst1
    );
  RAM_Addr_6_LogicTrst2 : LUT6
    generic map(
      INIT => X"AAA22A2288800800"
    )
    port map (
      I0 => controlador_Reg_instruct(5),
      I1 => controlador_Reg_instruct(2),
      I2 => controlador_Reg_instruct(0),
      I3 => controlador_Reg_operand(6),
      I4 => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_6_Q,
      I5 => alu_comp_Index_Reg(6),
      O => RAM_Addr_6_LogicTrst1
    );
  RAM_Addr_5_LogicTrst2 : LUT6
    generic map(
      INIT => X"FCAA00000CAA0000"
    )
    port map (
      I0 => alu_comp_Index_Reg(5),
      I1 => controlador_Reg_operand(5),
      I2 => controlador_Reg_instruct(0),
      I3 => controlador_Reg_instruct(2),
      I4 => controlador_Reg_instruct(5),
      I5 => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_5_Q,
      O => RAM_Addr_5_LogicTrst1_1254
    );
  RAM_Addr_4_LogicTrst2 : LUT6
    generic map(
      INIT => X"FCAA00000CAA0000"
    )
    port map (
      I0 => alu_comp_Index_Reg(4),
      I1 => controlador_Reg_operand(4),
      I2 => controlador_Reg_instruct(0),
      I3 => controlador_Reg_instruct(2),
      I4 => controlador_Reg_instruct(5),
      I5 => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_4_Q,
      O => RAM_Addr_4_LogicTrst1_1256
    );
  RAM_Addr_1_LogicTrst2 : LUT6
    generic map(
      INIT => X"FCAA00000CAA0000"
    )
    port map (
      I0 => alu_comp_Index_Reg(1),
      I1 => controlador_Reg_operand(1),
      I2 => controlador_Reg_instruct(0),
      I3 => controlador_Reg_instruct(2),
      I4 => controlador_Reg_instruct(5),
      I5 => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_1_Q,
      O => RAM_Addr_1_LogicTrst1_1258
    );
  controlador_Mmux_ALU_op2_SW0 : LUT5
    generic map(
      INIT => X"FFFF3FA9"
    )
    port map (
      I0 => controlador_Reg_instruct(1),
      I1 => controlador_Reg_instruct(4),
      I2 => controlador_Reg_instruct(3),
      I3 => controlador_Reg_instruct(2),
      I4 => controlador_Reg_instruct(5),
      O => N4
    );
  controlador_Mmux_ALU_op2 : LUT6
    generic map(
      INIT => X"AAAAAAAA02220020"
    )
    port map (
      I0 => controlador_n0461_inv1_1091,
      I1 => controlador_Reg_instruct(6),
      I2 => controlador_Reg_instruct(7),
      I3 => N4,
      I4 => controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_0_Q,
      I5 => controlador_Mmux_ALU_op221,
      O => ALU_op(0)
    );
  controlador_Mmux_ALU_op6_SW0 : LUT6
    generic map(
      INIT => X"FEFEFDFF3F3F54FD"
    )
    port map (
      I0 => controlador_Reg_instruct(1),
      I1 => controlador_Reg_instruct(4),
      I2 => controlador_Reg_instruct(3),
      I3 => controlador_Reg_instruct(0),
      I4 => controlador_Reg_instruct(2),
      I5 => controlador_Reg_instruct(5),
      O => N6
    );
  controlador_Mmux_ALU_op6 : LUT6
    generic map(
      INIT => X"AAAAAAAA02220020"
    )
    port map (
      I0 => controlador_n0461_inv1_1091,
      I1 => controlador_Reg_instruct(6),
      I2 => controlador_Reg_instruct(7),
      I3 => N6,
      I4 => controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_2_Q,
      I5 => controlador_Mmux_ALU_op221,
      O => ALU_op(2)
    );
  alu_comp_Mmux_reg_acc_tmp_A161 : LUT5
    generic map(
      INIT => X"FFFF88A8"
    )
    port map (
      I0 => ALU_op(4),
      I1 => alu_comp_reg_a(7),
      I2 => ALU_op(0),
      I3 => alu_comp_reg_a_7_GND_34_o_LessThan_18_o1_216,
      I4 => alu_comp_Mmux_reg_acc_tmp_A101_1082,
      O => alu_comp_Mmux_reg_acc_tmp_A16
    );
  alu_comp_Mmux_reg_acc_tmp_A162 : LUT6
    generic map(
      INIT => X"4440444454404444"
    )
    port map (
      I0 => ALU_op(1),
      I1 => alu_comp_reg_a(7),
      I2 => alu_comp_reg_b(7),
      I3 => ALU_op(0),
      I4 => ALU_op(2),
      I5 => ALU_op(4),
      O => alu_comp_Mmux_reg_acc_tmp_A161_1263
    );
  alu_comp_Mmux_reg_acc_tmp_A163 : LUT6
    generic map(
      INIT => X"00000000303000A0"
    )
    port map (
      I0 => alu_comp_reg_acc(6),
      I1 => alu_comp_reg_a_7_reg_b_7_equal_11_o8,
      I2 => ALU_op(1),
      I3 => ALU_op(0),
      I4 => ALU_op(2),
      I5 => ALU_op(4),
      O => alu_comp_Mmux_reg_acc_tmp_A162_1264
    );
  RAM_OELogicTrst_SW0 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => controlador_Reg_instruct(6),
      I1 => controlador_Reg_instruct(7),
      I2 => controlador_CurrentState_FSM_FFd3_173,
      I3 => controlador_CurrentState_FSM_FFd1_175,
      O => N8
    );
  RAM_OELogicTrst : LUT6
    generic map(
      INIT => X"FFFFFDFFFDFFFDFF"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd3_320,
      I1 => dma_top_CurrentState_FSM_FFd1_322,
      I2 => dma_top_CurrentState_FSM_FFd2_321,
      I3 => dma_top_data_count_2_GND_47_o_equal_18_o,
      I4 => RAM_OELogicTrst1,
      I5 => N8,
      O => RAM_OE
    );
  controlador_Mmux_CurrentState_2_PWR_81_o_Mux_196_o1_SW0 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => controlador_Reg_instruct(2),
      I1 => controlador_Reg_instruct(7),
      I2 => controlador_Reg_instruct(5),
      I3 => controlador_Reg_instruct(6),
      O => N10
    );
  controlador_Mmux_CurrentState_2_PWR_81_o_Mux_196_o1 : LUT6
    generic map(
      INIT => X"8888888800000080"
    )
    port map (
      I0 => controlador_CurrentState_FSM_FFd3_173,
      I1 => controlador_CurrentState_FSM_FFd1_175,
      I2 => controlador_Reg_instruct(3),
      I3 => controlador_Reg_instruct(4),
      I4 => N10,
      I5 => controlador_CurrentState_FSM_FFd2_174,
      O => controlador_CurrentState_2_PWR_81_o_Mux_196_o
    );
  controlador_Mmux_CurrentState_2_PWR_21_o_Mux_76_o2_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => controlador_CurrentState_FSM_FFd1_1_1369,
      I1 => controlador_CurrentState_FSM_FFd3_173,
      O => N12
    );
  controlador_Mmux_CurrentState_2_PWR_21_o_Mux_76_o2 : LUT6
    generic map(
      INIT => X"F400F400F400F000"
    )
    port map (
      I0 => controlador_Reg_instruct(6),
      I1 => controlador_Reg_instruct(7),
      I2 => controlador_CurrentState_FSM_FFd2_174,
      I3 => N12,
      I4 => controlador_Mmux_ALU_op9111,
      I5 => RAM_OELogicTrst1,
      O => controlador_CurrentState_2_PWR_21_o_Mux_76_o
    );
  alu_comp_Mmux_reg_acc_tmp_A101_SW0 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => alu_comp_reg_a(5),
      I1 => alu_comp_reg_a(7),
      I2 => alu_comp_reg_a(6),
      I3 => alu_comp_reg_a(4),
      O => N16
    );
  alu_comp_Mmux_reg_acc_tmp_A101 : LUT6
    generic map(
      INIT => X"0000E0FF00000000"
    )
    port map (
      I0 => alu_comp_reg_a(1),
      I1 => alu_comp_reg_a(2),
      I2 => alu_comp_reg_a(3),
      I3 => N16,
      I4 => ALU_op(0),
      I5 => ALU_op(4),
      O => alu_comp_Mmux_reg_acc_tmp_A101_1082
    );
  RAM_Addr_3_LogicTrst2 : LUT6
    generic map(
      INIT => X"FCAA00000CAA0000"
    )
    port map (
      I0 => alu_comp_Index_Reg(3),
      I1 => controlador_Reg_operand(3),
      I2 => controlador_Reg_instruct(0),
      I3 => controlador_Reg_instruct(2),
      I4 => controlador_Reg_instruct(5),
      I5 => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_3_Q,
      O => RAM_Addr_3_LogicTrst1_1271
    );
  RAM_Addr_2_LogicTrst3 : LUT6
    generic map(
      INIT => X"FCAA00000CAA0000"
    )
    port map (
      I0 => alu_comp_Index_Reg(2),
      I1 => controlador_Reg_operand(2),
      I2 => controlador_Reg_instruct(0),
      I3 => controlador_Reg_instruct(2),
      I4 => controlador_Reg_instruct(5),
      I5 => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_2_Q,
      O => RAM_Addr_2_LogicTrst3_1273
    );
  dma_top_CurrentState_FSM_FFd3_In_SW0 : LUT6
    generic map(
      INIT => X"4242420240404000"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd2_321,
      I1 => controlador_CurrentState_FSM_FFd2_174,
      I2 => controlador_CurrentState_FSM_FFd1_175,
      I3 => RX_Empty,
      I4 => RX_Full,
      I5 => controlador_CurrentState_FSM_FFd3_173,
      O => N20
    );
  dma_top_CurrentState_FSM_FFd2_In1 : LUT6
    generic map(
      INIT => X"A8AAA8AAA8AAFDFF"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd2_321,
      I1 => controlador_CurrentState_FSM_FFd2_174,
      I2 => controlador_CurrentState_FSM_FFd1_175,
      I3 => controlador_CurrentState_FSM_FFd3_173,
      I4 => RX_Empty,
      I5 => RX_Full,
      O => dma_top_CurrentState_FSM_FFd2_In1_1275
    );
  dma_top_CurrentState_FSM_FFd2_In2 : LUT5
    generic map(
      INIT => X"F2222222"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd2_In1_1275,
      I1 => dma_top_CurrentState_FSM_FFd3_320,
      I2 => dma_top_data_count(0),
      I3 => dma_top_data_count(1),
      I4 => dma_top_CurrentState_FSM_FFd1_322,
      O => dma_top_CurrentState_FSM_FFd2_In
    );
  dma_top_CurrentState_FSM_FFd1_In_SW0 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => controlador_CurrentState_FSM_FFd1_175,
      I1 => controlador_CurrentState_FSM_FFd3_173,
      I2 => controlador_CurrentState_FSM_FFd2_174,
      O => N22
    );
  dma_top_CurrentState_FSM_FFd1_In : LUT6
    generic map(
      INIT => X"2AFF2A2A2A2A2A2A"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd1_322,
      I1 => dma_top_data_count(1),
      I2 => dma_top_data_count(0),
      I3 => dma_top_CurrentState_FSM_FFd3_320,
      I4 => dma_top_CurrentState_FSM_FFd2_321,
      I5 => N22,
      O => dma_top_CurrentState_FSM_FFd1_In_310
    );
  RS232_PHY_Transmitter_CurrentState_FSM_FFd2_In_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => RS232_PHY_Transmitter_data_count(1),
      I1 => RS232_PHY_Transmitter_data_count(0),
      O => N26
    );
  RS232_PHY_Transmitter_CurrentState_FSM_FFd2_In : LUT6
    generic map(
      INIT => X"2FAFAFAF2AAAAAAA"
    )
    port map (
      I0 => RS232_PHY_Transmitter_CurrentState_FSM_FFd2_1144,
      I1 => RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o,
      I2 => RS232_PHY_Transmitter_CurrentState_FSM_FFd1_1162,
      I3 => RS232_PHY_Transmitter_data_count(2),
      I4 => N26,
      I5 => RS232_PHY_StartTX_1094,
      O => RS232_PHY_Transmitter_CurrentState_FSM_FFd2_In_1146
    );
  RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o_7_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => RS232_PHY_Transmitter_width_count(6),
      I1 => RS232_PHY_Transmitter_width_count(4),
      I2 => RS232_PHY_Transmitter_width_count(0),
      O => N28
    );
  RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o_7_Q : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => RS232_PHY_Transmitter_width_count(5),
      I1 => RS232_PHY_Transmitter_width_count(3),
      I2 => RS232_PHY_Transmitter_width_count(7),
      I3 => RS232_PHY_Transmitter_width_count(2),
      I4 => RS232_PHY_Transmitter_width_count(1),
      I5 => N28,
      O => RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o
    );
  RS232_PHY_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT6_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => RS232_PHY_Receiver_width_count(2),
      I1 => RS232_PHY_Receiver_width_count(1),
      I2 => RS232_PHY_Receiver_width_count(0),
      O => N30
    );
  RS232_PHY_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT6 : LUT6
    generic map(
      INIT => X"A8A8A8A808888888"
    )
    port map (
      I0 => RS232_PHY_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT51,
      I1 => RS232_PHY_Receiver_width_count(5),
      I2 => RS232_PHY_Receiver_width_count(3),
      I3 => RS232_PHY_Receiver_width_count(4),
      I4 => N30,
      I5 => RS232_PHY_Receiver_Madd_width_count_7_GND_10_o_add_26_OUT_xor_5_13,
      O => RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_5_Q
    );
  RS232_PHY_Receiver_width_count_7_PWR_10_o_equal_4_o_7_SW0 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => RS232_PHY_Receiver_width_count(6),
      I1 => RS232_PHY_Receiver_width_count(0),
      I2 => RS232_PHY_Receiver_width_count(1),
      O => N32
    );
  RS232_PHY_Receiver_width_count_7_PWR_10_o_equal_4_o_7_Q : LUT6
    generic map(
      INIT => X"0200000000000000"
    )
    port map (
      I0 => RS232_PHY_Receiver_width_count(5),
      I1 => RS232_PHY_Receiver_width_count(4),
      I2 => N32,
      I3 => RS232_PHY_Receiver_width_count(7),
      I4 => RS232_PHY_Receiver_width_count(2),
      I5 => RS232_PHY_Receiver_width_count(3),
      O => RS232_PHY_Receiver_width_count_7_PWR_10_o_equal_4_o
    );
  RS232_PHY_Receiver_CurrentState_FSM_FFd2_In_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => RS232_PHY_Receiver_data_count(0),
      I1 => RS232_PHY_Receiver_width_count_7_PWR_10_o_equal_4_o,
      O => N34
    );
  RS232_PHY_Receiver_CurrentState_FSM_FFd2_In : LUT6
    generic map(
      INIT => X"2AAAAAAA2FAFAFAF"
    )
    port map (
      I0 => RS232_PHY_Receiver_CurrentState_FSM_FFd2_1179,
      I1 => N34,
      I2 => RS232_PHY_Receiver_CurrentState_FSM_FFd1_1195,
      I3 => RS232_PHY_Receiver_data_count(2),
      I4 => RS232_PHY_Receiver_data_count(1),
      I5 => RS232_PHY_LineRD_in_1095,
      O => RS232_PHY_Receiver_CurrentState_FSM_FFd2_In_1181
    );
  Reset_IBUF : IBUF
    port map (
      I => Reset,
      O => Reset_IBUF_0
    );
  RS232_RX_IBUF : IBUF
    port map (
      I => RS232_RX,
      O => RS232_RX_IBUF_2
    );
  switches_7_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_switches(7),
      O => switches(7)
    );
  switches_6_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_switches(6),
      O => switches(6)
    );
  switches_5_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_switches(5),
      O => switches(5)
    );
  switches_4_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_switches(4),
      O => switches(4)
    );
  switches_3_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_switches(3),
      O => switches(3)
    );
  switches_2_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_switches(2),
      O => switches(2)
    );
  switches_1_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_switches(1),
      O => switches(1)
    );
  switches_0_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_switches(0),
      O => switches(0)
    );
  Temp_L_6_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_temp_l(6),
      O => Temp_L(6)
    );
  Temp_L_5_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_temp_l(5),
      O => Temp_L(5)
    );
  Temp_L_4_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_temp_l(4),
      O => Temp_L(4)
    );
  Temp_L_3_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_temp_l(3),
      O => Temp_L(3)
    );
  Temp_L_2_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_temp_l(2),
      O => Temp_L(2)
    );
  Temp_L_1_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_temp_l(1),
      O => Temp_L(1)
    );
  Temp_L_0_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_temp_l(0),
      O => Temp_L(0)
    );
  Temp_H_6_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_temp_h(6),
      O => Temp_H(6)
    );
  Temp_H_5_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_temp_h(5),
      O => Temp_H(5)
    );
  Temp_H_4_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_temp_h(4),
      O => Temp_H(4)
    );
  Temp_H_3_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_temp_h(3),
      O => Temp_H(3)
    );
  Temp_H_2_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_temp_h(2),
      O => Temp_H(2)
    );
  Temp_H_1_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_temp_h(1),
      O => Temp_H(1)
    );
  Temp_H_0_OBUF : OBUF
    port map (
      I => ram_top_periph_ram_temp_h(0),
      O => Temp_H(0)
    );
  RS232_TX_OBUF : OBUF
    port map (
      I => RS232_TX_OBUF_13,
      O => RS232_TX
    );
  alu_comp_FlagZ_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => alu_comp_n0171_inv,
      I1 => alu_comp_FlagZ_58,
      I2 => alu_comp_FlagZ_tmp,
      O => alu_comp_FlagZ_rstpot_1308
    );
  alu_comp_FlagZ : FDC
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => alu_comp_FlagZ_rstpot_1308,
      Q => alu_comp_FlagZ_58
    );
  RAM_Addr_0_LogicTrst3 : LUT5
    generic map(
      INIT => X"FEFCAAFF"
    )
    port map (
      I0 => dma_top_data_count(0),
      I1 => RAM_Addr_0_LogicTrst1_1250,
      I2 => RAM_Addr_0_LogicTrst,
      I3 => dma_top_CurrentState_2_GND_48_o_Mux_43_o,
      I4 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      O => RAM_Addr(0)
    );
  RAM_Addr_1_LogicTrst3 : LUT5
    generic map(
      INIT => X"FEFCAAFF"
    )
    port map (
      I0 => dma_top_data_count(1),
      I1 => RAM_Addr_1_LogicTrst1_1258,
      I2 => RAM_Addr_1_LogicTrst,
      I3 => dma_top_Mmux_CurrentState_2_GND_48_o_Mux_43_o11_1385,
      I4 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      O => RAM_Addr(1)
    );
  RAM_Addr_2_LogicTrst4_SW0 : LUT6
    generic map(
      INIT => X"0DFF0DFF0DFF0FFF"
    )
    port map (
      I0 => controlador_Reg_instruct(7),
      I1 => controlador_Reg_instruct(6),
      I2 => controlador_CurrentState_FSM_FFd2_174,
      I3 => N12,
      I4 => controlador_Mmux_ALU_op9111,
      I5 => RAM_OELogicTrst1,
      O => N36
    );
  RAM_Addr_2_LogicTrst4 : LUT6
    generic map(
      INIT => X"1111FFF1FFFFFFF0"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd1_322,
      I1 => dma_top_CurrentState_FSM_FFd2_321,
      I2 => RAM_Addr_2_LogicTrst3_1273,
      I3 => RAM_Addr_2_LogicTrst1,
      I4 => N36,
      I5 => dma_top_Mmux_CurrentState_2_GND_48_o_Mux_43_o11_1385,
      O => RAM_Addr(2)
    );
  RAM_Addr_3_LogicTrst3 : LUT4
    generic map(
      INIT => X"EE0F"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst1_1271,
      I1 => RAM_Addr_3_LogicTrst,
      I2 => dma_top_CurrentState_2_GND_48_o_Mux_43_o,
      I3 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      O => RAM_Addr(3)
    );
  controlador_GND_14_o_Reg_instruct_5_equal_13_o11 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => controlador_Reg_instruct_2_2_1380,
      I1 => controlador_Reg_instruct(1),
      I2 => controlador_Reg_instruct(4),
      I3 => controlador_Reg_instruct(3),
      I4 => controlador_Reg_instruct(5),
      O => controlador_GND_14_o_Reg_instruct_5_equal_13_o1
    );
  alu_comp_Mmux_reg_acc_tmp_A164_SW0 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => ALU_op(3),
      I1 => alu_comp_Mmux_reg_acc_tmp_A161_1263,
      I2 => alu_comp_Mmux_reg_acc_tmp_A162_1264,
      O => N38
    );
  alu_comp_Mmux_reg_acc_tmp_A164_SW1 : LUT4
    generic map(
      INIT => X"444E"
    )
    port map (
      I0 => ALU_op(3),
      I1 => ALU_op(4),
      I2 => alu_comp_Mmux_reg_acc_tmp_A161_1263,
      I3 => alu_comp_Mmux_reg_acc_tmp_A162_1264,
      O => N39
    );
  alu_comp_Mmux_reg_acc_tmp_rs_lut_7_Q : LUT6
    generic map(
      INIT => X"9696999996999699"
    )
    port map (
      I0 => alu_comp_Mmux_reg_acc_tmp_rs_B(7),
      I1 => alu_comp_Mmux_reg_acc_tmp_rs_AS_inv,
      I2 => alu_comp_Mmux_reg_acc_tmp_A16,
      I3 => N38,
      I4 => N39,
      I5 => RAM_Data_7_LogicTrst5_1362,
      O => alu_comp_Mmux_reg_acc_tmp_rs_lut(7)
    );
  alu_comp_Mmux_reg_acc_tmp_A44_SW0 : LUT4
    generic map(
      INIT => X"135F"
    )
    port map (
      I0 => alu_comp_reg_a(1),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A42_1218,
      O => N44
    );
  alu_comp_Mmux_reg_acc_tmp_A44_SW1 : LUT4
    generic map(
      INIT => X"105C"
    )
    port map (
      I0 => alu_comp_reg_a(1),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A42_1218,
      O => N45
    );
  alu_comp_Mmux_reg_acc_tmp_rs_lut_1_Q : LUT6
    generic map(
      INIT => X"9699969996969999"
    )
    port map (
      I0 => alu_comp_Mmux_reg_acc_tmp_rs_B(1),
      I1 => alu_comp_Mmux_reg_acc_tmp_rs_AS_inv,
      I2 => alu_comp_Mmux_reg_acc_tmp_A102_1083,
      I3 => N45,
      I4 => N44,
      I5 => RAM_Data_1_LogicTrst5_1356,
      O => alu_comp_Mmux_reg_acc_tmp_rs_lut(1)
    );
  alu_comp_Mmux_reg_acc_tmp_A64_SW0 : LUT4
    generic map(
      INIT => X"135F"
    )
    port map (
      I0 => alu_comp_reg_a(2),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A62_1220,
      O => N47
    );
  alu_comp_Mmux_reg_acc_tmp_A64_SW1 : LUT4
    generic map(
      INIT => X"105C"
    )
    port map (
      I0 => alu_comp_reg_a(2),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A62_1220,
      O => N48
    );
  alu_comp_Mmux_reg_acc_tmp_rs_lut_2_Q : LUT6
    generic map(
      INIT => X"9699969996969999"
    )
    port map (
      I0 => alu_comp_Mmux_reg_acc_tmp_rs_B(2),
      I1 => alu_comp_Mmux_reg_acc_tmp_rs_AS_inv,
      I2 => alu_comp_Mmux_reg_acc_tmp_A102_1083,
      I3 => N48,
      I4 => N47,
      I5 => RAM_Data_2_LogicTrst5_1357,
      O => alu_comp_Mmux_reg_acc_tmp_rs_lut(2)
    );
  alu_comp_Mmux_reg_acc_tmp_A84_SW0 : LUT4
    generic map(
      INIT => X"135F"
    )
    port map (
      I0 => alu_comp_reg_a(3),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A82_1222,
      O => N50
    );
  alu_comp_Mmux_reg_acc_tmp_A84_SW1 : LUT4
    generic map(
      INIT => X"105C"
    )
    port map (
      I0 => alu_comp_reg_a(3),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A82_1222,
      O => N51
    );
  alu_comp_Mmux_reg_acc_tmp_rs_lut_3_Q : LUT6
    generic map(
      INIT => X"9699969996969999"
    )
    port map (
      I0 => alu_comp_Mmux_reg_acc_tmp_rs_B(3),
      I1 => alu_comp_Mmux_reg_acc_tmp_rs_AS_inv,
      I2 => alu_comp_Mmux_reg_acc_tmp_A102_1083,
      I3 => N51,
      I4 => N50,
      I5 => RAM_Data_3_LogicTrst5_1358,
      O => alu_comp_Mmux_reg_acc_tmp_rs_lut(3)
    );
  alu_comp_Mmux_reg_acc_tmp_A105_SW0 : LUT4
    generic map(
      INIT => X"135F"
    )
    port map (
      I0 => alu_comp_reg_a(4),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A104_1212,
      O => N53
    );
  alu_comp_Mmux_reg_acc_tmp_A105_SW1 : LUT4
    generic map(
      INIT => X"105C"
    )
    port map (
      I0 => alu_comp_reg_a(4),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A104_1212,
      O => N54
    );
  alu_comp_Mmux_reg_acc_tmp_rs_lut_4_Q : LUT6
    generic map(
      INIT => X"9699969996969999"
    )
    port map (
      I0 => alu_comp_Mmux_reg_acc_tmp_rs_AS_inv,
      I1 => alu_comp_Mmux_reg_acc_tmp_rs_B(4),
      I2 => alu_comp_Mmux_reg_acc_tmp_A102_1083,
      I3 => N54,
      I4 => N53,
      I5 => RAM_Data_4_LogicTrst5_1359,
      O => alu_comp_Mmux_reg_acc_tmp_rs_lut(4)
    );
  alu_comp_Mmux_reg_acc_tmp_A124_SW0 : LUT4
    generic map(
      INIT => X"135F"
    )
    port map (
      I0 => alu_comp_reg_a(5),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A122_1214,
      O => N56
    );
  alu_comp_Mmux_reg_acc_tmp_A124_SW1 : LUT4
    generic map(
      INIT => X"105C"
    )
    port map (
      I0 => alu_comp_reg_a(5),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A122_1214,
      O => N57
    );
  alu_comp_Mmux_reg_acc_tmp_rs_lut_5_Q : LUT6
    generic map(
      INIT => X"9699969996969999"
    )
    port map (
      I0 => alu_comp_Mmux_reg_acc_tmp_rs_AS_inv,
      I1 => alu_comp_Mmux_reg_acc_tmp_rs_B(5),
      I2 => alu_comp_Mmux_reg_acc_tmp_A102_1083,
      I3 => N57,
      I4 => N56,
      I5 => RAM_Data_5_LogicTrst5_1360,
      O => alu_comp_Mmux_reg_acc_tmp_rs_lut(5)
    );
  alu_comp_Mmux_reg_acc_tmp_A144_SW0 : LUT4
    generic map(
      INIT => X"135F"
    )
    port map (
      I0 => alu_comp_reg_a(6),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A142_1216,
      O => N59
    );
  alu_comp_Mmux_reg_acc_tmp_A144_SW1 : LUT4
    generic map(
      INIT => X"105C"
    )
    port map (
      I0 => alu_comp_reg_a(6),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A142_1216,
      O => N60
    );
  alu_comp_Mmux_reg_acc_tmp_rs_lut_6_Q : LUT6
    generic map(
      INIT => X"9699969996969999"
    )
    port map (
      I0 => alu_comp_Mmux_reg_acc_tmp_rs_B(6),
      I1 => alu_comp_Mmux_reg_acc_tmp_rs_AS_inv,
      I2 => alu_comp_Mmux_reg_acc_tmp_A102_1083,
      I3 => N60,
      I4 => N59,
      I5 => RAM_Data_6_LogicTrst5_1361,
      O => alu_comp_Mmux_reg_acc_tmp_rs_lut(6)
    );
  dma_top_Mmux_CurrentState_2_GND_48_o_Mux_43_o11_SW0 : LUT5
    generic map(
      INIT => X"FFF3FFFB"
    )
    port map (
      I0 => dma_top_data_count_1_1_1381,
      I1 => RS232_PHY_Ack_in_11,
      I2 => RS232_PHY_Transmitter_CurrentState_FSM_FFd1_1162,
      I3 => RS232_PHY_Transmitter_CurrentState_FSM_FFd2_1144,
      I4 => dma_top_data_count(0),
      O => N62
    );
  dma_top_Mmux_CurrentState_2_GND_48_o_Mux_43_o11_SW1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => dma_top_data_count_1_1_1381,
      I1 => dma_top_data_count(0),
      O => N63
    );
  dma_top_Mmux_CurrentState_2_GND_48_o_Mux_43_o11 : LUT6
    generic map(
      INIT => X"28202A2228282A2A"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd3_320,
      I1 => dma_top_CurrentState_FSM_FFd1_322,
      I2 => dma_top_CurrentState_FSM_FFd2_321,
      I3 => dma_top_data_count_2_RX_Full_AND_272_o,
      I4 => N62,
      I5 => N63,
      O => dma_top_CurrentState_2_GND_48_o_Mux_43_o
    );
  RAM_Data_0_LogicTrst5_SW0 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(4),
      I2 => ram_top_periph_ram_mux_71_478,
      I3 => ram_top_periph_ram_mux_8_483,
      I4 => ram_top_periph_ram_mux_7_473,
      I5 => ram_top_periph_ram_mux_6_468,
      O => N65
    );
  RAM_Data_0_LogicTrst5 : LUT4
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(0),
      I1 => RAM_OE,
      I2 => RAM_Data_0_LogicTrst1_1224,
      I3 => N65,
      O => RAM_Data(0)
    );
  RAM_Data_1_LogicTrst5_SW0 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(4),
      I2 => ram_top_periph_ram_mux1_71_458,
      I3 => ram_top_periph_ram_mux1_8_463,
      I4 => ram_top_periph_ram_mux1_7_453,
      I5 => ram_top_periph_ram_mux1_6_448,
      O => N67
    );
  RAM_Data_1_LogicTrst5 : LUT4
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(1),
      I1 => RAM_OE,
      I2 => RAM_Data_1_LogicTrst1_1238,
      I3 => N67,
      O => RAM_Data(1)
    );
  RAM_Data_2_LogicTrst5_SW0 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(4),
      I2 => ram_top_periph_ram_mux2_71_438,
      I3 => ram_top_periph_ram_mux2_8_443,
      I4 => ram_top_periph_ram_mux2_7_433,
      I5 => ram_top_periph_ram_mux2_6_428,
      O => N69
    );
  RAM_Data_2_LogicTrst5 : LUT4
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(2),
      I1 => RAM_OE,
      I2 => RAM_Data_2_LogicTrst1_1236,
      I3 => N69,
      O => RAM_Data(2)
    );
  RAM_Data_3_LogicTrst5_SW0 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(4),
      I2 => ram_top_periph_ram_mux3_71_418,
      I3 => ram_top_periph_ram_mux3_8_423,
      I4 => ram_top_periph_ram_mux3_7_413,
      I5 => ram_top_periph_ram_mux3_6_408,
      O => N71
    );
  RAM_Data_3_LogicTrst5 : LUT4
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(3),
      I1 => RAM_OE,
      I2 => RAM_Data_3_LogicTrst1_1234,
      I3 => N71,
      O => RAM_Data(3)
    );
  RAM_Data_4_LogicTrst5_SW0 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(4),
      I2 => ram_top_periph_ram_mux4_71_398,
      I3 => ram_top_periph_ram_mux4_8_403,
      I4 => ram_top_periph_ram_mux4_7_393,
      I5 => ram_top_periph_ram_mux4_6_388,
      O => N73
    );
  RAM_Data_4_LogicTrst5 : LUT4
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(4),
      I1 => RAM_OE,
      I2 => RAM_Data_4_LogicTrst1_1232,
      I3 => N73,
      O => RAM_Data(4)
    );
  RAM_Data_5_LogicTrst5_SW0 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(4),
      I2 => ram_top_periph_ram_mux5_71_378,
      I3 => ram_top_periph_ram_mux5_8_383,
      I4 => ram_top_periph_ram_mux5_7_373,
      I5 => ram_top_periph_ram_mux5_6_368,
      O => N75
    );
  RAM_Data_5_LogicTrst5 : LUT4
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(5),
      I1 => RAM_OE,
      I2 => RAM_Data_5_LogicTrst1_1230,
      I3 => N75,
      O => RAM_Data(5)
    );
  RAM_Data_6_LogicTrst5_SW0 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(4),
      I2 => ram_top_periph_ram_mux6_71_358,
      I3 => ram_top_periph_ram_mux6_8_363,
      I4 => ram_top_periph_ram_mux6_7_353,
      I5 => ram_top_periph_ram_mux6_6_348,
      O => N77
    );
  RAM_Data_6_LogicTrst5 : LUT4
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(6),
      I1 => RAM_OE,
      I2 => RAM_Data_6_LogicTrst1_1228,
      I3 => N77,
      O => RAM_Data(6)
    );
  RAM_Data_7_LogicTrst5_SW0 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RAM_Addr(5),
      I1 => RAM_Addr(4),
      I2 => ram_top_periph_ram_mux7_71_338,
      I3 => ram_top_periph_ram_mux7_8_343,
      I4 => ram_top_periph_ram_mux7_7_333,
      I5 => ram_top_periph_ram_mux7_6_328,
      O => N79
    );
  RAM_Data_7_LogicTrst5 : LUT4
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(7),
      I1 => RAM_OE,
      I2 => RAM_Data_7_LogicTrst1_1226,
      I3 => N79,
      O => RAM_Data(7)
    );
  RAM_Addr_3_LogicTrst1 : LUT6
    generic map(
      INIT => X"000000C800000008"
    )
    port map (
      I0 => controlador_Reg_operand(3),
      I1 => controlador_Reg_instruct(4),
      I2 => controlador_Reg_instruct(3),
      I3 => controlador_Reg_instruct(2),
      I4 => controlador_Reg_instruct(5),
      I5 => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_3_Q,
      O => RAM_Addr_3_LogicTrst
    );
  RAM_Addr_2_LogicTrst2 : LUT6
    generic map(
      INIT => X"000000C800000008"
    )
    port map (
      I0 => controlador_Reg_operand(2),
      I1 => controlador_Reg_instruct(4),
      I2 => controlador_Reg_instruct(3),
      I3 => controlador_Reg_instruct(2),
      I4 => controlador_Reg_instruct(5),
      I5 => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_2_Q,
      O => RAM_Addr_2_LogicTrst1
    );
  RAM_Addr_1_LogicTrst1 : LUT6
    generic map(
      INIT => X"000000C800000008"
    )
    port map (
      I0 => controlador_Reg_operand(1),
      I1 => controlador_Reg_instruct(4),
      I2 => controlador_Reg_instruct(3),
      I3 => controlador_Reg_instruct(2),
      I4 => controlador_Reg_instruct(5),
      I5 => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_1_Q,
      O => RAM_Addr_1_LogicTrst
    );
  RAM_Addr_0_LogicTrst1 : LUT6
    generic map(
      INIT => X"000000C800000008"
    )
    port map (
      I0 => controlador_Reg_operand(0),
      I1 => controlador_Reg_instruct(4),
      I2 => controlador_Reg_instruct(3),
      I3 => controlador_Reg_instruct(2),
      I4 => controlador_Reg_instruct(5),
      I5 => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_0_Q,
      O => RAM_Addr_0_LogicTrst
    );
  alu_comp_n0176_0_1 : LUT6
    generic map(
      INIT => X"CCFFCCF0CCFFCCA0"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(0),
      I1 => alu_comp_reg_acc(0),
      I2 => RAM_OE,
      I3 => ALU_op(2),
      I4 => RAM_Data_0_LogicTrst1_1224,
      I5 => N65,
      O => alu_comp_n0176(0)
    );
  alu_comp_n0176_1_1 : LUT6
    generic map(
      INIT => X"CCFFCCF0CCFFCCA0"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(1),
      I1 => alu_comp_reg_acc(1),
      I2 => RAM_OE,
      I3 => ALU_op(2),
      I4 => RAM_Data_1_LogicTrst1_1238,
      I5 => N67,
      O => alu_comp_n0176(1)
    );
  alu_comp_n0176_2_1 : LUT6
    generic map(
      INIT => X"CCFFCCF0CCFFCCA0"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(2),
      I1 => alu_comp_reg_acc(2),
      I2 => RAM_OE,
      I3 => ALU_op(2),
      I4 => RAM_Data_2_LogicTrst1_1236,
      I5 => N69,
      O => alu_comp_n0176(2)
    );
  alu_comp_n0176_3_1 : LUT6
    generic map(
      INIT => X"CCFFCCF0CCFFCCA0"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(3),
      I1 => alu_comp_reg_acc(3),
      I2 => RAM_OE,
      I3 => ALU_op(2),
      I4 => RAM_Data_3_LogicTrst1_1234,
      I5 => N71,
      O => alu_comp_n0176(3)
    );
  alu_comp_n0176_4_1 : LUT6
    generic map(
      INIT => X"CCFFCCF0CCFFCCA0"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(4),
      I1 => alu_comp_reg_acc(4),
      I2 => RAM_OE,
      I3 => ALU_op(2),
      I4 => RAM_Data_4_LogicTrst1_1232,
      I5 => N73,
      O => alu_comp_n0176(4)
    );
  alu_comp_n0176_5_1 : LUT6
    generic map(
      INIT => X"CCFFCCF0CCFFCCA0"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(5),
      I1 => alu_comp_reg_acc(5),
      I2 => RAM_OE,
      I3 => ALU_op(2),
      I4 => RAM_Data_5_LogicTrst1_1230,
      I5 => N75,
      O => alu_comp_n0176(5)
    );
  alu_comp_n0176_6_1 : LUT6
    generic map(
      INIT => X"CCFFCCF0CCFFCCA0"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(6),
      I1 => alu_comp_reg_acc(6),
      I2 => RAM_OE,
      I3 => ALU_op(2),
      I4 => RAM_Data_6_LogicTrst1_1228,
      I5 => N77,
      O => alu_comp_n0176(6)
    );
  alu_comp_n0176_7_1 : LUT6
    generic map(
      INIT => X"CCFFCCF0CCFFCCA0"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(7),
      I1 => alu_comp_reg_acc(7),
      I2 => RAM_OE,
      I3 => ALU_op(2),
      I4 => RAM_Data_7_LogicTrst1_1226,
      I5 => N79,
      O => alu_comp_n0176(7)
    );
  dma_top_Mmux_TX_Data11 : LUT5
    generic map(
      INIT => X"33303320"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(0),
      I1 => Valid_d,
      I2 => RAM_OE,
      I3 => RAM_Data_0_LogicTrst1_1224,
      I4 => N65,
      O => TX_data(0)
    );
  dma_top_Mmux_TX_Data21 : LUT5
    generic map(
      INIT => X"33303320"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(1),
      I1 => Valid_d,
      I2 => RAM_OE,
      I3 => RAM_Data_1_LogicTrst1_1238,
      I4 => N67,
      O => TX_data(1)
    );
  dma_top_Mmux_TX_Data31 : LUT5
    generic map(
      INIT => X"33303320"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(2),
      I1 => Valid_d,
      I2 => RAM_OE,
      I3 => RAM_Data_2_LogicTrst1_1236,
      I4 => N69,
      O => TX_data(2)
    );
  dma_top_Mmux_TX_Data41 : LUT5
    generic map(
      INIT => X"33303320"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(3),
      I1 => Valid_d,
      I2 => RAM_OE,
      I3 => RAM_Data_3_LogicTrst1_1234,
      I4 => N71,
      O => TX_data(3)
    );
  dma_top_Mmux_TX_Data51 : LUT5
    generic map(
      INIT => X"33303320"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(4),
      I1 => Valid_d,
      I2 => RAM_OE,
      I3 => RAM_Data_4_LogicTrst1_1232,
      I4 => N73,
      O => TX_data(4)
    );
  dma_top_Mmux_TX_Data61 : LUT5
    generic map(
      INIT => X"33303320"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(5),
      I1 => Valid_d,
      I2 => RAM_OE,
      I3 => RAM_Data_5_LogicTrst1_1230,
      I4 => N75,
      O => TX_data(5)
    );
  dma_top_Mmux_TX_Data71 : LUT5
    generic map(
      INIT => X"33303320"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(6),
      I1 => Valid_d,
      I2 => RAM_OE,
      I3 => RAM_Data_6_LogicTrst1_1228,
      I4 => N77,
      O => TX_data(6)
    );
  dma_top_Mmux_TX_Data81 : LUT5
    generic map(
      INIT => X"33303320"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(7),
      I1 => Valid_d,
      I2 => RAM_OE,
      I3 => RAM_Data_7_LogicTrst1_1226,
      I4 => N79,
      O => TX_data(7)
    );
  RAM_Data_0_LogicTrst5_SW1 : LUT5
    generic map(
      INIT => X"FFFFF888"
    )
    port map (
      I0 => alu_comp_Mmux_reg_acc_tmp_A22,
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_reg_a(0),
      I4 => alu_comp_Mmux_reg_acc_tmp_A1021_1386,
      O => N81
    );
  RAM_Data_0_LogicTrst5_SW2 : LUT5
    generic map(
      INIT => X"FFFFF8DD"
    )
    port map (
      I0 => ALU_op(4),
      I1 => alu_comp_reg_a(0),
      I2 => alu_comp_Mmux_reg_acc_tmp_A22,
      I3 => ALU_op(3),
      I4 => alu_comp_Mmux_reg_acc_tmp_A1021_1386,
      O => N82
    );
  alu_comp_Mmux_reg_acc_tmp_A24 : LUT6
    generic map(
      INIT => X"FF00FC30FF00F870"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(0),
      I1 => RAM_OE,
      I2 => N81,
      I3 => N82,
      I4 => RAM_Data_0_LogicTrst1_1224,
      I5 => N65,
      O => alu_comp_Mmux_reg_acc_tmp_rs_A(0)
    );
  alu_comp_Mmux_reg_acc_tmp_rs_lut_0_Q : LUT6
    generic map(
      INIT => X"F0F3F0C0F0F7F080"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(0),
      I1 => RAM_OE,
      I2 => N85,
      I3 => RAM_Data_0_LogicTrst1_1224,
      I4 => N84,
      I5 => N65,
      O => alu_comp_Mmux_reg_acc_tmp_rs_lut(0)
    );
  RAM_Data_1_LogicTrst5_SW1 : LUT5
    generic map(
      INIT => X"FFFFECA0"
    )
    port map (
      I0 => alu_comp_reg_a(1),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A42_1218,
      I4 => alu_comp_Mmux_reg_acc_tmp_A1021_1386,
      O => N87
    );
  RAM_Data_1_LogicTrst5_SW2 : LUT5
    generic map(
      INIT => X"FFFFEFA3"
    )
    port map (
      I0 => alu_comp_reg_a(1),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A42_1218,
      I4 => alu_comp_Mmux_reg_acc_tmp_A102_1083,
      O => N88
    );
  alu_comp_Mmux_reg_acc_tmp_A44 : LUT6
    generic map(
      INIT => X"FFFFFFC800370000"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(1),
      I1 => RAM_OE,
      I2 => N67,
      I3 => RAM_Data_1_LogicTrst1_1238,
      I4 => N87,
      I5 => N88,
      O => alu_comp_Mmux_reg_acc_tmp_rs_A(1)
    );
  RAM_Data_2_LogicTrst5_SW1 : LUT5
    generic map(
      INIT => X"FFFFECA0"
    )
    port map (
      I0 => alu_comp_reg_a(2),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A62_1220,
      I4 => alu_comp_Mmux_reg_acc_tmp_A1021_1386,
      O => N90
    );
  RAM_Data_2_LogicTrst5_SW2 : LUT5
    generic map(
      INIT => X"FFFFEFA3"
    )
    port map (
      I0 => alu_comp_reg_a(2),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A62_1220,
      I4 => alu_comp_Mmux_reg_acc_tmp_A102_1083,
      O => N91
    );
  alu_comp_Mmux_reg_acc_tmp_A64 : LUT6
    generic map(
      INIT => X"FFFFFFC800370000"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(2),
      I1 => RAM_OE,
      I2 => N69,
      I3 => RAM_Data_2_LogicTrst1_1236,
      I4 => N90,
      I5 => N91,
      O => alu_comp_Mmux_reg_acc_tmp_rs_A(2)
    );
  RAM_Data_3_LogicTrst5_SW1 : LUT5
    generic map(
      INIT => X"FFFFECA0"
    )
    port map (
      I0 => alu_comp_reg_a(3),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A82_1222,
      I4 => alu_comp_Mmux_reg_acc_tmp_A1021_1386,
      O => N93
    );
  RAM_Data_3_LogicTrst5_SW2 : LUT5
    generic map(
      INIT => X"FFFFEFA3"
    )
    port map (
      I0 => alu_comp_reg_a(3),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A82_1222,
      I4 => alu_comp_Mmux_reg_acc_tmp_A102_1083,
      O => N94
    );
  alu_comp_Mmux_reg_acc_tmp_A84 : LUT6
    generic map(
      INIT => X"FFFFFFC800370000"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(3),
      I1 => RAM_OE,
      I2 => N71,
      I3 => RAM_Data_3_LogicTrst1_1234,
      I4 => N93,
      I5 => N94,
      O => alu_comp_Mmux_reg_acc_tmp_rs_A(3)
    );
  RAM_Data_4_LogicTrst5_SW1 : LUT5
    generic map(
      INIT => X"FFFFECA0"
    )
    port map (
      I0 => alu_comp_reg_a(4),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A104_1212,
      I4 => alu_comp_Mmux_reg_acc_tmp_A1021_1386,
      O => N96
    );
  RAM_Data_4_LogicTrst5_SW2 : LUT5
    generic map(
      INIT => X"FFFFEFA3"
    )
    port map (
      I0 => alu_comp_reg_a(4),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A104_1212,
      I4 => alu_comp_Mmux_reg_acc_tmp_A102_1083,
      O => N97
    );
  alu_comp_Mmux_reg_acc_tmp_A105 : LUT6
    generic map(
      INIT => X"FFFFFFC800370000"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(4),
      I1 => RAM_OE,
      I2 => N73,
      I3 => RAM_Data_4_LogicTrst1_1232,
      I4 => N96,
      I5 => N97,
      O => alu_comp_Mmux_reg_acc_tmp_rs_A(4)
    );
  RAM_Data_5_LogicTrst5_SW1 : LUT5
    generic map(
      INIT => X"FFFFECA0"
    )
    port map (
      I0 => alu_comp_reg_a(5),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A122_1214,
      I4 => alu_comp_Mmux_reg_acc_tmp_A1021_1386,
      O => N99
    );
  RAM_Data_5_LogicTrst5_SW2 : LUT5
    generic map(
      INIT => X"FFFFEFA3"
    )
    port map (
      I0 => alu_comp_reg_a(5),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A122_1214,
      I4 => alu_comp_Mmux_reg_acc_tmp_A102_1083,
      O => N100
    );
  alu_comp_Mmux_reg_acc_tmp_A124 : LUT6
    generic map(
      INIT => X"FFFFFFC800370000"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(5),
      I1 => RAM_OE,
      I2 => N75,
      I3 => RAM_Data_5_LogicTrst1_1230,
      I4 => N99,
      I5 => N100,
      O => alu_comp_Mmux_reg_acc_tmp_rs_A(5)
    );
  RAM_Data_6_LogicTrst5_SW1 : LUT5
    generic map(
      INIT => X"FFFFECA0"
    )
    port map (
      I0 => alu_comp_reg_a(6),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A142_1216,
      I4 => alu_comp_Mmux_reg_acc_tmp_A1021_1386,
      O => N102
    );
  RAM_Data_6_LogicTrst5_SW2 : LUT5
    generic map(
      INIT => X"FFFFEFA3"
    )
    port map (
      I0 => alu_comp_reg_a(6),
      I1 => ALU_op(3),
      I2 => ALU_op(4),
      I3 => alu_comp_Mmux_reg_acc_tmp_A142_1216,
      I4 => alu_comp_Mmux_reg_acc_tmp_A102_1083,
      O => N103
    );
  alu_comp_Mmux_reg_acc_tmp_A144 : LUT6
    generic map(
      INIT => X"FFFFFFC800370000"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(6),
      I1 => RAM_OE,
      I2 => N77,
      I3 => RAM_Data_6_LogicTrst1_1228,
      I4 => N102,
      I5 => N103,
      O => alu_comp_Mmux_reg_acc_tmp_rs_A(6)
    );
  alu_comp_Mmux_reg_acc_tmp_A24_SW0_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => alu_comp_reg_a(0),
      I1 => ALU_op(4),
      O => N105
    );
  RAM_Data_0_LogicTrst5_SW3 : LUT6
    generic map(
      INIT => X"F00FF00FB44B3CC3"
    )
    port map (
      I0 => ALU_op(3),
      I1 => N105,
      I2 => alu_comp_Mmux_reg_acc_tmp_rs_B(0),
      I3 => alu_comp_Mmux_reg_acc_tmp_rs_AS_inv,
      I4 => alu_comp_Mmux_reg_acc_tmp_A22,
      I5 => alu_comp_Mmux_reg_acc_tmp_A1021_1386,
      O => N84
    );
  RAM_Data_0_LogicTrst5_SW4 : LUT6
    generic map(
      INIT => X"5555555555656A65"
    )
    port map (
      I0 => N107,
      I1 => alu_comp_Mmux_reg_acc_tmp_A22,
      I2 => ALU_op(3),
      I3 => ALU_op(4),
      I4 => alu_comp_reg_a(0),
      I5 => alu_comp_Mmux_reg_acc_tmp_A1021_1386,
      O => N85
    );
  alu_comp_Mmux_reg_acc_tmp_A24_SW1_SW0 : LUT6
    generic map(
      INIT => X"00FF00FFFF00F708"
    )
    port map (
      I0 => alu_comp_reg_b(0),
      I1 => ALU_op(3),
      I2 => ALU_op(1),
      I3 => ALU_op(0),
      I4 => ALU_op(2),
      I5 => ALU_op(4),
      O => N107
    );
  alu_comp_Alu_op_0_SW0_SW0 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => alu_comp_reg_a(3),
      I1 => alu_comp_reg_a(2),
      I2 => alu_comp_reg_a(1),
      O => N109
    );
  alu_comp_Alu_op_0_Q : LUT6
    generic map(
      INIT => X"0000000100000040"
    )
    port map (
      I0 => alu_comp_reg_a(7),
      I1 => alu_comp_reg_a(5),
      I2 => alu_comp_reg_a(4),
      I3 => alu_comp_reg_a(6),
      I4 => N109,
      I5 => ALU_op(0),
      O => alu_comp_Alu_op_0_mmx_out
    );
  RAM_Addr_4_LogicTrst3 : LUT4
    generic map(
      INIT => X"EE0F"
    )
    port map (
      I0 => RAM_Addr_4_LogicTrst1_1256,
      I1 => RAM_Addr_4_LogicTrst,
      I2 => dma_top_CurrentState_2_GND_48_o_Mux_43_o,
      I3 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      O => RAM_Addr(4)
    );
  RAM_Addr_5_LogicTrst3 : LUT4
    generic map(
      INIT => X"EE0F"
    )
    port map (
      I0 => RAM_Addr_5_LogicTrst1_1254,
      I1 => RAM_Addr_5_LogicTrst,
      I2 => dma_top_CurrentState_2_GND_48_o_Mux_43_o,
      I3 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      O => RAM_Addr(5)
    );
  RAM_Addr_5_LogicTrst1 : LUT6
    generic map(
      INIT => X"000000C800000008"
    )
    port map (
      I0 => controlador_Reg_operand(5),
      I1 => controlador_Reg_instruct(4),
      I2 => controlador_Reg_instruct(3),
      I3 => controlador_Reg_instruct(2),
      I4 => controlador_Reg_instruct(5),
      I5 => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_5_Q,
      O => RAM_Addr_5_LogicTrst
    );
  RAM_Addr_4_LogicTrst1 : LUT6
    generic map(
      INIT => X"000000C800000008"
    )
    port map (
      I0 => controlador_Reg_operand(4),
      I1 => controlador_Reg_instruct(4),
      I2 => controlador_Reg_instruct(3),
      I3 => controlador_Reg_instruct(2),
      I4 => controlador_Reg_instruct(5),
      I5 => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_4_Q,
      O => RAM_Addr_4_LogicTrst
    );
  controlador_Mmux_ALU_op71 : LUT6
    generic map(
      INIT => X"0010000000000000"
    )
    port map (
      I0 => controlador_Reg_instruct(6),
      I1 => controlador_Reg_instruct(7),
      I2 => controlador_CurrentState_FSM_FFd3_173,
      I3 => controlador_CurrentState_FSM_FFd2_174,
      I4 => controlador_CurrentState_FSM_FFd1_175,
      I5 => controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_3_Q,
      O => ALU_op(3)
    );
  alu_comp_n0171_inv1 : LUT5
    generic map(
      INIT => X"000DAF00"
    )
    port map (
      I0 => ALU_op(2),
      I1 => ALU_op(0),
      I2 => ALU_op(1),
      I3 => ALU_op(3),
      I4 => ALU_op(4),
      O => alu_comp_n0171_inv
    );
  alu_comp_n0281_4_1 : LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => ALU_op(0),
      I1 => ALU_op(1),
      I2 => ALU_op(4),
      I3 => ALU_op(3),
      I4 => ALU_op(2),
      O => alu_comp_n0281
    );
  RS232_PHY_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT71 : LUT6
    generic map(
      INIT => X"15D50000000015D5"
    )
    port map (
      I0 => RS232_PHY_Receiver_width_count_7_GND_10_o_equal_8_o,
      I1 => RS232_PHY_Receiver_CurrentState_FSM_FFd2_1179,
      I2 => RS232_PHY_Receiver_CurrentState_FSM_FFd1_1195,
      I3 => RS232_PHY_Receiver_width_count_7_PWR_10_o_equal_4_o,
      I4 => RS232_PHY_Receiver_width_count(6),
      I5 => RS232_PHY_Receiver_Madd_width_count_7_GND_10_o_add_26_OUT_xor_6_11,
      O => RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_6_Q
    );
  RS232_PHY_Receiver_Mmux_width_count_7_width_count_7_mux_29_OUT21 : LUT6
    generic map(
      INIT => X"000015D515D50000"
    )
    port map (
      I0 => RS232_PHY_Receiver_width_count_7_GND_10_o_equal_8_o,
      I1 => RS232_PHY_Receiver_CurrentState_FSM_FFd2_1179,
      I2 => RS232_PHY_Receiver_CurrentState_FSM_FFd1_1195,
      I3 => RS232_PHY_Receiver_width_count_7_PWR_10_o_equal_4_o,
      I4 => RS232_PHY_Receiver_width_count(0),
      I5 => RS232_PHY_Receiver_width_count(1),
      O => RS232_PHY_Receiver_width_count_7_width_count_7_mux_29_OUT_1_Q
    );
  RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o_inv1 : LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
    port map (
      I0 => RS232_PHY_Transmitter_width_count(5),
      I1 => RS232_PHY_Transmitter_width_count(3),
      I2 => RS232_PHY_Transmitter_width_count(7),
      I3 => RS232_PHY_Transmitter_width_count(2),
      I4 => N28,
      I5 => RS232_PHY_Transmitter_width_count(1),
      O => RS232_PHY_Transmitter_width_count_7_PWR_9_o_equal_16_o_inv
    );
  RS232_PHY_Transmitter_Mcount_width_count_lut_7_Q : LUT6
    generic map(
      INIT => X"AAAA2AAAAAAAAAAA"
    )
    port map (
      I0 => RS232_PHY_Transmitter_width_count(7),
      I1 => RS232_PHY_Transmitter_width_count(5),
      I2 => RS232_PHY_Transmitter_width_count(3),
      I3 => RS232_PHY_Transmitter_width_count(2),
      I4 => N28,
      I5 => RS232_PHY_Transmitter_width_count(1),
      O => RS232_PHY_Transmitter_Mcount_width_count_lut(7)
    );
  controlador_CurrentState_FSM_FFd2_In2 : LUT6
    generic map(
      INIT => X"0200000002000200"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd3_320,
      I1 => dma_top_CurrentState_FSM_FFd1_322,
      I2 => dma_top_CurrentState_FSM_FFd2_321,
      I3 => controlador_CurrentState_FSM_FFd2_174,
      I4 => dma_top_data_count(0),
      I5 => dma_top_data_count(1),
      O => controlador_CurrentState_FSM_FFd2_In2_1265
    );
  controlador_n0461_inv1 : LUT5
    generic map(
      INIT => X"26222222"
    )
    port map (
      I0 => controlador_CurrentState_FSM_FFd2_174,
      I1 => controlador_CurrentState_FSM_FFd1_175,
      I2 => controlador_Reg_instruct(7),
      I3 => controlador_CurrentState_FSM_FFd3_173,
      I4 => controlador_Reg_instruct(6),
      O => controlador_n0461_inv
    );
  dma_top_Mmux_data_count_tmp21 : LUT4
    generic map(
      INIT => X"6602"
    )
    port map (
      I0 => dma_top_data_count(0),
      I1 => dma_top_data_count(1),
      I2 => dma_top_CurrentState_FSM_FFd2_321,
      I3 => dma_top_CurrentState_FSM_FFd1_322,
      O => dma_top_data_count_tmp(1)
    );
  dma_top_Mmux_data_count_tmp11 : LUT4
    generic map(
      INIT => X"5501"
    )
    port map (
      I0 => dma_top_data_count(0),
      I1 => dma_top_CurrentState_FSM_FFd2_321,
      I2 => dma_top_data_count(1),
      I3 => dma_top_CurrentState_FSM_FFd1_322,
      O => dma_top_data_count_tmp(0)
    );
  RAM_Addr_6_LogicTrst3_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => controlador_Reg_instruct(3),
      I1 => controlador_Reg_operand(6),
      I2 => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_6_Q,
      O => N111
    );
  RAM_Addr_6_LogicTrst3 : LUT5
    generic map(
      INIT => X"AA80FFD5"
    )
    port map (
      I0 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      I1 => RAM_OELogicTrst1,
      I2 => N111,
      I3 => RAM_Addr_6_LogicTrst1,
      I4 => dma_top_CurrentState_2_GND_48_o_Mux_43_o,
      O => RAM_Addr(6)
    );
  RAM_Addr_7_LogicTrst3_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => controlador_Reg_instruct(3),
      I1 => controlador_Reg_operand(7),
      I2 => controlador_Index_Reg_7_Reg_operand_7_add_32_OUT_7_Q,
      O => N113
    );
  RAM_Addr_7_LogicTrst3 : LUT5
    generic map(
      INIT => X"AA80FFD5"
    )
    port map (
      I0 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      I1 => RAM_OELogicTrst1,
      I2 => N113,
      I3 => RAM_Addr_7_LogicTrst1,
      I4 => dma_top_CurrentState_2_GND_48_o_Mux_43_o,
      O => RAM_Addr(7)
    );
  dma_top_Mmux_CurrentState_2_GND_56_o_Mux_59_o11 : LUT6
    generic map(
      INIT => X"2808280828282808"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd3_320,
      I1 => dma_top_CurrentState_FSM_FFd2_321,
      I2 => dma_top_CurrentState_FSM_FFd1_322,
      I3 => dma_top_data_count_2_RX_Full_AND_272_o,
      I4 => dma_top_data_count(1),
      I5 => dma_top_data_count(0),
      O => dma_top_CurrentState_2_GND_56_o_Mux_59_o
    );
  RS232_PHY_Valid_D_TX_RDY_i_AND_20_o1 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => RS232_PHY_Transmitter_CurrentState_FSM_FFd2_1144,
      I1 => RS232_PHY_Transmitter_CurrentState_FSM_FFd1_1162,
      I2 => Valid_d,
      O => RS232_PHY_Valid_D_TX_RDY_i_AND_20_o
    );
  dma_top_CurrentState_FSM_FFd3_In : LUT6
    generic map(
      INIT => X"FFFF7757FFFF2202"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd3_320,
      I1 => dma_top_CurrentState_FSM_FFd2_321,
      I2 => dma_top_data_count(1),
      I3 => dma_top_data_count(0),
      I4 => dma_top_CurrentState_FSM_FFd1_322,
      I5 => N20,
      O => dma_top_CurrentState_FSM_FFd3_In_312
    );
  alu_comp_Mmux_FlagZ_tmp15 : LUT6
    generic map(
      INIT => X"8008000000008008"
    )
    port map (
      I0 => alu_comp_reg_a_7_reg_b_7_equal_11_o2,
      I1 => N115,
      I2 => alu_comp_reg_a(0),
      I3 => alu_comp_reg_b(0),
      I4 => alu_comp_reg_a(4),
      I5 => alu_comp_reg_b(4),
      O => alu_comp_Mmux_FlagZ_tmp14_1246
    );
  controlador_Mcount_prog_count_lut_0_Q : LUT6
    generic map(
      INIT => X"FBAAAAAA08AAAAAA"
    )
    port map (
      I0 => controlador_prog_count(0),
      I1 => controlador_Reg_instruct(0),
      I2 => alu_comp_FlagZ_58,
      I3 => controlador_GND_14_o_Reg_instruct_5_equal_13_o1,
      I4 => controlador_CurrentState_FSM_FFd1_175,
      I5 => controlador_Reg_operand(0),
      O => controlador_Mcount_prog_count_lut(0)
    );
  controlador_Mcount_prog_count_lut_1_Q : LUT6
    generic map(
      INIT => X"FBAAAAAA08AAAAAA"
    )
    port map (
      I0 => controlador_prog_count(1),
      I1 => controlador_Reg_instruct(0),
      I2 => alu_comp_FlagZ_58,
      I3 => controlador_GND_14_o_Reg_instruct_5_equal_13_o1,
      I4 => controlador_CurrentState_FSM_FFd1_175,
      I5 => controlador_Reg_operand(1),
      O => controlador_Mcount_prog_count_lut(1)
    );
  controlador_Mcount_prog_count_lut_2_Q : LUT6
    generic map(
      INIT => X"FBAAAAAA08AAAAAA"
    )
    port map (
      I0 => controlador_prog_count(2),
      I1 => controlador_Reg_instruct(0),
      I2 => alu_comp_FlagZ_58,
      I3 => controlador_GND_14_o_Reg_instruct_5_equal_13_o1,
      I4 => controlador_CurrentState_FSM_FFd1_175,
      I5 => controlador_Reg_operand(2),
      O => controlador_Mcount_prog_count_lut(2)
    );
  controlador_Mcount_prog_count_lut_3_Q : LUT6
    generic map(
      INIT => X"FBAAAAAA08AAAAAA"
    )
    port map (
      I0 => controlador_prog_count(3),
      I1 => controlador_Reg_instruct(0),
      I2 => alu_comp_FlagZ_58,
      I3 => controlador_GND_14_o_Reg_instruct_5_equal_13_o1,
      I4 => controlador_CurrentState_FSM_FFd1_175,
      I5 => controlador_Reg_operand(3),
      O => controlador_Mcount_prog_count_lut(3)
    );
  controlador_Mcount_prog_count_lut_4_Q : LUT6
    generic map(
      INIT => X"FBAAAAAA08AAAAAA"
    )
    port map (
      I0 => controlador_prog_count(4),
      I1 => controlador_Reg_instruct(0),
      I2 => alu_comp_FlagZ_58,
      I3 => controlador_GND_14_o_Reg_instruct_5_equal_13_o1,
      I4 => controlador_CurrentState_FSM_FFd1_175,
      I5 => controlador_Reg_operand(4),
      O => controlador_Mcount_prog_count_lut(4)
    );
  controlador_Mcount_prog_count_lut_5_Q : LUT6
    generic map(
      INIT => X"FBAAAAAA08AAAAAA"
    )
    port map (
      I0 => controlador_prog_count(5),
      I1 => controlador_Reg_instruct(0),
      I2 => alu_comp_FlagZ_58,
      I3 => controlador_GND_14_o_Reg_instruct_5_equal_13_o1,
      I4 => controlador_CurrentState_FSM_FFd1_175,
      I5 => controlador_Reg_operand(5),
      O => controlador_Mcount_prog_count_lut(5)
    );
  controlador_Mcount_prog_count_lut_6_Q : LUT6
    generic map(
      INIT => X"FBAAAAAA08AAAAAA"
    )
    port map (
      I0 => controlador_prog_count(6),
      I1 => controlador_Reg_instruct(0),
      I2 => alu_comp_FlagZ_58,
      I3 => controlador_GND_14_o_Reg_instruct_5_equal_13_o1,
      I4 => controlador_CurrentState_FSM_FFd1_175,
      I5 => controlador_Reg_operand(6),
      O => controlador_Mcount_prog_count_lut(6)
    );
  controlador_Mcount_prog_count_lut_7_Q : LUT6
    generic map(
      INIT => X"FBAAAAAA08AAAAAA"
    )
    port map (
      I0 => controlador_prog_count(7),
      I1 => controlador_Reg_instruct(0),
      I2 => alu_comp_FlagZ_58,
      I3 => controlador_GND_14_o_Reg_instruct_5_equal_13_o1,
      I4 => controlador_CurrentState_FSM_FFd1_175,
      I5 => controlador_Reg_operand(7),
      O => controlador_Mcount_prog_count_lut(7)
    );
  controlador_Mcount_prog_count_lut_8_Q : LUT5
    generic map(
      INIT => X"08AAAAAA"
    )
    port map (
      I0 => controlador_prog_count(8),
      I1 => controlador_Reg_instruct(0),
      I2 => alu_comp_FlagZ_58,
      I3 => controlador_GND_14_o_Reg_instruct_5_equal_13_o1,
      I4 => controlador_CurrentState_FSM_FFd1_175,
      O => controlador_Mcount_prog_count_lut(8)
    );
  controlador_Mcount_prog_count_lut_9_Q : LUT5
    generic map(
      INIT => X"08AAAAAA"
    )
    port map (
      I0 => controlador_prog_count(9),
      I1 => controlador_Reg_instruct(0),
      I2 => alu_comp_FlagZ_58,
      I3 => controlador_GND_14_o_Reg_instruct_5_equal_13_o1,
      I4 => controlador_CurrentState_FSM_FFd1_175,
      O => controlador_Mcount_prog_count_lut(9)
    );
  controlador_Mcount_prog_count_lut_10_Q : LUT5
    generic map(
      INIT => X"08AAAAAA"
    )
    port map (
      I0 => controlador_prog_count(10),
      I1 => controlador_Reg_instruct(0),
      I2 => alu_comp_FlagZ_58,
      I3 => controlador_GND_14_o_Reg_instruct_5_equal_13_o1,
      I4 => controlador_CurrentState_FSM_FFd1_175,
      O => controlador_Mcount_prog_count_lut(10)
    );
  controlador_Mcount_prog_count_lut_11_Q : LUT5
    generic map(
      INIT => X"08AAAAAA"
    )
    port map (
      I0 => controlador_prog_count(11),
      I1 => controlador_Reg_instruct(0),
      I2 => alu_comp_FlagZ_58,
      I3 => controlador_GND_14_o_Reg_instruct_5_equal_13_o1,
      I4 => controlador_CurrentState_FSM_FFd1_175,
      O => controlador_Mcount_prog_count_lut(11)
    );
  alu_comp_Mmux_FlagZ_tmp16 : LUT5
    generic map(
      INIT => X"90000090"
    )
    port map (
      I0 => alu_comp_reg_a(7),
      I1 => alu_comp_reg_b(7),
      I2 => alu_comp_Mmux_FlagZ_tmp14_1246,
      I3 => alu_comp_reg_a(6),
      I4 => alu_comp_reg_b(6),
      O => alu_comp_Mmux_FlagZ_tmp15_1247
    );
  alu_comp_Mmux_FlagZ_tmp15_SW0 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => alu_comp_reg_a(2),
      I1 => alu_comp_reg_b(2),
      I2 => alu_comp_reg_a(3),
      I3 => alu_comp_reg_b(3),
      I4 => alu_comp_reg_a(5),
      I5 => alu_comp_reg_b(5),
      O => N115
    );
  RAM_Data_1_LogicTrst5_1 : LUT4
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(1),
      I1 => RAM_OE,
      I2 => RAM_Data_1_LogicTrst1_1238,
      I3 => N67,
      O => RAM_Data_1_LogicTrst5_1356
    );
  RAM_Data_2_LogicTrst5_1 : LUT4
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(2),
      I1 => RAM_OE,
      I2 => RAM_Data_2_LogicTrst1_1236,
      I3 => N69,
      O => RAM_Data_2_LogicTrst5_1357
    );
  RAM_Data_3_LogicTrst5_1 : LUT4
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(3),
      I1 => RAM_OE,
      I2 => RAM_Data_3_LogicTrst1_1234,
      I3 => N71,
      O => RAM_Data_3_LogicTrst5_1358
    );
  RAM_Data_4_LogicTrst5_1 : LUT4
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(4),
      I1 => RAM_OE,
      I2 => RAM_Data_4_LogicTrst1_1232,
      I3 => N73,
      O => RAM_Data_4_LogicTrst5_1359
    );
  RAM_Data_5_LogicTrst5_1 : LUT4
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(5),
      I1 => RAM_OE,
      I2 => RAM_Data_5_LogicTrst1_1230,
      I3 => N75,
      O => RAM_Data_5_LogicTrst5_1360
    );
  RAM_Data_6_LogicTrst5_1 : LUT4
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(6),
      I1 => RAM_OE,
      I2 => RAM_Data_6_LogicTrst1_1228,
      I3 => N77,
      O => RAM_Data_6_LogicTrst5_1361
    );
  RAM_Data_7_LogicTrst5_1 : LUT4
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(7),
      I1 => RAM_OE,
      I2 => RAM_Data_7_LogicTrst1_1226,
      I3 => N79,
      O => RAM_Data_7_LogicTrst5_1362
    );
  RAM_Data_0_LogicTrst5_1 : LUT4
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => ram_top_gp_ram_n0025(0),
      I1 => RAM_OE,
      I2 => RAM_Data_0_LogicTrst1_1224,
      I3 => N65,
      O => RAM_Data_0_LogicTrst5_1363
    );
  RAM_Addr_1_LogicTrst3_1 : LUT5
    generic map(
      INIT => X"FEFCAAFF"
    )
    port map (
      I0 => dma_top_data_count(1),
      I1 => RAM_Addr_1_LogicTrst1_1258,
      I2 => RAM_Addr_1_LogicTrst,
      I3 => dma_top_CurrentState_2_GND_48_o_Mux_43_o,
      I4 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      O => RAM_Addr_1_LogicTrst3_1364
    );
  RAM_Addr_1_LogicTrst3_2 : LUT5
    generic map(
      INIT => X"FEFCAAFF"
    )
    port map (
      I0 => dma_top_data_count(1),
      I1 => RAM_Addr_1_LogicTrst1_1258,
      I2 => RAM_Addr_1_LogicTrst,
      I3 => dma_top_CurrentState_2_GND_48_o_Mux_43_o,
      I4 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      O => RAM_Addr_1_LogicTrst31
    );
  RAM_Addr_1_LogicTrst3_3 : LUT5
    generic map(
      INIT => X"FEFCAAFF"
    )
    port map (
      I0 => dma_top_data_count(1),
      I1 => RAM_Addr_1_LogicTrst1_1258,
      I2 => RAM_Addr_1_LogicTrst,
      I3 => dma_top_Mmux_CurrentState_2_GND_48_o_Mux_43_o11_1385,
      I4 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      O => RAM_Addr_1_LogicTrst32
    );
  RAM_Addr_1_LogicTrst3_4 : LUT5
    generic map(
      INIT => X"FEFCAAFF"
    )
    port map (
      I0 => dma_top_data_count(1),
      I1 => RAM_Addr_1_LogicTrst1_1258,
      I2 => RAM_Addr_1_LogicTrst,
      I3 => dma_top_Mmux_CurrentState_2_GND_48_o_Mux_43_o11_1385,
      I4 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      O => RAM_Addr_1_LogicTrst33
    );
  RAM_Addr_1_LogicTrst3_5 : LUT5
    generic map(
      INIT => X"FEFCAAFF"
    )
    port map (
      I0 => dma_top_data_count(1),
      I1 => RAM_Addr_1_LogicTrst1_1258,
      I2 => RAM_Addr_1_LogicTrst,
      I3 => dma_top_Mmux_CurrentState_2_GND_48_o_Mux_43_o11_1385,
      I4 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      O => RAM_Addr_1_LogicTrst34
    );
  controlador_CurrentState_FSM_FFd1_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => controlador_CurrentState_FSM_FFd1_In,
      Q => controlador_CurrentState_FSM_FFd1_1_1369
    );
  controlador_Reg_instruct_0_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0435_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_0_Q,
      Q => controlador_Reg_instruct_0_1_1370
    );
  controlador_Reg_instruct_5_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0435_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_5_Q,
      Q => controlador_Reg_instruct_5_1_1371
    );
  controlador_Reg_instruct_2_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0435_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_2_Q,
      Q => controlador_Reg_instruct_2_1_1372
    );
  RAM_Addr_0_LogicTrst3_1 : LUT5
    generic map(
      INIT => X"FEFCAAFF"
    )
    port map (
      I0 => dma_top_data_count(0),
      I1 => RAM_Addr_0_LogicTrst1_1250,
      I2 => RAM_Addr_0_LogicTrst,
      I3 => dma_top_CurrentState_2_GND_48_o_Mux_43_o,
      I4 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      O => RAM_Addr_0_LogicTrst3_1373
    );
  RAM_Addr_0_LogicTrst3_2 : LUT5
    generic map(
      INIT => X"FEFCAAFF"
    )
    port map (
      I0 => dma_top_data_count(0),
      I1 => RAM_Addr_0_LogicTrst1_1250,
      I2 => RAM_Addr_0_LogicTrst,
      I3 => dma_top_CurrentState_2_GND_48_o_Mux_43_o,
      I4 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      O => RAM_Addr_0_LogicTrst31
    );
  RAM_Addr_0_LogicTrst3_3 : LUT5
    generic map(
      INIT => X"FEFCAAFF"
    )
    port map (
      I0 => dma_top_data_count(0),
      I1 => RAM_Addr_0_LogicTrst1_1250,
      I2 => RAM_Addr_0_LogicTrst,
      I3 => dma_top_Mmux_CurrentState_2_GND_48_o_Mux_43_o11_1385,
      I4 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      O => RAM_Addr_0_LogicTrst32
    );
  RAM_Addr_0_LogicTrst3_4 : LUT5
    generic map(
      INIT => X"FEFCAAFF"
    )
    port map (
      I0 => dma_top_data_count(0),
      I1 => RAM_Addr_0_LogicTrst1_1250,
      I2 => RAM_Addr_0_LogicTrst,
      I3 => dma_top_Mmux_CurrentState_2_GND_48_o_Mux_43_o11_1385,
      I4 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      O => RAM_Addr_0_LogicTrst33
    );
  RAM_Addr_0_LogicTrst3_5 : LUT5
    generic map(
      INIT => X"FEFCAAFF"
    )
    port map (
      I0 => dma_top_data_count(0),
      I1 => RAM_Addr_0_LogicTrst1_1250,
      I2 => RAM_Addr_0_LogicTrst,
      I3 => dma_top_Mmux_CurrentState_2_GND_48_o_Mux_43_o11_1385,
      I4 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      O => RAM_Addr_0_LogicTrst34
    );
  controlador_Mmux_ALU_op91_1 : LUT6
    generic map(
      INIT => X"AAAAAAAA22200200"
    )
    port map (
      I0 => controlador_n0461_inv1_1091,
      I1 => controlador_Reg_instruct(6),
      I2 => controlador_Reg_instruct(7),
      I3 => controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_4_Q,
      I4 => controlador_Mmux_ALU_op9111,
      I5 => controlador_Mmux_ALU_op221,
      O => controlador_Mmux_ALU_op91_1378
    );
  RAM_Addr_0_LogicTrst3_6 : LUT5
    generic map(
      INIT => X"FEFCAAFF"
    )
    port map (
      I0 => dma_top_data_count(0),
      I1 => RAM_Addr_0_LogicTrst1_1250,
      I2 => RAM_Addr_0_LogicTrst,
      I3 => dma_top_CurrentState_2_GND_48_o_Mux_43_o,
      I4 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      O => RAM_Addr_0_LogicTrst35
    );
  controlador_Reg_instruct_2_2 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => controlador_n0435_inv,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => ROM_data_2_Q,
      Q => controlador_Reg_instruct_2_2_1380
    );
  dma_top_data_count_1_1 : FDCE
    port map (
      C => Clk_BUFGP_1,
      CE => dma_top_n0165_inv_313,
      CLR => RS232_PHY_Receiver_Reset_inv,
      D => dma_top_data_count_tmp(1),
      Q => dma_top_data_count_1_1_1381
    );
  RAM_Addr_3_LogicTrst3_1 : LUT4
    generic map(
      INIT => X"EE0F"
    )
    port map (
      I0 => RAM_Addr_3_LogicTrst1_1271,
      I1 => RAM_Addr_3_LogicTrst,
      I2 => dma_top_CurrentState_2_GND_48_o_Mux_43_o,
      I3 => controlador_CurrentState_2_PWR_21_o_Mux_76_o,
      O => RAM_Addr_3_LogicTrst3_1382
    );
  controlador_Mmux_ALU_op6_1 : LUT6
    generic map(
      INIT => X"AAAAAAAA02220020"
    )
    port map (
      I0 => controlador_n0461_inv1_1091,
      I1 => controlador_Reg_instruct(6),
      I2 => controlador_Reg_instruct(7),
      I3 => N6,
      I4 => controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_2_Q,
      I5 => controlador_Mmux_ALU_op221,
      O => controlador_Mmux_ALU_op6_1383
    );
  controlador_Mmux_ALU_op2_1 : LUT6
    generic map(
      INIT => X"AAAAAAAA02220020"
    )
    port map (
      I0 => controlador_n0461_inv1_1091,
      I1 => controlador_Reg_instruct(6),
      I2 => controlador_Reg_instruct(7),
      I3 => N4,
      I4 => controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_0_Q,
      I5 => controlador_Mmux_ALU_op221,
      O => controlador_Mmux_ALU_op2_1384
    );
  dma_top_Mmux_CurrentState_2_GND_48_o_Mux_43_o11_1 : LUT6
    generic map(
      INIT => X"28202A2228282A2A"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd3_320,
      I1 => dma_top_CurrentState_FSM_FFd1_322,
      I2 => dma_top_CurrentState_FSM_FFd2_321,
      I3 => dma_top_data_count_2_RX_Full_AND_272_o,
      I4 => N62,
      I5 => N63,
      O => dma_top_Mmux_CurrentState_2_GND_48_o_Mux_43_o11_1385
    );
  alu_comp_Mmux_reg_acc_tmp_A1021_1 : LUT5
    generic map(
      INIT => X"FFFF8088"
    )
    port map (
      I0 => ALU_op(0),
      I1 => ALU_op(4),
      I2 => alu_comp_reg_a(7),
      I3 => alu_comp_reg_a_7_GND_34_o_LessThan_18_o1_216,
      I4 => alu_comp_Mmux_reg_acc_tmp_A101_1082,
      O => alu_comp_Mmux_reg_acc_tmp_A1021_1386
    );
  Clk_BUFGP : BUFGP
    port map (
      I => Clk,
      O => Clk_BUFGP_1
    );
  controlador_CurrentState_2_inv1_INV_0 : INV
    port map (
      I => controlador_CurrentState_FSM_FFd1_175,
      O => controlador_CurrentState_2_inv
    );
  alu_comp_Reset_inv1_INV_0 : INV
    port map (
      I => Reset_IBUF_0,
      O => RS232_PHY_Receiver_Reset_inv
    );
  RS232_PHY_Transmitter_Mcount_data_count_xor_0_11_INV_0 : INV
    port map (
      I => RS232_PHY_Transmitter_data_count(0),
      O => RS232_PHY_Transmitter_Mcount_data_count
    );
  RS232_PHY_Receiver_Mcount_data_count_xor_0_11_INV_0 : INV
    port map (
      I => RS232_PHY_Receiver_data_count(0),
      O => RS232_PHY_Receiver_Mcount_data_count
    );
  RS232_PHY_Shift_Mcount_i_xor_0_11_INV_0 : INV
    port map (
      I => RS232_PHY_Shift_i(0),
      O => RS232_PHY_Shift_Result(0)
    );
  controlador_CurrentState_FSM_FFd1_In3 : MUXF7
    port map (
      I0 => N117,
      I1 => N118,
      S => controlador_CurrentState_FSM_FFd2_174,
      O => controlador_CurrentState_FSM_FFd1_In
    );
  controlador_CurrentState_FSM_FFd1_In3_F : LUT5
    generic map(
      INIT => X"8A028802"
    )
    port map (
      I0 => controlador_CurrentState_FSM_FFd1_175,
      I1 => controlador_Reg_instruct(6),
      I2 => controlador_CurrentState_FSM_FFd3_173,
      I3 => controlador_Reg_instruct(7),
      I4 => controlador_GND_14_o_Reg_instruct_5_equal_13_o11_1085,
      O => N117
    );
  controlador_CurrentState_FSM_FFd1_In3_G : LUT6
    generic map(
      INIT => X"BBBBBBBBBBBFBBBB"
    )
    port map (
      I0 => controlador_CurrentState_FSM_FFd3_173,
      I1 => controlador_CurrentState_FSM_FFd1_175,
      I2 => dma_top_CurrentState_FSM_FFd1_322,
      I3 => dma_top_CurrentState_FSM_FFd2_321,
      I4 => dma_top_CurrentState_FSM_FFd3_320,
      I5 => dma_top_data_count_2_GND_47_o_equal_18_o,
      O => N118
    );
  controlador_CurrentState_FSM_FFd2_In4 : MUXF7
    port map (
      I0 => N119,
      I1 => N120,
      S => controlador_CurrentState_FSM_FFd1_175,
      O => controlador_CurrentState_FSM_FFd2_In
    );
  controlador_CurrentState_FSM_FFd2_In4_F : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => controlador_CurrentState_FSM_FFd3_173,
      I1 => DMA_RQ,
      I2 => controlador_CurrentState_FSM_FFd2_174,
      O => N119
    );
  controlador_CurrentState_FSM_FFd2_In4_G : LUT6
    generic map(
      INIT => X"FFFFFFFFB010B110"
    )
    port map (
      I0 => controlador_CurrentState_FSM_FFd3_173,
      I1 => controlador_CurrentState_FSM_FFd2_174,
      I2 => controlador_Reg_instruct(6),
      I3 => controlador_Reg_instruct(7),
      I4 => controlador_GND_14_o_Reg_instruct_5_equal_13_o11_1085,
      I5 => controlador_CurrentState_FSM_FFd2_In2_1265,
      O => N120
    );
  dma_top_n0165_inv : MUXF7
    port map (
      I0 => N121,
      I1 => N122,
      S => dma_top_CurrentState_FSM_FFd1_322,
      O => dma_top_n0165_inv_313
    );
  dma_top_n0165_inv_F : LUT6
    generic map(
      INIT => X"A888A888AAAAA888"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd3_320,
      I1 => dma_top_CurrentState_FSM_FFd2_321,
      I2 => RS232_PHY_Ack_in_11,
      I3 => TX_RDY,
      I4 => dma_top_data_count(1),
      I5 => dma_top_data_count(0),
      O => N121
    );
  dma_top_n0165_inv_G : LUT6
    generic map(
      INIT => X"0000000220202022"
    )
    port map (
      I0 => dma_top_CurrentState_FSM_FFd3_320,
      I1 => dma_top_CurrentState_FSM_FFd2_321,
      I2 => dma_top_data_count(1),
      I3 => RX_Full,
      I4 => RX_Empty,
      I5 => dma_top_data_count(0),
      O => N122
    );
  dma_top_Mmux_Data_Read1 : MUXF7
    port map (
      I0 => N123,
      I1 => N124,
      S => dma_top_CurrentState_FSM_FFd3_320,
      O => Data_read
    );
  dma_top_Mmux_Data_Read1_F : LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => controlador_CurrentState_FSM_FFd3_173,
      I1 => dma_top_CurrentState_FSM_FFd1_322,
      I2 => controlador_CurrentState_FSM_FFd1_175,
      I3 => controlador_CurrentState_FSM_FFd2_174,
      I4 => dma_top_CurrentState_FSM_FFd2_321,
      O => N123
    );
  dma_top_Mmux_Data_Read1_G : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => RX_Empty,
      I1 => RX_Full,
      I2 => dma_top_CurrentState_FSM_FFd1_322,
      I3 => dma_top_data_count(1),
      I4 => dma_top_CurrentState_FSM_FFd2_321,
      O => N124
    );
  alu_comp_Mmux_reg_acc_tmp_A23 : MUXF7
    port map (
      I0 => N125,
      I1 => N126,
      S => ALU_op(2),
      O => alu_comp_Mmux_reg_acc_tmp_A22
    );
  alu_comp_Mmux_reg_acc_tmp_A23_F : LUT5
    generic map(
      INIT => X"4E444444"
    )
    port map (
      I0 => ALU_op(1),
      I1 => alu_comp_reg_a(0),
      I2 => ALU_op(4),
      I3 => ALU_op(0),
      I4 => alu_comp_reg_acc(1),
      O => N125
    );
  alu_comp_Mmux_reg_acc_tmp_A23_G : LUT5
    generic map(
      INIT => X"444076C8"
    )
    port map (
      I0 => ALU_op(1),
      I1 => alu_comp_reg_a(0),
      I2 => ALU_op(0),
      I3 => alu_comp_reg_b(0),
      I4 => ALU_op(4),
      O => N126
    );
  rom_comp_Mram_n068014_f7 : MUXF7
    port map (
      I0 => rom_comp_Mram_n0680141_1401,
      I1 => rom_comp_Mram_n068014_1402,
      S => controlador_prog_count(6),
      O => rom_comp_Mram_n068014_f7_1400
    );
  rom_comp_Mram_n068012_f7 : MUXF7
    port map (
      I0 => rom_comp_Mram_n0680121_1407,
      I1 => rom_comp_Mram_n068012_1408,
      S => controlador_prog_count(6),
      O => rom_comp_Mram_n068012_f7_1406
    );
  rom_comp_Mram_n068014_f7_0 : MUXF7
    port map (
      I0 => rom_comp_Mram_n0680143_1398,
      I1 => rom_comp_Mram_n0680142_1399,
      S => controlador_prog_count(6),
      O => rom_comp_Mram_n068014_f71
    );
  rom_comp_Mram_n068012_f7_0 : MUXF7
    port map (
      I0 => rom_comp_Mram_n0680123_1404,
      I1 => rom_comp_Mram_n0680122_1405,
      S => controlador_prog_count(6),
      O => rom_comp_Mram_n068012_f71
    );
  rom_comp_Mram_n068010_f7 : MUXF7
    port map (
      I0 => rom_comp_Mram_n0680101_1413,
      I1 => rom_comp_Mram_n068010_1414,
      S => controlador_prog_count(6),
      O => rom_comp_Mram_n068010_f7_1412
    );
  rom_comp_Mram_n06808_f7 : MUXF7
    port map (
      I0 => rom_comp_Mram_n068081_1419,
      I1 => rom_comp_Mram_n06808_1420,
      S => controlador_prog_count(6),
      O => rom_comp_Mram_n06808_f7_1418
    );
  rom_comp_Mram_n068010_f7_0 : MUXF7
    port map (
      I0 => rom_comp_Mram_n0680103_1410,
      I1 => rom_comp_Mram_n0680102_1411,
      S => controlador_prog_count(6),
      O => rom_comp_Mram_n068010_f71
    );
  rom_comp_Mram_n06806_f7 : MUXF7
    port map (
      I0 => rom_comp_Mram_n068061_1425,
      I1 => rom_comp_Mram_n06806_1426,
      S => controlador_prog_count(6),
      O => rom_comp_Mram_n06806_f7_1424
    );
  rom_comp_Mram_n06806_f7_0 : MUXF7
    port map (
      I0 => rom_comp_Mram_n068063_1422,
      I1 => rom_comp_Mram_n068062_1423,
      S => controlador_prog_count(6),
      O => rom_comp_Mram_n06806_f71
    );
  rom_comp_Mram_n06808_f7_0 : MUXF7
    port map (
      I0 => rom_comp_Mram_n068083_1416,
      I1 => rom_comp_Mram_n068082_1417,
      S => controlador_prog_count(6),
      O => rom_comp_Mram_n06808_f71
    );
  rom_comp_Mram_n06804_f7 : MUXF7
    port map (
      I0 => rom_comp_Mram_n068041_1431,
      I1 => rom_comp_Mram_n06804_1432,
      S => controlador_prog_count(6),
      O => rom_comp_Mram_n06804_f7_1430
    );
  rom_comp_Mram_n06804_f7_0 : MUXF7
    port map (
      I0 => rom_comp_Mram_n068043_1428,
      I1 => rom_comp_Mram_n068042_1429,
      S => controlador_prog_count(6),
      O => rom_comp_Mram_n06804_f71
    );
  rom_comp_Mram_n06802_f7 : MUXF7
    port map (
      I0 => rom_comp_Mram_n068022_1437,
      I1 => rom_comp_Mram_n068021_1438,
      S => controlador_prog_count(6),
      O => rom_comp_Mram_n06802_f7_1436
    );
  rom_comp_Mram_n06802_f7_0 : MUXF7
    port map (
      I0 => rom_comp_Mram_n068024_1434,
      I1 => rom_comp_Mram_n068023_1435,
      S => controlador_prog_count(6),
      O => rom_comp_Mram_n06802_f71
    );
  rom_comp_Mram_n0680_f7 : MUXF7
    port map (
      I0 => rom_comp_Mram_n06801_1443,
      I1 => rom_comp_Mram_n0680,
      S => controlador_prog_count(6),
      O => rom_comp_Mram_n0680_f7_1442
    );
  rom_comp_Mram_n0680_f7_0 : MUXF7
    port map (
      I0 => rom_comp_Mram_n06803_1440,
      I1 => rom_comp_Mram_n06802_1441,
      S => controlador_prog_count(6),
      O => rom_comp_Mram_n0680_f71
    );
  rom_comp_Mram_n068014_f8 : MUXF8
    port map (
      I0 => rom_comp_Mram_n068014_f71,
      I1 => rom_comp_Mram_n068014_f7_1400,
      S => controlador_prog_count(7),
      O => rom_comp_n0680(5)
    );
  rom_comp_Mram_n068012_f8 : MUXF8
    port map (
      I0 => rom_comp_Mram_n068012_f71,
      I1 => rom_comp_Mram_n068012_f7_1406,
      S => controlador_prog_count(7),
      O => rom_comp_n0680(6)
    );
  rom_comp_Mram_n068010_f8 : MUXF8
    port map (
      I0 => rom_comp_Mram_n068010_f71,
      I1 => rom_comp_Mram_n068010_f7_1412,
      S => controlador_prog_count(7),
      O => rom_comp_n0680(7)
    );
  rom_comp_Mram_n06808_f8 : MUXF8
    port map (
      I0 => rom_comp_Mram_n06808_f71,
      I1 => rom_comp_Mram_n06808_f7_1418,
      S => controlador_prog_count(7),
      O => rom_comp_n0680(8)
    );
  rom_comp_Mram_n06806_f8 : MUXF8
    port map (
      I0 => rom_comp_Mram_n06806_f71,
      I1 => rom_comp_Mram_n06806_f7_1424,
      S => controlador_prog_count(7),
      O => rom_comp_n0680(9)
    );
  rom_comp_Mram_n06804_f8 : MUXF8
    port map (
      I0 => rom_comp_Mram_n06804_f71,
      I1 => rom_comp_Mram_n06804_f7_1430,
      S => controlador_prog_count(7),
      O => rom_comp_n0680(10)
    );
  rom_comp_Mram_n06802_f8 : MUXF8
    port map (
      I0 => rom_comp_Mram_n06802_f71,
      I1 => rom_comp_Mram_n06802_f7_1436,
      S => controlador_prog_count(7),
      O => rom_comp_n0680(11)
    );
  rom_comp_Mram_n0680_f8 : MUXF8
    port map (
      I0 => rom_comp_Mram_n0680_f71,
      I1 => rom_comp_Mram_n0680_f7_1442,
      S => controlador_prog_count(7),
      O => rom_comp_n0680(12)
    );
  rom_comp_Mram_n0680143 : LUT6
    generic map(
      INIT => X"2054B920622ABB81"
    )
    port map (
      I0 => controlador_prog_count(0),
      I1 => controlador_prog_count(2),
      I2 => controlador_prog_count(5),
      I3 => controlador_prog_count(1),
      I4 => controlador_prog_count(3),
      I5 => controlador_prog_count(4),
      O => rom_comp_Mram_n0680143_1398
    );
  rom_comp_Mram_n0680142 : LUT6
    generic map(
      INIT => X"0D9908A9C6905799"
    )
    port map (
      I0 => controlador_prog_count(4),
      I1 => controlador_prog_count(1),
      I2 => controlador_prog_count(0),
      I3 => controlador_prog_count(3),
      I4 => controlador_prog_count(2),
      I5 => controlador_prog_count(5),
      O => rom_comp_Mram_n0680142_1399
    );
  rom_comp_Mram_n0680141 : LUT6
    generic map(
      INIT => X"8943600667E35BC3"
    )
    port map (
      I0 => controlador_prog_count(2),
      I1 => controlador_prog_count(3),
      I2 => controlador_prog_count(1),
      I3 => controlador_prog_count(5),
      I4 => controlador_prog_count(4),
      I5 => controlador_prog_count(0),
      O => rom_comp_Mram_n0680141_1401
    );
  rom_comp_Mram_n068014 : LUT6
    generic map(
      INIT => X"1114101441101011"
    )
    port map (
      I0 => controlador_prog_count(5),
      I1 => controlador_prog_count(0),
      I2 => controlador_prog_count(3),
      I3 => controlador_prog_count(2),
      I4 => controlador_prog_count(1),
      I5 => controlador_prog_count(4),
      O => rom_comp_Mram_n068014_1402
    );
  rom_comp_Mram_n0680123 : LUT6
    generic map(
      INIT => X"C685148240562626"
    )
    port map (
      I0 => controlador_prog_count(5),
      I1 => controlador_prog_count(4),
      I2 => controlador_prog_count(2),
      I3 => controlador_prog_count(3),
      I4 => controlador_prog_count(0),
      I5 => controlador_prog_count(1),
      O => rom_comp_Mram_n0680123_1404
    );
  rom_comp_Mram_n0680122 : LUT6
    generic map(
      INIT => X"121061880648C009"
    )
    port map (
      I0 => controlador_prog_count(0),
      I1 => controlador_prog_count(1),
      I2 => controlador_prog_count(4),
      I3 => controlador_prog_count(2),
      I4 => controlador_prog_count(3),
      I5 => controlador_prog_count(5),
      O => rom_comp_Mram_n0680122_1405
    );
  rom_comp_Mram_n0680121 : LUT6
    generic map(
      INIT => X"48054140A0066496"
    )
    port map (
      I0 => controlador_prog_count(4),
      I1 => controlador_prog_count(0),
      I2 => controlador_prog_count(3),
      I3 => controlador_prog_count(1),
      I4 => controlador_prog_count(5),
      I5 => controlador_prog_count(2),
      O => rom_comp_Mram_n0680121_1407
    );
  rom_comp_Mram_n068012 : LUT6
    generic map(
      INIT => X"4040400040044001"
    )
    port map (
      I0 => controlador_prog_count(5),
      I1 => controlador_prog_count(4),
      I2 => controlador_prog_count(1),
      I3 => controlador_prog_count(0),
      I4 => controlador_prog_count(2),
      I5 => controlador_prog_count(3),
      O => rom_comp_Mram_n068012_1408
    );
  rom_comp_Mram_n0680103 : LUT6
    generic map(
      INIT => X"0010002104001020"
    )
    port map (
      I0 => controlador_prog_count(3),
      I1 => controlador_prog_count(4),
      I2 => controlador_prog_count(0),
      I3 => controlador_prog_count(1),
      I4 => controlador_prog_count(2),
      I5 => controlador_prog_count(5),
      O => rom_comp_Mram_n0680103_1410
    );
  rom_comp_Mram_n0680102 : LUT6
    generic map(
      INIT => X"6204200031200014"
    )
    port map (
      I0 => controlador_prog_count(1),
      I1 => controlador_prog_count(2),
      I2 => controlador_prog_count(0),
      I3 => controlador_prog_count(4),
      I4 => controlador_prog_count(3),
      I5 => controlador_prog_count(5),
      O => rom_comp_Mram_n0680102_1411
    );
  rom_comp_Mram_n0680101 : LUT6
    generic map(
      INIT => X"4014010040404020"
    )
    port map (
      I0 => controlador_prog_count(0),
      I1 => controlador_prog_count(2),
      I2 => controlador_prog_count(3),
      I3 => controlador_prog_count(1),
      I4 => controlador_prog_count(4),
      I5 => controlador_prog_count(5),
      O => rom_comp_Mram_n0680101_1413
    );
  rom_comp_Mram_n068010 : LUT6
    generic map(
      INIT => X"0100000001411001"
    )
    port map (
      I0 => controlador_prog_count(5),
      I1 => controlador_prog_count(1),
      I2 => controlador_prog_count(0),
      I3 => controlador_prog_count(4),
      I4 => controlador_prog_count(3),
      I5 => controlador_prog_count(2),
      O => rom_comp_Mram_n068010_1414
    );
  rom_comp_Mram_n068083 : LUT6
    generic map(
      INIT => X"0821510000418041"
    )
    port map (
      I0 => controlador_prog_count(2),
      I1 => controlador_prog_count(4),
      I2 => controlador_prog_count(3),
      I3 => controlador_prog_count(0),
      I4 => controlador_prog_count(5),
      I5 => controlador_prog_count(1),
      O => rom_comp_Mram_n068083_1416
    );
  rom_comp_Mram_n068082 : LUT6
    generic map(
      INIT => X"4C08882000C28285"
    )
    port map (
      I0 => controlador_prog_count(2),
      I1 => controlador_prog_count(1),
      I2 => controlador_prog_count(3),
      I3 => controlador_prog_count(5),
      I4 => controlador_prog_count(0),
      I5 => controlador_prog_count(4),
      O => rom_comp_Mram_n068082_1417
    );
  rom_comp_Mram_n068081 : LUT6
    generic map(
      INIT => X"6019200880390900"
    )
    port map (
      I0 => controlador_prog_count(1),
      I1 => controlador_prog_count(3),
      I2 => controlador_prog_count(5),
      I3 => controlador_prog_count(2),
      I4 => controlador_prog_count(4),
      I5 => controlador_prog_count(0),
      O => rom_comp_Mram_n068081_1419
    );
  rom_comp_Mram_n06808 : LUT6
    generic map(
      INIT => X"1000100000001001"
    )
    port map (
      I0 => controlador_prog_count(2),
      I1 => controlador_prog_count(5),
      I2 => controlador_prog_count(3),
      I3 => controlador_prog_count(1),
      I4 => controlador_prog_count(4),
      I5 => controlador_prog_count(0),
      O => rom_comp_Mram_n06808_1420
    );
  rom_comp_Mram_n068063 : LUT6
    generic map(
      INIT => X"144C4644A6941134"
    )
    port map (
      I0 => controlador_prog_count(3),
      I1 => controlador_prog_count(1),
      I2 => controlador_prog_count(5),
      I3 => controlador_prog_count(2),
      I4 => controlador_prog_count(4),
      I5 => controlador_prog_count(0),
      O => rom_comp_Mram_n068063_1422
    );
  rom_comp_Mram_n068062 : LUT6
    generic map(
      INIT => X"1004156011118420"
    )
    port map (
      I0 => controlador_prog_count(3),
      I1 => controlador_prog_count(2),
      I2 => controlador_prog_count(1),
      I3 => controlador_prog_count(4),
      I4 => controlador_prog_count(5),
      I5 => controlador_prog_count(0),
      O => rom_comp_Mram_n068062_1423
    );
  rom_comp_Mram_n068061 : LUT6
    generic map(
      INIT => X"911820B404928981"
    )
    port map (
      I0 => controlador_prog_count(4),
      I1 => controlador_prog_count(0),
      I2 => controlador_prog_count(1),
      I3 => controlador_prog_count(5),
      I4 => controlador_prog_count(3),
      I5 => controlador_prog_count(2),
      O => rom_comp_Mram_n068061_1425
    );
  rom_comp_Mram_n06806 : LUT6
    generic map(
      INIT => X"0000104004411000"
    )
    port map (
      I0 => controlador_prog_count(5),
      I1 => controlador_prog_count(1),
      I2 => controlador_prog_count(2),
      I3 => controlador_prog_count(3),
      I4 => controlador_prog_count(4),
      I5 => controlador_prog_count(0),
      O => rom_comp_Mram_n06806_1426
    );
  rom_comp_Mram_n068044 : LUT6
    generic map(
      INIT => X"14814262072404E2"
    )
    port map (
      I0 => controlador_prog_count(5),
      I1 => controlador_prog_count(4),
      I2 => controlador_prog_count(2),
      I3 => controlador_prog_count(3),
      I4 => controlador_prog_count(0),
      I5 => controlador_prog_count(1),
      O => rom_comp_Mram_n068043_1428
    );
  rom_comp_Mram_n068043 : LUT6
    generic map(
      INIT => X"04084A10004122A1"
    )
    port map (
      I0 => controlador_prog_count(2),
      I1 => controlador_prog_count(1),
      I2 => controlador_prog_count(3),
      I3 => controlador_prog_count(5),
      I4 => controlador_prog_count(0),
      I5 => controlador_prog_count(4),
      O => rom_comp_Mram_n068042_1429
    );
  rom_comp_Mram_n068042 : LUT6
    generic map(
      INIT => X"2016488222254D20"
    )
    port map (
      I0 => controlador_prog_count(3),
      I1 => controlador_prog_count(5),
      I2 => controlador_prog_count(2),
      I3 => controlador_prog_count(4),
      I4 => controlador_prog_count(1),
      I5 => controlador_prog_count(0),
      O => rom_comp_Mram_n068041_1431
    );
  rom_comp_Mram_n068041 : LUT6
    generic map(
      INIT => X"1410104011141110"
    )
    port map (
      I0 => controlador_prog_count(5),
      I1 => controlador_prog_count(1),
      I2 => controlador_prog_count(3),
      I3 => controlador_prog_count(0),
      I4 => controlador_prog_count(4),
      I5 => controlador_prog_count(2),
      O => rom_comp_Mram_n06804_1432
    );
  rom_comp_Mram_n068024 : LUT6
    generic map(
      INIT => X"08782A2523AA974C"
    )
    port map (
      I0 => controlador_prog_count(4),
      I1 => controlador_prog_count(1),
      I2 => controlador_prog_count(3),
      I3 => controlador_prog_count(5),
      I4 => controlador_prog_count(2),
      I5 => controlador_prog_count(0),
      O => rom_comp_Mram_n068024_1434
    );
  rom_comp_Mram_n068023 : LUT6
    generic map(
      INIT => X"693023C565E66743"
    )
    port map (
      I0 => controlador_prog_count(4),
      I1 => controlador_prog_count(3),
      I2 => controlador_prog_count(1),
      I3 => controlador_prog_count(5),
      I4 => controlador_prog_count(0),
      I5 => controlador_prog_count(2),
      O => rom_comp_Mram_n068023_1435
    );
  rom_comp_Mram_n068022 : LUT6
    generic map(
      INIT => X"824DD222101E3511"
    )
    port map (
      I0 => controlador_prog_count(2),
      I1 => controlador_prog_count(5),
      I2 => controlador_prog_count(1),
      I3 => controlador_prog_count(4),
      I4 => controlador_prog_count(3),
      I5 => controlador_prog_count(0),
      O => rom_comp_Mram_n068022_1437
    );
  rom_comp_Mram_n068021 : LUT6
    generic map(
      INIT => X"1000050104040414"
    )
    port map (
      I0 => controlador_prog_count(5),
      I1 => controlador_prog_count(2),
      I2 => controlador_prog_count(4),
      I3 => controlador_prog_count(0),
      I4 => controlador_prog_count(3),
      I5 => controlador_prog_count(1),
      O => rom_comp_Mram_n068021_1438
    );
  rom_comp_Mram_n06804 : LUT6
    generic map(
      INIT => X"A8B9907D59996A99"
    )
    port map (
      I0 => controlador_prog_count(3),
      I1 => controlador_prog_count(1),
      I2 => controlador_prog_count(4),
      I3 => controlador_prog_count(5),
      I4 => controlador_prog_count(2),
      I5 => controlador_prog_count(0),
      O => rom_comp_Mram_n06803_1440
    );
  rom_comp_Mram_n06803 : LUT6
    generic map(
      INIT => X"B9A7D28628B740B2"
    )
    port map (
      I0 => controlador_prog_count(3),
      I1 => controlador_prog_count(1),
      I2 => controlador_prog_count(0),
      I3 => controlador_prog_count(5),
      I4 => controlador_prog_count(2),
      I5 => controlador_prog_count(4),
      O => rom_comp_Mram_n06802_1441
    );
  rom_comp_Mram_n06802 : LUT6
    generic map(
      INIT => X"3AEDCFBD9000233A"
    )
    port map (
      I0 => controlador_prog_count(2),
      I1 => controlador_prog_count(4),
      I2 => controlador_prog_count(1),
      I3 => controlador_prog_count(3),
      I4 => controlador_prog_count(5),
      I5 => controlador_prog_count(0),
      O => rom_comp_Mram_n06801_1443
    );
  rom_comp_Mram_n06801 : LUT6
    generic map(
      INIT => X"0051415540400144"
    )
    port map (
      I0 => controlador_prog_count(5),
      I1 => controlador_prog_count(2),
      I2 => controlador_prog_count(0),
      I3 => controlador_prog_count(4),
      I4 => controlador_prog_count(3),
      I5 => controlador_prog_count(1),
      O => rom_comp_Mram_n0680
    );
  controlador_Mram_Reg_instruct_5_GND_14_o_wide_mux_9_OUT41 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => controlador_Reg_instruct(4),
      I1 => controlador_Reg_instruct(3),
      I2 => controlador_Reg_instruct(2),
      I3 => controlador_Reg_instruct(5),
      O => controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_4_Q
    );
  controlador_Mram_Reg_instruct_5_GND_14_o_wide_mux_9_OUT31 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => controlador_Reg_instruct(4),
      I1 => controlador_Reg_instruct(3),
      I2 => controlador_Reg_instruct(5),
      O => controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_3_Q
    );
  controlador_Mram_Reg_instruct_5_GND_14_o_wide_mux_9_OUT21 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => controlador_Reg_instruct(4),
      I1 => controlador_Reg_instruct(3),
      I2 => controlador_Reg_instruct(2),
      I3 => controlador_Reg_instruct(5),
      O => controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_2_Q
    );
  controlador_Mram_Reg_instruct_5_GND_14_o_wide_mux_9_OUT111 : LUT5
    generic map(
      INIT => X"00000222"
    )
    port map (
      I0 => controlador_Reg_instruct(1),
      I1 => controlador_Reg_instruct(4),
      I2 => controlador_Reg_instruct(3),
      I3 => controlador_Reg_instruct(2),
      I4 => controlador_Reg_instruct(5),
      O => controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_1_Q
    );
  controlador_Mram_Reg_instruct_5_GND_14_o_wide_mux_9_OUT12 : LUT6
    generic map(
      INIT => X"0000000003230010"
    )
    port map (
      I0 => controlador_Reg_instruct(1),
      I1 => controlador_Reg_instruct(4),
      I2 => controlador_Reg_instruct(3),
      I3 => controlador_Reg_instruct(2),
      I4 => controlador_Reg_instruct(0),
      I5 => controlador_Reg_instruct(5),
      O => controlador_Reg_instruct_5_GND_14_o_wide_mux_9_OUT_0_Q
    );
  RS232_PHY_Internal_memory : FIFO
    port map (
      rd_en => Data_read,
      wr_en => RS232_PHY_Fifo_write,
      full => RX_Full,
      empty => RX_Empty,
      clk => Clk_BUFGP_1,
      rst => RS232_PHY_Receiver_Reset_inv,
      dout(7) => Data_out(7),
      dout(6) => Data_out(6),
      dout(5) => Data_out(5),
      dout(4) => Data_out(4),
      dout(3) => Data_out(3),
      dout(2) => Data_out(2),
      dout(1) => Data_out(1),
      dout(0) => Data_out(0),
      din(7) => RS232_PHY_Shift_Q(7),
      din(6) => RS232_PHY_Shift_Q(6),
      din(5) => RS232_PHY_Shift_Q(5),
      din(4) => RS232_PHY_Shift_Q(4),
      din(3) => RS232_PHY_Shift_Q(3),
      din(2) => RS232_PHY_Shift_Q(2),
      din(1) => RS232_PHY_Shift_Q(1),
      din(0) => RS232_PHY_Shift_Q(0)
    );

end Structure;

-- synthesis translate_on
