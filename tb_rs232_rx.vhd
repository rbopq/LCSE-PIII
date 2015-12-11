--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:37:12 11/05/2015
-- Design Name:   
-- Module Name:   C:/Users/rboq/Documents/LCSE/RS232_RX/tb_rs232_rx.vhd
-- Project Name:  RS232_RX
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RS232_RX
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
 
ENTITY tb_rs232_rx IS
END tb_rs232_rx;
 
ARCHITECTURE behavior OF tb_rs232_rx IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RS232_RX
    PORT(
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         LineRD_in : IN  std_logic;
         Valid_out : OUT  std_logic;
         Code_out : OUT  std_logic;
         Store_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';
   signal LineRD_in : std_logic := '0';

 	--Outputs
   signal Valid_out : std_logic;
   signal Code_out : std_logic;
   signal Store_out : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RS232_RX PORT MAP (
          Reset => Reset,
          Clk => Clk,
          LineRD_in => LineRD_in,
          Valid_out => Valid_out,
          Code_out => Code_out,
          Store_out => Store_out
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
		Reset<='0';
		LineRD_in<='1';
      wait for 20 us;	
		Reset<='1';
      wait for 20 us;

		LineRD_in<='0'; 	-- Start
      wait for 8.68 us;	
		
		LineRD_in<='1'; 	-- b0
		wait for 8.68 us;
		
		LineRD_in<='0'; 	-- b1,b2
		wait for 17.36 us;
		
		LineRD_in <='1'; 	--b3, b4
		wait for 17.36 us;
		
		LineRD_in<='0';  	-- b5
		wait for 8.68 us;
		
		LineRD_in<='1';	-- b6
		wait for 8.68 us;
		
		LineRD_in<='0';	-- b7
		wait for 8.68 us;
		
		LineRD_in<='1';	-- Stop	
		wait for 100 us;
		

      --wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
