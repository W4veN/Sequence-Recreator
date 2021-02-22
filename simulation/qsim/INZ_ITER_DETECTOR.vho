-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "02/11/2021 16:30:30"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	INZ_ITER_DETECTOR IS
    PORT (
	x : IN std_logic_vector(7 DOWNTO 0);
	s : BUFFER std_logic_vector(7 DOWNTO 0);
	y : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END INZ_ITER_DETECTOR;

-- Design Ports Information
-- s[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF INZ_ITER_DETECTOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \a~0_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \a~1_combout\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \a~2_combout\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \a~3_combout\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \a~4_combout\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \s~0_combout\ : std_logic;
SIGNAL \d[2]~0_combout\ : std_logic;
SIGNAL d : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_x[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a~1_combout\ : std_logic;
SIGNAL \ALT_INV_a~2_combout\ : std_logic;
SIGNAL \ALT_INV_a~3_combout\ : std_logic;
SIGNAL \ALT_INV_a~4_combout\ : std_logic;
SIGNAL \ALT_INV_x[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[5]~input_o\ : std_logic;

BEGIN

ww_x <= x;
s <= ww_s;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_x[1]~input_o\ <= NOT \x[1]~input_o\;
\ALT_INV_x[2]~input_o\ <= NOT \x[2]~input_o\;
\ALT_INV_a~1_combout\ <= NOT \a~1_combout\;
\ALT_INV_a~2_combout\ <= NOT \a~2_combout\;
\ALT_INV_a~3_combout\ <= NOT \a~3_combout\;
\ALT_INV_a~4_combout\ <= NOT \a~4_combout\;
\ALT_INV_x[3]~input_o\ <= NOT \x[3]~input_o\;
\ALT_INV_x[4]~input_o\ <= NOT \x[4]~input_o\;
\ALT_INV_x[0]~input_o\ <= NOT \x[0]~input_o\;
\ALT_INV_x[7]~input_o\ <= NOT \x[7]~input_o\;
\ALT_INV_x[6]~input_o\ <= NOT \x[6]~input_o\;
\ALT_INV_x[5]~input_o\ <= NOT \x[5]~input_o\;

-- Location: IOOBUF_X2_Y0_N42
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X36_Y81_N53
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X12_Y0_N19
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a~0_combout\,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X8_Y0_N36
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a~1_combout\,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOOBUF_X4_Y0_N2
\s[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a~2_combout\,
	devoe => ww_devoe,
	o => ww_s(4));

-- Location: IOOBUF_X4_Y0_N19
\s[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a~3_combout\,
	devoe => ww_devoe,
	o => ww_s(5));

-- Location: IOOBUF_X2_Y0_N76
\s[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a~4_combout\,
	devoe => ww_devoe,
	o => ww_s(6));

-- Location: IOOBUF_X12_Y0_N2
\s[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~0_combout\,
	devoe => ww_devoe,
	o => ww_s(7));

-- Location: IOOBUF_X10_Y0_N59
\y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a~0_combout\,
	devoe => ww_devoe,
	o => ww_y(0));

-- Location: IOOBUF_X8_Y0_N53
\y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a~1_combout\,
	devoe => ww_devoe,
	o => ww_y(1));

-- Location: IOOBUF_X6_Y0_N2
\y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_y(2));

-- Location: IOOBUF_X6_Y0_N19
\y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => d(3),
	devoe => ww_devoe,
	o => ww_y(3));

-- Location: IOOBUF_X4_Y0_N53
\y[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => d(4),
	devoe => ww_devoe,
	o => ww_y(4));

-- Location: IOOBUF_X4_Y0_N36
\y[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => d(5),
	devoe => ww_devoe,
	o => ww_y(5));

-- Location: IOOBUF_X2_Y0_N93
\y[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a~4_combout\,
	devoe => ww_devoe,
	o => ww_y(6));

-- Location: IOOBUF_X12_Y0_N53
\y[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s~0_combout\,
	devoe => ww_devoe,
	o => ww_y(7));

-- Location: IOIBUF_X8_Y0_N1
\x[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\x[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\x[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LABCELL_X7_Y1_N30
\a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \a~0_combout\ = ( \x[0]~input_o\ & ( (!\x[1]~input_o\ & \x[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[1]~input_o\,
	datac => \ALT_INV_x[2]~input_o\,
	datae => \ALT_INV_x[0]~input_o\,
	combout => \a~0_combout\);

-- Location: IOIBUF_X6_Y0_N52
\x[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: LABCELL_X7_Y1_N6
\a~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \a~1_combout\ = ( !\x[2]~input_o\ & ( (\x[1]~input_o\ & \x[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[1]~input_o\,
	datac => \ALT_INV_x[3]~input_o\,
	datae => \ALT_INV_x[2]~input_o\,
	combout => \a~1_combout\);

-- Location: IOIBUF_X8_Y0_N18
\x[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: LABCELL_X7_Y1_N12
\a~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \a~2_combout\ = (!\x[3]~input_o\ & (\x[4]~input_o\ & \x[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[3]~input_o\,
	datac => \ALT_INV_x[4]~input_o\,
	datad => \ALT_INV_x[2]~input_o\,
	combout => \a~2_combout\);

-- Location: IOIBUF_X6_Y0_N35
\x[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: LABCELL_X7_Y1_N15
\a~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \a~3_combout\ = ( !\x[4]~input_o\ & ( (\x[3]~input_o\ & \x[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[3]~input_o\,
	datad => \ALT_INV_x[5]~input_o\,
	dataf => \ALT_INV_x[4]~input_o\,
	combout => \a~3_combout\);

-- Location: IOIBUF_X10_Y0_N75
\x[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: LABCELL_X7_Y1_N21
\a~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \a~4_combout\ = ( !\x[5]~input_o\ & ( (\x[4]~input_o\ & \x[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[4]~input_o\,
	datac => \ALT_INV_x[6]~input_o\,
	datae => \ALT_INV_x[5]~input_o\,
	combout => \a~4_combout\);

-- Location: IOIBUF_X12_Y0_N35
\x[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: LABCELL_X7_Y1_N24
\s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s~0_combout\ = ( \x[5]~input_o\ & ( \x[7]~input_o\ & ( !\x[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x[6]~input_o\,
	datae => \ALT_INV_x[5]~input_o\,
	dataf => \ALT_INV_x[7]~input_o\,
	combout => \s~0_combout\);

-- Location: LABCELL_X7_Y1_N3
\d[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d[2]~0_combout\ = ( \x[2]~input_o\ & ( \x[3]~input_o\ & ( (\x[0]~input_o\ & !\x[1]~input_o\) ) ) ) # ( \x[2]~input_o\ & ( !\x[3]~input_o\ & ( ((\x[0]~input_o\ & !\x[1]~input_o\)) # (\x[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001111111100000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0]~input_o\,
	datac => \ALT_INV_x[1]~input_o\,
	datad => \ALT_INV_x[4]~input_o\,
	datae => \ALT_INV_x[2]~input_o\,
	dataf => \ALT_INV_x[3]~input_o\,
	combout => \d[2]~0_combout\);

-- Location: LABCELL_X7_Y1_N39
\d[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- d(3) = ( \a~4_combout\ & ( \a~3_combout\ & ( \a~1_combout\ ) ) ) # ( !\a~4_combout\ & ( \a~3_combout\ & ( (!\a~2_combout\) # (\a~1_combout\) ) ) ) # ( \a~4_combout\ & ( !\a~3_combout\ & ( \a~1_combout\ ) ) ) # ( !\a~4_combout\ & ( !\a~3_combout\ & ( 
-- \a~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111110011111100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a~1_combout\,
	datac => \ALT_INV_a~2_combout\,
	datae => \ALT_INV_a~4_combout\,
	dataf => \ALT_INV_a~3_combout\,
	combout => d(3));

-- Location: LABCELL_X7_Y1_N45
\d[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- d(4) = ( \x[2]~input_o\ & ( \x[3]~input_o\ & ( (!\x[5]~input_o\ & (\x[6]~input_o\ & \x[4]~input_o\)) ) ) ) # ( !\x[2]~input_o\ & ( \x[3]~input_o\ & ( (!\x[5]~input_o\ & (\x[6]~input_o\ & \x[4]~input_o\)) ) ) ) # ( \x[2]~input_o\ & ( !\x[3]~input_o\ & ( 
-- \x[4]~input_o\ ) ) ) # ( !\x[2]~input_o\ & ( !\x[3]~input_o\ & ( (!\x[5]~input_o\ & (\x[6]~input_o\ & \x[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000001111111100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[5]~input_o\,
	datac => \ALT_INV_x[6]~input_o\,
	datad => \ALT_INV_x[4]~input_o\,
	datae => \ALT_INV_x[2]~input_o\,
	dataf => \ALT_INV_x[3]~input_o\,
	combout => d(4));

-- Location: LABCELL_X7_Y1_N48
\d[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- d(5) = ( \x[5]~input_o\ & ( \x[7]~input_o\ & ( (!\x[6]~input_o\) # ((!\x[4]~input_o\ & \x[3]~input_o\)) ) ) ) # ( \x[5]~input_o\ & ( !\x[7]~input_o\ & ( (!\x[4]~input_o\ & \x[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001100111011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[4]~input_o\,
	datab => \ALT_INV_x[6]~input_o\,
	datac => \ALT_INV_x[3]~input_o\,
	datae => \ALT_INV_x[5]~input_o\,
	dataf => \ALT_INV_x[7]~input_o\,
	combout => d(5));

-- Location: LABCELL_X30_Y76_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


