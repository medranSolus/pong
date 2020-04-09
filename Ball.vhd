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
		  InputVector : in STD_LOGIC_VECTOR(1 downto 0); -- First bit up(1)-down(0), second right(1)-left(0), ex: "10" = Up left
		  SetPosition : in STD_LOGIC;
		  InputPositionY : in UNSIGNED(7 downto 0);
		  InputPositionX : in UNSIGNED(7 downto 0);
		  Stop : in STD_LOGIC;
		  SpeedUp : in STD_LOGIC;
		  SpeedDown : in STD_LOGIC;
		  SizeUp : in STD_LOGIC;
		  SizeDown : in STD_LOGIC;
		  Clk : in STD_LOGIC;
		  Size : out UNSIGNED(7 downto 0);
		  PositionY : out UNSIGNED(7 downto 0);
		  PositionX : out UNSIGNED(7 downto 0);
		  CurrentVector : out STD_LOGIC_VECTOR(1 downto 0));
end Ball;

architecture BallArch of Ball is
	constant max_speed : UNSIGNED(7 downto 0) := X"10"; -- TODO: Set according to gameplay
	constant max_size : UNSIGNED(7 downto 0) := X"FF"; -- TODO: Check proper max size later
	
	signal speed : UNSIGNED(7 downto 0) := X"01";
	signal size_int : UNSIGNED(7 downto 0) := X"00";
	signal positionY_int : UNSIGNED(7 downto 0) := X"80";
	signal positionX_int : UNSIGNED(7 downto 0) := X"80";
	signal moveVector : STD_LOGIC_VECTOR(1 downto 0) := "10";
begin
	Size <= size_int;
	PositionY <= positionY_int;
	PositionX <= positionX_int;
	CurrentVector <= moveVector;
	
	process(Clk, Reset, SpeedUp, SpeedDown, SizeUp, SizeDown)
	begin
		if rising_edge(Clk) then
			if Reset = '1' then
				speed <= X"01";
				size_int <= X"00";
			else
				if SpeedUp = '1' and speed < max_speed then
					speed <= speed + 1;
				end if;
				if SpeedDown = '1' and speed > X"00" then
					speed <= speed - 1;
				end if;
				if SizeUp = '1' and size_int < max_size then
					size_int <= size_int + 1;
				end if;
				if SizeDown = '1' and size_int > X"00" then
					size_int <= size_int - 1;
				end if;
			end if;
		end if;
	end process;
	
	process(Clk, Reset, SetVector, SetPosition)
	begin
		if rising_edge(Clk) then
			if Reset = '1' or SetVector = '1' then
				moveVector <= InputVector;
			end if;
			if Reset = '1' or SetPosition = '1' then
				positionY_int <= InputPositionY;
				positionX_int <= InputPositionX;
			end if;
			if Stop = '0' and Reset = '0' then
				case moveVector is
					when "00" =>
						positionY_int <= positionY_int - speed;
						positionX_int <= positionX_int - speed;
					when "10" =>
						positionY_int <= positionY_int + speed;
						positionX_int <= positionX_int - speed;
					when "01" =>
						positionY_int <= positionY_int - speed;
						positionX_int <= positionX_int + speed;
					when "11" =>
						positionY_int <= positionY_int + speed;
						positionX_int <= positionX_int + speed;
					when others =>
						positionY_int <= X"80";
						positionX_int <= X"80";
				end case;
			end if;
		end if;
	end process;
end BallArch;
