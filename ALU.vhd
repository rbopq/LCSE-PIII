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
           Index_Reg : out  STD_LOGIC;
           FlagZ : out  STD_LOGIC;
           FlagC : out  STD_LOGIC;
           FlagN : out  STD_LOGIC;
           FlagE : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

signal u_a, u_b, u_acc, u_index: unsigned(7 downto 0);
signal u_flags : unsigned(3 downto 0);

signal reg_acc, reg_index :std_logic_vector(7 downto 0);
signal reg_flags : std_logic_vector(3 downto 0);

begin

process(Alu_op)	
begin
	case Alu_op is
	
		when op_add =>
			u_acc <= u_a + u_b;		
			
			if u_acc =0 then
				FlagZ<= '1';
			else 
				FlagZ<= '0';
			end if; 
		
		when op_sub =>
			u_acc <= u_a - u_b;
		
			if u_acc =0 then
				FlagZ<= '1';
			else
				FlagZ<='0';
			end if;	
		
		when op_shiftl =>
			u_acc <=u_acc sll 1;
		when op_shiftr =>
			u_acc<=u_acc srl 1;
		when op_and =>
			u_acc <= u_a and u_b;

			if u_acc =0 then
				FlagZ<= '1';
			else
				FlagZ<='0';
			end if;	
			
		when op_or =>
			u_acc <= u_a or u_b;			
		
			if u_acc =0 then
				FlagZ<= '1';
			else
				FlagZ<='0';
			end if;	
			
		when op_xor =>
			u_acc <= u_a xor u_b;			
		
			if u_acc =0 then
				FlagZ<= '1';
			else
				FlagZ<='0';
			end if;	
		
		when op_cmpe =>
			
			if u_a = u_b then
				FlagZ<= '1';
			else
				FlagZ<='0';
			end if;		
		
		when op_cmpl =>
			
			if u_a < u_b then
				FlagZ<= '1';
			else
				FlagZ<='0';
			end if;		
		
		when op_cmpg =>
		
			if u_a > u_b then
				FlagZ<= '1';
			else
				FlagZ<='0';
			end if;
			
		when op_ascii2bin =>
			
			if u_a >= 48 and u_a <=57 then
				u_acc<= u_a - 48;
			else
				u_acc<="11111111";
			end if;
		
		when op_bin2ascii =>
			
			if u_a >= 0 and u_a <=9 then
				u_acc<= u_a + 48;
			else
				u_acc<="11111111";
			end if;
			
		when op_lda =>
			u_a<=unsigned(Databus);
		when op_ldb =>
			u_b<=unsigned(Databus);
		when op_ldacc =>
			u_acc<=unsigned(Databus);
		when op_ldid =>
			u_index<=unsigned(Databus);
		when others =>
			Databus <= (others => 'Z');

	end case;
end process;

registro: process(Reset, Clk)
begin
	if Reset = '0' then
--		reg_a <= (others =>'0');
--		reg_b <= (others =>'0');
		reg_acc <= (others =>'0');
		reg_index <= (others =>'0');	
		reg_flags <= (others =>'0');
	elsif Clk'event and Clk = '1' then
		reg_acc<=std_logic_vector(u_acc);
		reg_index<=std_logic_vector(u_index);
		reg_flags<=std_logic_vector(u_flags);
	end if; 
end process; 

end Behavioral;

