--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:05:25 11/27/2015
-- Design Name:   
-- Module Name:   C:/Users/rboq/Documents/LCSE/PRACTICAIII/LCSE-PIII/tb_ram.vhd
-- Project Name:  LCSE-PIII
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ram
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
 
ENTITY tb_ram IS
END tb_ram;
 
ARCHITECTURE behavior OF tb_ram IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ram
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         write_en : IN  std_logic;
         oe : IN  std_logic;
         address : IN  std_logic_vector(7 downto 0);
         databus : INOUT  std_logic_vector(7 downto 0);
         switches : OUT  std_logic_vector(7 downto 0);
         temp_l : OUT  std_logic_vector(3 downto 0);
         temp_h : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal write_en : std_logic := '0';
   signal oe : std_logic := '0';
   signal address : std_logic_vector(7 downto 0) := (others => '0');

	--BiDirs
   signal databus : std_logic_vector(7 downto 0);

 	--Outputs
   signal switches : std_logic_vector(7 downto 0);
   signal temp_l : std_logic_vector(3 downto 0);
   signal temp_h : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ram PORT MAP (
          Clk => Clk,
          Reset => Reset,
          write_en => write_en,
          oe => oe,
          address => address,
          databus => databus,
          switches => switches,
          temp_l => temp_l,
          temp_h => temp_h
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
      wait for 100 ns;	
		address<="00000000";
		databus<="01010101";
      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
