library ieee;
use ieee.std_logic_1164.all;
entity mux 2*1 is
  port(i0,i1,s: in std_logic;
       y: out std_logic);
  end;
  architecture mydesign of mux 2*1 is 
    begin 
      y<= (i1 and s) or ((not s) and i0);
    end mydesign;
    
