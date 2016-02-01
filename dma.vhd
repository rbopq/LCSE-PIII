----------------------------------------------------------------------------------
-- Company: Technical University of Madrid
-- Engineer: Rodolfo B. Oporto Quisbert
-- 
-- Create Date:    20:19:11 11/22/2015 
-- Design Name: 	 ram.vhd
-- Module Name:    ram - Behavioral 
-- Project Name:   LCSE PIII
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity dma is
    Port ( Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           RCVD_Data : in  STD_LOGIC_VECTOR (7 downto 0);
           RX_Full : in  STD_LOGIC;
           RX_Empty : in  STD_LOGIC;
           Data_Read : out  STD_LOGIC;
           ACK_out : in  STD_LOGIC;
           TX_RDY : in  STD_LOGIC;
           Valid_D : out  STD_LOGIC;
           TX_Data : out  STD_LOGIC_VECTOR (7 downto 0);
           Address : out  STD_LOGIC_VECTOR (7 downto 0);
           Databus : inout  STD_LOGIC_VECTOR (7 downto 0);
           Write_en : out  STD_LOGIC;
           OE : out  STD_LOGIC;
           DMA_RQ : out  STD_LOGIC;
           DMA_ACK : in  STD_LOGIC;
           Send_comm : in  STD_LOGIC;
           READY : out  STD_LOGIC);
end dma;

architecture Behavioral of dma is

-- Contador de datos para DMA
signal data_count, data_count_tmp: unsigned (2 downto 0); --Tres bits 2**2-1

constant base_ram: integer:= 0; --Dirección base para DMA
-- Señales para estados DMA
type State is	(Idle, DMA_send, DMA_wait_Bus, DMA_end_write,DMA_read_RS ,DMA_write_ram);
signal CurrentState, NextState : State ;

begin

---- Lógica de cálculo de salida
calculo_salidas: process(CurrentState, data_count, TX_RDY, Send_comm, ACK_out, DMA_ACK, RX_Empty, RX_Full, Databus, RCvd_data	 )
begin
	-- Valores de iniciación por defecto
	
	-- RAM
	Address <=(others => 'Z');
   Databus <=(others => 'Z');
   Write_en <= 'Z';
   OE <= 'Z';
	
	-- RS-232
	Data_Read <= '0';
	Valid_D <= '1';
	TX_Data <=(others => '0');
   
	--Main control
   DMA_RQ <= '0';
   READY <= '1';	
	
	-- Señales intetrnas	
	NextState <= CurrentState;	
	data_count_tmp <= data_count;

	case CurrentState is
		when Idle =>
			if RX_Empty = '0' and RX_Full = '0' then -- Transición si la pila del RX232 no está vacía
				NextState<=DMA_wait_Bus;
				DMA_RQ <= '1';
			elsif Send_comm ='1' then
				NextState <= DMA_send;
			end if;
		
		when DMA_send =>
	
			if data_count = 2 then 
				NextState <= Idle;
				data_count_tmp<=to_unsigned(0,3);
				OE<='0';
			else
				READY<='0';
				if ACK_OUT ='1' and TX_RDY='1' then
					TX_Data<=Databus;
					Address<=std_logic_vector(to_unsigned(Base_RAM,8)+data_count+4);
					OE<='1';
					data_count_tmp <= data_count+1;
					Valid_D<='0';
				end if;
			end if;
		when DMA_wait_Bus =>
			DMA_RQ <= '1';
			if DMA_ACK = '1' then
				NextState <= DMA_write_ram;
			   Data_Read <= '1';
			end if;
			
		when DMA_write_ram=>
			DMA_RQ <= '1';
			if data_count <2 and RX_Empty = '0' and RX_Full = '0' then
				Data_Read <= '1';
				Databus<=RCVD_Data;
				Address<=std_logic_vector(to_unsigned(Base_RAM,8)+data_count);
				Write_en<='1';
				data_count_tmp<=data_count+1;
			elsif data_count = 2 then
				--Data_Read <= '1';
				Databus<=RCVD_Data;
				Address<=std_logic_vector(to_unsigned(Base_RAM,8)+data_count);
				Write_en<='1';
				data_count_tmp<=data_count+1;
			elsif data_count = 3 then
				NextState <= DMA_end_write;
			end if;
		when DMA_end_write =>
			NextState <= Idle;
			Databus<=X"FF";
			Address<=std_logic_vector(to_unsigned(Base_RAM,8)+data_count);
			Write_en<='1';
			data_count_tmp <= to_unsigned(0,3);
			DMA_RQ <= '1';
		when others =>
	end case;
end process;

--transicion_estados:process(CurrentState, RX_Empty, Send_comm, data_count, DMA_ACK)
--	begin
--		case CurrentState is
--			 
--			 when Idle=>
--				  if RX_Empty = '0' then -- Transición si la pila del RX232 no está vacía
--						NextState<=DMA_wait_Bus;
--				  elsif Send_comm ='1' then
--						NextState <= DMA_send;
--				  else
--						NextState <= Idle;
--				  end if;
--			 
--			 when DMA_send=>
--				  if data_count = 2 then -- Transición si la pila del RX232 no está vacía
--						NextState <= Idle;
--				  else
--						NextState <= DMA_send;
--				  end if;
--			 
--			 when DMA_wait_Bus=>
--				  if DMA_ACK = '1' then -- Transición si la pila del RX232 no está vacía
--						NextState <= DMA_read_RS;
--				  else
--						NextState <= DMA_wait_Bus;
--				  end if;
--				  
--			 when DMA_read_RS=>
--				  NextState <= DMA_write_ram;
--			 
--			 when DMA_write_ram=>
--				  if data_count = 3 then -- Transición si la pila del RX232 no está vacía
--						NextState <= Idle;
--				  else
--						NextState <= DMA_write_ram;
--				  end if;
--		
--		end case;         
--       
--    end process;
	 
-- Registro de estados
registro: process(Reset, Clk)
begin
	if Reset = '0' then 
		CurrentState<= Idle;
		data_count <= to_unsigned(0,3);
	elsif Clk'event and Clk = '1' then
		data_count <=data_count_tmp;
		CurrentState <= NextState;
	end if; 
end process; 

--Contador datos enviados
--data_counter:process(Clk, Reset)	
--begin
--	if Reset = '0' then 
--		data_count <= to_unsigned(0,2);
--	elsif Clk'event and Clk = '1' then
--		if sRESET_count = '1' then
--			data_count <= to_unsigned(0,2);
--		else
--			if en_data_count = '1' then --Enable
--				data_count <=data_count + 1;
--			end if;
--		end if;
--	end if;
--end process;


	
end Behavioral;

