----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2024 11:20:23 AM
-- Design Name: 
-- Module Name: polynomial - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

use work.polynomial_cfg.all;

entity polynomial is
generic (a :positive :=7; -- polynomial coefficients
	b :positive :=6;
	c :positive :=5;
	d :positive :=4;
	in_bits :positive :=6; -- resolution configuration
	out_bits :positive :=24);
port (clock, valid_in, reset :in std_logic;
	valid_out : out std_logic;
	x :in unsigned(in_bits-1 downto 0);
	y :out unsigned(out_bits-1 downto 0));
end entity polynomial;


architecture reference403 of polynomial is

-- pipeline intermediate signals
signal valid1 :std_logic; -- '1' follows valid input data through to result
signal x1 :unsigned(in_bits-1 downto 0);
signal y1 :unsigned(out_bits-1 downto 0);
signal x_squared : unsigned(2*in_bits-1 downto 0);
signal x_cubed : unsigned(3*in_bits-1 downto 0);


begin

x_squared <= x1 * x1;
x_cubed <= x_squared * x1;
y1 <= resize(d * x_cubed, y1'length) + (c * x_squared) + (b * x1) + a;

-- pipeline registers before and after polynomial
clocked: process is
begin
	wait until rising_edge(clock);
	if (reset = '1') then
		valid1 <= '0';
		valid_out <= '0';
		x1 <= (others => '0');
		y <= (others => '0');
	else
		x1 <= x;
		y <= y1;
		valid1 <= valid_in;
		valid_out <= valid1;
	end if;
end process clocked;

end reference403;

