-- Simple ALL gate design
library IEEE;
use IEEE.std_logic_1164.all;

entity all_gate is
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
  
end all_gate;

architecture rtl of all_gate is
begin
  process(a, b) is
  begin
     y_and <= a and b;
     y_nand <= a nand b;
     y_or <= a or b;
     y_nor <= a nor b;
     y_xor <= a xor b;
     y_xnor <= a xnor b;
     y_not <= not b;
  end process;
end rtl;
