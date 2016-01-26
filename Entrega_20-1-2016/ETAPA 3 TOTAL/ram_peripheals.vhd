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
	else 
		if clk'event and clk = '1' then	
			if cs ='1' then
				if write_en = '1' then
					contents_ram(to_integer(unsigned(address))) <= databus;
				elsif oe ='1' then
					databus <= contents_ram(to_integer(unsigned(address)));
				end if;
				switches<=contents_ram(16); 
				reg_aux<=contents_ram(49); --registramos la posición 49 para obtener el valor de los termostatos en BCD
			end if;
		end if;
	end if;
end process;


-------------------------------------------------------------------------
-- Proceso para el cálculo de los digitos BCD de los termostatos
-------------------------------------------------------------------------
cod_asciiToBcd: process(reg_aux, decenas, unidades)
begin	
	for index in 0 to 7 loop
		if ( decenas>= 5) then
			decenas <= decenas + 3;
		elsif ( unidades>= 5) then
			unidades <= unidades + 3;
		end if;
		
		decenas <= decenas sll 1;
		decenas(0) <= unidades(3);
		unidades <= unidades sll 1;
		unidades(0) <= reg_aux(index);
	end loop;
	temp_h <= std_logic_vector(decenas);
	temp_l <= std_logic_vector(unidades);
	
end process;


end Behavioral;

