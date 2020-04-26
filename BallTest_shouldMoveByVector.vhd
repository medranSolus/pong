--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:44:06 04/26/2020
-- Design Name:   
-- Module Name:   D:/pwr_materialy_sem_VI/UCiSW 2 P Mazurkiewicz/workspace/pong/BallTest_shouldMoveByVector.vhd
-- Project Name:  pong
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Ball
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
 
ENTITY BallTest_shouldMoveByVector IS
END BallTest_shouldMoveByVector;
 
ARCHITECTURE behavior OF BallTest_shouldMoveByVector IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ball
    PORT(
         Reset : IN  std_logic;
         SetVector : IN  std_logic;
         InputVector : IN  std_logic_vector(1 downto 0);
         Stop : IN  std_logic;
         SpeedUp : IN  std_logic;
         SpeedDown : IN  std_logic;
         SizeUp : IN  std_logic;
         SizeDown : IN  std_logic;
         Clk : IN  std_logic;
         Speed : OUT  UNSIGNED(7 downto 0);
         Size : OUT  UNSIGNED(7 downto 0);
         PositionY : OUT  UNSIGNED(7 downto 0);
         PositionX : OUT  UNSIGNED(7 downto 0);
         CurrentVector : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal SetVector : std_logic := '0';
   signal InputVector : std_logic_vector(1 downto 0) := (others => '0');
   signal Stop : std_logic := '0';
   signal SpeedUp : std_logic := '0';
   signal SpeedDown : std_logic := '0';
   signal SizeUp : std_logic := '0';
   signal SizeDown : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Speed : UNSIGNED(7 downto 0);
   signal Size : UNSIGNED(7 downto 0);
   signal PositionY : UNSIGNED(7 downto 0);
   signal PositionX : UNSIGNED(7 downto 0);
   signal CurrentVector : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ball PORT MAP (
          Reset => Reset,
          SetVector => SetVector,
          InputVector => InputVector,
          Stop => Stop,
          SpeedUp => SpeedUp,
          SpeedDown => SpeedDown,
          SizeUp => SizeUp,
          SizeDown => SizeDown,
          Clk => Clk,
          Speed => Speed,
          Size => Size,
          PositionY => PositionY,
          PositionX => PositionX,
          CurrentVector => CurrentVector
        );
		  
	-- Input: Move vector in every direction once (number of moves is determined by clock period), then keep moving "up right"
	-- Expected output: Ball is moved according to currentVector
	-- Run configuration: run 200 ns

	Clk <= not Clk after Clk_period / 2;
	InputVector <= B"00", B"01" after 20 ns, B"10" after 40 ns, B"11" after 60 ns, B"11" after 80 ns, B"11" after 100 ns;
	SetVector <= '1';
	Stop <= '0';
	Reset <= '1' after 120 ns, '0' after 140 ns;

END;
