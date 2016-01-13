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
		FlagZ : in STD_LOGIC;
		FlagC : in STD_LOGIC;
		FlagN : in STD_LOGIC;
		FlagE : in STD_LOGIC);
end MAIN_CONTROL;

architecture Behavioral of MAIN_CONTROL is

-- Contador de programa
signal prog_count: STD_LOGIC_VECTOR(11 downto 0); --Ocho bits 2**3
signal EN_prog_count: STD_LOGIC;

-- Registros 
signal Reg_instruct: STD_LOGIC_VECTOR (11 downto 0); 
signal Reg_operand: STD_LOGIC_VECTOR (11 downto 0); 

signal IS_stall: STD_LOGIC;
signal set_prog_count: STD_LOGIC;

-- Registros para controld e Databus
signal Databus_temp : STD_LOGIC_VECTOR(7 downto 0);
signal RAM_Addr_temp : STD_LOGIC_VECTOR(7 downto 0);
signal Databus_using : STD_LOGIC;
signal RAM_Write_temp : STD_LOGIC;


-- Se�ales para estados del controlador
type State is	(Ini, Sleep, Get_instruct, Get_operand, Execute, Stall);
signal CurrentState, NextState : State ;


begin

-- L�gica de c�lculo de salidas y microinstrucciones
calculo_salidas: process(CurrentState)
begin
	case CurrentState is
		when Ini=>
			DMA_ACK <= '0';
			EN_prog_count<='0';
			Databus_using <= '0';
			SEND_comm<='0';
			ALU_op<=nop;
			Reg_instruct<=(others => '0');
			Reg_operand<=(others => '0');
			IS_stall<='0';
			Databus_temp <=(others => '0');
			RAM_Addr_temp<=(others => '0');
			RAM_Write_temp <='0';
			set_prog_count <= '0';
			EN_prog_count<='0';

		
		when Sleep=>
			--Databus <= (others => 'Z');
			DMA_ACK <= '1';
			EN_prog_count<='0';
			set_prog_count <= '0';
		 
		when Get_instruct=>
			set_prog_count <= '0';
--			ROM_Addr<=prog_count;
			Reg_instruct<=ROM_Data;
			EN_prog_count<='1';
			 
		when Get_operand=>
			set_prog_count <= '0';
--			ROM_Addr<=prog_count;
			Reg_operand<=ROM_Data;
			EN_prog_count<='1';
			 
		when Execute=>
			set_prog_count <= '0';
			EN_prog_count<='0';
			case ROM_Data(7 downto 6) is
				when TYPE_1 =>
					case ROM_Data (5 downto 0) is
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
					case ROM_Data (5 downto 0) is
						when JMP_UNCOND =>
								set_prog_count <= '1';
						when JMP_COND =>
							if FlagZ = '1' then
								set_prog_count <= '1';
							end if;
						when others=>
					end case;	
				when TYPE_3 =>
					case ROM_Data (5) is
						when '0' => --LD
							case ROM_Data(4 downto 3) is	
								when SRC_ACC =>
									case ROM_Data(2 downto 0) is
										when DST_A =>
											ALU_op<=op_mvacc2a;				
										when DST_B =>
											ALU_op<=op_mvacc2b;				
										when DST_INDX =>
											ALU_op<=op_mvacc2id;	
										when others=>
									end case;
								when SRC_CONSTANT =>
									case ROM_Data(2 downto 0) is
										when DST_A =>
											Databus_temp<=Reg_operand(7 downto 0);
											Databus_using <= '1';
											ALU_op<=op_lda;				
										when DST_B =>
											Databus_temp<=Reg_operand(7 downto 0);
											Databus_using <= '1';
											ALU_op<=op_ldb;				
										when DST_INDX =>
											Databus_temp<=Reg_operand(7 downto 0);
											Databus_using <= '1';
											ALU_op<=op_ldid;
										when DST_ACC =>
											Databus_temp<=Reg_operand(7 downto 0);
											Databus_using <= '1';
											ALU_op<=op_ldacc;
										when others=>
									end case;
								when SRC_INDXD_MEM =>
									case ROM_Data(2 downto 0) is
										when DST_A =>
											RAM_Addr_temp <= std_logic_vector(unsigned(Index_Reg)+unsigned(Reg_operand(7 downto 0)));
											Databus_using <= '1';
											ALU_op<=op_lda;				
										when DST_B =>
											RAM_Addr_temp <= std_logic_vector(unsigned(Index_Reg)+unsigned(Reg_operand(7 downto 0)));
											Databus_using <= '1';
											ALU_op<=op_ldb;				
										when DST_INDX =>
											RAM_Addr_temp <= std_logic_vector(unsigned(Index_Reg)+unsigned(Reg_operand(7 downto 0)));
											Databus_using <= '1';
											ALU_op<=op_ldid;
										when DST_ACC =>
											RAM_Addr_temp <= std_logic_vector(unsigned(Index_Reg)+unsigned(Reg_operand(7 downto 0)));				
											Databus_using <= '1';
											ALU_op<=op_ldacc;
										when others=>
									end case;							
								when SRC_MEM =>
									case ROM_Data(2 downto 0) is
										when DST_A =>
											RAM_Addr_temp <= std_logic_vector(unsigned(Reg_operand(7 downto 0)));
											Databus_using <= '1';
											ALU_op<=op_lda;				
										when DST_B =>
											RAM_Addr_temp <= std_logic_vector(unsigned(Reg_operand(7 downto 0)));
											Databus_using <= '1';
											ALU_op<=op_ldb;				
										when DST_INDX =>
											RAM_Addr_temp <= std_logic_vector(unsigned(Reg_operand(7 downto 0)));
											Databus_using <= '1';
											ALU_op<=op_ldid;
										when DST_ACC =>
											RAM_Addr_temp <= std_logic_vector(unsigned(Reg_operand(7 downto 0)));									
											Databus_using <= '1';
											ALU_op<=op_ldacc;
										when others=>
									end case;							
								when others=>
							end case;	
						when WR =>
							case ROM_Data(4 downto 3) is	
								when SRC_ACC =>
									case ROM_Data(2 downto 0) is
										when DST_INDX =>
											RAM_Addr_temp <= std_logic_vector(unsigned(Index_Reg));
											RAM_Write_temp <= '1';
											Databus_using <= '1';
											ALU_op <= op_oeacc;				
										when DST_MEM =>
											RAM_Addr_temp <= std_logic_vector(unsigned(Reg_operand(7 downto 0)));
											RAM_Write_temp <= '1';
											Databus_using <= '1';
											ALU_op <= op_oeacc;				
										when DST_INDXD_MEM =>
											RAM_Addr_temp <= std_logic_vector(unsigned(Index_Reg)+unsigned(Reg_operand(7 downto 0)));
											RAM_Write_temp <= '1';
											Databus_using <= '1';
											ALU_op <= op_oeacc;				
										when others=>	
									end case;
								when others=>
							end case;	
						when others=>		
					end case;	
				when TYPE_4 =>
					IS_stall<='1';
				when others =>
			end case;			 
		when Stall=>
		when others=>
	end case;         
end process;	

-- Proceso para el c�lculo del siguiente estado
transicion_estados:process(CurrentState, DMA_RQ, DMA_READY, Is_stall, Reg_instruct, Reg_operand)
	begin
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
				  
			 when Get_instruct=>
				  if Reg_instruct(7 downto 6) = TYPE_1 then -- Transici�n si la pila del RX232 no est� vac�a
						NextState <= Execute;
				  else
						NextState <= Get_operand;
				  end if;
			 
			 when Get_operand=>
			 
				  NextState <= Execute;
				  
			 when Execute=>
				  if Is_stall = '1' then -- Transici�n si la pila del RX232 no est� vac�a
						NextState <= Stall;
				  else
						NextState <= Ini;
				  end if;

			 when Stall=>
				  if DMA_READY = '1' then -- Transici�n si la pila del RX232 no est� vac�a
						NextState <= Ini;
				  else
						NextState <= Stall;
				  end if;
			when others =>
				  
		end case;         
       
end process;
	 
-- Registro de estados
registro: process(Clk, Reset)
begin
	if Reset = '0' then 
		CurrentState<= Ini;
	elsif Clk'event and Clk = '1' then
		CurrentState <= NextState;		
	end if; 
end process;  		

--Contador programa
progr_count: process(Clk, Reset)
begin
	if Reset = '0' then
		prog_count <= (others => '0');
		ROM_Addr<=prog_count;
	elsif Clk'event and Clk = '1' then
		if EN_prog_count = '1' then --Enable
			if set_prog_count='1' then
				prog_count <=Reg_operand;
				ROM_Addr<=prog_count;
			else
				prog_count <=std_logic_vector(unsigned(prog_count) + 1);
				ROM_Addr<=prog_count;

			end if;	
		end if;
	end if; 	
end process;

Databus <= Databus_temp when Databus_using='1' else (others => 'Z');
RAM_Addr <= RAM_Addr_temp when Databus_using='1' else (others => 'Z');
RAM_CS <= 'Z' when Databus_using='1' else 'Z';
RAM_OE <= 'Z' when Databus_using='1' else 'Z';
RAM_Write <= RAM_Write_temp when Databus_using='1' else 'Z';


	
end Behavioral;

