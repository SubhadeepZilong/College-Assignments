-- Testbench for Decoder
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
end testbench; 

architecture tb of testbench is

signal T_I: std_logic_vector(1 downto 0):="00";
signal T_O: std_logic_vector(3 downto 0);
    
component decoder is
port(
  I: in std_logic_vector(1 downto 0);
  O: out std_logic_vector(3 downto 0));
end component;

signal I_in, O_out: std_logic;

begin

  -- Connect DUT
  DUT: decoder port map(T_I, T_O);

  process
    begin             
          
  -- case "00"  
  T_I <= "00";
  wait for 10 ns;
    
  -- case "01"
  T_I <= "01";          
  wait for 10 ns;
      
  -- case "10"
  T_I <= "10";           
  wait for 10 ns;
      
  -- case "11"
  T_I <= "11";        
  wait for 10 ns;
    
  wait for 10 ns;
  T_I <= "UU";    
    
  wait;

  end process;
end tb;
