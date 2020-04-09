----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:15:41 04/09/2020 
-- Design Name: 
-- Module Name:    Ball - BallArch 
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
use IEEE.NUMERIC_STD.ALL;

--library UNISIM;
--use UNISIM.VComponents.all;

entity Ball is
	port(Set : in STD_LOGIC;
		  SetVector : in STD_LOGIC;
		  InputVector : in STD_LOGIC_VECTOR(1 downto 0); -- First bit up(1)-down(0), second right(1)-left(0), ex: "10" = Up left
		  SetPosition : in STD_LOGIC;
		  InputPositionY : in UNSIGNED(7 downto 0);
		  InputPositionX : in UNSIGNED(7 downto 0);
		  Clk : in STD_LOGIC;
		  CurrentVector : out STD_LOGIC_VECTOR(1 downto 0));
end Ball;

architecture BallArch of Ball is

begin
	
	process(Clk, Set, SetVector, SetPosition)
	begin
		if rising_edge(Clk) then
			
		end if;
	end process;
end BallArch;

