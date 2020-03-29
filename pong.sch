<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_18" />
        <signal name="XLXN_27" />
        <signal name="XLXN_36" />
        <signal name="XLXN_45" />
        <signal name="XLXN_54" />
        <signal name="XLXN_63" />
        <signal name="XLXN_72" />
        <signal name="XLXN_81" />
        <signal name="XLXN_90" />
        <signal name="Clk" />
        <signal name="PS2_Data" />
        <signal name="PS2_Clk" />
        <signal name="XLXN_10" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="PS2_Clk" />
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
        <block symbolname="Player" name="Player1">
            <blockpin signalname="XLXN_10" name="Reset" />
            <blockpin signalname="XLXN_12" name="Up" />
            <blockpin signalname="XLXN_13" name="Down" />
            <blockpin name="ScoreInc" />
            <blockpin name="SpeedUp" />
            <blockpin name="SpeedDown" />
            <blockpin name="SizeUp" />
            <blockpin name="SizeDown" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin name="Score(3:0)" />
            <blockpin name="Position(7:0)" />
            <blockpin name="Size(7:0)" />
        </block>
        <block symbolname="Player" name="Player2">
            <blockpin signalname="XLXN_10" name="Reset" />
            <blockpin signalname="XLXN_14" name="Up" />
            <blockpin signalname="XLXN_15" name="Down" />
            <blockpin name="ScoreInc" />
            <blockpin name="SpeedUp" />
            <blockpin name="SpeedDown" />
            <blockpin name="SizeUp" />
            <blockpin name="SizeDown" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin name="Score(3:0)" />
            <blockpin name="Position(7:0)" />
            <blockpin name="Size(7:0)" />
        </block>
        <block symbolname="InputManager" name="Input">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_10" name="Reset" />
            <blockpin name="Pause" />
            <blockpin signalname="XLXN_12" name="Up_P1" />
            <blockpin signalname="XLXN_13" name="Down_P1" />
            <blockpin signalname="XLXN_14" name="Up_P2" />
            <blockpin signalname="XLXN_15" name="Down_P2" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="800" y="656" name="Player1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="160" y="-464" type="instance" />
        </instance>
        <instance x="800" y="1328" name="Player2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="160" y="-464" type="instance" />
        </instance>
        <branch name="Clk">
            <wire x2="176" y1="528" y2="528" x1="160" />
            <wire x2="192" y1="528" y2="528" x1="176" />
            <wire x2="176" y1="528" y2="1296" x1="176" />
            <wire x2="736" y1="1296" y2="1296" x1="176" />
            <wire x2="800" y1="1296" y2="1296" x1="736" />
            <wire x2="800" y1="624" y2="624" x1="736" />
            <wire x2="736" y1="624" y2="1296" x1="736" />
        </branch>
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
        <iomarker fontsize="28" x="160" y="528" name="Clk" orien="R180" />
    </sheet>
</drawing>