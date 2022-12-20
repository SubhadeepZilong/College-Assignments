-- Testbench for HALF SUBTRACTOR
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
end testbench; 

architecture tb of testbench is

component half_subtractor is
port(
  a: in std_logic;
  b: in std_logic;
  diff: out std_logic;
  borrow: out std_logic);
end component;

signal a_in, b_in, diff_out, borrow_out: std_logic;

begin

  DUT: half_subtractor port map(a_in, b_in, diff_out, borrow_out);

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
