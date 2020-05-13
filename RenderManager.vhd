----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:31:01 04/16/2020 
-- Design Name: 
-- Module Name:    RenderManager - RenderManagerArch 
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

entity RenderManager is
	port (Clk : in STD_LOGIC;
			Present : in STD_LOGIC;
			Pause : in STD_LOGIC;
		   PowerUpActive : in STD_LOGIC;
		   PowerUpType : in STD_LOGIC_VECTOR(2 downto 0);
		   PowerUpPositionY : in UNSIGNED(11 downto 0);
		   PowerUpPositionX : in UNSIGNED(11 downto 0);
		   BallSize : in UNSIGNED(11 downto 0);
		   BallPositionY : in UNSIGNED(11 downto 0);
		   BallPositionX : in UNSIGNED(11 downto 0);
			Player1Score : in UNSIGNED(3 downto 0);
		   Player1Position : in UNSIGNED(11 downto 0);
		   Player1Size : in UNSIGNED(11 downto 0);
			Player2Score : in UNSIGNED(3 downto 0);
		   Player2Position : in UNSIGNED(11 downto 0);
		   Player2Size : in UNSIGNED(11 downto 0);
			EndGame : in STD_LOGIC;
			Red : out STD_LOGIC;
			Green : out STD_LOGIC;
			Blue : out STD_LOGIC;
			VerticalSync : out STD_LOGIC;
			HorizontalSync : out STD_LOGIC);
end RenderManager;

architecture RenderManagerArch of RenderManager is
	type PIXEL is array (2 downto 0) of STD_LOGIC; -- RGB
	constant VGA_Black : PIXEL := "000";
	constant VGA_Blue : PIXEL := "001";
	constant VGA_Green : PIXEL := "010";
	constant VGA_Cyan : PIXEL := "011";
	constant VGA_Red : PIXEL := "100";
	constant VGA_Magenta : PIXEL := "101";
	constant VGA_Yellow : PIXEL := "110";
	constant VGA_White : PIXEL := "111";
	
	signal current_pixel : PIXEL := VGA_Black;
begin
	Red <= current_pixel(2);
	Green <= current_pixel(1);
	Blue <= current_pixel(0);

end RenderManagerArch;

