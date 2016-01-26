----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:27:53 01/10/2016 
-- Design Name: 
-- Module Name:    bloque_control - Behavioral 
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
USE work.PIC_pkg.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bloque_control is
	 Port ( Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           RAM_Addr: out STD_LOGIC_VECTOR (7 downto 0);
			  RAM_CS: out STD_LOGIC;
			  RAM_Write: out STD_LOGIC;
			  RAM_OE : out  STD_LOGIC;
           Databus : inout  STD_LOGIC_VECTOR (7 downto 0);
           DMA_RQ : in  STD_LOGIC;
           DMA_ACK : out  STD_LOGIC;
           SEND_comm : out  STD_LOGIC;
			  DMA_READY : in  STD_LOGIC
			  );
end bloque_control;

architecture Behavioral of bloque_control is
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MAIN_CONTROL
    PORT(
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         ROM_Data : IN  std_logic_vector(11 downto 0);
         ROM_Addr : OUT  std_logic_vector(11 downto 0);
         RAM_Addr : OUT  std_logic_vector(7 downto 0);
         RAM_CS : OUT  std_logic;
         RAM_Write : OUT  std_logic;
         RAM_OE : OUT  std_logic;
         Databus : INOUT  std_logic_vector(7 downto 0);
         DMA_RQ : IN  std_logic;
         DMA_ACK : OUT  std_logic;
         SEND_comm : OUT  std_logic;
         DMA_READY : IN  std_logic;
         ALU_op : OUT  alu_op;
         Index_Reg : IN  std_logic_vector(7 downto 0);
         FlagZ : IN  std_logic;
         FlagC : IN  std_logic;
         FlagN : IN  std_logic;
         FlagE : IN  std_logic
        );
    END COMPONENT;
	
	 COMPONENT ALU
    PORT ( 
			  Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Alu_op : in alu_op;
           Databus : inout  STD_LOGIC_VECTOR (7 downto 0);
           Index_Reg : out  std_logic_vector(7 downto 0);
           FlagZ : out  STD_LOGIC;
           FlagC : out  STD_LOGIC;
           FlagN : out  STD_LOGIC;
           FlagE : out  STD_LOGIC
			  );
    END COMPONENT;

    COMPONENT ROM
	 PORT (
			 Instruction     : out std_logic_vector(11 downto 0);  -- Instruction bus
			 Program_counter : in  std_logic_vector(11 downto 0)
			 );
	 END COMPONENT;
	 
   signal ROM_Data : std_logic_vector(11 downto 0);
   signal Index_Reg : std_logic_vector(7 downto 0);
   signal FlagZ : std_logic;
   signal FlagC : std_logic;
   signal FlagN : std_logic;
   signal FlagE : std_logic;
   signal ROM_Addr : std_logic_vector(11 downto 0);
   signal ALU_op : alu_op;
	
begin
-- Instantiate the Unit Under Test (UUT)
   controlador: MAIN_CONTROL PORT MAP (
          Reset => Reset,
          Clk => Clk,
          ROM_Data => ROM_Data,
          ROM_Addr => ROM_Addr,
          RAM_Addr => RAM_Addr,
          RAM_CS => RAM_CS,
          RAM_Write => RAM_Write,
          RAM_OE => RAM_OE,
          Databus => Databus,
          DMA_RQ => DMA_RQ,
          DMA_ACK => DMA_ACK,
          SEND_comm => SEND_comm,
          DMA_READY => DMA_READY,
          ALU_op => ALU_op,
          Index_Reg => Index_Reg,
          FlagZ => FlagZ,
          FlagC => FlagC,
          FlagN => FlagN,
          FlagE => FlagE
        );

   alu_comp: ALU PORT MAP (
          Reset => Reset,
          Clk => Clk,
          ALU_op => ALU_op,
          Databus => Databus,
          Index_Reg => Index_Reg,
          FlagZ => FlagZ,
          FlagC => FlagC,
          FlagN => FlagN,
          FlagE => FlagE
        );	

   rom_comp: ROM PORT MAP (
          Instruction => ROM_Data,
          Program_counter => ROM_Addr          
        );
		  

end Behavioral;

