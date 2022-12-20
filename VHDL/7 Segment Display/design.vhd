-- Simple 7 Segment Display design
library IEEE;
use IEEE.std_logic_1164.all;

entity seg7 is
port(
  I: in std_logic_vector(3 downto 0);
  O: out std_logic_vector(1 to 7));
end seg7;

architecture rtl of seg7 is
begin
  process(I) is
  begin
    case I is
      when "0000" => O <= "1111110";
      when "0001" => O <= "0110000";
      when "0010" => O <= "1101101";
      when "0011" => O <= "1111001";
        when "0100" => O <= "0110011";
      when "0101" => O <= "1011011";
      when "0110" => O <= "1011111";
      when "0111" => O <= "1110000";
        when "1000" => O <= "1111111";
      when "1001" => O <= "1110011";
      when others => O <= "XXXXXXX";
  end case;
  end process;
end rtl;


--if using gates
--A <= B0 OR B2 OR (B1 AND B3) OR (NOT B1 AND NOT B3);
--B <= (NOT B1) OR (NOT B2 AND NOT B3) OR (B2 AND B3);
--C <= B1 OR NOT B2 OR B3;
--D <= (NOT B1 AND NOT B3) OR (B2 AND NOT B3) OR (B1 AND NOT B2 AND B3) OR (NOT --B1 AND B2) OR B0;
--E <= (NOT B1 AND NOT B3) OR (B2 AND NOT B3);
--F <= B0 OR (NOT B2 AND NOT B3) OR (B1 AND NOT B2) OR (B1 AND NOT B3);
--G <= B0 OR (B1 AND NOT B2) OR ( NOT B1 AND B2) OR (B2 AND NOT B3);
