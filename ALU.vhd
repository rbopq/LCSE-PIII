----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:21:44 01/05/2016 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
USE work.PIC_pkg.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Alu_op : in alu_op;
           Databus : inout  STD_LOGIC_VECTOR (7 downto 0);
           Index_Reg : out  STD_LOGIC_VECTOR (7 downto 0);
           FlagZ : out  STD_LOGIC;
           FlagC : out  STD_LOGIC;
           FlagN : out  STD_LOGIC;
           FlagE : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

signal Databus_temp, reg_a, reg_b, reg_acc :std_logic_vector(7 downto 0);
signal Databus_using : std_logic;

begin

registro: process(Reset, Clk)
begin
	if Reset = '0' then
		reg_acc <= (others =>'0');
		Index_reg <= (others =>'0');
		reg_a <= (others =>'0');
		reg_b <= (others =>'0');
		FlagZ <='0';
      FlagC <='0';
      FlagN <='0';
      FlagE <='0';
		Databus_using <='0';
	elsif Clk'event and Clk = '1' then
		Databus_using <='0';
		
		case Alu_op is
	
		when op_add =>
			reg_acc <= std_logic_vector(unsigned(reg_a) + unsigned(reg_b));		
			
			if reg_acc = X"00" then
				FlagZ<= '1';
			else 
				FlagZ<= '0';
			end if; 
		
		when op_sub =>
			reg_acc <= std_logic_vector(unsigned(reg_a) - unsigned(reg_b));		
		
			if reg_acc = X"00" then
				FlagZ<= '1';
			else
				FlagZ<='0';
			end if;	
		
		when op_shiftl =>
			reg_acc <=std_logic_vector(unsigned(reg_acc) sll 1);
		
		when op_shiftr =>
			reg_acc <=std_logic_vector(unsigned(reg_acc) srl 1);
		
		when op_and =>
			reg_acc <= std_logic_vector(unsigned(reg_a) and unsigned(reg_b));

			if reg_acc = X"00" then
				FlagZ<= '1';
			else
				FlagZ<='0';
			end if;	
			
		when op_or =>
			reg_acc <= std_logic_vector(unsigned(reg_a) or unsigned(reg_b));		
		
			if reg_acc = X"00" then
				FlagZ<= '1';
			else
				FlagZ<='0';
			end if;	
			
		when op_xor =>
			reg_acc <= std_logic_vector(unsigned(reg_a) xor unsigned(reg_b));		
		
			if reg_acc = X"00" then
				FlagZ<= '1';
			else
				FlagZ<='0';
			end if;	
		
		when op_cmpe =>
			
			if unsigned(reg_a) = unsigned(reg_b) then
				FlagZ<= '1';
			else
				FlagZ<='0';
			end if;		
		
		when op_cmpl =>
			
			if unsigned(reg_a) < unsigned(reg_b) then
				FlagZ<= '1';
			else
				FlagZ<='0';
			end if;		
		
		when op_cmpg =>
		
			if unsigned(reg_a) > unsigned(reg_b) then
				FlagZ<= '1';
			else
				FlagZ<='0';
			end if;
			
		when op_ascii2bin =>
			
			if unsigned(reg_a) >= 48 and unsigned(reg_a) <=57 then
				reg_acc<= std_logic_vector(unsigned(reg_a) - 48);
			else
				reg_acc<=X"FF";
			end if;
		
		when op_bin2ascii =>
			
			if unsigned(reg_a) >= 0 and unsigned(reg_a) <=9 then
				reg_acc<= std_logic_vector(unsigned(reg_a) + 48);
			else
				reg_acc<=X"FF";
			end if;
			
		when op_lda =>
			reg_a <=Databus;
			
		when op_ldb =>
			reg_b <=Databus;
		
		when op_ldacc =>
			reg_acc <=Databus;
		
		when op_ldid =>
			Index_reg <=Databus;

		when op_mvacc2id =>
			Index_reg <=reg_acc;

		when op_mvacc2a =>
			reg_a <=reg_acc;

		when op_mvacc2b =>
			reg_b <=reg_acc;			

		when op_oeacc =>
			Databus_temp <= reg_acc;
			Databus_using <= '1';
		
		when others =>	
			--Databus <= (others => 'Z');

	end case;
	end if; 
end process; 

Databus <= Databus_temp when Databus_using='1' else (others => 'Z');

end Behavioral;

