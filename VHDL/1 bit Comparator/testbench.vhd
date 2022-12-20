-- Testbench for Comparator
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
end testbench; 

architecture tb of testbench is

component comparator is
port(
  A: in std_logic;
  B: in std_logic;
  AeqB: out std_logic;
  AgeB: out std_logic;
  AleB: out std_logic);
end component;

signal A_in, B_in, AeqB_out, AgeB_out, AleB_out: std_logic;

begin

  DUT: comparator port map(A_in, B_in, AeqB_out,AgeB_out, AleB_out);

  process
  begin
    A_in <= '0';
    B_in <= '0';
    wait for 1 ns;
  
    A_in <= '0';
    B_in <= '1';
    wait for 1 ns;

    A_in <= '1';
    B_in <= '0';
    wait for 1 ns;

    A_in <= '1';
    B_in <= '1';
    wait for 1 ns;
    
    A_in <= '0';
    B_in <= '0';

    wait;
  end process;
end tb;
