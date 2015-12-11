----------------------------------------------------------------------------------
-- Company: Technical University of Madrid
-- Engineer: Rodolfo Boris Oporto Quisbert
-- 
-- Create Date:	18:31:15 10/16/2015 
-- Design Name:	ShiftRegister
-- Module Name:   ShiftRegister - Behavioral 
-- Project Name:		RS232    
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ShiftRegister is
    Port ( Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Enable : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (7 downto 0));
end ShiftRegister;

architecture Behavioral of ShiftRegister is
signal i: unsigned (2 downto 0); --Ocho bits 2**3

begin
-- Registro de desplazamiento con reset automático
shift_register: process(Reset, Clk, Enable, D)
begin
	if Reset = '0' then
		Q<= (others =>'0');
		i<=to_unsigned(0,3);
	elsif Clk'event and Clk='1' then
		if Enable = '1'then
			if i=8 then
				Q<= (others =>'0');
				i<=to_unsigned(0,3);
			else	
				Q(to_integer(i))<=D;
				i<=i+1;
			end if;	
		end if;
	end if;	
end process;	

end Behavioral;

