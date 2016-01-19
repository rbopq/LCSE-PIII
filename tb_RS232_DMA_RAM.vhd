
library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;
   
--	use work.RS232_test.all;
	
entity RS232top_TB is
end RS232top_TB;

architecture Testbench of RS232top_TB is

  component NEXYS_TOP
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
		temp_h	: out std_logic_vector(3 downto 0)); -- Digito más alto de Display 7 segmentos
  end component;
  
  signal Reset, Clk, Send, TD, RD, DMA_ACK, Ready, DMA_RQ: std_logic;
  signal switches : std_logic_vector(7 downto 0);
  signal temp_l, temp_h : std_logic_vector(3 downto 0);

  constant baud_period : time := 8650 ns;


begin

  UUT: NEXYS_TOP
    port map (
      Reset     => Reset,
      Clk       => Clk,
      Send		 => Send,
      TD		    => TD,
		RD			 => RD,
      DMA_ACK   => DMA_ACK,
      Ready     => Ready,
      DMA_RQ    => DMA_RQ,
      switches  => switches,
      temp_l    => temp_l,
      temp_h	 => temp_h);

 
  -- Clock generator
  p_clk : PROCESS
  BEGIN
     clk <= '1', '0' after 25 ns;
     wait for 50 ns;
  END PROCESS;

  -- Reset & Start generator
  p_reset : PROCESS
  BEGIN
	  
	  Reset <= '1', '0' after 75 ns;
	  DMA_ACK<='0', '1' after 350000 ns; 
						 --'0' after 350120 ns;
  	  Send<='0', '1' after 400000 ns, 
					 '0' after 400100 ns; 

-- Para simulación behaivoral

--		wait for 20 us;
--      Transmit(RD, "00110001");
--		wait for 20 us;
--		Transmit(RD, "00110010");
--		wait for 20 us;
--		Transmit(RD, "00110101");
--		wait for 20 us;
		
		

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
			  
     
  
	  wait;
  END PROCESS;

  
end Testbench;

