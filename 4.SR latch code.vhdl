library ieee; 
use ieee.std_logic_1164.all;
  
entity srl is 
   port(r,s:in bit; q,qbar:buffer bit); 
end srl;  

architecture virat of srl is 
   signal s1,r1:bit; 
begin 
   q<= s nand qbar; 
   qbar<= r nand q; 
end virat; 
