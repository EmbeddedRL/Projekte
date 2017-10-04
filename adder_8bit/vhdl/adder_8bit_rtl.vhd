-------------------------------------------------------------------------------
--                                                                      
--                        AND 2 data busses VHDL Class Example
--  
-------------------------------------------------------------------------------
--                                                                      
-- ENTITY:         adder_8bit
--
-- FILENAME:       adder_8bit_rtl.vhd
-- 
-- ARCHITECTURE:   rtl
-- 
-- ENGINEER:       Reibenwein Lukas
--
-- DATE:           11. September 2017
--
-- VERSION:        1.0
--
-------------------------------------------------------------------------------
--                                                                      
-- DESCRIPTION:    
--
--
-------------------------------------------------------------------------------
--
-- REFERENCES:     (none)
--
-------------------------------------------------------------------------------
--                                                                      
-- PACKAGES:       std_logic_1164 (IEEE library)
--
-------------------------------------------------------------------------------
--                                                                      
-- CHANGES:        none
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture rtl of adder_8bit is

signal result : std_logic_vector(8 downto 0);

begin

		result <= std_logic_vector('0' & unsigned(data0_i) + unsigned(data1_i));
		sum_o(7 downto 0) <= result(7 downto 0);
		cy_o <= result(8);
		
	
end rtl;
