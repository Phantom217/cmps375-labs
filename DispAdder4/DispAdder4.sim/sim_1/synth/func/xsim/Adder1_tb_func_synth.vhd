-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Feb 18 17:49:35 2019
-- Host        : k501u running 64-bit unknown
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/phantom/projects/cmps375-labs/DispAdder4/DispAdder4.sim/sim_1/synth/func/xsim/Adder1_tb_func_synth.vhd
-- Design      : Adder4
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Adder4 is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cIn : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cOut : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Adder4 : entity is true;
  attribute N : integer;
  attribute N of Adder4 : entity is 4;
end Adder4;

architecture STRUCTURE of Adder4 is
  signal A_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal B_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cIn_IBUF : STD_LOGIC;
  signal cOut_OBUF : STD_LOGIC;
  signal c_2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \S_OBUF[1]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \S_OBUF[3]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S_OBUF[3]_inst_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of cOut_OBUF_inst_i_1 : label is "soft_lutpair0";
begin
\A_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(0),
      O => A_IBUF(0)
    );
\A_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(1),
      O => A_IBUF(1)
    );
\A_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(2),
      O => A_IBUF(2)
    );
\A_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(3),
      O => A_IBUF(3)
    );
\B_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(0),
      O => B_IBUF(0)
    );
\B_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(1),
      O => B_IBUF(1)
    );
\B_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(2),
      O => B_IBUF(2)
    );
\B_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(3),
      O => B_IBUF(3)
    );
\S_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => S_OBUF(0),
      O => S(0)
    );
\S_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cIn_IBUF,
      I1 => A_IBUF(0),
      I2 => B_IBUF(0),
      O => S_OBUF(0)
    );
\S_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => S_OBUF(1),
      O => S(1)
    );
\S_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => A_IBUF(0),
      I1 => B_IBUF(0),
      I2 => cIn_IBUF,
      I3 => A_IBUF(1),
      I4 => B_IBUF(1),
      O => S_OBUF(1)
    );
\S_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => S_OBUF(2),
      O => S(2)
    );
\S_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => c_2,
      I1 => A_IBUF(2),
      I2 => B_IBUF(2),
      O => S_OBUF(2)
    );
\S_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => S_OBUF(3),
      O => S(3)
    );
\S_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => A_IBUF(2),
      I1 => B_IBUF(2),
      I2 => c_2,
      I3 => A_IBUF(3),
      I4 => B_IBUF(3),
      O => S_OBUF(3)
    );
\S_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => cIn_IBUF,
      I1 => B_IBUF(0),
      I2 => A_IBUF(0),
      I3 => B_IBUF(1),
      I4 => A_IBUF(1),
      O => c_2
    );
cIn_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => cIn,
      O => cIn_IBUF
    );
cOut_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => cOut_OBUF,
      O => cOut
    );
cOut_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => c_2,
      I1 => B_IBUF(2),
      I2 => A_IBUF(2),
      I3 => B_IBUF(3),
      I4 => A_IBUF(3),
      O => cOut_OBUF
    );
end STRUCTURE;
