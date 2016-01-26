  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
  USE work.PIC_pkg.all;


  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

-- Declaración de componentes

          COMPONENT ALU
          Port ( 
				Reset : in  STD_LOGIC;
				Clk : in  STD_LOGIC;
				Alu_op : in alu_op;
				Databus : inout  STD_LOGIC_VECTOR (7 downto 0);
				Index_Reg : out  STD_LOGIC_vector(7 downto 0);
				FlagZ : out  STD_LOGIC;
				FlagC : out  STD_LOGIC;
				FlagN : out  STD_LOGIC;
				FlagE : out  STD_LOGIC);
          END COMPONENT;

-- Señales para test
				SIGNAL Reset : STD_LOGIC;
				SIGNAL Clk : STD_LOGIC;
				SIGNAL Alu_op : alu_op;
				SIGNAL Databus : STD_LOGIC_VECTOR (7 downto 0);
				SIGNAL Index_Reg : STD_LOGIC_VECTOR (7 downto 0);
				SIGNAL FlagZ : STD_LOGIC;
				SIGNAL FlagC : STD_LOGIC;
				SIGNAL FlagN : STD_LOGIC;
				SIGNAL FlagE : STD_LOGIC;	
				
  BEGIN

  -- Instanciación de componentes
  alu_comp: ALU PORT MAP(Reset, Clk, Alu_op, Databus, Index_Reg, FlagZ, FlagC, FlagN, FlagE);

  -- Proceso para generar reloj
  p_clk : PROCESS
  BEGIN
     Clk <= '1', '0' after 5 ns;
     wait for 10 ns;
  END PROCESS;
  
  -- Proceso para estímulos del bus de datos
   stim_proc: process
   begin		
	   -- Reset inicial
		Reset <= '0', '1' after 75 ns;
		
		Alu_op<= nop;
      wait for 100 ns;	
		
		-- Load A
		Databus<="11001111";
		wait for 10 ns;
  		Alu_op<= op_lda;
		wait for 100 ns;
  		Alu_op<= nop;
		wait for 10 ns;
		Databus<=(others => 'Z');
      wait for 50 ns;
		
		-- Load B
		Databus<="00000001";
		wait for 10 ns;
  		Alu_op<= op_ldb;
		wait for 100 ns;
  		Alu_op<= nop;
		wait for 10 ns;
		Databus<=(others => 'Z');  		
      wait for 50 ns;
		-- A+B
  		Alu_op<= op_add;
		wait for 100 ns;
		-- A-B
		Alu_op<= op_sub;
		wait for 100 ns;
		-- ShiftL
		Alu_op<= op_shiftl;
		wait for 100 ns;
		-- ShiftR
		Alu_op<= op_shiftr;
		wait for 100 ns;
		-- AND
		Alu_op<= op_and;
		wait for 100 ns;
		-- OR
		Alu_op<= op_or;
		wait for 100 ns;
		-- XOR
		Alu_op<= op_xor;
		wait for 100 ns;
		-- CMPE
		Alu_op<= op_cmpe;
		wait for 100 ns;
		-- CMPG
		Alu_op<= op_cmpg;
		wait for 100 ns;	
		-- CMPL
		Alu_op<= op_cmpl;
		wait for 100 ns;
		-- ASCII2BIN (error)
		Alu_op<= op_ascii2bin;
		wait for 100 ns;
		-- Load A
		Databus<="00110111";
		wait for 10 ns;
  		Alu_op<= op_lda;
		wait for 100 ns;
  		Alu_op<= nop;
		wait for 10 ns;
		Databus<=(others => 'Z');
      wait for 50 ns;
		-- ASCII2BIN (7)
		Alu_op<= op_ascii2bin;
		wait for 100 ns;
		-- Load A
		Databus<="00001001";
		wait for 10 ns;
  		Alu_op<= op_lda;
		wait for 100 ns;
  		Alu_op<= nop;
		wait for 10 ns;
		Databus<=(others => 'Z');
      wait for 50 ns;
		-- ASCII2BIN (9)
		Alu_op<= op_bin2ascii;
		wait for 100 ns;
		-- op_mvacc2id (9)
		Alu_op<= op_mvacc2id;
		wait for 100 ns;
      -- insert stimulus here 
      wait;
   end process;
   

  

  END;
