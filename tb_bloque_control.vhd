--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:54:32 01/10/2016
-- Design Name:   
-- Module Name:   C:/Users/rboq/Documents/LCSE/PRACTICAIII/LCSE-PIII/tb_bloque_control.vhd
-- Project Name:  LCSE-PIII
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bloque_control
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_bloque_control IS
END tb_bloque_control;
 
ARCHITECTURE behavior OF tb_bloque_control IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bloque_control
    PORT(
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         RAM_Addr : OUT  std_logic_vector(7 downto 0);
         RAM_CS : OUT  std_logic;
         RAM_Write : OUT  std_logic;
         RAM_OE : OUT  std_logic;
         Databus : INOUT  std_logic_vector(7 downto 0);
         DMA_RQ : IN  std_logic;
         DMA_ACK : OUT  std_logic;
         SEND_comm : OUT  std_logic;
         DMA_READY : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';
   signal DMA_RQ : std_logic := '0';
   signal DMA_READY : std_logic := '0';

	--BiDirs
   signal Databus : std_logic_vector(7 downto 0);

 	--Outputs
   signal RAM_Addr : std_logic_vector(7 downto 0);
   signal RAM_CS : std_logic;
   signal RAM_Write : std_logic;
   signal RAM_OE : std_logic;
   signal DMA_ACK : std_logic;
   signal SEND_comm : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bloque_control PORT MAP (
          Reset => Reset,
          Clk => Clk,
          RAM_Addr => RAM_Addr,
          RAM_CS => RAM_CS,
          RAM_Write => RAM_Write,
          RAM_OE => RAM_OE,
          Databus => Databus,
          DMA_RQ => DMA_RQ,
          DMA_ACK => DMA_ACK,
          SEND_comm => SEND_comm,
          DMA_READY => DMA_READY
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
       -- hold reset state for 100 ns.
      Reset  <= '0', '1' after 75 ns;
		DMA_RQ <= '1', '0' after 200 ns;
		DMA_READY <= '0';


      -- insert stimulus here 

      wait;
   end process;

END;
