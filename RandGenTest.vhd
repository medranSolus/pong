--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:43:10 04/26/2020
-- Design Name:   
-- Module Name:   D:/pwr_materialy_sem_VI/UCiSW 2 P Mazurkiewicz/workspace/pong/RandGenTest.vhd
-- Project Name:  pong
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RandGen
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
 
ENTITY RandGenTest IS
END RandGenTest;
 
ARCHITECTURE behavior OF RandGenTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RandGen
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         Random : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal Random : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RandGen PORT MAP (
          Clk => Clk,
          Reset => Reset,
          Random => Random
        );

	-- Input: none
	-- Expected output: random number
	-- Run configuration: run 100 ns

	Clk <= not Clk after Clk_period / 2;
	Reset <= '1' after 500 ns, '0' after 520 ns;

END;
