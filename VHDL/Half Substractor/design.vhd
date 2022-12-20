-- Simple HALF SUBTRACTOR design
library IEEE;
use IEEE.std_logic_1164.all;

entity half_subtractor is
port(
  a: in std_logic;
  b: in std_logic;
  diff: out std_logic;
  borrow: out std_logic);
end half_subtractor;

architecture rtl of half_subtractor is
begin
  process(a, b) is
  begin
    diff <= a xor b;
    borrow <= (not a) and b;
  end process;
end rtl;
