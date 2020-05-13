--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : pong.vhf
-- /___/   /\     Timestamp : 05/13/2020 17:34:59
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/medran/Desktop/pong/pong.vhf -w /home/medran/Desktop/pong/pong.sch
--Design Name: pong
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity pong is
   port ( Clk      : in    std_logic; 
          PS2_Clk  : in    std_logic; 
          PS2_Data : in    std_logic; 
          VGA_B    : out   std_logic; 
          VGA_G    : out   std_logic; 
          VGA_HS   : out   std_logic; 
          VGA_R    : out   std_logic; 
          VGA_VS   : out   std_logic);
end pong;

architecture BEHAVIORAL of pong is
   signal XLXN_157 : std_logic;
   signal XLXN_158 : std_logic;
   signal XLXN_170 : std_logic;
   signal XLXN_182 : std_logic;
   signal XLXN_183 : std_logic;
   signal XLXN_184 : std_logic;
   signal XLXN_185 : std_logic;
   signal XLXN_188 : std_logic;
   signal XLXN_191 : std_logic;
   signal XLXN_194 : std_logic;
   signal XLXN_195 : std_logic;
   signal XLXN_196 : std_logic;
   signal XLXN_197 : std_logic_vector (1 downto 0);
   signal XLXN_198 : std_logic;
   signal XLXN_199 : std_logic;
   signal XLXN_200 : std_logic;
   signal XLXN_201 : std_logic;
   signal XLXN_202 : std_logic;
   signal XLXN_203 : std_logic;
   signal XLXN_204 : std_logic;
   signal XLXN_205 : std_logic;
   signal XLXN_206 : std_logic;
   signal XLXN_207 : std_logic;
   signal XLXN_209 : std_logic;
   signal XLXN_210 : std_logic;
   signal XLXN_211 : std_logic;
   signal XLXN_212 : std_logic;
   signal XLXN_213 : std_logic;
   signal XLXN_214 : std_logic_vector (1 downto 0);
   signal XLXN_215 : std_logic_vector (11 downto 0);
   signal XLXN_216 : std_logic_vector (2 downto 0);
   signal XLXN_217 : std_logic_vector (11 downto 0);
   signal XLXN_218 : std_logic_vector (11 downto 0);
   signal XLXN_220 : std_logic_vector (11 downto 0);
   signal XLXN_222 : std_logic_vector (11 downto 0);
   signal XLXN_224 : std_logic_vector (11 downto 0);
   signal XLXN_230 : std_logic_vector (11 downto 0);
   signal XLXN_232 : std_logic_vector (11 downto 0);
   signal XLXN_233 : std_logic_vector (3 downto 0);
   signal XLXN_235 : std_logic_vector (11 downto 0);
   signal XLXN_238 : std_logic_vector (11 downto 0);
   signal XLXN_239 : std_logic_vector (3 downto 0);
   component Ball
      port ( Reset         : in    std_logic; 
             SetVector     : in    std_logic; 
             Stop          : in    std_logic; 
             SpeedUp       : in    std_logic; 
             SpeedDown     : in    std_logic; 
             SizeUp        : in    std_logic; 
             SizeDown      : in    std_logic; 
             Clk           : in    std_logic; 
             InputVector   : in    std_logic_vector (1 downto 0); 
             Speed         : out   std_logic_vector (11 downto 0); 
             Size          : out   std_logic_vector (11 downto 0); 
             PositionY     : out   std_logic_vector (11 downto 0); 
             PositionX     : out   std_logic_vector (11 downto 0); 
             CurrentVector : out   std_logic_vector (1 downto 0));
   end component;
   
   component CollisionManager
      port ( Clk                  : in    std_logic; 
             Reset                : in    std_logic; 
             PowerUpActive        : in    std_logic; 
             BallVector           : in    std_logic_vector (1 downto 0); 
             BallSize             : in    std_logic_vector (11 downto 0); 
             BallSpeed            : in    std_logic_vector (11 downto 0); 
             BallPositionY        : in    std_logic_vector (11 downto 0); 
             BallPositionX        : in    std_logic_vector (11 downto 0); 
             PlayerLeftPosition   : in    std_logic_vector (11 downto 0); 
             PlayerLeftSize       : in    std_logic_vector (11 downto 0); 
             PlayerRightPosition  : in    std_logic_vector (11 downto 0); 
             PlayerRightSize      : in    std_logic_vector (11 downto 0); 
             PowerUpType          : in    std_logic_vector (2 downto 0); 
             PowerUpPositionY     : in    std_logic_vector (11 downto 0); 
             PowerUpPositionX     : in    std_logic_vector (11 downto 0); 
             SetBallVector        : out   std_logic; 
             BallSpeedUp          : out   std_logic; 
             BallSpeedDown        : out   std_logic; 
             BallSizeUp           : out   std_logic; 
             BallSizeDown         : out   std_logic; 
             PlayerLeftScore      : out   std_logic; 
             PlayerLeftSpeedUp    : out   std_logic; 
             PlayerLeftSpeedDown  : out   std_logic; 
             PlayerLeftSizeUp     : out   std_logic; 
             PlayerLeftSizeDown   : out   std_logic; 
             PlayerRightScore     : out   std_logic; 
             PlayerRightSpeedUp   : out   std_logic; 
             PlayerRightSpeedDown : out   std_logic; 
             PlayerRightSizeUp    : out   std_logic; 
             PlayerRightSizeDown  : out   std_logic; 
             PowerUpTurnOff       : out   std_logic; 
             NewBallVector        : out   std_logic_vector (1 downto 0));
   end component;
   
   component GameLogic
      port ( Clk          : in    std_logic; 
             Pause        : in    std_logic; 
             Reset        : in    std_logic; 
             Player1Score : in    std_logic_vector (3 downto 0); 
             Player2Score : in    std_logic_vector (3 downto 0); 
             Present      : out   std_logic; 
             SetPowerUp   : out   std_logic; 
             ResetMatch   : out   std_logic; 
             EndGame      : out   std_logic);
   end component;
   
   component InputManager
      port ( PS2_Clk  : in    std_logic; 
             PS2_Data : in    std_logic; 
             Clk      : in    std_logic; 
             Reset    : out   std_logic; 
             Pause    : out   std_logic; 
             Up_P1    : out   std_logic; 
             Down_P1  : out   std_logic; 
             Up_P2    : out   std_logic; 
             Down_P2  : out   std_logic);
   end component;
   
   component Player
      port ( Reset     : in    std_logic; 
             Up        : in    std_logic; 
             Down      : in    std_logic; 
             ScoreInc  : in    std_logic; 
             SpeedUp   : in    std_logic; 
             SpeedDown : in    std_logic; 
             SizeUp    : in    std_logic; 
             SizeDown  : in    std_logic; 
             Clk       : in    std_logic; 
             Score     : out   std_logic_vector (3 downto 0); 
             Position  : out   std_logic_vector (11 downto 0); 
             Size      : out   std_logic_vector (11 downto 0));
   end component;
   
   component PowerUp
      port ( Clk       : in    std_logic; 
             Activate  : in    std_logic; 
             TurnOff   : in    std_logic; 
             IsActive  : out   std_logic; 
             PowerType : out   std_logic_vector (2 downto 0); 
             PositionY : out   std_logic_vector (11 downto 0); 
             PositionX : out   std_logic_vector (11 downto 0));
   end component;
   
   component RenderManager
      port ( Clk              : in    std_logic; 
             Present          : in    std_logic; 
             Pause            : in    std_logic; 
             PowerUpActive    : in    std_logic; 
             EndGame          : in    std_logic; 
             PowerUpType      : in    std_logic_vector (2 downto 0); 
             PowerUpPositionY : in    std_logic_vector (11 downto 0); 
             PowerUpPositionX : in    std_logic_vector (11 downto 0); 
             BallSize         : in    std_logic_vector (11 downto 0); 
             BallPositionY    : in    std_logic_vector (11 downto 0); 
             BallPositionX    : in    std_logic_vector (11 downto 0); 
             Player1Score     : in    std_logic_vector (3 downto 0); 
             Player1Position  : in    std_logic_vector (11 downto 0); 
             Player1Size      : in    std_logic_vector (11 downto 0); 
             Player2Score     : in    std_logic_vector (3 downto 0); 
             Player2Position  : in    std_logic_vector (11 downto 0); 
             Player2Size      : in    std_logic_vector (11 downto 0); 
             Red              : out   std_logic; 
             Green            : out   std_logic; 
             Blue             : out   std_logic; 
             VerticalSync     : out   std_logic; 
             HorizontalSync   : out   std_logic);
   end component;
   
begin
   Bally : Ball
      port map (Clk=>Clk,
                InputVector(1 downto 0)=>XLXN_197(1 downto 0),
                Reset=>XLXN_188,
                SetVector=>XLXN_196,
                SizeDown=>XLXN_211,
                SizeUp=>XLXN_198,
                SpeedDown=>XLXN_194,
                SpeedUp=>XLXN_195,
                Stop=>XLXN_184,
                CurrentVector(1 downto 0)=>XLXN_214(1 downto 0),
                PositionX(11 downto 0)=>XLXN_224(11 downto 0),
                PositionY(11 downto 0)=>XLXN_222(11 downto 0),
                Size(11 downto 0)=>XLXN_220(11 downto 0),
                Speed(11 downto 0)=>XLXN_215(11 downto 0));
   
   Collision : CollisionManager
      port map (BallPositionX(11 downto 0)=>XLXN_224(11 downto 0),
                BallPositionY(11 downto 0)=>XLXN_222(11 downto 0),
                BallSize(11 downto 0)=>XLXN_220(11 downto 0),
                BallSpeed(11 downto 0)=>XLXN_215(11 downto 0),
                BallVector(1 downto 0)=>XLXN_214(1 downto 0),
                Clk=>Clk,
                PlayerLeftPosition(11 downto 0)=>XLXN_238(11 downto 0),
                PlayerLeftSize(11 downto 0)=>XLXN_235(11 downto 0),
                PlayerRightPosition(11 downto 0)=>XLXN_232(11 downto 0),
                PlayerRightSize(11 downto 0)=>XLXN_230(11 downto 0),
                PowerUpActive=>XLXN_191,
                PowerUpPositionX(11 downto 0)=>XLXN_218(11 downto 0),
                PowerUpPositionY(11 downto 0)=>XLXN_217(11 downto 0),
                PowerUpType(2 downto 0)=>XLXN_216(2 downto 0),
                Reset=>XLXN_188,
                BallSizeDown=>XLXN_211,
                BallSizeUp=>XLXN_198,
                BallSpeedDown=>XLXN_194,
                BallSpeedUp=>XLXN_195,
                NewBallVector(1 downto 0)=>XLXN_197(1 downto 0),
                PlayerLeftScore=>XLXN_209,
                PlayerLeftSizeDown=>XLXN_205,
                PlayerLeftSizeUp=>XLXN_206,
                PlayerLeftSpeedDown=>XLXN_207,
                PlayerLeftSpeedUp=>XLXN_210,
                PlayerRightScore=>XLXN_204,
                PlayerRightSizeDown=>XLXN_200,
                PlayerRightSizeUp=>XLXN_201,
                PlayerRightSpeedDown=>XLXN_202,
                PlayerRightSpeedUp=>XLXN_203,
                PowerUpTurnOff=>XLXN_199,
                SetBallVector=>XLXN_196);
   
   Game : GameLogic
      port map (Clk=>Clk,
                Pause=>XLXN_184,
                Player1Score(3 downto 0)=>XLXN_239(3 downto 0),
                Player2Score(3 downto 0)=>XLXN_233(3 downto 0),
                Reset=>XLXN_185,
                EndGame=>XLXN_213,
                Present=>XLXN_212,
                ResetMatch=>XLXN_188,
                SetPowerUp=>XLXN_170);
   
   Input : InputManager
      port map (Clk=>Clk,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                Down_P1=>XLXN_158,
                Down_P2=>XLXN_183,
                Pause=>XLXN_184,
                Reset=>XLXN_185,
                Up_P1=>XLXN_157,
                Up_P2=>XLXN_182);
   
   Player1 : Player
      port map (Clk=>Clk,
                Down=>XLXN_158,
                Reset=>XLXN_185,
                ScoreInc=>XLXN_209,
                SizeDown=>XLXN_205,
                SizeUp=>XLXN_206,
                SpeedDown=>XLXN_207,
                SpeedUp=>XLXN_210,
                Up=>XLXN_157,
                Position(11 downto 0)=>XLXN_238(11 downto 0),
                Score(3 downto 0)=>XLXN_239(3 downto 0),
                Size(11 downto 0)=>XLXN_235(11 downto 0));
   
   Player2 : Player
      port map (Clk=>Clk,
                Down=>XLXN_183,
                Reset=>XLXN_185,
                ScoreInc=>XLXN_204,
                SizeDown=>XLXN_200,
                SizeUp=>XLXN_201,
                SpeedDown=>XLXN_202,
                SpeedUp=>XLXN_203,
                Up=>XLXN_182,
                Position(11 downto 0)=>XLXN_232(11 downto 0),
                Score(3 downto 0)=>XLXN_233(3 downto 0),
                Size(11 downto 0)=>XLXN_230(11 downto 0));
   
   Power : PowerUp
      port map (Activate=>XLXN_170,
                Clk=>Clk,
                TurnOff=>XLXN_199,
                IsActive=>XLXN_191,
                PositionX(11 downto 0)=>XLXN_218(11 downto 0),
                PositionY(11 downto 0)=>XLXN_217(11 downto 0),
                PowerType(2 downto 0)=>XLXN_216(2 downto 0));
   
   Render : RenderManager
      port map (BallPositionX(11 downto 0)=>XLXN_224(11 downto 0),
                BallPositionY(11 downto 0)=>XLXN_222(11 downto 0),
                BallSize(11 downto 0)=>XLXN_220(11 downto 0),
                Clk=>Clk,
                EndGame=>XLXN_213,
                Pause=>XLXN_184,
                Player1Position(11 downto 0)=>XLXN_238(11 downto 0),
                Player1Score(3 downto 0)=>XLXN_239(3 downto 0),
                Player1Size(11 downto 0)=>XLXN_235(11 downto 0),
                Player2Position(11 downto 0)=>XLXN_232(11 downto 0),
                Player2Score(3 downto 0)=>XLXN_233(3 downto 0),
                Player2Size(11 downto 0)=>XLXN_230(11 downto 0),
                PowerUpActive=>XLXN_191,
                PowerUpPositionX(11 downto 0)=>XLXN_218(11 downto 0),
                PowerUpPositionY(11 downto 0)=>XLXN_217(11 downto 0),
                PowerUpType(2 downto 0)=>XLXN_216(2 downto 0),
                Present=>XLXN_212,
                Blue=>VGA_B,
                Green=>VGA_G,
                HorizontalSync=>VGA_HS,
                Red=>VGA_R,
                VerticalSync=>VGA_VS);
   
end BEHAVIORAL;


