library ieee;
use IEEE.std_logic_1164.all;
entity testbench  is 
end entity;

architecture dataflow of testbench is
component full_adder is 
port(
a,b,c : in std_logic;
sum,carry : out std_logic;
end component;
  signal a,b,c,sum,carry : std_logic;
  
  begin 
  uut : full_adder port map(
    a=>a,
    b=>b,
    c=>c,
    sum => sum,
    carry => carry);
  a<='0','1' after 80 ns;
  b<='0','1' after 40 ns,'0' after 80 ns,'1' after 120 ns;
  c<='1', '0' after 20 ns,'0' after 40 ns,'1' after 60 ns,'0' after 80 ns,'1' after 100 ns,'0' after 120 ns,'1' after 140 ns;
  end dataflow;
