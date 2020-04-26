--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:27:35 04/26/2020
-- Design Name:   
-- Module Name:   D:/pwr_materialy_sem_VI/UCiSW 2 P Mazurkiewicz/workspace/pong/CollisionManagerTest.vhd
-- Project Name:  pong
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CollisionManager
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY CollisionManagerTest_shouldHitRightWall IS
END CollisionManagerTest_shouldHitRightWall;
 
ARCHITECTURE behavior OF CollisionManagerTest_shouldHitRightWall IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CollisionManager
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         BallVector : IN  std_logic_vector(1 downto 0);
         BallSize : IN  UNSIGNED(7 downto 0);
         BallSpeed : IN  UNSIGNED(7 downto 0);
         BallPositionY : IN  UNSIGNED(7 downto 0);
         BallPositionX : IN  UNSIGNED(7 downto 0);
         PlayerLeftPosition : IN  UNSIGNED(7 downto 0);
         PlayerLeftSize : IN  UNSIGNED(7 downto 0);
         PlayerRightPosition : IN  UNSIGNED(7 downto 0);
         PlayerRightSize : IN  UNSIGNED(7 downto 0);
         PowerUpActive : IN  std_logic;
         PowerUpType : IN  std_logic_vector(2 downto 0);
         PowerUpPositionY : IN  UNSIGNED(7 downto 0);
         PowerUpPositionX : IN  UNSIGNED(7 downto 0);
         SetBallVector : OUT  std_logic;
         NewBallVector : OUT  std_logic_vector(1 downto 0);
         BallSpeedUp : OUT  std_logic;
         BallSpeedDown : OUT  std_logic;
         BallSizeUp : OUT  std_logic;
         BallSizeDown : OUT  std_logic;
         PlayerLeftScore : OUT  std_logic;
         PlayerLeftSpeedUp : OUT  std_logic;
         PlayerLeftSpeedDown : OUT  std_logic;
         PlayerLeftSizeUp : OUT  std_logic;
         PlayerLeftSizeDown : OUT  std_logic;
         PlayerRightScore : OUT  std_logic;
         PlayerRightSpeedUp : OUT  std_logic;
         PlayerRightSpeedDown : OUT  std_logic;
         PlayerRightSizeUp : OUT  std_logic;
         PlayerRightSizeDown : OUT  std_logic;
         PowerUpTurnOff : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal BallVector : std_logic_vector(1 downto 0) := (others => '0');
   signal BallSize : UNSIGNED(7 downto 0) := (others => '0');
   signal BallSpeed : UNSIGNED(7 downto 0) := (others => '0');
   signal BallPositionY : UNSIGNED(7 downto 0) := (others => '0');
   signal BallPositionX : UNSIGNED(7 downto 0) := (others => '0');
   signal PlayerLeftPosition : UNSIGNED(7 downto 0) := (others => '0');
   signal PlayerLeftSize : UNSIGNED(7 downto 0) := (others => '0');
   signal PlayerRightPosition : UNSIGNED(7 downto 0) := (others => '0');
   signal PlayerRightSize : UNSIGNED(7 downto 0) := (others => '0');
   signal PowerUpActive : std_logic := '0';
   signal PowerUpType : std_logic_vector(2 downto 0) := (others => '0');
   signal PowerUpPositionY : UNSIGNED(7 downto 0) := (others => '0');
   signal PowerUpPositionX : UNSIGNED(7 downto 0) := (others => '0');
	
 	--Outputs
   signal SetBallVector : std_logic;
   signal NewBallVector : std_logic_vector(1 downto 0);
   signal BallSpeedUp : std_logic;
   signal BallSpeedDown : std_logic;
   signal BallSizeUp : std_logic;
   signal BallSizeDown : std_logic;
   signal PlayerLeftScore : std_logic;
   signal PlayerLeftSpeedUp : std_logic;
   signal PlayerLeftSpeedDown : std_logic;
   signal PlayerLeftSizeUp : std_logic;
   signal PlayerLeftSizeDown : std_logic;
   signal PlayerRightScore : std_logic;
   signal PlayerRightSpeedUp : std_logic;
   signal PlayerRightSpeedDown : std_logic;
   signal PlayerRightSizeUp : std_logic;
   signal PlayerRightSizeDown : std_logic;
   signal PowerUpTurnOff : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CollisionManager PORT MAP (
          Clk => Clk,
          Reset => Reset,
          BallVector => BallVector,
          BallSize => BallSize,
          BallSpeed => BallSpeed,
          BallPositionY => BallPositionY,
          BallPositionX => BallPositionX,
          PlayerLeftPosition => PlayerLeftPosition,
          PlayerLeftSize => PlayerLeftSize,
          PlayerRightPosition => PlayerRightPosition,
          PlayerRightSize => PlayerRightSize,
          PowerUpActive => PowerUpActive,
          PowerUpType => PowerUpType,
          PowerUpPositionY => PowerUpPositionY,
          PowerUpPositionX => PowerUpPositionX,
          SetBallVector => SetBallVector,
          NewBallVector => NewBallVector,
          BallSpeedUp => BallSpeedUp,
          BallSpeedDown => BallSpeedDown,
          BallSizeUp => BallSizeUp,
          BallSizeDown => BallSizeDown,
          PlayerLeftScore => PlayerLeftScore,
          PlayerLeftSpeedUp => PlayerLeftSpeedUp,
          PlayerLeftSpeedDown => PlayerLeftSpeedDown,
          PlayerLeftSizeUp => PlayerLeftSizeUp,
          PlayerLeftSizeDown => PlayerLeftSizeDown,
          PlayerRightScore => PlayerRightScore,
          PlayerRightSpeedUp => PlayerRightSpeedUp,
          PlayerRightSpeedDown => PlayerRightSpeedDown,
          PlayerRightSizeUp => PlayerRightSizeUp,
          PlayerRightSizeDown => PlayerRightSizeDown,
          PowerUpTurnOff => PowerUpTurnOff
        );


   -- Input: collision coordinates with right wall when there is no player paddle
	-- Expected output: left player gets score
	-- Run configuration: 100 ns

	Clk <= not Clk after Clk_period / 2;
	BallSize <= X"0F";
	BallSpeed <= X"0F";
	BallVector <= B"11";
	BallPositionY <= X"FE";
	BallPositionX <= X"FF";
	PlayerLeftPosition <= X"66";
	PlayerRightPosition <= X"05";
	PlayerRightSize <= X"00";

END;
