-- Simple 1 to 8 Demultiplexer design


library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity DEMUX_SOURCE is

Port ( I : in  STD_LOGIC;

S : in STD_LOGIC_VECTOR (2 downto 0);

Y : out STD_LOGIC_VECTOR (7 downto 0));

end DEMUX_SOURCE;



architecture Behavioral of DEMUX_SOURCE is



begin



process (I, S)



begin

if (S <= "000") then

Y(0) <= I ;

elsif (S <= "001") then

Y(1) <= I ;

elsif (S <= "010") then

Y(2) <= I ;

elsif (S <= "011") then

Y(3) <= I ;
elsif (S <= "100") then

Y(4) <= I ;
elsif (S <= "101") then

Y(5) <= I ;
elsif (S <= "110") then

Y(6) <= I ;
else

Y(7) <= I ;
end if;

end process;

end Behavioral;
