----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:54:24 04/15/2020 
-- Design Name: 
-- Module Name:    PowerUp - PowerUpArch 
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

entity PowerUp is
	port (Clk : in STD_LOGIC;
			Activate : in STD_LOGIC;
			TurnOff : in STD_LOGIC;
			IsActive : out STD_LOGIC;
			PowerType : out STD_LOGIC_VECTOR(2 downto 0);
			PositionY : out UNSIGNED(11 downto 0);
			PositionX : out UNSIGNED(11 downto 0));
end PowerUp;

architecture PowerUpArch of PowerUp is
	constant max_y : UNSIGNED(11 downto 0) := X"1D9"; -- Must be smaller than game arena
	constant min_y : UNSIGNED(11 downto 0) := X"00A"; --|
	constant max_x : UNSIGNED(11 downto 0) := X"279"; --|
	constant min_x : UNSIGNED(11 downto 0) := X"00A"; --/
	
	signal powerType_int : STD_LOGIC_VECTOR(2 downto 0) := "000";
	signal positionY_int : UNSIGNED(11 downto 0) := X"000";
	signal positionX_int : UNSIGNED(11 downto 0) := X"000";
	
	component RandGen is
	port (Clk : in STD_LOGIC;
			Reset : in STD_LOGIC;
			Random : out STD_LOGIC);
	end component;
begin
	PowerTypeRandom: for i in powerType_int'RANGE generate
		RandGenType : RandGen port map (Clk => Clk, Reset => Activate, Random => powerType_int(i));
	end generate;
	PositionYRandom: for i in positionY_int'RANGE generate
		RandGenY : RandGen port map (Clk => Clk, Reset => Activate, Random => positionY_int(i));
	end generate;
	PositionXRandom: for i in positionX_int'RANGE generate
		RandGenX : RandGen port map (Clk => Clk, Reset => Activate, Random => positionX_int(i));
	end generate;
	
	process(Clk, Activate, TurnOff)
	begin
		if rising_edge(Clk) then
			if TurnOff = '1' then
				IsActive <= '0';
			elsif Activate = '1' then
				PowerType <= powerType_int;
				if positionY_int < min_y then
					PositionY <= min_y;
				elsif positionY_int > max_y then
					PositionY <= max_y;
				else
					PositionY <= positionY_int;
				end if;
				if positionX_int < min_x then
					PositionX <= min_x;
				elsif positionX_int > max_x then
					PositionX <= max_x;
				else
					PositionX <= positionX_int;
				end if;
				IsActive <= '1';
			end if;
		end if;
	end process;
end PowerUpArch;