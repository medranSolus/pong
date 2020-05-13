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

entity Ball is
	port(Reset : in STD_LOGIC;
		  SetVector : in STD_LOGIC;
		  InputVector : in STD_LOGIC_VECTOR(1 downto 0); -- MSB up(1)-down(0), LSB right(1)-left(0), ex: "10" = Up left
		  Stop : in STD_LOGIC;
		  SpeedUp : in STD_LOGIC;
		  SpeedDown : in STD_LOGIC;
		  SizeUp : in STD_LOGIC;
		  SizeDown : in STD_LOGIC;
		  Clk : in STD_LOGIC;
		  Speed : out UNSIGNED(11 downto 0);
		  Size : out UNSIGNED(11 downto 0);
		  PositionY : out UNSIGNED(11 downto 0);
		  PositionX : out UNSIGNED(11 downto 0);
		  CurrentVector : out STD_LOGIC_VECTOR(1 downto 0));
end Ball;

architecture BallArch of Ball is
	constant max_speed : UNSIGNED(11 downto 0) := X"010"; -- TODO: Set according to gameplay
	constant max_size : UNSIGNED(11 downto 0) := X"0FF"; -- TODO: Check proper max size later
	
	signal speed_int : UNSIGNED(11 downto 0) := X"001";
	signal size_int : UNSIGNED(11 downto 0) := X"000";
	signal positionY_int : UNSIGNED(11 downto 0) := X"140";
	signal positionX_int : UNSIGNED(11 downto 0) := X"0F0";
	signal moveVector : STD_LOGIC_VECTOR(1 downto 0) := "10";
begin
	Speed <= speed_int;
	Size <= size_int;
	PositionY <= positionY_int;
	PositionX <= positionX_int;
	CurrentVector <= moveVector;
	
	process(Clk, Reset, SpeedUp, SpeedDown, SizeUp, SizeDown)
	begin
		if rising_edge(Clk) then
			if Reset = '1' then
				speed_int <= X"001";
				size_int <= X"000";
			else
				if SpeedUp = '1' and speed_int < max_speed then
					speed_int <= speed_int + 1;
				end if;
				if SpeedDown = '1' and speed_int > X"001" then
					speed_int <= speed_int - 1;
				end if;
				if SizeUp = '1' and size_int < max_size then
					size_int <= size_int + 1;
				end if;
				if SizeDown = '1' and size_int > X"000" then
					size_int <= size_int - 1;
				end if;
			end if;
		end if;
	end process;
	
	process(Clk, Reset, SetVector)
	begin
		if rising_edge(Clk) then
			if Reset = '1' or SetVector = '1' then
				moveVector <= InputVector;
			end if;
			if Reset = '1' then
				positionY_int <= X"140";
				positionX_int <= X"140";
			elsif Stop = '0' then
				case moveVector is
					when "00" =>
						positionY_int <= positionY_int - speed_int;
						positionX_int <= positionX_int - speed_int;
					when "10" =>
						positionY_int <= positionY_int + speed_int;
						positionX_int <= positionX_int - speed_int;
					when "01" =>
						positionY_int <= positionY_int - speed_int;
						positionX_int <= positionX_int + speed_int;
					when "11" =>
						positionY_int <= positionY_int + speed_int;
						positionX_int <= positionX_int + speed_int;
					when others =>
						positionY_int <= X"140";
						positionX_int <= X"140";
				end case;
			end if;
		end if;
	end process;
end BallArch;

