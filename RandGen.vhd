----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:38:21 04/15/2020 
-- Design Name: 
-- Module Name:    RandGen - RandGenArch 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RandGen is
	port (Clk : in STD_LOGIC;
			Reset : in STD_LOGIC;
			Random : out STD_LOGIC);
end RandGen;

architecture RandGenArch of RandGen is
   signal lfsr : STD_LOGIC_VECTOR(3 downto 0); -- Linear Feedback Shift Register
   signal feedback : STD_LOGIC;
begin
   feedback <= not(lfsr(3) xor lfsr(2));  
   Random <= lfsr(3);

	process(Clk) 
	begin
		if rising_edge(Clk) then
			if Reset = '1' then
				lfsr <= (others => '0');
			else
				lfsr <= lfsr(2 downto 0) & feedback;
			end if; 
		end if;
	end process;
end RandGenArch;