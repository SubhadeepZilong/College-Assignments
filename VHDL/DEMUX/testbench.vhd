-- Testbench for 1 to 8 Demultiplexer

library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity demux_tb is

end entity;



architecture tb of demux_tb is

component DEMUX_SOURCE is

Port( I : in STD_LOGIC;

S : in STD_LOGIC_VECTOR (2 downto 0);

Y : out STD_LOGIC_VECTOR (7 downto 0));

end component;



signal I: STD_LOGIC;

signal S: STD_LOGIC_VECTOR (2 downto 0);

signal Y: STD_LOGIC_VECTOR (7 downto 0);



begin

uut: DEMUX_SOURCE port map(

I => I,

S => S,

Y => Y);



stim: process

begin

I <= '1';



S <= "000";

wait for 20 ns;



S <= "001";

wait for 20 ns;



S <= "010";

wait for 20 ns;



S <= "011";

wait for 20 ns;


S <= "100";

wait for 20 ns;


S <= "101";

wait for 20 ns;


S <= "110";

wait for 20 ns;


S <= "111";

wait for 20 ns;

wait;



end process;



end tb;
