----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:05:46 03/29/2020 
-- Design Name: 
-- Module Name:    Player - PlayerArch 
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

entity Player is
	port (Reset : in STD_LOGIC;
			Up : in STD_LOGIC;
			Down : in STD_LOGIC;
			ScoreInc : in STD_LOGIC;
			SpeedUp : in STD_LOGIC;
			SpeedDown : in STD_LOGIC;
			SizeUp : in STD_LOGIC;
			SizeDown : in STD_LOGIC;
			Clk : in STD_LOGIC;
			Score : out UNSIGNED(3 downto 0); -- Max = 9
			Position : out UNSIGNED(7 downto 0); -- Top = FF; Down = 0; Mid = 7F
			Size : out UNSIGNED(7 downto 0)); -- Size = 0 => Size = minimal size
end Player;

architecture PlayerArch of Player is
	constant max_position : UNSIGNED(7 downto 0) := X"FF"; -- TODO: Set according to display
	constant max_speed : UNSIGNED(7 downto 0) := X"10"; -- TODO: Set according to gameplay
	constant max_size : UNSIGNED(7 downto 0) := X"FF"; -- TODO: Check proper max size later
	
	signal score_int : UNSIGNED(3 downto 0) := X"0";
	signal position_int : UNSIGNED(7 downto 0) := X"7F";
	signal speed_int : UNSIGNED(7 downto 0) := X"01";
	signal size_int : UNSIGNED(7 downto 0) := X"00"; -- TODO: Set default size for display
begin
	Score <= score_int;
	Position <= position_int;
	Size <= size_int;
	
	process(Clk)
	begin
		if rising_edge(Clk) then
			if Reset = '1' then
				score_int <= X"0";
				position_int <= X"7F";
				speed_int <= X"01";
				size_int <= X"00";
			else
				if ScoreInc = '1' and score_int < X"9" then
					score_int <= score_int + 1;
				end if;
				
				if SpeedUp = '1' and speed_int < max_speed then
					speed_int <= speed_int + 1;
				elsif SpeedDown = '1' and speed_int > X"01" then
					speed_int <= speed_int - 1;
				end if;
				
				if SizeUp = '1' and size_int < max_size then
					size_int <= size_int + 1;
				elsif SizeDown = '1' and size_int > X"00" then
					size_int <= size_int - 1;
				end if;
				
				if Up = '1' and position_int + size_int <= max_position - speed_int then
					position_int <= position_int + speed_int;
				elsif Down = '1' and position_int >= speed_int + size_int then
					position_int <= position_int - speed_int;
				end if;
			end if;
		end if;
	end process;
end PlayerArch;

