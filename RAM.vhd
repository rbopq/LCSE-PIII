
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;


ENTITY ram IS
PORT (
   Clk      : in    std_logic;
   Reset    : in    std_logic;
   write_en : in    std_logic;
   oe       : in    std_logic;
   address  : in    std_logic_vector(7 downto 0);
   databus  : inout std_logic_vector(7 downto 0);
	switches : out std_logic_vector(7 downto 0);
	temp_l	: out std_logic_vector(3 downto 0);
	temp_h	: out std_logic_vector(3 downto 0));
END ram;

ARCHITECTURE behavior OF ram IS
-- RAM para control de periféricos
COMPONENT ram_peripheals
	PORT (
				Clk      : in    std_logic;
				Reset    : in    std_logic;
				write_en : in    std_logic;
				oe       : in    std_logic;
				address  : in    std_logic_vector(7 downto 0);
				databus  : inout std_logic_vector(7 downto 0);
				switches : out std_logic_vector(7 downto 0);
				temp_l	: out std_logic_vector(3 downto 0);
				temp_h	: out std_logic_vector(3 downto 0);
				CS			: in std_logic 
		  );
END COMPONENT;

COMPONENT ram_gp
	PORT (
				Clk      : in    std_logic;
				write_en : in    std_logic;
				oe       : in    std_logic;
				address  : in    std_logic_vector(7 downto 0);
				databus  : inout std_logic_vector(7 downto 0);
				switches : out std_logic_vector(7 downto 0);
				temp_l	: out std_logic_vector(3 downto 0);
				temp_h	: out std_logic_vector(3 downto 0);
				CS			: in std_logic 
		  );
END COMPONENT;

SIGNAL address_aux:	std_logic_vector(1 downto 0);
SIGNAL CS_ram_periph : std_logic;
SIGNAL CS_ram_gp : std_logic;



BEGIN

periph_ram	: ram_peripheals  PORT MAP (Clk,Reset,write_en,oe,address,databus,switches,temp_l,temp_h,CS_ram_periph);
gp_ram		: ram_gp	 PORT MAP (Clk,write_en,oe,address,databus,switches,temp_l,temp_h,CS_ram_gp);


-------------------------------------------------------------------------
-- Proceso para habilitar o deshabilitar segmentos de RAM
-------------------------------------------------------------------------
cs_ram : process (address)  -- no reset
begin
	case address(7 downto 6) is
		when "00" => 
			CS_ram_periph <='1'; 
			CS_ram_gp<='0';
		when others=>
			CS_ram_periph <='0'; 
			CS_ram_gp<='1';			
	end case;
end process;

-------------------------------------------------------------------------

-------------------------------------------------------------------------
-- Decodificador de BCD a 7 segmentos
-------------------------------------------------------------------------
--with contents_ram()(7 downto 4) select
--Temp_H <=
--    "0000110" when "0001",  -- 1
--    "1011011" when "0010",  -- 2
--    "1001111" when "0011",  -- 3
--    "1100110" when "0100",  -- 4
--    "1101101" when "0101",  -- 5
--    "1111101" when "0110",  -- 6
--    "0000111" when "0111",  -- 7
--    "1111111" when "1000",  -- 8
--    "1101111" when "1001",  -- 9
--    "1110111" when "1010",  -- A
--    "1111100" when "1011",  -- B
--    "0111001" when "1100",  -- C
--    "1011110" when "1101",  -- D
--    "1111001" when "1110",  -- E
--    "1110001" when "1111",  -- F
--    "0111111" when others;  -- 0
-------------------------------------------------------------------------

END behavior;

