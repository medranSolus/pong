<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PS2_Data" />
        <signal name="PS2_Clk" />
        <signal name="XLXN_10" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="Clk" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45(1:0)" />
        <signal name="XLXN_55(1:0)" />
        <signal name="XLXN_56(7:0)" />
        <signal name="XLXN_57(7:0)" />
        <signal name="XLXN_58(7:0)" />
        <signal name="XLXN_60(7:0)" />
        <signal name="XLXN_61(7:0)" />
        <signal name="XLXN_62(7:0)" />
        <signal name="XLXN_63(7:0)" />
        <signal name="XLXN_64(7:0)" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66(2:0)" />
        <signal name="XLXN_67(7:0)" />
        <signal name="XLXN_68(7:0)" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="Clk" />
        <blockdef name="InputManager">
            <timestamp>2020-3-29T19:33:49</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Player">
            <timestamp>2020-3-29T22:35:51</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-556" height="24" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="CollisionManager">
            <timestamp>2020-4-9T18:45:4</timestamp>
            <rect width="496" x="64" y="-1088" height="1088" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <rect width="64" x="0" y="-876" height="24" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <rect width="64" x="0" y="-812" height="24" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="624" y1="-1056" y2="-1056" x1="560" />
            <line x2="624" y1="-992" y2="-992" x1="560" />
            <line x2="624" y1="-928" y2="-928" x1="560" />
            <line x2="624" y1="-864" y2="-864" x1="560" />
            <line x2="624" y1="-800" y2="-800" x1="560" />
            <line x2="624" y1="-736" y2="-736" x1="560" />
            <line x2="624" y1="-672" y2="-672" x1="560" />
            <line x2="624" y1="-608" y2="-608" x1="560" />
            <line x2="624" y1="-544" y2="-544" x1="560" />
            <line x2="624" y1="-480" y2="-480" x1="560" />
            <line x2="624" y1="-416" y2="-416" x1="560" />
            <line x2="624" y1="-352" y2="-352" x1="560" />
            <line x2="624" y1="-288" y2="-288" x1="560" />
            <line x2="624" y1="-224" y2="-224" x1="560" />
            <line x2="624" y1="-160" y2="-160" x1="560" />
            <line x2="624" y1="-96" y2="-96" x1="560" />
            <rect width="64" x="560" y="-44" height="24" />
            <line x2="624" y1="-32" y2="-32" x1="560" />
        </blockdef>
        <blockdef name="Ball">
            <timestamp>2020-4-9T18:44:48</timestamp>
            <rect width="368" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-556" height="24" />
            <line x2="496" y1="-544" y2="-544" x1="432" />
            <rect width="64" x="432" y="-428" height="24" />
            <line x2="496" y1="-416" y2="-416" x1="432" />
            <rect width="64" x="432" y="-300" height="24" />
            <line x2="496" y1="-288" y2="-288" x1="432" />
            <rect width="64" x="432" y="-172" height="24" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <blockdef name="PowerUp">
            <timestamp>2020-4-15T17:19:7</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Player" name="Player1">
            <blockpin signalname="XLXN_10" name="Reset" />
            <blockpin signalname="XLXN_12" name="Up" />
            <blockpin signalname="XLXN_13" name="Down" />
            <blockpin signalname="XLXN_21" name="ScoreInc" />
            <blockpin signalname="XLXN_22" name="SpeedUp" />
            <blockpin signalname="XLXN_23" name="SpeedDown" />
            <blockpin signalname="XLXN_24" name="SizeUp" />
            <blockpin signalname="XLXN_25" name="SizeDown" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin name="Score(3:0)" />
            <blockpin signalname="XLXN_61(7:0)" name="Position(7:0)" />
            <blockpin signalname="XLXN_62(7:0)" name="Size(7:0)" />
        </block>
        <block symbolname="Player" name="Player2">
            <blockpin signalname="XLXN_10" name="Reset" />
            <blockpin signalname="XLXN_14" name="Up" />
            <blockpin signalname="XLXN_15" name="Down" />
            <blockpin signalname="XLXN_26" name="ScoreInc" />
            <blockpin signalname="XLXN_27" name="SpeedUp" />
            <blockpin signalname="XLXN_28" name="SpeedDown" />
            <blockpin signalname="XLXN_29" name="SizeUp" />
            <blockpin signalname="XLXN_30" name="SizeDown" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin name="Score(3:0)" />
            <blockpin signalname="XLXN_63(7:0)" name="Position(7:0)" />
            <blockpin signalname="XLXN_64(7:0)" name="Size(7:0)" />
        </block>
        <block symbolname="InputManager" name="Input">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_10" name="Reset" />
            <blockpin signalname="XLXN_70" name="Pause" />
            <blockpin signalname="XLXN_12" name="Up_P1" />
            <blockpin signalname="XLXN_13" name="Down_P1" />
            <blockpin signalname="XLXN_14" name="Up_P2" />
            <blockpin signalname="XLXN_15" name="Down_P2" />
        </block>
        <block symbolname="CollisionManager" name="Collision">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_65" name="PowerUpActive" />
            <blockpin signalname="XLXN_55(1:0)" name="BallVector(1:0)" />
            <blockpin signalname="XLXN_58(7:0)" name="BallSize(7:0)" />
            <blockpin signalname="XLXN_60(7:0)" name="BallSpeed(7:0)" />
            <blockpin signalname="XLXN_57(7:0)" name="BallPositionY(7:0)" />
            <blockpin signalname="XLXN_56(7:0)" name="BallPositionX(7:0)" />
            <blockpin signalname="XLXN_61(7:0)" name="PlayerLeftPosition(7:0)" />
            <blockpin signalname="XLXN_62(7:0)" name="PlayerLeftSize(7:0)" />
            <blockpin signalname="XLXN_63(7:0)" name="PlayerRightPosition(7:0)" />
            <blockpin signalname="XLXN_64(7:0)" name="PlayerRightSize(7:0)" />
            <blockpin signalname="XLXN_66(2:0)" name="PowerUpType(2:0)" />
            <blockpin signalname="XLXN_67(7:0)" name="PowerUpPositionY(7:0)" />
            <blockpin signalname="XLXN_68(7:0)" name="PowerUpPositionX(7:0)" />
            <blockpin signalname="XLXN_40" name="SetBallVector" />
            <blockpin signalname="XLXN_41" name="BallSpeedUp" />
            <blockpin signalname="XLXN_42" name="BallSpeedDown" />
            <blockpin signalname="XLXN_43" name="BallSizeUp" />
            <blockpin signalname="XLXN_44" name="BallSizeDown" />
            <blockpin signalname="XLXN_21" name="PlayerLeftScore" />
            <blockpin signalname="XLXN_22" name="PlayerLeftSpeedUp" />
            <blockpin signalname="XLXN_23" name="PlayerLeftSpeedDown" />
            <blockpin signalname="XLXN_24" name="PlayerLeftSizeUp" />
            <blockpin signalname="XLXN_25" name="PlayerLeftSizeDown" />
            <blockpin signalname="XLXN_26" name="PlayerRightScore" />
            <blockpin signalname="XLXN_27" name="PlayerRightSpeedUp" />
            <blockpin signalname="XLXN_28" name="PlayerRightSpeedDown" />
            <blockpin signalname="XLXN_29" name="PlayerRightSizeUp" />
            <blockpin signalname="XLXN_30" name="PlayerRightSizeDown" />
            <blockpin signalname="XLXN_69" name="PowerUpTurnOff" />
            <blockpin signalname="XLXN_45(1:0)" name="NewBallVector(1:0)" />
        </block>
        <block symbolname="Ball" name="Bally">
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_40" name="SetVector" />
            <blockpin signalname="XLXN_70" name="Stop" />
            <blockpin signalname="XLXN_41" name="SpeedUp" />
            <blockpin signalname="XLXN_42" name="SpeedDown" />
            <blockpin signalname="XLXN_43" name="SizeUp" />
            <blockpin signalname="XLXN_44" name="SizeDown" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_45(1:0)" name="InputVector(1:0)" />
            <blockpin signalname="XLXN_60(7:0)" name="Speed(7:0)" />
            <blockpin signalname="XLXN_58(7:0)" name="Size(7:0)" />
            <blockpin signalname="XLXN_57(7:0)" name="PositionY(7:0)" />
            <blockpin signalname="XLXN_56(7:0)" name="PositionX(7:0)" />
            <blockpin signalname="XLXN_55(1:0)" name="CurrentVector(1:0)" />
        </block>
        <block symbolname="PowerUp" name="Power">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin name="Activate" />
            <blockpin signalname="XLXN_69" name="TurnOff" />
            <blockpin signalname="XLXN_65" name="IsActive" />
            <blockpin signalname="XLXN_66(2:0)" name="PowerType(2:0)" />
            <blockpin signalname="XLXN_67(7:0)" name="PositionY(7:0)" />
            <blockpin signalname="XLXN_68(7:0)" name="PositionX(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="800" y="656" name="Player1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="160" y="-464" type="instance" />
        </instance>
        <instance x="800" y="1328" name="Player2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="160" y="-464" type="instance" />
        </instance>
        <branch name="PS2_Data">
            <wire x2="176" y1="368" y2="368" x1="160" />
            <wire x2="192" y1="368" y2="368" x1="176" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="176" y1="208" y2="208" x1="160" />
            <wire x2="192" y1="208" y2="208" x1="176" />
        </branch>
        <instance x="192" y="560" name="Input" orien="R0">
        </instance>
        <branch name="XLXN_10">
            <wire x2="688" y1="208" y2="208" x1="576" />
            <wire x2="688" y1="208" y2="784" x1="688" />
            <wire x2="800" y1="784" y2="784" x1="688" />
            <wire x2="688" y1="112" y2="208" x1="688" />
            <wire x2="800" y1="112" y2="112" x1="688" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="704" y1="336" y2="336" x1="576" />
            <wire x2="704" y1="176" y2="336" x1="704" />
            <wire x2="800" y1="176" y2="176" x1="704" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="720" y1="400" y2="400" x1="576" />
            <wire x2="720" y1="240" y2="400" x1="720" />
            <wire x2="800" y1="240" y2="240" x1="720" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="672" y1="464" y2="464" x1="576" />
            <wire x2="672" y1="464" y2="848" x1="672" />
            <wire x2="800" y1="848" y2="848" x1="672" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="656" y1="528" y2="528" x1="576" />
            <wire x2="656" y1="528" y2="912" x1="656" />
            <wire x2="800" y1="912" y2="912" x1="656" />
        </branch>
        <iomarker fontsize="28" x="160" y="208" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="160" y="368" name="PS2_Data" orien="R180" />
        <instance x="1712" y="1168" name="Collision" orien="R0">
        </instance>
        <branch name="Clk">
            <wire x2="144" y1="528" y2="528" x1="96" />
            <wire x2="176" y1="528" y2="528" x1="144" />
            <wire x2="192" y1="528" y2="528" x1="176" />
            <wire x2="144" y1="528" y2="624" x1="144" />
            <wire x2="800" y1="624" y2="624" x1="144" />
            <wire x2="144" y1="624" y2="1296" x1="144" />
            <wire x2="752" y1="1296" y2="1296" x1="144" />
            <wire x2="800" y1="1296" y2="1296" x1="752" />
            <wire x2="752" y1="1296" y2="1456" x1="752" />
            <wire x2="752" y1="1456" y2="1872" x1="752" />
            <wire x2="1616" y1="1872" y2="1872" x1="752" />
            <wire x2="1840" y1="1872" y2="1872" x1="1616" />
            <wire x2="800" y1="1456" y2="1456" x1="752" />
            <wire x2="1712" y1="112" y2="112" x1="1616" />
            <wire x2="1616" y1="112" y2="1872" x1="1616" />
        </branch>
        <instance x="1840" y="1968" name="Bally" orien="R0">
        </instance>
        <iomarker fontsize="28" x="96" y="528" name="Clk" orien="R180" />
        <branch name="XLXN_21">
            <wire x2="736" y1="16" y2="304" x1="736" />
            <wire x2="800" y1="304" y2="304" x1="736" />
            <wire x2="2400" y1="16" y2="16" x1="736" />
            <wire x2="2400" y1="16" y2="432" x1="2400" />
            <wire x2="2400" y1="432" y2="432" x1="2336" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="784" y1="32" y2="368" x1="784" />
            <wire x2="800" y1="368" y2="368" x1="784" />
            <wire x2="2384" y1="32" y2="32" x1="784" />
            <wire x2="2384" y1="32" y2="496" x1="2384" />
            <wire x2="2384" y1="496" y2="496" x1="2336" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="768" y1="48" y2="432" x1="768" />
            <wire x2="800" y1="432" y2="432" x1="768" />
            <wire x2="2368" y1="48" y2="48" x1="768" />
            <wire x2="2368" y1="48" y2="560" x1="2368" />
            <wire x2="2368" y1="560" y2="560" x1="2336" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="752" y1="64" y2="496" x1="752" />
            <wire x2="800" y1="496" y2="496" x1="752" />
            <wire x2="2352" y1="64" y2="64" x1="752" />
            <wire x2="2352" y1="64" y2="624" x1="2352" />
            <wire x2="2352" y1="624" y2="624" x1="2336" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="800" y1="560" y2="560" x1="784" />
            <wire x2="784" y1="560" y2="1376" x1="784" />
            <wire x2="2416" y1="1376" y2="1376" x1="784" />
            <wire x2="2416" y1="688" y2="688" x1="2336" />
            <wire x2="2416" y1="688" y2="1376" x1="2416" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="800" y1="976" y2="976" x1="720" />
            <wire x2="720" y1="976" y2="1344" x1="720" />
            <wire x2="2400" y1="1344" y2="1344" x1="720" />
            <wire x2="2400" y1="752" y2="752" x1="2336" />
            <wire x2="2400" y1="752" y2="1344" x1="2400" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="800" y1="1040" y2="1040" x1="736" />
            <wire x2="736" y1="1040" y2="1360" x1="736" />
            <wire x2="2384" y1="1360" y2="1360" x1="736" />
            <wire x2="2384" y1="816" y2="816" x1="2336" />
            <wire x2="2384" y1="816" y2="1360" x1="2384" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="800" y1="1104" y2="1104" x1="768" />
            <wire x2="768" y1="1104" y2="2032" x1="768" />
            <wire x2="2368" y1="2032" y2="2032" x1="768" />
            <wire x2="2368" y1="880" y2="880" x1="2336" />
            <wire x2="2368" y1="880" y2="2032" x1="2368" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="800" y1="1168" y2="1168" x1="640" />
            <wire x2="640" y1="1168" y2="2016" x1="640" />
            <wire x2="2352" y1="2016" y2="2016" x1="640" />
            <wire x2="2352" y1="944" y2="944" x1="2336" />
            <wire x2="2352" y1="944" y2="2016" x1="2352" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="800" y1="1232" y2="1232" x1="656" />
            <wire x2="656" y1="1232" y2="1984" x1="656" />
            <wire x2="2496" y1="1984" y2="1984" x1="656" />
            <wire x2="2496" y1="1008" y2="1008" x1="2336" />
            <wire x2="2496" y1="1008" y2="1984" x1="2496" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="1760" y1="1280" y2="1488" x1="1760" />
            <wire x2="1840" y1="1488" y2="1488" x1="1760" />
            <wire x2="2432" y1="1280" y2="1280" x1="1760" />
            <wire x2="2432" y1="112" y2="112" x1="2336" />
            <wire x2="2432" y1="112" y2="1280" x1="2432" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="1840" y1="1616" y2="1616" x1="1760" />
            <wire x2="1760" y1="1616" y2="2000" x1="1760" />
            <wire x2="2544" y1="2000" y2="2000" x1="1760" />
            <wire x2="2544" y1="176" y2="176" x1="2336" />
            <wire x2="2544" y1="176" y2="2000" x1="2544" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="1840" y1="1680" y2="1680" x1="1776" />
            <wire x2="1776" y1="1680" y2="2112" x1="1776" />
            <wire x2="2576" y1="2112" y2="2112" x1="1776" />
            <wire x2="2576" y1="240" y2="240" x1="2336" />
            <wire x2="2576" y1="240" y2="2112" x1="2576" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="1792" y1="1312" y2="1744" x1="1792" />
            <wire x2="1840" y1="1744" y2="1744" x1="1792" />
            <wire x2="2528" y1="1312" y2="1312" x1="1792" />
            <wire x2="2528" y1="304" y2="304" x1="2336" />
            <wire x2="2528" y1="304" y2="1312" x1="2528" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="1824" y1="1264" y2="1808" x1="1824" />
            <wire x2="1840" y1="1808" y2="1808" x1="1824" />
            <wire x2="2560" y1="1264" y2="1264" x1="1824" />
            <wire x2="2560" y1="368" y2="368" x1="2336" />
            <wire x2="2560" y1="368" y2="1264" x1="2560" />
        </branch>
        <branch name="XLXN_45(1:0)">
            <wire x2="1840" y1="1936" y2="1936" x1="1792" />
            <wire x2="1792" y1="1936" y2="2096" x1="1792" />
            <wire x2="2512" y1="2096" y2="2096" x1="1792" />
            <wire x2="2512" y1="1136" y2="1136" x1="2336" />
            <wire x2="2512" y1="1136" y2="2096" x1="2512" />
        </branch>
        <branch name="XLXN_55(1:0)">
            <wire x2="1712" y1="304" y2="304" x1="1648" />
            <wire x2="1648" y1="304" y2="1232" x1="1648" />
            <wire x2="2480" y1="1232" y2="1232" x1="1648" />
            <wire x2="2480" y1="1232" y2="1936" x1="2480" />
            <wire x2="2480" y1="1936" y2="1936" x1="2336" />
        </branch>
        <branch name="XLXN_56(7:0)">
            <wire x2="1712" y1="560" y2="560" x1="1664" />
            <wire x2="1664" y1="560" y2="1216" x1="1664" />
            <wire x2="2464" y1="1216" y2="1216" x1="1664" />
            <wire x2="2464" y1="1216" y2="1808" x1="2464" />
            <wire x2="2464" y1="1808" y2="1808" x1="2336" />
        </branch>
        <branch name="XLXN_57(7:0)">
            <wire x2="1712" y1="496" y2="496" x1="1696" />
            <wire x2="1696" y1="496" y2="1184" x1="1696" />
            <wire x2="2640" y1="1184" y2="1184" x1="1696" />
            <wire x2="2640" y1="1184" y2="1680" x1="2640" />
            <wire x2="2640" y1="1680" y2="1680" x1="2336" />
        </branch>
        <branch name="XLXN_58(7:0)">
            <wire x2="1712" y1="368" y2="368" x1="1680" />
            <wire x2="1680" y1="368" y2="1200" x1="1680" />
            <wire x2="2624" y1="1200" y2="1200" x1="1680" />
            <wire x2="2624" y1="1200" y2="1552" x1="2624" />
            <wire x2="2624" y1="1552" y2="1552" x1="2336" />
        </branch>
        <branch name="XLXN_60(7:0)">
            <wire x2="1712" y1="432" y2="432" x1="1584" />
            <wire x2="1584" y1="432" y2="1248" x1="1584" />
            <wire x2="2608" y1="1248" y2="1248" x1="1584" />
            <wire x2="2608" y1="1248" y2="1424" x1="2608" />
            <wire x2="2608" y1="1424" y2="1424" x1="2336" />
        </branch>
        <branch name="XLXN_61(7:0)">
            <wire x2="1440" y1="368" y2="368" x1="1184" />
            <wire x2="1440" y1="368" y2="624" x1="1440" />
            <wire x2="1712" y1="624" y2="624" x1="1440" />
        </branch>
        <branch name="XLXN_62(7:0)">
            <wire x2="1424" y1="624" y2="624" x1="1184" />
            <wire x2="1424" y1="624" y2="688" x1="1424" />
            <wire x2="1712" y1="688" y2="688" x1="1424" />
        </branch>
        <branch name="XLXN_63(7:0)">
            <wire x2="1440" y1="1040" y2="1040" x1="1184" />
            <wire x2="1440" y1="752" y2="1040" x1="1440" />
            <wire x2="1712" y1="752" y2="752" x1="1440" />
        </branch>
        <branch name="XLXN_64(7:0)">
            <wire x2="1456" y1="1296" y2="1296" x1="1184" />
            <wire x2="1456" y1="816" y2="1296" x1="1456" />
            <wire x2="1712" y1="816" y2="816" x1="1456" />
        </branch>
        <instance x="800" y="1680" name="Power" orien="R0">
        </instance>
        <branch name="XLXN_65">
            <wire x2="1408" y1="1456" y2="1456" x1="1184" />
            <wire x2="1408" y1="240" y2="1456" x1="1408" />
            <wire x2="1712" y1="240" y2="240" x1="1408" />
        </branch>
        <branch name="XLXN_66(2:0)">
            <wire x2="1424" y1="1520" y2="1520" x1="1184" />
            <wire x2="1424" y1="880" y2="1520" x1="1424" />
            <wire x2="1712" y1="880" y2="880" x1="1424" />
        </branch>
        <branch name="XLXN_67(7:0)">
            <wire x2="1392" y1="1584" y2="1584" x1="1184" />
            <wire x2="1392" y1="944" y2="1584" x1="1392" />
            <wire x2="1712" y1="944" y2="944" x1="1392" />
        </branch>
        <branch name="XLXN_68(7:0)">
            <wire x2="1472" y1="1648" y2="1648" x1="1184" />
            <wire x2="1472" y1="1008" y2="1648" x1="1472" />
            <wire x2="1712" y1="1008" y2="1008" x1="1472" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="800" y1="1648" y2="1648" x1="704" />
            <wire x2="704" y1="1648" y2="2080" x1="704" />
            <wire x2="2448" y1="2080" y2="2080" x1="704" />
            <wire x2="2448" y1="1072" y2="1072" x1="2336" />
            <wire x2="2448" y1="1072" y2="2080" x1="2448" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="640" y1="272" y2="272" x1="576" />
            <wire x2="640" y1="272" y2="720" x1="640" />
            <wire x2="1248" y1="720" y2="720" x1="640" />
            <wire x2="1248" y1="720" y2="1552" x1="1248" />
            <wire x2="1840" y1="1552" y2="1552" x1="1248" />
        </branch>
    </sheet>
</drawing>