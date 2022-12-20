-- Simple FULL SUBSTRACTOR design
library IEEE;
use IEEE.std_logic_1164.all;

entity full_substractor is
port(
  a: in std_logic;
  b: in std_logic;
  c_in: in std_logic;
  diff: out std_logic;
  borrow: out std_logic);
end full_substractor;

architecture rtl of full_substractor is
begin
  process(a, b, c_in) is
  begin
    diff <= (a xor b) xor c_in;
    borrow <= ((not a) and b)or(b and c_in)or((not a) and c_in);
  end process;
end rtl;
