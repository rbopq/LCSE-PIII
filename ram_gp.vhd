----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:38:35 11/22/2015 
-- Design Name: 
-- Module Name:    ram_gp - Behavioral 
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
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

USE work.PIC_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ram_gp is
PORT (
   Clk      : in    std_logic;
   write_en : in    std_logic;
   oe       : in    std_logic;
   address  : in    std_logic_vector(7 downto 0);
   databus  : inout std_logic_vector(7 downto 0);
	switches : out std_logic_vector(7 downto 0);
	temp_l	: out std_logic_vector(3 downto 0);
	temp_h	: out std_logic_vector(3 downto 0));
end ram_gp;

architecture Behavioral of ram_gp is

signal contents_ram : array8_ram(7 downto 0);

begin
-------------------------------------------------------------------------
-- Memoria de propósito general
-------------------------------------------------------------------------
gp_ram : process (Clk)  -- no reset
begin
	if clk'event and clk = '1' then
		if write_en = '1' then
			contents_ram(conv_Integer(address)) <= databus;
		end if;	
	end if;
end process;

databus <= contents_ram(conv_integer(address)) when oe = '0' else (others => 'Z');
-------------------------------------------------------------------------

end Behavioral;

