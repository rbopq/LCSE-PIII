----------------------------------------------------------------------------------
-- Company: Technical University of Madrid
-- Engineer: Rodolfo B. Oporto Quisbert
-- 
-- Create Date:    20:19:11 11/22/2015 
-- Design Name: 	 ram_peripheals.vhd
-- Module Name:    ram_peripheals - Behavioral 
-- Project Name:   LCSE PIII
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.NUMERIC_STD.ALL;

USE work.PIC_pkg.all;


ENTITY ram_peripheals IS
PORT(
		Clk      : in    std_logic; -- Linea de reloj
		Reset    : in    std_logic; -- Reset asíncrono activo a nivel bajo
		write_en : in    std_logic; -- Señal de habilitación de escritura
		oe       : in    std_logic; -- Señal de habilitación de lectura
		address  : in    std_logic_vector(7 downto 0); -- Bus de direcciónes de memoria
		databus  : inout std_logic_vector(7 downto 0); -- Bus de datos
		switches : out std_logic_vector(7 downto 0); -- Estado de los interruptores
		temp_l	: out std_logic_vector(6 downto 0); -- BCD dígito bajo
		temp_h	: out std_logic_vector(6 downto 0); -- BCD dígito alto
		cs 		: in std_logic	-- Chip select
	);
END ram_peripheals;

architecture Behavioral of ram_peripheals is

SIGNAL contents_ram : array8_ram(0 to 63); -- Señal que representa el contenido de la RAM
SIGNAL decenas		: unsigned(6 downto 0):= to_unsigned(0,7);
SIGNAL unidades 	: unsigned(6 downto 0):= to_unsigned(0,7); -- Señales auxiliares para el cálculo de los dígitos BCD
SIGNAL reg_aux: std_logic_vector(7 downto 0):=X"00";

begin

-------------------------------------------------------------------------
-- Bloque de memoria de 64 palabras de 8 bits para periféricos
-------------------------------------------------------------------------
ram_64_bytes : process (Clk,Reset)  
begin
	databus<=(others=>'Z');
	if Reset = '0' then
		for i in 0 to	63 loop
			contents_ram(i)<=(others => '0');
		end loop;
	elsif clk'event and clk = '1' then	
			if cs ='1' then
				if write_en = '1' then
					contents_ram(to_integer(unsigned(address))) <= databus;
				end if;
			-- Salidas periféricos	
				switches(0)<=contents_ram(16)(0); 
				switches(1)<=contents_ram(17)(0); 
				switches(2)<=contents_ram(18)(0); 
				switches(3)<=contents_ram(19)(0);
				switches(4)<=contents_ram(20)(0); 
				switches(5)<=contents_ram(21)(0); 
				switches(6)<=contents_ram(22)(0); 
				switches(7)<=contents_ram(23)(0);	
				
				case contents_ram(49)(3 downto 0) is
					when "0000" =>
						temp_l <="0111111";
					when "0001" =>
						temp_l <="0000110";
					when "0010" =>
						temp_l <="1011011";
					when "0011" =>
						temp_l <="1001111";
					when "0100" =>
						temp_l <="1100110";
					when "0101" =>
						temp_l <="1100110";
					when "0110" =>
						temp_l <="1111101";
					when "0111" =>
						temp_l <="0000111";
					when "1000" =>
						temp_l <="1111111";
					when "1001" =>
						temp_l <="1101111";
					when others =>
						temp_l <="0000000";
				end case;
				
				case contents_ram(49)(7 downto 4) is
					when "0000" =>
						temp_h <="0111111";
					when "0001" =>
						temp_h <="0000110";
					when "0010" =>
						temp_h <="1011011";
					when "0011" =>
						temp_h <="1001111";
					when "0100" =>
						temp_h <="1100110";
					when "0101" =>
						temp_h <="1100110";
					when "0110" =>
						temp_h <="1111101";
					when "0111" =>
						temp_h <="0000111";
					when "1000" =>
						temp_h <="1111111";
					when "1001" =>
						temp_h <="1101111";
					when others =>
						temp_h <="0000000";
				end case;
			end if;
	end if;
end process;

databus <= contents_ram(to_integer(unsigned(address))) when oe='1' and cs='1' else (others =>'Z');




end Behavioral;

