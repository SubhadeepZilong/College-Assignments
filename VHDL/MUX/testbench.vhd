LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
entity testbench is
end testbench; 

architecture tb of testbench is

component mux8to1 is

port 

( s : in bit_vector (2 downto 0);

d : in bit_vector (7 downto 0);

y : out bit);

end component;

signal s : bit_vector (2 downto 0);

signal d : bit_vector (7 downto 0);

signal y : bit;


begin


  DUT: mux8to1 port map(

  s => s, 

  d => d,

  y => y );



  process

  begin

    s <= "000";

    d <= "00000001";

    wait for 1 ns;       

    s <= "001";

    d <= "00000010";

    wait for 1 ns; 
 
    s <= "010";

    d <= "00000100";

    wait for 1 ns;

    s <= "011";

    d <= "00001000";

    wait for 1 ns;

  
    s <= "100";

    d <= "00010000";

    wait for 1 ns;

        s <= "101";

    d <= "00100000";

    wait for 1 ns;

    s <= "110";

    d <= "01000000";

    wait for 1 ns;


    s <= "111";

    d <= "10000000";

    wait for 1 ns;

    wait;

  end process;

end tb;
