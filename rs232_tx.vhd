----------------------------------------------------------------------------------
-- Company: Technical University of Madrid
-- Engineer: Rodolfo Boris Oporto Quisbert
-- 
-- Create Date:	18:31:15 10/16/2015 
-- Design Name:	RS232 TX state machine
-- Module Name:   rs232_tx - Behavioral 
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

entity rs232_tx is
    Port ( Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Start : in  STD_LOGIC;
           Data : in  STD_LOGIC_VECTOR (7 downto 0);
           EOT : out  STD_LOGIC;
           TX : out  STD_LOGIC);
end rs232_tx;

architecture Behavioral of rs232_tx is

-- Definición de los estados de la máquina
type State is	(Idle, StartBit, SendData, StopBit);
signal CurrentState, NextState : State ;

-- Definición de las señales internas

constant PulseEndOfCount: integer:= 174; --Cuenta 20MHz/115200bps
signal data_count: unsigned (2 downto 0); --Ocho bits 2**3
signal width_count: unsigned (7 downto 0); --Cuenta hasta 174
signal TX_tmp, EOT_tmp: std_logic;
signal en_width_count, en_data_count: std_logic;--, end_bit, end_width: std_logic;

begin

-- Maquina de transición de estados y cálculo de salidas
transicion_estados: process(Start, CurrentState, data_count, width_count, Data)
begin
	NextState <= CurrentState;
	case CurrentState is
		when Idle =>
			if Start = '1' then
				NextState <= StartBit;
			end if;
			
			TX_tmp<='1';
			EOT_tmp<='1';
			en_width_count<='0';
			en_data_count<='0';
			
		when StartBit =>
			if width_count=PulseEndOfCount then
				NextState <= SendData;
			end if;
			
			TX_tmp<='0';
			EOT_tmp<='0';
			en_width_count<='1';
			en_data_count<='0';			
			
		when SendData =>
			if data_count = 7 and width_count=PulseEndOfCount then
				NextState <= StopBit;
			end if;
			
			TX_tmp<=Data(to_integer(data_count));
			EOT_tmp<='0';
			en_width_count<='1';
			en_data_count<='1';	

		when StopBit =>
			if width_count= PulseEndOfCount then
				NextState <= Idle;
			end if;
		
			TX_tmp<='1';
			EOT_tmp<='0';
			en_width_count<='1';
			en_data_count<='0';
		
	end case;
end process;	

--- Registro de estados
registro_estados: process(Reset, Clk)
begin
	if Reset = '0' then 
		CurrentState<= Idle;
	elsif Clk'event and Clk = '1' then
		EOT<=EOT_tmp;
		TX<=TX_tmp;
		CurrentState <= NextState;
	end if; 
end process; 

--Contador de ancho pulso para generación del baudarate
width_counter:process(Clk, Reset)
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
		end if;	
	end if;
end process;

--Contador de bits enviados durante la transmisión
bit_counter:process(Clk, Reset)	
begin
	if Reset = '0' then
		data_count <= to_unsigned(0,3);
	elsif Clk'event and Clk = '1' then
		if en_data_count = '1'  and width_count = PulseEndOfCount then
			if data_count=7 then
				data_count <= to_unsigned(0,3);
			else
				data_count <=data_count + 1;
			end if;
		end if;	
	end if;
end process;

end Behavioral;

