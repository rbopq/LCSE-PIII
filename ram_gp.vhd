----------------------------------------------------------------------------------
-- Company: Technical University of Madrid
-- Engineer: Rodolfo B. Oporto Quisbert
-- 
-- Create Date:    20:19:11 11/22/2015 
-- Design Name: 	 ram_gp.vhd
-- Module Name:    ram_gp - Behavioral 
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

entity ram_gp is
PORT (
   Clk      : in    std_logic; -- Señal de reloj
   write_en : in    std_logic; -- Habilitación de escritura
   oe       : in    std_logic; -- Habilitación de lectura
   address  : in    std_logic_vector(7 downto 0); -- Bus de direcciones
   databus  : inout std_logic_vector(7 downto 0)); -- Bus de datos
end ram_gp;

architecture Behavioral of ram_gp is

signal contents_ram : array8_ram(64 to 255); -- Contenido de la memoria

begin

-------------------------------------------------------------------------
-- Memoria de propósito general
-------------------------------------------------------------------------
gp_ram : process (Clk)  -- no reset
begin
	if clk'event and clk = '1' then
		if write_en = '1' then
			contents_ram(to_integer(unsigned(address))) <= databus;
		end if;	
	end if;
end process;

databus <= contents_ram(to_integer(unsigned(address))) when oe = '1' else (others => 'Z');
-------------------------------------------------------------------------

end Behavioral;

