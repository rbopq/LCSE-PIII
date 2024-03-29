
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

--USE IEEE.std_logic_arith.all;
--USE IEEE.std_logic_unsigned.all;

--USE work.PIC_pkg.all;
--USE work.RS232_test.all;

entity PICtop_tb is
end PICtop_tb;

architecture TestBench of PICtop_tb is

  component PICtop
    port (
      Reset    : in  std_logic;
      Clk      : in  std_logic;
      RS232_RX : in  std_logic;
      RS232_TX : out std_logic;
      switches : out std_logic_vector(7 downto 0);
      Temp_L   : out std_logic_vector(6 downto 0);
      Temp_H   : out std_logic_vector(6 downto 0));
  end component;

-----------------------------------------------------------------------------
-- Internal signals
-----------------------------------------------------------------------------

  signal Reset    : std_logic;
  signal Clk      : std_logic;
  signal RS232_RX : std_logic;
  signal RS232_TX : std_logic;
  signal switches : std_logic_vector(7 downto 0);
  signal Temp_L   : std_logic_vector(6 downto 0);
  signal Temp_H   : std_logic_vector(6 downto 0);
  
   constant baud_period : time := 8650 ns; 

begin  -- TestBench

  UUT: PICtop
    port map (
        Reset    => Reset,
        Clk      => Clk,
        RS232_RX => RS232_RX,
        RS232_TX => RS232_TX,
        switches => switches,
        Temp_L   => Temp_L,
        Temp_H   => Temp_H);

-----------------------------------------------------------------------------
-- Reset & clock generator
-----------------------------------------------------------------------------

  Reset <= '0', '1' after 75 ns;

  p_clk : PROCESS
  BEGIN
     clk <= '1', '0' after 25 ns;
     wait for 50 ns;
  END PROCESS;

-------------------------------------------------------------------------------
-- Sending some stuff through RS232 port
-------------------------------------------------------------------------------

  SEND_STUFF : process
  begin
--     RS232_RX <= '1';
--     -- Encendemos switch 4
--	  wait for 100 us;
--	  Transmit(RS232_RX, X"49");
--     wait for 40 us;
--     Transmit(RS232_RX, X"34");
--     wait for 40 us;
--     Transmit(RS232_RX, X"31");
--	  
--	  -- Encendemos switch 6
--	  wait for 100 us;
--	  Transmit(RS232_RX, X"49");
--     wait for 40 us;
--     Transmit(RS232_RX, X"36");
--     wait for 40 us;
--     Transmit(RS232_RX, X"31");
--	  
--	  -- Encendemos switch 7
--	  wait for 100 us;
--	  Transmit(RS232_RX, X"49");
--     wait for 40 us;
--     Transmit(RS232_RX, X"37");
--     wait for 40 us;
--     Transmit(RS232_RX, X"31");
--	  
--	  -- Apagamos switch 4
--	  wait for 100 us;
--	  Transmit(RS232_RX, X"49");
--     wait for 40 us;
--     Transmit(RS232_RX, X"34");
--     wait for 40 us;
--     Transmit(RS232_RX, X"30");
--	  
--	  -- Apagamos switch 7
--	  wait for 100 us;
--	  Transmit(RS232_RX, X"49");
--     wait for 40 us;
--     Transmit(RS232_RX, X"37");
--     wait for 40 us;
--     Transmit(RS232_RX, X"30");
--	  
--	  -- Podemos el temp a 21
--	  wait for 1000 us;
--	  Transmit(RS232_RX, X"54");
--     wait for 40 us;
--     Transmit(RS232_RX, X"32");
--     wait for 40 us;
--     Transmit(RS232_RX, X"31");
--	  
--	  -- Podemos el temp a 10
--	  wait for 1000 us;
--	  Transmit(RS232_RX, X"54");
--     wait for 40 us;
--     Transmit(RS232_RX, X"31");
--     wait for 40 us;
--     Transmit(RS232_RX, X"30");
--	
--	-- Podemos el temp a 29
--	  wait for 1000 us;
--	  Transmit(RS232_RX, X"54");
--     wait for 40 us;
--     Transmit(RS232_RX, X"32");
--     wait for 40 us;
--     Transmit(RS232_RX, X"39");	
     
	-- PR Simulation
	  RS232_RX <= '1',
           '0' after 500 ns,    -- StartBit
           '1' after 500 ns + (baud_period) ,   -- LSb
           '0' after 500 ns + (baud_period*2),
           '0' after 500 ns + (baud_period*3),
           '1' after 500 ns + (baud_period*4),
           '0' after 500 ns + (baud_period*5),
           '0' after 500 ns + (baud_period*6),
           '1' after 500 ns + (baud_period*7),
           '0' after 500 ns + (baud_period*8), -- MSb
           '1' after 500 ns + (baud_period*9),  -- Stopbit            
           '0' after 85000 ns,  -- StartBit
           '0' after 85000 ns + (baud_period) ,   -- LSb
           '0' after 85000 ns + (baud_period*2),
           '1' after 85000 ns + (baud_period*3),
           '0' after 85000 ns + (baud_period*4),
           '1' after 85000 ns + (baud_period*5),
           '1' after 85000 ns + (baud_period*6),
           '0' after 85000 ns + (baud_period*7),
           '0' after 85000 ns + (baud_period*8), -- MSb
           '1' after 85000 ns + (baud_period*9),  -- Stopbit
           '0' after 200000 ns, --StarBit
           '1' after 200000 ns + (baud_period) ,   -- LSb
           '0' after 200000 ns + (baud_period*2),
           '0' after 200000 ns + (baud_period*3),
           '0' after 200000 ns + (baud_period*4),
           '1' after 200000 ns + (baud_period*5),
           '1' after 200000 ns + (baud_period*6),
           '0' after 200000 ns + (baud_period*7),
           '0' after 200000 ns + (baud_period*8), -- MSb
           '1' after 200000 ns + (baud_period*9);  -- Stopbit	
	  
	  wait;
	  
	  
  end process SEND_STUFF;
   
end TestBench;

