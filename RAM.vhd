----------------------------------------------------------------------------------
-- Company: Technical University of Madrid
-- Engineer: Rodolfo B. Oporto Quisbert
-- 
-- Create Date:    20:19:11 11/22/2015 
-- Design Name: 	 ram.vhd
-- Module Name:    ram - Behavioral 
-- Project Name:   LCSE PIII
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY ram IS
PORT (
   Clk      : in    std_logic; -- Señal de reloj
   Reset    : in    std_logic; -- Reset asíncrono activo nivel bajo
   write_en : in    std_logic; -- Señal de habilitación de escritura
   oe       : in    std_logic; -- Señal de habilitación de lectura
   address  : in    std_logic_vector(7 downto 0); -- Bus de direcciones
   databus  : inout std_logic_vector(7 downto 0); -- Bus de datos
	switches : out std_logic_vector(7 downto 0); -- Estado de los interruptores
	temp_l	: out std_logic_vector(3 downto 0); -- BCD dígito bajo
	temp_h	: out std_logic_vector(3 downto 0)); -- BCD dígito alto
END ram;

ARCHITECTURE behavior OF ram IS

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
				cs	: in std_logic--;
		  );
END COMPONENT;

COMPONENT ram_gp
	PORT (
				Clk      : in    std_logic;
				write_en : in    std_logic;
				oe       : in    std_logic;
				address  : in    std_logic_vector(7 downto 0);
				databus  : inout std_logic_vector(7 downto 0);
				cs		: in std_logic
		  );
END COMPONENT;

-- PERIPHEALS RAM
signal write_en_per : std_logic;
signal oe_per : std_logic;
signal address_per : std_logic_vector(7 downto 0);
signal databus_per : std_logic_vector(7 downto 0);
--signal switches_per : std_logic_vector(7 downto 0);
--signal temp_l_per	: std_logic_vector(3 downto 0);
--signal temp_h_per : std_logic_vector(3 downto 0);
signal cs_per: std_logic;
-- GP RAM
signal write_en_gp : std_logic;
signal oe_gp : std_logic;
signal address_gp : std_logic_vector(7 downto 0);
signal databus_gp : std_logic_vector(7 downto 0);
signal cs_gp: std_logic;


BEGIN

periph_ram:ram_peripheals port map(
		Reset=>Reset,
		--Clk => clk_nexys,
		Clk => Clk,
		write_en =>Write_en,
		oe =>OE,
		address=>Address_per, 
		databus=>databus_per, 
		switches=>switches, 
		temp_l=>temp_l,	
		temp_h=>temp_h,
		cs=>cs_per
		);
		
gp_ram:ram_gp port map(
		--Clk => clk_nexys,
		Clk => Clk,
		write_en =>Write_en,
		oe =>OE,
		address=>Address_gp, 
		databus=>databus_per,
		cs=>cs_gp
		);	
		
--periph_ram	: ram_peripheals  PORT MAP (Clk,Reset,write_en_per,oe_per,address_per,databus_per,switches,temp_l,temp_h);--CS_ram_periph);
--gp_ram		: ram_gp	 PORT MAP (Clk,write_en_gp,oe_gp,address_gp,databus_gp);


-------------------------------------------------------------------------
-- Proceso para habilitar o deshabilitar segmentos de RAM
---------------------------------------------------------------------------
cs_select: process(address, databus, databus_gp, databus_per)  -- no reset
begin
	databus		<=(others=>'Z');
	databus_gp	<=(others=>'Z');
	databus_per	<=(others=>'Z');
	
	oe_per<='Z';
	oe_gp<='Z';
	
	write_en_gp<='Z';
	write_en_per<='Z';
	
	address_gp<=(others=>'Z');
	address_per<=(others=>'Z');

	cs_per<='0';
	cs_gp<='0';

	
	if unsigned(address)>= 0 and unsigned(address)<64 then	
		cs_per<='1';
		address_per <=address;
		if oe= '1' then
			oe_per<='1';
			databus<=databus_per;
		
		elsif write_en='1' then
			write_en_per<='1';
			databus_per<=databus;
			
		end if;

	elsif unsigned(address)>= 64 and unsigned(address)<256 then
		cs_gp<='0';
		address_gp <= address ;
		if oe= '1' then
			oe_gp<='1';
			databus<=databus_gp;
		elsif write_en='1' then
			write_en_gp<='1';
			databus_gp<=databus;
		end if;
end if;
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

