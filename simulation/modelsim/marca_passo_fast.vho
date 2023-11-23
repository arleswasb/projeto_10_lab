-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/22/2023 23:32:26"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Marca_Passo IS
    PORT (
	SA : IN std_logic;
	SV : IN std_logic;
	SW16 : IN std_logic;
	Reset : IN std_logic;
	Clock : IN std_logic;
	PA : OUT std_logic;
	PV : OUT std_logic
	);
END Marca_Passo;

-- Design Ports Information
-- PA	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PV	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SA	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SV	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW16	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Marca_Passo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SA : std_logic;
SIGNAL ww_SV : std_logic;
SIGNAL ww_SW16 : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_PA : std_logic;
SIGNAL ww_PV : std_logic;
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Sinal_Atrio|s2|qS~regout\ : std_logic;
SIGNAL \Sinal_Ventriculo|s2|qS~regout\ : std_logic;
SIGNAL \Sinal_Atrio|s2|qS~0_combout\ : std_logic;
SIGNAL \Sinal_Ventriculo|s2|qS~0_combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \Sinal_Atrio|s3|qS~0_combout\ : std_logic;
SIGNAL \SV~combout\ : std_logic;
SIGNAL \Sinal_Atrio|s1|qS~0_combout\ : std_logic;
SIGNAL \SW16~combout\ : std_logic;
SIGNAL \Sinal_Atrio|s1|qS~regout\ : std_logic;
SIGNAL \Sinal_Atrio|s4|qS~0_combout\ : std_logic;
SIGNAL \Sinal_Atrio|s4|qS~regout\ : std_logic;
SIGNAL \SWA~0_combout\ : std_logic;
SIGNAL \Sinal_Ventriculo|s4|qS~0_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \SWV~1_combout\ : std_logic;
SIGNAL \Sinal_Ventriculo|s4|qS~regout\ : std_logic;
SIGNAL \Sinal_Ventriculo|s1|qS~0_combout\ : std_logic;
SIGNAL \Sinal_Ventriculo|s1|qS~regout\ : std_logic;
SIGNAL \Sinal_Ventriculo|s0|qS~0_combout\ : std_logic;
SIGNAL \Sinal_Ventriculo|s0|qS~regout\ : std_logic;
SIGNAL \SWV~0_combout\ : std_logic;
SIGNAL \SWA~1_combout\ : std_logic;
SIGNAL \Sinal_Atrio|s3|qS~regout\ : std_logic;
SIGNAL \SA~combout\ : std_logic;
SIGNAL \Sinal_Atrio|s0|qS~0_combout\ : std_logic;
SIGNAL \Sinal_Atrio|s0|qS~regout\ : std_logic;
SIGNAL \PA~0_combout\ : std_logic;
SIGNAL \Sinal_Ventriculo|s3|qS~0_combout\ : std_logic;
SIGNAL \Sinal_Ventriculo|s3|qS~regout\ : std_logic;
SIGNAL \PV~0_combout\ : std_logic;
SIGNAL \Sinal_Ventriculo|s2|ALT_INV_qS~regout\ : std_logic;
SIGNAL \Sinal_Atrio|s1|ALT_INV_qS~regout\ : std_logic;
SIGNAL \Sinal_Ventriculo|s0|ALT_INV_qS~regout\ : std_logic;
SIGNAL \Sinal_Atrio|s2|ALT_INV_qS~regout\ : std_logic;
SIGNAL \Sinal_Ventriculo|s3|ALT_INV_qS~regout\ : std_logic;
SIGNAL \Sinal_Ventriculo|s1|ALT_INV_qS~regout\ : std_logic;
SIGNAL \Sinal_Atrio|s0|ALT_INV_qS~regout\ : std_logic;
SIGNAL \Sinal_Atrio|s3|ALT_INV_qS~regout\ : std_logic;

BEGIN

ww_SA <= SA;
ww_SV <= SV;
ww_SW16 <= SW16;
ww_Reset <= Reset;
ww_Clock <= Clock;
PA <= ww_PA;
PV <= ww_PV;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);
\Sinal_Ventriculo|s2|ALT_INV_qS~regout\ <= NOT \Sinal_Ventriculo|s2|qS~regout\;
\Sinal_Atrio|s1|ALT_INV_qS~regout\ <= NOT \Sinal_Atrio|s1|qS~regout\;
\Sinal_Ventriculo|s0|ALT_INV_qS~regout\ <= NOT \Sinal_Ventriculo|s0|qS~regout\;
\Sinal_Atrio|s2|ALT_INV_qS~regout\ <= NOT \Sinal_Atrio|s2|qS~regout\;
\Sinal_Ventriculo|s3|ALT_INV_qS~regout\ <= NOT \Sinal_Ventriculo|s3|qS~regout\;
\Sinal_Ventriculo|s1|ALT_INV_qS~regout\ <= NOT \Sinal_Ventriculo|s1|qS~regout\;
\Sinal_Atrio|s0|ALT_INV_qS~regout\ <= NOT \Sinal_Atrio|s0|qS~regout\;
\Sinal_Atrio|s3|ALT_INV_qS~regout\ <= NOT \Sinal_Atrio|s3|qS~regout\;

-- Location: LCFF_X11_Y34_N11
\Sinal_Atrio|s2|qS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Sinal_Atrio|s1|ALT_INV_qS~regout\,
	datain => \Sinal_Atrio|s2|qS~0_combout\,
	aclr => \SWA~1_combout\,
	ena => \SW16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Sinal_Atrio|s2|qS~regout\);

-- Location: LCFF_X14_Y35_N15
\Sinal_Ventriculo|s2|qS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Sinal_Ventriculo|s1|ALT_INV_qS~regout\,
	datain => \Sinal_Ventriculo|s2|qS~0_combout\,
	aclr => \SWV~1_combout\,
	ena => \SW16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Sinal_Ventriculo|s2|qS~regout\);

-- Location: LCCOMB_X11_Y34_N10
\Sinal_Atrio|s2|qS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Sinal_Atrio|s2|qS~0_combout\ = !\Sinal_Atrio|s2|qS~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sinal_Atrio|s2|qS~regout\,
	combout => \Sinal_Atrio|s2|qS~0_combout\);

-- Location: LCCOMB_X14_Y35_N14
\Sinal_Ventriculo|s2|qS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Sinal_Ventriculo|s2|qS~0_combout\ = !\Sinal_Ventriculo|s2|qS~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sinal_Ventriculo|s2|qS~regout\,
	combout => \Sinal_Ventriculo|s2|qS~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: CLKCTRL_G3
\Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y34_N30
\Sinal_Atrio|s3|qS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Sinal_Atrio|s3|qS~0_combout\ = !\Sinal_Atrio|s3|qS~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sinal_Atrio|s3|qS~regout\,
	combout => \Sinal_Atrio|s3|qS~0_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SV~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SV,
	combout => \SV~combout\);

-- Location: LCCOMB_X12_Y34_N2
\Sinal_Atrio|s1|qS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Sinal_Atrio|s1|qS~0_combout\ = !\Sinal_Atrio|s1|qS~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sinal_Atrio|s1|qS~regout\,
	combout => \Sinal_Atrio|s1|qS~0_combout\);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW16~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW16,
	combout => \SW16~combout\);

-- Location: LCFF_X12_Y34_N3
\Sinal_Atrio|s1|qS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Sinal_Atrio|s0|ALT_INV_qS~regout\,
	datain => \Sinal_Atrio|s1|qS~0_combout\,
	aclr => \SWA~1_combout\,
	ena => \SW16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Sinal_Atrio|s1|qS~regout\);

-- Location: LCCOMB_X16_Y34_N8
\Sinal_Atrio|s4|qS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Sinal_Atrio|s4|qS~0_combout\ = !\Sinal_Atrio|s4|qS~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sinal_Atrio|s4|qS~regout\,
	combout => \Sinal_Atrio|s4|qS~0_combout\);

-- Location: LCFF_X16_Y34_N9
\Sinal_Atrio|s4|qS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Sinal_Atrio|s3|ALT_INV_qS~regout\,
	datain => \Sinal_Atrio|s4|qS~0_combout\,
	aclr => \SWA~1_combout\,
	ena => \SW16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Sinal_Atrio|s4|qS~regout\);

-- Location: LCCOMB_X15_Y34_N20
\SWA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SWA~0_combout\ = (\SA~combout\) # ((\Sinal_Atrio|s1|qS~regout\ & (!\Sinal_Atrio|s4|qS~regout\ & \Sinal_Atrio|s3|qS~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SA~combout\,
	datab => \Sinal_Atrio|s1|qS~regout\,
	datac => \Sinal_Atrio|s4|qS~regout\,
	datad => \Sinal_Atrio|s3|qS~regout\,
	combout => \SWA~0_combout\);

-- Location: LCCOMB_X16_Y35_N16
\Sinal_Ventriculo|s4|qS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Sinal_Ventriculo|s4|qS~0_combout\ = !\Sinal_Ventriculo|s4|qS~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sinal_Ventriculo|s4|qS~regout\,
	combout => \Sinal_Ventriculo|s4|qS~0_combout\);

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: LCCOMB_X15_Y34_N0
\SWV~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SWV~1_combout\ = (\SV~combout\) # ((\Reset~combout\) # (\SWV~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SV~combout\,
	datac => \Reset~combout\,
	datad => \SWV~0_combout\,
	combout => \SWV~1_combout\);

-- Location: LCFF_X16_Y35_N17
\Sinal_Ventriculo|s4|qS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Sinal_Ventriculo|s3|ALT_INV_qS~regout\,
	datain => \Sinal_Ventriculo|s4|qS~0_combout\,
	aclr => \SWV~1_combout\,
	ena => \SW16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Sinal_Ventriculo|s4|qS~regout\);

-- Location: LCCOMB_X14_Y34_N30
\Sinal_Ventriculo|s1|qS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Sinal_Ventriculo|s1|qS~0_combout\ = !\Sinal_Ventriculo|s1|qS~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sinal_Ventriculo|s1|qS~regout\,
	combout => \Sinal_Ventriculo|s1|qS~0_combout\);

-- Location: LCFF_X14_Y34_N31
\Sinal_Ventriculo|s1|qS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Sinal_Ventriculo|s0|ALT_INV_qS~regout\,
	datain => \Sinal_Ventriculo|s1|qS~0_combout\,
	aclr => \SWV~1_combout\,
	ena => \SW16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Sinal_Ventriculo|s1|qS~regout\);

-- Location: LCCOMB_X14_Y34_N14
\Sinal_Ventriculo|s0|qS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Sinal_Ventriculo|s0|qS~0_combout\ = !\Sinal_Ventriculo|s0|qS~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sinal_Ventriculo|s0|qS~regout\,
	combout => \Sinal_Ventriculo|s0|qS~0_combout\);

-- Location: LCFF_X14_Y34_N15
\Sinal_Ventriculo|s0|qS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Sinal_Ventriculo|s0|qS~0_combout\,
	aclr => \SWV~1_combout\,
	ena => \SW16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Sinal_Ventriculo|s0|qS~regout\);

-- Location: LCCOMB_X15_Y34_N22
\SWV~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SWV~0_combout\ = (\Sinal_Ventriculo|s3|qS~regout\ & (!\Sinal_Ventriculo|s4|qS~regout\ & (\Sinal_Ventriculo|s1|qS~regout\ & \Sinal_Ventriculo|s0|qS~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sinal_Ventriculo|s3|qS~regout\,
	datab => \Sinal_Ventriculo|s4|qS~regout\,
	datac => \Sinal_Ventriculo|s1|qS~regout\,
	datad => \Sinal_Ventriculo|s0|qS~regout\,
	combout => \SWV~0_combout\);

-- Location: LCCOMB_X15_Y34_N24
\SWA~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SWA~1_combout\ = (\Reset~combout\) # ((\SV~combout\) # ((\SWA~0_combout\) # (\SWV~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~combout\,
	datab => \SV~combout\,
	datac => \SWA~0_combout\,
	datad => \SWV~0_combout\,
	combout => \SWA~1_combout\);

-- Location: LCFF_X15_Y34_N31
\Sinal_Atrio|s3|qS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Sinal_Atrio|s2|ALT_INV_qS~regout\,
	datain => \Sinal_Atrio|s3|qS~0_combout\,
	aclr => \SWA~1_combout\,
	ena => \SW16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Sinal_Atrio|s3|qS~regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SA~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SA,
	combout => \SA~combout\);

-- Location: LCCOMB_X15_Y34_N26
\Sinal_Atrio|s0|qS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Sinal_Atrio|s0|qS~0_combout\ = !\Sinal_Atrio|s0|qS~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sinal_Atrio|s0|qS~regout\,
	combout => \Sinal_Atrio|s0|qS~0_combout\);

-- Location: LCFF_X15_Y34_N27
\Sinal_Atrio|s0|qS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Sinal_Atrio|s0|qS~0_combout\,
	aclr => \SWA~1_combout\,
	ena => \SW16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Sinal_Atrio|s0|qS~regout\);

-- Location: LCCOMB_X15_Y34_N28
\PA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PA~0_combout\ = (\Sinal_Atrio|s3|qS~regout\ & (!\SA~combout\ & (\Sinal_Atrio|s0|qS~regout\ & !\Sinal_Atrio|s4|qS~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sinal_Atrio|s3|qS~regout\,
	datab => \SA~combout\,
	datac => \Sinal_Atrio|s0|qS~regout\,
	datad => \Sinal_Atrio|s4|qS~regout\,
	combout => \PA~0_combout\);

-- Location: LCCOMB_X15_Y35_N16
\Sinal_Ventriculo|s3|qS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Sinal_Ventriculo|s3|qS~0_combout\ = !\Sinal_Ventriculo|s3|qS~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sinal_Ventriculo|s3|qS~regout\,
	combout => \Sinal_Ventriculo|s3|qS~0_combout\);

-- Location: LCFF_X15_Y35_N17
\Sinal_Ventriculo|s3|qS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Sinal_Ventriculo|s2|ALT_INV_qS~regout\,
	datain => \Sinal_Ventriculo|s3|qS~0_combout\,
	aclr => \SWV~1_combout\,
	ena => \SW16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Sinal_Ventriculo|s3|qS~regout\);

-- Location: LCCOMB_X15_Y34_N12
\PV~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PV~0_combout\ = (!\Sinal_Ventriculo|s4|qS~regout\ & (\Sinal_Ventriculo|s1|qS~regout\ & (\Sinal_Ventriculo|s3|qS~regout\ & !\SV~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sinal_Ventriculo|s4|qS~regout\,
	datab => \Sinal_Ventriculo|s1|qS~regout\,
	datac => \Sinal_Ventriculo|s3|qS~regout\,
	datad => \SV~combout\,
	combout => \PV~0_combout\);

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PA~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PA);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PV~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PV~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PV);
END structure;


