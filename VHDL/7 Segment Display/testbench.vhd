-- Testbench for 7 Segment Display
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
end testbench; 

architecture tb of testbench is

signal T_I: std_logic_vector(3 downto 0):="0000";
signal T_O: std_logic_vector(1 to 7);
    
component seg7 is
port(
  I: in std_logic_vector(3 downto 0);
  O: out std_logic_vector(1 to 7));
end component;

signal I_in, O_out: std_logic;

begin

  DUT: seg7 port map(T_I, T_O);

  process
    begin             
            
  T_I <= "0000";
  wait for 1 ns;
    
  T_I <= "0001";                      
  wait for 1 ns;
      
  T_I <= "0010";                       
  wait for 1 ns;
      
  T_I <= "0011";                      
  wait for 1 ns;
    
    T_I <= "0100";
  wait for 1 ns;
    
  T_I <= "0101";                      
  wait for 1 ns;
      
  T_I <= "0110";                       
  wait for 1 ns;
      
  T_I <= "0111";                      
  wait for 1 ns;
    
    T_I <= "1000";                       
  wait for 1 ns;
      
  T_I <= "1001";                      
  wait for 1 ns;
    
  wait for 1 ns;
  T_I <= "UUUU";    
    
  wait;

  end process;
end tb;
