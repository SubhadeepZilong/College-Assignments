-- Simple Comparator design
library IEEE;
use IEEE.std_logic_1164.all;

entity comparator is
port(
  A: in std_logic;
  B: in std_logic;
  AeqB: out std_logic;
  AgeB: out std_logic;
  AleB: out std_logic);
end comparator;

architecture rtl of comparator is
begin
  process(A, B) is
  begin
    if (A = B) then
    AeqB <= '1';
    AgeB <= '0';
    AleB <= '0';
    end if;
    if (A > B) then
    AeqB <= '0';
    AgeB <= '1';
    AleB <= '0';
    end if;
    if (A < B) then 
    AeqB <= '0';
    AgeB <= '0';
    AleB <= '1';
    end if;
  end process;
end rtl;
