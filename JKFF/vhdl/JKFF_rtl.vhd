-------------------------------------------------------------------------------
--                                                                      
--                        AND 2 data busses VHDL Class Example
--  
-------------------------------------------------------------------------------
--                                                                      
-- ENTITY:         JKFF
--
-- FILENAME:       JKFF_rtl.vhd
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

architecture rtl of JKFF is

signal q_buf : std_logic;

begin

	q_o <= q_buf;
	
	p_JKFF : process(clk_i,r_i)
	begin
		
		if r_i='1' then --asynchronous reset
			q_buf <= '0';
			
		elsif clk_i = '1' and clk_i'event then
		
			if j_i = '0' and k_i = '0' then
				q_buf <= q_buf;
			elsif j_i = '1' and k_i = '0' then
				q_buf <= '1';
			elsif j_i = '0' and k_i = '1' then
				q_buf <= '0';
			elsif j_i = '1' and k_i = '1' then
				q_buf <= not q_buf;
			end if;
			--ololol
		end if;
	
	end process p_JKFF;
end rtl;
