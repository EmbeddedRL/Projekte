-------------------------------------------------------------------------------
--                                                                      
--                        AND 2 data busses VHDL Class Example
--  
-------------------------------------------------------------------------------
--                                                                      
-- ENTITY:         DFF
--
-- FILENAME:       DFF_.vhd
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

entity DFF is
  port (d_i : in std_logic;      	-- input d - single bit
		clk_i : in std_logic;		-- input clk - single bit
		r_i : in std_logic;		-- input r - single bit
        q_o : out std_logic);     -- output q - single bit
end DFF;

