--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:37:09 10/30/2015
-- Design Name:   
-- Module Name:   C:/Users/rboq/Documents/LCSE/ShiftRegister/ts_ShiftRegister.vhd
-- Project Name:  ShiftRegister
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ShiftRegister
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
 
ENTITY ts_ShiftRegister IS
END ts_ShiftRegister;
 
ARCHITECTURE behavior OF ts_ShiftRegister IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ShiftRegister
    PORT(
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         Enable : IN  std_logic;
         Entrada : IN  std_logic;
         Salida : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Enable : std_logic := '0';
   signal Entrada : std_logic := '0';

 	--Outputs
   signal Salida : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ShiftRegister PORT MAP (
          Reset => Reset,
          Clk => Clk,
          Enable => Enable,
          Entrada => Entrada,
          Salida => Salida
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
      Reset<='0';
		-- hold reset state for 100 ns.
      wait for 100 ns;	
		Reset<='1';
		Entrada<='0';
		Enable<='1';
		wait for Clk_period;
		Enable<='0';
		wait for Clk_period*2;
		Entrada<='1';
		Enable<='1';
		wait for Clk_period;
		Enable<='0';
		wait for Clk_period*2;
		Entrada<='0';
		Enable<='1';
		wait for Clk_period;
		Enable<='0';
		wait for Clk_period*2;
		Entrada<='1';
		Enable<='1';
		wait for Clk_period;
		Enable<='0';
		wait for Clk_period*2;
		Entrada<='0';
		Enable<='1';
		wait for Clk_period;
		Enable<='0';
		wait for Clk_period*2;
		Entrada<='1';
		Enable<='1';
		wait for Clk_period;
		Enable<='0';
		wait for Clk_period*2;
		Entrada<='0';
		Enable<='1';
		wait for Clk_period;
		Enable<='0';
		Reset<='0';
		wait;

		
		
		
      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
