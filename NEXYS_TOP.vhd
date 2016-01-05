----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Rodolfo B. Oporto Quisbert
-- 
-- Create Date:    18:56:45 12/11/2015 
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
		Send		  : in std_logic;   	-- Send bytes to RS323
		TD        : out std_logic;   -- RS232 Transmission line
		RD        : in  std_logic;   -- RS232 Reception line
		DMA_ACK	  : in std_logic;  	-- DMA ACK
		Ready	  : out  std_logic;  -- Bus liberation
		DMA_RQ    : out std_logic;   	-- Request data bus
		switches : out std_logic_vector(7 downto 0); --Estado de los interruptores
		temp_l	: out std_logic_vector(3 downto 0); -- Digito más bajo de Display 7 segmentos
		temp_h	: out std_logic_vector(3 downto 0) -- Digito más alto de Display 7 segmentos
	 );  
end NEXYS_TOP;

architecture Behavioral of NEXYS_TOP is


signal clk_nexys, rst_nexys, valid_d, ack_in, tx_rdy, data_read, full, empty, write_en, oe : std_logic;
signal data_in, data_out, address, databus: std_logic_vector(7 downto 0);

--signal valid_d_nexys: std_logic;


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
	
	component dma  is
	port ( 
		Reset : in  STD_LOGIC;
      Clk : in  STD_LOGIC;
      RCVD_Data : in  STD_LOGIC_VECTOR (7 downto 0);
      RX_Full : in  STD_LOGIC;
      RX_Empty : in  STD_LOGIC;
      Data_Read : out  STD_LOGIC;
      ACK_out : in  STD_LOGIC;
      TX_RDY : in  STD_LOGIC;
      Valid_D : out  STD_LOGIC;
      TX_Data : out  STD_LOGIC_VECTOR (7 downto 0);
      Address : out  STD_LOGIC_VECTOR (7 downto 0);
      databus : inout  STD_LOGIC_VECTOR (7 downto 0);
      Write_en : out  STD_LOGIC;
      OE : out  STD_LOGIC;
      DMA_RQ : out  STD_LOGIC;
      DMA_ACK : in  STD_LOGIC;
      Send_comm : in  STD_LOGIC;
      READY : out  STD_LOGIC);
	end component;
	
	component ram  is
	port (
		Clk      : in    std_logic;
		Reset    : in    std_logic;
		write_en : in    std_logic;
		oe       : in    std_logic;
		address  : in    std_logic_vector(7 downto 0);
		databus  : inout std_logic_vector(7 downto 0);
		switches : out std_logic_vector(7 downto 0);
		temp_l	: out std_logic_vector(3 downto 0);
		temp_h	: out std_logic_vector(3 downto 0));
	end component;
	
begin
 
clk0: clk_50 port map (
		CLK_IN1=> Clk,
		CLK_OUT1=> clk_nexys);

top:RS232top port map(
	 Reset => rst_nexys,   
    Clk => clk_nexys,
    Data_in => Data_in,
    Valid_D =>    Valid_D,                               
    Ack_in   =>   Ack_in,                                  
    TX_RDY    =>  TX_RDY,
    TD       =>   TD,
    RD       =>   RD,
    Data_out   => Data_out,
    Data_read  => Data_read,
    Full       => Full,
    Empty      => Empty);
	 
	 rst_nexys <= not Reset;
	 --valid_d_nexys<= not Valid_D;

dma_top:dma port map(
		Reset=>rst_nexys,
		Clk => clk_nexys,
      RCVD_Data=>Data_out,
		RX_Full=>Full,
      RX_Empty=>Empty,
		Data_read  =>Data_read,
      ACK_out=>Ack_in,
      TX_RDY=>TX_RDY,
		Valid_D=>Valid_D,
      TX_Data=>Data_in,
		Address=>Address,
      databus=>databus,
      Write_en=>Write_en,
      OE =>OE ,
      DMA_RQ => DMA_RQ,
      DMA_ACK => DMA_ACK,
		Send_comm=>Send,
      READY=>READY);

ram_top:ram port map(
		Reset=>rst_nexys,
		Clk => clk_nexys,
		write_en =>Write_en,
		oe =>OE,
		address=>Address, 
		databus=>databus, 
		switches=>switches, 
		temp_l=>temp_l,	
		temp_h=>temp_h);


	 
end; 	 