library ieee;
use ieee.std_logic_1164.all;

entity testbench is 
  end entity;
   
architecture dataflow of testbench is 
  component mux 2*1 is
  port(i0,i1,s : in std_logic;
       y: out std_logic);
  end component;
  
  signal i0,i1,s,y : std_logic;
  begin 
    uut: mux 2*1 portmap(io=>i0,
                         i1=>i1,
                         s=>s,
                         y=>y);
i0<='o','1' after 80 ns;
i1<='0','1' after 40 ns,'0' after 80 ns, '1' after 120 ns;
s<='1','0' after 20 ns,'0' after 40 ns,'1' after 60 ns,'0' after 80 ns,'1' after 100 ns;
end dataflow;
