-------------------------------------------------------------------------------
--                                                                      
--                        AND 2 data busses VHDL Class Example
--  
-------------------------------------------------------------------------------
--                                                                      
-- ENTITY:         vectorgate
--
-- FILENAME:       vectorgate_rtl.vhd
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

architecture rtl of vectorgate is
begin
  -- generate the output d_o from the inputs a_i and b_i
  d_o <= a_i and b_i;
  -- generate the output d2_o from the inputs a_i and b_i
  d2_o(31 downto 16)<= a_i(31 downto 16) and b_i(31 downto 16);
  d2_o(15 downto 0)<= a_i(15 downto 0) or b_i(15 downto 0);
  -- generate the output h_o from the upper 16bit word of the inputs a_i and b_i
  h_o <= a_i(31 downto 16) and b_i(31 downto 16);
  -- generate the output h_o from the lower 16bit word of the inputs a_i and b_i
  l_o <= a_i(15 downto 0) or b_i(15 downto 0);
  -- generate the output e_o from the inputs c_i and d_i
  e_o <= c_i xor d_i;
  
end rtl;
