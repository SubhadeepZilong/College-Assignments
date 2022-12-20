-- Simple Encoder design
library IEEE;
use IEEE.std_logic_1164.all;

entity encoder is
port(
  I: in std_logic_vector(3 downto 0);
  O: out std_logic_vector(1 downto 0));
end encoder;

architecture rtl of encoder is
begin
  process(I) is
  begin
    case I is
      when "0001" => O <= "00";
      when "0010" => O <= "01";
      when "0100" => O <= "10";
      when "1000" => O <= "11";
      when others => O <= "XX";
  end case;
  end process;
end rtl;
