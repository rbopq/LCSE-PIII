----------------------------------------------------------------------------------
-- Company: Technical University of Madrid
-- Engineer: Rodolfo Boris Oporto Quisbert
-- 
-- Create Date:	18:31:15 10/16/2015 
-- Design Name:	RS232 RX state machine
-- Module Name:   rs232_rx - Behavioral 
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

entity RS232_RX is
    Port ( Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           LineRD_in : in  STD_LOGIC;
           Valid_out : out  STD_LOGIC;
           Code_out : out  STD_LOGIC;
           Store_out : out  STD_LOGIC);
end RS232_RX;

architecture Behavioral of RS232_RX is
-- Señales para estados
type State is	(Idle, StartBit, RcvData, StopBit);
signal CurrentState, NextState : State ;
-- Contadores
signal data_count: unsigned (2 downto 0); --Ocho bits 2**3
signal width_count: unsigned (7 downto 0); --Ocho bits 2**3
-- Señales de control para lógica de registros 
--signal Valid_out_tmp, Code_out_tmp, Store_out_tmp: std_logic;
constant PulseEndOfCount: integer:= 174; --Cuenta 20MHz/115200bps
signal en_width_count, en_halfwidth_count, en_data_count: std_logic;

begin

-- Lógica de transición de estados
transicion_estados: process(LineRD_in, CurrentState, width_count, data_count)
begin
	NextState <= CurrentState;
	--Code_out_tmp<='0';
	Code_out<='0';
	--Store_out_tmp<='0';
	Store_out<='0';
	case CurrentState is
		when Idle =>
			if LineRD_in = '0' then
				NextState <= StartBit;
			end if;
			-- Salidas
			--Valid_out_tmp<='0';
			Valid_out<='0';
			--Code_out_tmp<='0';
			Code_out<='0';
			--Store_out_tmp<='0';
			Store_out<='0';
			-- Contadores 
			en_halfwidth_count<='0';
			en_width_count<='0';
			en_data_count<='0';				
		
		when StartBit =>
			if width_count = PulseEndOfCount/2  and LineRD_in= '0' then
				NextState <= RcvData;
			end if;
			-- Salidas
			--Valid_out_tmp<='0';
			Valid_out<='0';
			--Code_out_tmp<='0';
			Code_out<='0';
			--Store_out_tmp<='0';
			Store_out<='0';
			-- Contadores 
			en_halfwidth_count<='1';
			en_width_count<='0';
			en_data_count<='0';
			
		when RcvData =>
			if width_count=PulseEndOfCount then
				if data_count =7 then
					-- Salidas
					NextState <= StopBit;
					--Code_out_tmp<=LineRD_in;
					Code_out<=LineRD_in;
					--Valid_out_tmp<='1';
					Valid_out<='1';
					--Store_out_tmp<='0';
					Store_out<='0';
				else
					-- Salidas
					--Code_out_tmp<=LineRD_in;
					Code_out<=LineRD_in;
					--Valid_out_tmp<='1';
					Valid_out<='1';
					--Store_out_tmp<='0';
					Store_out<='0';
				end if;
			else
				--Valid_out_tmp<='0';
				Valid_out<='0';
			end if;
			-- Contadores 
			en_halfwidth_count<='0';
			en_width_count<='1';
			en_data_count<='1';
			
		when StopBit =>
			if width_count = PulseEndOfCount/2 and LineRD_in= '1' then
					-- Salidas
					NextState <= Idle;
					--Code_out_tmp<=LineRD_in;
					Code_out<=LineRD_in;
					--Store_out_tmp<='1';
					Store_out<='1';
			end if;	
			--Valid_out_tmp<='0';
			Valid_out<='0';
			
			-- Contadores 
			en_halfwidth_count<='1';
			en_width_count<='0';
			en_data_count<='0';
			
	end case;
end process;	

-- Registro de estados
registro: process(Reset, Clk)
begin
	if Reset = '0' then 
		CurrentState<= Idle;
	elsif Clk'event and Clk = '1' then
		CurrentState <= NextState;
--		Valid_out<=Valid_out_tmp;
--		Code_out<=Code_out_tmp;
--		Store_out<=Store_out_tmp;
	end if; 
end process; 

--Contador datos
data_counter:process(Clk, Reset)	
begin
	if Reset = '0' then 
		data_count <= to_unsigned(0,3);
	elsif Clk'event and Clk = '1' then
		if en_data_count = '1' and width_count = PulseEndOfCount then --Enable
			if data_count=7 then
				data_count <= to_unsigned(0,3);
			else
				data_count <=data_count + 1;
			end if;
		end if;	
	end if;
end process;

--Contador de ancho de pulso
bit_counter:process(Clk, Reset)	
begin
	if Reset = '0' then 
		width_count <= to_unsigned(0,8);
	elsif Clk'event and Clk = '1' then
		if en_width_count = '1' then
			if width_count = PulseEndOfCount then
				width_count <= to_unsigned(0,8);
			else
				width_count <=width_count + 1;
			end if;
		elsif en_halfwidth_count ='1' then
			if width_count = PulseEndOfCount/2 then
				width_count <= to_unsigned(0,8);
			else
				width_count <=width_count + 1;
			end if;
		end if;			
	end if;
end process;

end Behavioral;
