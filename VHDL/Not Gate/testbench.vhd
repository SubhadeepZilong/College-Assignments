-- Testbench for NOT gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
end testbench; 

architecture tb of testbench is

component not_gate is
port(
  a: in std_logic;
  q: out std_logic);
end component;

signal a_in, q_out: std_logic;

begin
  DUT: not_gate port map(a_in, q_out);
  process
  begin
    a_in <= '0';
    wait for 1 ns;
    
    a_in <= '1';
    wait for 1 ns;
    
    a_in <= '0';

    wait;
  end process;
end tb;