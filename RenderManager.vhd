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
		   PowerUpActive : in STD_LOGIC;
		   PowerUpType : in STD_LOGIC_VECTOR(2 downto 0);
		   PowerUpPositionY : in UNSIGNED(7 downto 0);
		   PowerUpPositionX : in UNSIGNED(7 downto 0);
		   BallSize : in UNSIGNED(7 downto 0);
		   BallPositionY : in UNSIGNED(7 downto 0);
		   BallPositionX : in UNSIGNED(7 downto 0);
			Player1Score : in UNSIGNED(3 downto 0);
		   Player1Position : in UNSIGNED(7 downto 0);
		   Player1Size : in UNSIGNED(7 downto 0);
			Player2Score : in UNSIGNED(3 downto 0);
		   Player2Position : in UNSIGNED(7 downto 0);
		   Player2Size : in UNSIGNED(7 downto 0);
			Red : out STD_LOGIC;
			Green : out STD_LOGIC;
			Blue : out STD_LOGIC;
			VerticalSync : out STD_LOGIC;
			HorizontalSync : out STD_LOGIC);
end RenderManager;

architecture RenderManagerArch of RenderManager is

begin
	Red <= Clk;

end RenderManagerArch;

