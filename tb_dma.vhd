--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:04:00 11/26/2015
-- Design Name:   
-- Module Name:   C:/Users/rboq/Documents/LCSE/PRACTICAIII/LCSE-PIII/tb_dma.vhd
-- Project Name:  LCSE-PIII
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dma
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
 
ENTITY tb_dma IS
END tb_dma;
 
ARCHITECTURE behavior OF tb_dma IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dma
    PORT(
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         RCVD_Data : IN  std_logic_vector(7 downto 0);
         RX_Full : IN  std_logic;
         RX_Empty : IN  std_logic;
         Data_Read : OUT  std_logic;
         ACK_out : IN  std_logic;
         TX_RDY : IN  std_logic;
         Valid_D : OUT  std_logic;
         TX_Data : OUT  std_logic_vector(7 downto 0);
         Address : OUT  std_logic_vector(7 downto 0);
         Databus : INOUT  std_logic_vector(7 downto 0);
         Write_en : OUT  std_logic;
         OE : OUT  std_logic;
         DMA_RQ : OUT  std_logic;
         DMA_ACK : IN  std_logic;
         Send_comm : IN  std_logic;
         READY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';
   signal RCVD_Data : std_logic_vector(7 downto 0) := (others => '0');
   signal RX_Full : std_logic := '0';
   signal RX_Empty : std_logic := '0';
   signal ACK_out : std_logic := '0';
   signal TX_RDY : std_logic := '0';
   signal DMA_ACK : std_logic := '0';
   signal Send_comm : std_logic := '0';

	--BiDirs
   signal Databus : std_logic_vector(7 downto 0);

 	--Outputs
   signal Data_Read : std_logic;
   signal Valid_D : std_logic;
   signal TX_Data : std_logic_vector(7 downto 0);
   signal Address : std_logic_vector(7 downto 0);
   signal Write_en : std_logic;
   signal OE : std_logic;
   signal DMA_RQ : std_logic;
   signal READY : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dma PORT MAP (
          Reset => Reset,
          Clk => Clk,
          RCVD_Data => RCVD_Data,
          RX_Full => RX_Full,
          RX_Empty => RX_Empty,
          Data_Read => Data_Read,
          ACK_out => ACK_out,
          TX_RDY => TX_RDY,
          Valid_D => Valid_D,
          TX_Data => TX_Data,
          Address => Address,
          Databus => Databus,
          Write_en => Write_en,
          OE => OE,
          DMA_RQ => DMA_RQ,
          DMA_ACK => DMA_ACK,
          Send_comm => Send_comm,
          READY => READY
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

      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
