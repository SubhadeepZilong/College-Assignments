LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY binadd_tb IS
END binadd_tb;
 
ARCHITECTURE behavior OF binadd_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT binadd
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         Carryout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

  --Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Carryout : std_logic;
  
BEGIN
 
  -- Instantiate the Unit Under Test (UUT)
   uut: binadd PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Carryout => Carryout
        );

   stim_proc_A: process
   begin    
      A<="1111";
      wait for 100 ns;  
      A<="1010";
      wait;
   end process;


   stim_proc_B: process
   begin    
      B<="0001";
      wait for 100 ns;  
      B<="0001";
      wait;
   end process;
  
  
   stim_proc_Cin: process
   begin    
  Cin<='0';
      wait for 100 ns;
           Cin<='1';  
      wait;
   end process;
END;
