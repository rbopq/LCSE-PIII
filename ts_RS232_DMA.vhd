
library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;
   
	--use work.RS232_test.all;
	
entity RS232_DMA_top_TB is
end RS232_DMA_top_TB;

architecture Testbench of RS232_DMA_top_TB is

  component NEXYS_TOP
    port (
      Reset     : in  std_logic;
      Clk       : in  std_logic;
      Data_in   : in  std_logic_vector(7 downto 0);
      Valid_D   : in  std_logic;
      Ack_in    : out std_logic;
      TX_RDY    : out std_logic;
      TD        : out std_logic;
      RD        : in  std_logic;
      Data_out  : out std_logic_vector(7 downto 0);
      Data_read : in  std_logic;
      Full      : out std_logic;
      Empty     : out std_logic);
  end component;
  
  signal Reset, Clk, Valid_D, Ack_in, TX_RDY : std_logic;
  signal TD, RD, Data_read, Full, Empty : std_logic;
  signal Data_out, Data_in : std_logic_vector(7 downto 0);
  constant baud_period : time := 8650 ns;


begin

  UUT: NEXYS_TOP
    port map (
      Reset     => Reset,
      Clk       => Clk,
      Data_in   => Data_in,
      Valid_D   => Valid_D,
      Ack_in    => Ack_in,
      TX_RDY    => TX_RDY,
      TD        => TD,
      RD        => RD,
      Data_out  => Data_out,
      Data_read => Data_read,
      Full      => Full,
      Empty     => Empty);

 
  -- Clock generator
  p_clk : PROCESS
  BEGIN
     clk <= '1', '0' after 5 ns;
     wait for 10 ns;
  END PROCESS;

  -- Reset & Start generator
  p_reset : PROCESS
  BEGIN
	  
	  reset <= '1', '0' after 75 ns;
     
	  Data_in <= "11010101", "10100111" after 90000 ns, "01001000" after 180000 ns ;
	  
	  Valid_D <= 	'1', '0' after 10 us,
						'1' after 15 us,
						'0' after 120 us, 
						'1' after 125 us, 
						'0' after 220 us, 
						'1' after 225 us;

--		Transmit(RD, "00110001");
--		Transmit(RD, "00110010");
--		Transmit(RD, "00110101");

     RD <= '1',
           '0' after 500 ns,    -- StartBit
           '1' after 500 ns + (baud_period) ,   -- LSb
           '0' after 500 ns + (baud_period*2),
           '0' after 500 ns + (baud_period*3),
           '1' after 500 ns + (baud_period*4),
           '1' after 500 ns + (baud_period*5),
           '1' after 500 ns + (baud_period*6),
           '1' after 500 ns + (baud_period*7),
           '0' after 500 ns + (baud_period*8), -- MSb
           '1' after 500 ns + (baud_period*9),  -- Stopbit			  
           '0' after 85000 ns,  -- StartBit
           '0' after 85000 ns + (baud_period) ,   -- LSb
           '1' after 85000 ns + (baud_period*2),
           '0' after 85000 ns + (baud_period*3),
           '1' after 85000 ns + (baud_period*4),
           '0' after 85000 ns + (baud_period*5),
           '1' after 85000 ns + (baud_period*6),
           '1' after 85000 ns + (baud_period*7),
           '1' after 85000 ns + (baud_period*8), -- MSb
           '1' after 85000 ns + (baud_period*9),  -- Stopbit
           '1' after 200000 ns, --StarBit
			  '1' after 200000 ns + (baud_period) ,   -- LSb
           '0' after 200000 ns + (baud_period*2),
           '1' after 200000 ns + (baud_period*3),
           '1' after 200000 ns + (baud_period*4),
           '0' after 200000 ns + (baud_period*5),
           '1' after 200000 ns + (baud_period*6),
           '0' after 200000 ns + (baud_period*7),
           '1' after 200000 ns + (baud_period*8), -- MSb
           '1' after 200000 ns + (baud_period*9);  -- Stopbit	
			  
     Data_read <= '0','1' after 90000 ns,
					'0' after 95000 ns,
					'1' after 205000 ns,
					'0' after 210000 ns, 
					'1' after 350000 ns, 
					'0' after 355000 ns;
     
  
	  wait;
  END PROCESS;

  
end Testbench;

