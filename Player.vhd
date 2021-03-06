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
			Position : out UNSIGNED(11 downto 0); -- Top = 1DF; Down = 0; Mid = F0
			Size : out UNSIGNED(11 downto 0)); -- Size = 0 => Size = minimal size
end Player;

architecture PlayerArch of Player is
	constant max_speed : UNSIGNED(11 downto 0) := X"010"; -- TODO: Set according to gameplay
	constant max_size : UNSIGNED(11 downto 0) := X"0FF"; -- TODO: Check proper max size later
	constant max_position : UNSIGNED(11 downto 0) := X"1DF";
	
	signal score_int : UNSIGNED(3 downto 0) := X"0";
	signal speed_int : UNSIGNED(11 downto 0) := X"001";
	signal size_int : UNSIGNED(11 downto 0) := X"000"; -- TODO: Set default size for display
	signal position_int : UNSIGNED(11 downto 0) := X"0F0";
begin
	Score <= score_int;
	Size <= size_int;
	Position <= position_int;
	
	process(Clk, Reset, ScoreInc)
	begin
		if rising_edge(Clk) then
			if Reset = '1' then
				score_int <= X"0";
			else
				if ScoreInc = '1' and score_int < X"9" then
					score_int <= score_int + 1;
				end if;
			end if;
		end if;
	end process;
	
	process(Clk, Reset, SpeedUp, SpeedDown)
	begin
		if rising_edge(Clk) then
			if Reset = '1' then
				speed_int <= X"001";
			else
				if SpeedUp = '1' and speed_int < max_speed then
					speed_int <= speed_int + 1;
				end if;
				if SpeedDown = '1' and speed_int > X"001" then
					speed_int <= speed_int - 1;
				end if;
			end if;
		end if;
	end process;
	
	process(Clk, Reset, SizeUp, SizeDown)
	begin
		if rising_edge(Clk) then
			if Reset = '1' then
				size_int <= X"000";
			else
				if SizeUp = '1' and size_int < max_size then
					size_int <= size_int + 1;
				end if;
				if SizeDown = '1' and size_int > X"000" then
					size_int <= size_int - 1;
				end if;			
			end if;
		end if;
	end process;
	
	process(Clk, Reset, Up, Down)
	begin
		if rising_edge(Clk) then
			if Reset = '1' then
				position_int <= X"0F0";
			else
				if Up = '1' and position_int + size_int <= max_position - speed_int then
					position_int <= position_int + speed_int;
				end if;
				if Down = '1' and position_int >= speed_int + size_int then
					position_int <= position_int - speed_int;
				end if;			
			end if;
		end if;
	end process;
end PlayerArch;

