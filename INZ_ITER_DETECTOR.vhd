
LIBRARY ieee;  
USE ieee.std_logic_1164.all;  
------------------------------------------------
ENTITY INZ_ITER_DETECTOR IS     
GENERIC (length : INTEGER := 8);
PORT (x: IN STD_LOGIC_VECTOR (length-1 DOWNTO 0); --a,b vector od 7 do 0         
s: buffer STD_LOGIC_VECTOR (length-1 DOWNTO 0);
y: OUT STD_LOGIC_VECTOR (length-1 DOWNTO 0));  --s vector od 7 do 0        
END INZ_ITER_DETECTOR;

------------------------------------------------


---------------------------------

ARCHITECTURE INZ_ITER_DETECTOR OF INZ_ITER_DETECTOR IS
BEGIN    
PROCESS (x)
variable a,b,c,d: std_logic_vector(length downto 0);
BEGIN	
a(0) :='0';
b(0) :='0';
c(8) :='0';
d(8) :='0';
FOR i IN 0 TO length-1 LOOP -- dla i=0 do 8-7
a(i+1) := (not(x(i)) and (b(i))) or (a(i) and (not(b(i))) and x(i));   
b(i+1) := x(i);
s(i)<= a(i) and (not(b(i))) and x(i);
END LOOP;
FOR j IN length-1 DOWNTO 0 LOOP
c(j) := (not(c(j+1))and d(j+1)) or (c(j+1) and (not(d(j+1))) and (not (s(j))));
d(j) := s(j) or (c(j+1) and not(d(j+1)));
y(j) <= s(j) or (c(j+1) and not(d(j+1)));
END LOOP;
END PROCESS;
END INZ_ITER_DETECTOR;