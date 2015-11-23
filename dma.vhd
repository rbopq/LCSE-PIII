----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:35:31 11/23/2015 
-- Design Name: 
-- Module Name:    dma - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
signal data_count: unsigned (1 downto 0); --Tres bits 2**2-1
signal en_data_count: std_logic;

-- Señales para estados DMA
type State is	(Idle, DMA_send, DMA_wait_Bus, DMA_write_ram);
signal CurrentState, NextState : State ;

begin

-- Lógica de cálculo de salida
transicion_estados: process(CurrentState, RX_Empty, Send_comm, data_count, DMA_ACK)
begin
	NextState <= CurrentState;	
	case CurrentState is
		when Idle =>
			if RX_Empty = '0' then -- Transición si la pila del RX232 no está vacía
				DMA_RQ <= '1';
			elsif Send_comm ='1' then
				READY <='1';
			end if;
		when DMA_send =>
			if data_count = 2 then 
				READY <='0';
			end if;
		when DMA_wait_Bus =>
			-- estudiar 
		when DMA_write_ram=>
			if data_count = 3 then 
				DMA_RQ <='1';
			end if;
	end case;
end process;	

process (Clk, Reset)
    begin
        if Reset = '0' then
            NextState <= Idle;
        elsif Clk'event and Clk='1' then
            -- Determine the next state synchronously, based on
            -- the current state and the input
            case state is
                when s0=>
                    if data_in = '1' then
                        state <= s1;
                    else
                        state <= s0;
                    end if;
                when s1=>
                    if data_in = '1' then
                        state <= s2;
                    else
                        state <= s1;
                    end if;
                when s2=>
                    if data_in = '1' then
                        state <= s3;
                    else
                        state <= s2;
                    end if;
                when s3=>
                    if data_in = '1' then
                        state <= s3;
                    else
                        state <= s1;
                    end if;
            end case;
            
        end if;
    end process;
	 
-- Registro de estados
registro: process(Reset, Clk)
begin
	if Reset = '0' then 
		CurrentState<= Idle;
	elsif Clk'event and Clk = '1' then
		CurrentState <= NextState;
	end if; 
end process; 

--Contador datos
data_counter:process(Clk, Reset)	
begin
	if Reset = '0' then 
		data_count <= to_unsigned(0,3);
	elsif Clk'event and Clk = '1' then
		if en_data_count = '1' then --Enable
			if data_count=3 then
				data_count <= to_unsigned(0,2);
			else
				data_count <=data_count + 1;
			end if;
		end if;	
	end if;
end process;

end Behavioral;

