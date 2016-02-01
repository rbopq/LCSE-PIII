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
use IEEE.NUMERIC_STD.ALL;
USE work.PIC_pkg.all;

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

signal reg_a, reg_b, reg_acc, reg_a_tmp, reg_b_tmp, reg_acc_tmp, Index_reg_tmp, Index_reg_reg :std_logic_vector(7 downto 0):=X"00";
signal FlagZ_tmp, FlagZ_reg : std_logic;
begin

ALU_PROCC: process(Alu_op, reg_a, reg_b, reg_acc, Databus, index_reg_reg, flagz_reg)
begin
	Databus<=(others =>'Z');
	Index_reg_tmp <= Index_reg_reg;
	FlagZ_tmp <=FlagZ_reg;
	Reg_a_tmp <= Reg_a;
	Reg_b_tmp <= Reg_b;
	Reg_acc_tmp <= Reg_acc;

--	FlagC_tmp <='0';
--	FlagN_tmp <='0';
--	FlagE_tmp <='0';


		case Alu_op is
			when op_add =>
				reg_acc_tmp <= std_logic_vector(unsigned(reg_a) + unsigned(reg_b));		
			if reg_acc = X"00" then
				FlagZ_tmp<= '1';
			else 
				FlagZ_tmp<= '0';
			end if; 
		
			when op_sub =>
				reg_acc_tmp <= std_logic_vector(unsigned(reg_a) - unsigned(reg_b));		
		
				if reg_acc = X"00" then
					FlagZ_tmp<= '1';
				else
					FlagZ_tmp<='0';
				end if;	
			when op_shiftl =>
				reg_acc_tmp <=std_logic_vector(unsigned(reg_acc) sll 1);
			
			when op_shiftr =>
				reg_acc_tmp <=std_logic_vector(unsigned(reg_acc) srl 1);
			
			when op_and =>
				reg_acc_tmp <= std_logic_vector(unsigned(reg_a) and unsigned(reg_b));
				
				if reg_acc = X"00" then
					FlagZ_tmp<= '1';
				else
					FlagZ_tmp<='0';
				end if;	
			
			when op_or =>
				reg_acc_tmp <= std_logic_vector(unsigned(reg_a) or unsigned(reg_b));		
				
				if reg_acc = X"00" then
					FlagZ_tmp<= '1';
				else
					FlagZ_tmp<='0';
				end if;	
			
			when op_xor =>
				reg_acc_tmp <= std_logic_vector(unsigned(reg_a) xor unsigned(reg_b));		
		
				if reg_acc = X"00" then
					FlagZ_tmp<= '1';
				else
					FlagZ_tmp<='0';
				end if;	
			
			when op_cmpe =>
			
				if unsigned(reg_a) = unsigned(reg_b) then
					FlagZ_tmp<= '1';
				else
					FlagZ_tmp<='0';
				end if;		
			
			when op_cmpl =>
			
				if unsigned(reg_a) < unsigned(reg_b) then
					FlagZ_tmp<= '1';
				else
					FlagZ_tmp<='0';
				end if;		
			
			when op_cmpg =>
		
				if unsigned(reg_a) > unsigned(reg_b) then
					FlagZ_tmp<= '1';
				else
					FlagZ_tmp<='0';
				end if;
			
			when op_ascii2bin =>
				if unsigned(reg_a) >= 48 and unsigned(reg_a) <=57 then
					reg_acc_tmp<= std_logic_vector(unsigned(reg_a) - 48);
				else
					reg_acc_tmp<=X"FF";
				end if;
			
			when op_bin2ascii =>
				if unsigned(reg_a) >= 0 and unsigned(reg_a) <=9 then
					reg_acc_tmp<= std_logic_vector(unsigned(reg_a) + 48);
				else
					reg_acc_tmp<=X"FF";
				end if;
			
			when op_lda =>
				reg_a_tmp <=Databus;
			
			when op_ldb =>
				reg_b_tmp <=Databus;
			
			when op_ldacc =>
				reg_acc_tmp <=Databus;
			
			when op_ldid =>
				Index_reg_tmp <=Databus;
			
			when op_mvacc2id =>
				Index_reg_tmp <=reg_acc;

			when op_mvacc2a =>
				reg_a_tmp <=reg_acc;

			when op_mvacc2b =>
				reg_b_tmp <=reg_acc;			

			when op_oeacc =>
				Databus<=reg_acc;
				
			when op_clr_flagz =>
				FlagZ_tmp<='0';
		
			when others =>	
		end case;
	--end if; 
end process; 

reg_alu:process(Clk, Reset)
begin
	if Reset = '0' then 
		reg_a <= (others=>'0');
		reg_b <= (others=>'0');
		reg_acc <= (others=>'0');
		Index_reg_reg <=(others=>'0');
		FlagZ <='0';
		FlagZ_reg<='0';
		FlagC <='0';
      FlagN <='0';
      FlagE <='0';
	elsif Clk'event and Clk = '1' then
		reg_a <= reg_a_tmp;
		reg_b <= reg_b_tmp;
		reg_acc <= reg_acc_tmp;
		Index_reg <=Index_reg_tmp;
		Index_reg_reg<=Index_reg_tmp;
		FlagZ	<=FlagZ_tmp;
		FlagZ_reg<=FlagZ_tmp;
--		FlagC <=FlagC_tmp;
--      FlagN <=FlagN_tmp;
--      FlagE <=FlagE_tmp;
	end if; 
end process; 

end Behavioral;

