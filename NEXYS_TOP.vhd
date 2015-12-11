----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:56:45 11/13/2015 
-- Design Name: 
-- Module Name:    NEXYS_TOP - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity NEXYS_TOP is
      port (
    Reset     : in  std_logic;   -- Low_level-active asynchronous reset
    Clk       : in  std_logic;   -- System clock (20MHz), rising edge used
    Data_in   : in  std_logic_vector(7 downto 0);  -- Data to be sent
    Valid_D   : in  std_logic;   -- Handshake signal
                                 -- from guest system, low when data is valid
    Ack_in    : out std_logic;   -- ACK for data received, low once data
                                 -- has been stored
    TX_RDY    : out std_logic;   -- System ready to transmit
    TD        : out std_logic;   -- RS232 Transmission line
    RD        : in  std_logic;   -- RS232 Reception line
    Data_out  : out std_logic_vector(7 downto 0);  -- Received data
    Data_read : in  std_logic;   -- Data read for guest system
    Full      : out std_logic;   -- Full internal memory
    Empty     : out std_logic);  -- Empty internal memory
end NEXYS_TOP;

architecture Behavioral of NEXYS_TOP is


signal clk_nexys: std_logic;
signal rst_nexys: std_logic;
signal valid_d_nexys: std_logic;


  component clk_50 is
    port
     (-- Clock in ports
        CLK_IN1           : in     std_logic;
         --Clock out ports
        CLK_OUT1          : out    std_logic
     );
    end component;

  component RS232top is 
  port (
    Reset     : in  std_logic;   -- Low_level-active asynchronous reset
    Clk       : in  std_logic;   -- System clock (20MHz), rising edge used
    Data_in   : in  std_logic_vector(7 downto 0);  -- Data to be sent
    Valid_D   : in  std_logic;   -- Handshake signal
                                 -- from guest system, low when data is valid
    Ack_in    : out std_logic;   -- ACK for data received, low once data
                                 -- has been stored
    TX_RDY    : out std_logic;   -- System ready to transmit
    TD        : out std_logic;   -- RS232 Transmission line
    RD        : in  std_logic;   -- RS232 Reception line
    Data_out  : out std_logic_vector(7 downto 0);  -- Received data
    Data_read : in  std_logic;   -- Data read for guest system
    Full      : out std_logic;   -- Full internal memory
    Empty     : out std_logic);  -- Empty internal memory
	end component;

begin
 
clk0: clk_50 port map (
		CLK_IN1=> Clk,
		CLK_OUT1=> clk_nexys);

top:RS232top port map(
	 Reset => rst_nexys,   
    Clk => clk_nexys,
    Data_in => Data_in,
    Valid_D =>    valid_d_nexys,                               
    Ack_in   =>   Ack_in,                                  
    TX_RDY    =>  TX_RDY,
    TD       =>   TD,
    RD       =>   RD,
    Data_out   => Data_out,
    Data_read  => Data_read,
    Full       => Full,
    Empty      => Empty);
	 
	 rst_nexys <= not Reset;
	 valid_d_nexys<= not Valid_D;
	 
end; 	 