-- Testbench for HALF ADDER
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
end testbench; 

architecture tb of testbench is

component half_adder is
port(
  a: in std_logic;
  b: in std_logic;
  sum: out std_logic;
  carry: out std_logic);
end component;

signal a_in, b_in, sum_out, carry_out: std_logic;

begin

  DUT: half_adder port map(a_in, b_in, sum_out, carry_out);

  process
  begin
    a_in <= '0';
    b_in <= '0';
    wait for 1 ns;
  
    a_in <= '0';
    b_in <= '1';
    wait for 1 ns;

    a_in <= '1';
    b_in <= '0';
    wait for 1 ns;

    a_in <= '1';
    b_in <= '1';
    wait for 1 ns;
    
    a_in <= '0';
    b_in <= '0';

    wait;
  end process;
end tb;
