--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:49:21 10/23/2015
-- Design Name:   
-- Module Name:   C:/Users/rboq/Documents/LCSE/RS232_TX/tb_rs232_tx.vhd
-- Project Name:  RS232_TX
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rs232_tx
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
 
ENTITY tb_rs232_tx IS
END tb_rs232_tx;
 
ARCHITECTURE behavior OF tb_rs232_tx IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rs232_tx
    PORT(
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         Start : IN  std_logic;
         Data : IN  std_logic_vector(7 downto 0);
         EOT : OUT  std_logic;
         TX : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Start : std_logic := '0';
   signal Data : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal EOT : std_logic;
   signal TX : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rs232_tx PORT MAP (
          Reset => Reset,
          Clk => Clk,
          Start => Start,
          Data => Data,
          EOT => EOT,
          TX => TX
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
		wait for 20 us;	
		Reset<='1';

		wait for 20 us;	
		data<="11000011";
		Start<='1';
		wait for 5 us;
		Start<='0';
		wait for 200 us;
		data<="10101010";
		Start<='1';
		wait for 5 us;
		Start<='0';
		wait for 200 us;
   end process;

END;
