-------------------------------------------------------------------------------
--                                                                      
--                        AND 2 data busses VHDL Class Example
--  
-------------------------------------------------------------------------------
--                                                                      
-- ENTITY:         adder_8bit
--
-- FILENAME:       adder_8bit_.vhd
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

entity adder_8bit is
  port (data0_i : in std_logic_vector(7 downto 0);  -- input data - 8bit bus
        data1_i : in std_logic_vector(7 downto 0);	-- input data - 8bit bus
		sum_o : out std_logic_vector(7 downto 0);	-- output data - 8bit bus
		cy_o : out std_logic						-- carry out data - 1bit
		);					
end adder_8bit;

