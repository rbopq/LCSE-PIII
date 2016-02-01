----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:35:31 11/23/2015 
-- Design Name: 
-- Module Name:    controlador - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
USE work.PIC_pkg.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MAIN_CONTROL is
    Port ( 
		Reset : in  STD_LOGIC;
		Clk : in  STD_LOGIC;
		ROM_Data: in STD_LOGIC_VECTOR(11 downto 0);
		ROM_Addr: out STD_LOGIC_VECTOR(11 downto 0);
		RAM_Addr: out STD_LOGIC_VECTOR (7 downto 0);
		RAM_CS: out STD_LOGIC;
		RAM_Write: out STD_LOGIC;
		RAM_OE : out  STD_LOGIC;
		Databus : inout  STD_LOGIC_VECTOR (7 downto 0);
		DMA_RQ : in  STD_LOGIC;
		DMA_ACK : out  STD_LOGIC;
		SEND_comm : out  STD_LOGIC;
		DMA_READY : in  STD_LOGIC;
		ALU_op : out alu_op;
		Index_Reg : in STD_LOGIC_VECTOR (7 downto 0);
		FlagZ : in STD_LOGIC);
--		FlagC : in STD_LOGIC;
--		FlagN : in STD_LOGIC;
--		FlagE : in STD_LOGIC);
end MAIN_CONTROL;

architecture Behavioral of MAIN_CONTROL is

-- Contador de programa
signal prog_count, prog_count_tmp: STD_LOGIC_VECTOR(11 downto 0); --11 bits  para poder direccinar todas las posibles direcciones de la ROM

-- Registros 
signal Reg_instruct: STD_LOGIC_VECTOR (11 downto 0); 
signal Reg_operand: STD_LOGIC_VECTOR (11 downto 0);
 
signal Reg_instruct_tmp: STD_LOGIC_VECTOR (11 downto 0); 
signal Reg_operand_tmp: STD_LOGIC_VECTOR (11 downto 0);

--signal IS_stall: STD_LOGIC;

-- Registros para controld e Databus
--signal Databus_temp : STD_LOGIC_VECTOR(7 downto 0);
--signal RAM_Addr : STD_LOGIC_VECTOR(7 downto 0);
--signal Databus_using : STD_LOGIC;
--signal RAM_Write : STD_LOGIC;


-- Se�ales para estados del controlador
type State is	(Ini, Sleep, Get_instruct, Get_operand, Decode, Execute, Stall);
signal CurrentState, NextState : State ;


begin

-- L�gica de c�lculo de salidas y microinstrucciones
calculo_salidas: process(CurrentState, Reg_operand, Reg_instruct, ROM_Data, Prog_count, Index_Reg, FlagZ, dma_rq, dma_ready)
begin
	ROM_Addr <= Prog_count;
	RAM_Addr <= (others => 'Z');
	RAM_CS <= 'Z';
	RAM_Write <= 'Z';
	RAM_OE <= 'Z';
	Databus <= (others => 'Z');
	DMA_ACK <= '0';
	SEND_comm<='0';
	ALU_op<=nop;
	Reg_operand_tmp<= Reg_operand;
	Reg_instruct_tmp<= Reg_instruct;
	Prog_count_tmp<=Prog_count;
	NextState <= CurrentState;

	case CurrentState is
		when Ini=>
			if DMA_RQ = '1' then -- Transici�n si la pila del RX232 no est� vac�a
				NextState<=Sleep;
		   else
				NextState <= Get_instruct;
		  end if;
		
		when Sleep=>
			if DMA_RQ = '0' then -- Transici�n si la pila del RX232 no est� vac�a
				NextState <= Ini;
			else
				NextState <= Sleep;
			end if;
			
			DMA_ACK <= '1';
	 
		when Get_instruct=>
			--if Reg_instruct(7 downto 6) = TYPE_1 or Reg_instruct(7 downto 6) = TYPE_4 then -- Transici�n si la pila del RX232 no est� vac�a
				--NextState <= Execute;
			--else
			--	NextState <= Get_operand;
			--end if;
			NextState <= Decode;
			
			ROM_Addr<=Prog_count;
			Reg_instruct_tmp<=ROM_Data;
			Prog_count_tmp <=std_logic_vector(unsigned(prog_count) + 1);			
		
		when Get_operand=>
			NextState <= Execute;

			ROM_Addr<=Prog_count;
			Reg_operand_tmp<=ROM_Data;
			Prog_count_tmp <=std_logic_vector(unsigned(prog_count) + 1);
		
		when Decode =>
			case Reg_instruct(7 downto 6) is
					when TYPE_1 =>
						NextState <= Execute;
					when TYPE_2 =>
						NextState <= Get_operand;
					when TYPE_3 =>
						if Reg_instruct(5 downto 3)=(LD & SRC_ACC) then
							NextState <= Execute;
						else
							NextState <= Get_operand;
						end if;
					when TYPE_4 =>
						NextState <= Stall;

					when others =>
				end case;			
		
		when Execute=>
			if Reg_instruct(7 downto 6) = TYPE_4 then -- Transici�n si la pila del RX232 no est� vac�a
				NextState <= Stall;
			else
				NextState <= Ini;
			end if;
			
			case Reg_instruct(7 downto 6) is
				when TYPE_1 =>
					case Reg_instruct (5 downto 0) is
						when ALU_ADD =>
							ALU_op<=op_add;
						when ALU_SUB =>
							ALU_op<=op_sub;
						when ALU_SHIFTL =>
							ALU_op<=op_shiftl;
						when ALU_SHIFTR =>
							ALU_op<=op_shiftr;				
						when ALU_AND =>
							ALU_op<=op_and;
						when ALU_OR =>
							ALU_op<=op_or;
						when ALU_XOR =>
							ALU_op<=op_xor;				
						when ALU_CMPE =>
							ALU_op<=op_cmpe;				
						when ALU_CMPG =>
							ALU_op<=op_cmpg;				
						when ALU_CMPL =>
							ALU_op<=op_cmpl;				
						when ALU_ASCII2BIN =>
							ALU_op<=op_ascii2bin;				
						when ALU_BIN2ASCII =>
							ALU_op<=op_bin2ascii;	
						when others =>
						
					end case;
				when TYPE_2 =>
					case Reg_instruct (5 downto 0) is
						when JMP_UNCOND =>
							Prog_count_tmp<=Reg_operand;
						when JMP_COND =>
							if FlagZ = '1' then
								Prog_count_tmp<=Reg_operand;
								ALU_op<=op_clr_flagz;
							end if;
						when others=>
					end case;	
				when TYPE_3 =>
					case Reg_instruct(5) is
						when '0' => --LD
							case Reg_instruct(4 downto 3) is	
								when SRC_ACC =>
									case Reg_instruct(2 downto 0) is
										when DST_A =>
											ALU_op<=op_mvacc2a;				
										when DST_B =>
											ALU_op<=op_mvacc2b;				
										when DST_INDX =>
											ALU_op<=op_mvacc2id;	
										when others=>
									end case;
								when SRC_CONSTANT =>
									case Reg_instruct(2 downto 0) is
										when DST_A =>
											Databus<=Reg_operand(7 downto 0);
											ALU_op<=op_lda;				
										when DST_B =>
											Databus<=Reg_operand(7 downto 0);
											ALU_op<=op_ldb;				
										when DST_INDX =>
											Databus<=Reg_operand(7 downto 0);
											ALU_op<=op_ldid;
										when DST_ACC =>
											Databus<=Reg_operand(7 downto 0);
											ALU_op<=op_ldacc;
										when others=>
									end case;
								when SRC_INDXD_MEM =>
									ALU_op<=op_mvacc2id;
									case Reg_instruct(2 downto 0) is
										when DST_A =>
											RAM_Addr <= std_logic_vector(unsigned(Index_Reg)+unsigned(Reg_operand(7 downto 0)));
											RAM_OE <= '1';
											ALU_op<=op_lda;				
										when DST_B =>
											RAM_Addr <= std_logic_vector(unsigned(Index_Reg)+unsigned(Reg_operand(7 downto 0)));
											RAM_OE <= '1';
											ALU_op<=op_ldb;				
										when DST_INDX =>
											RAM_Addr <= std_logic_vector(unsigned(Index_Reg)+unsigned(Reg_operand(7 downto 0)));
											RAM_OE <= '1';
											ALU_op<=op_ldid;
										when DST_ACC =>
											RAM_Addr <= std_logic_vector(unsigned(Index_Reg)+unsigned(Reg_operand(7 downto 0)));				
											RAM_OE <= '1';
											ALU_op<=op_ldacc;
										when others=>
									end case;							
								when SRC_MEM =>
									case Reg_instruct(2 downto 0) is
										when DST_A =>
											RAM_Addr <= std_logic_vector(unsigned(Reg_operand(7 downto 0)));
											RAM_OE <= '1';
											ALU_op<=op_lda;				
										when DST_B =>
											RAM_Addr <= std_logic_vector(unsigned(Reg_operand(7 downto 0)));
											RAM_OE <= '1';
											ALU_op<=op_ldb;				
										when DST_INDX =>
											RAM_Addr <= std_logic_vector(unsigned(Reg_operand(7 downto 0)));
											RAM_OE <= '1';
											ALU_op<=op_ldid;
										when DST_ACC =>
											RAM_Addr <= std_logic_vector(unsigned(Reg_operand(7 downto 0)));					
											RAM_OE <= '1';
											ALU_op<=op_ldacc;
										when others=>
									end case;							
								when others=>
							end case;	
						when WR =>
							case Reg_instruct(4 downto 3) is	
								when SRC_ACC =>
									case Reg_instruct(2 downto 0) is
										when DST_INDX =>
											ALU_op<=op_mvacc2id;
											RAM_Addr <= std_logic_vector(unsigned(Index_Reg));
											RAM_Write <= '1';
											ALU_op <= op_oeacc;				
										when DST_MEM =>
											RAM_Addr <= std_logic_vector(unsigned(Reg_operand(7 downto 0)));
											RAM_Write <= '1';
											ALU_op <= op_oeacc;				
										when DST_INDXD_MEM =>
											ALU_op<=op_mvacc2id;
											RAM_Addr <= std_logic_vector(unsigned(Index_Reg)+unsigned(Reg_operand(7 downto 0)));
											RAM_Write <= '1';
											ALU_op <= op_oeacc;				
										when others=>	
									end case;
								when others=>
							end case;	
						when others=>		
					end case;	
				when TYPE_4 =>
					--IS_stall<='1';
					-- Se�al de env�o por DMA
				when others =>
			end case;			 
		when Stall=>
			Send_comm<='1'; 
			if DMA_READY = '1' then -- Transici�n si la pila del RX232 no est� vac�a
				NextState <= Ini;
			end if;	
		when others=>
	
	end case;         
end process;	

 
-- Registro de estados
registro: process(Clk, Reset)
begin
	if Reset = '0' then 
		CurrentState<= Ini;
		Reg_instruct <= (others=>'0');
		Reg_operand <= (others=>'0');
		Prog_count<=(others=>'0');
	elsif Clk'event and Clk = '1' then
		CurrentState <= NextState;	
		Reg_instruct <= Reg_instruct_tmp;
		Reg_operand <= Reg_operand_tmp;	
		Prog_count<=Prog_count_tmp;
	end if; 
end process;  		


end Behavioral;

