-- Simple FULL ADDER design
library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is
port(
  a: in std_logic;
  b: in std_logic;
  c_in: in std_logic;
  sum: out std_logic;
  carry: out std_logic);
end full_adder;

architecture rtl of full_adder is
begin
  process(a, b, c_in) is
  begin
    sum <= (a xor b) xor c_in;
    carry <= ((a xor b) and c_in) or (a and b);
  end process;
end rtl;
