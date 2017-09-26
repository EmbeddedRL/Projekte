-------------------------------------------------------------------------------
--                                                                      
--                        AND 2 data busses VHDL Class Example
--  
-------------------------------------------------------------------------------
--                                                                      
-- ENTITY:         vectorgate
--
-- FILENAME:       vectorgate_.vhd
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

entity vectorgate is
  port (a_i : in std_logic_vector(31 downto 0);      -- input a - 32bit bus
        b_i : in std_logic_vector(31 downto 0);      -- input b - 32bit bus
		c_i : in std_logic;							 -- input c - single bit
		d_i : in std_logic;							 -- input d - single bit
        d_o : out std_logic_vector(31 downto 0);	 -- output d - 32bit bus
		d2_o : out std_logic_vector(31 downto 0);	 -- output d2 - 32bit bus
		h_o : out std_logic_vector(15 downto 0); 	 -- output h - 16bit bus
		l_o : out std_logic_vector(15 downto 0);	 -- output l - 16bit bus	
		e_o : out std_logic);    					 -- output e - single bit
end vectorgate;

