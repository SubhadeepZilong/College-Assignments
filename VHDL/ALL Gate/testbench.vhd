-- Testbench for ALL gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
end testbench; 

architecture tb of testbench is

component all_gate is
port(
  a: in std_logic;
  b: in std_logic;
  y_and: out std_logic;
  y_or: out std_logic;
  y_nand: out std_logic;
  y_nor: out std_logic;
  y_xor: out std_logic;
  y_xnor: out std_logic;
  y_not: out std_logic);
    
end component;

signal a_in, b_in, y_and, y_or, y_nand, y_nor, y_xor, y_xnor,y_not: std_logic;

begin

  -- Connect DUT
  DUT: all_gate port map(a_in, b_in, y_and, y_or, y_nand, y_nor, y_xor, y_xnor,y_not);

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
    
    -- Clear inputs
    a_in <= '0';
    b_in <= '0';

    wait;
  end process;
end tb;
