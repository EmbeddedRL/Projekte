-------------------------------------------------------------------------------
--                                                                      
--                        JKFF VHDL Class Example
--  
-------------------------------------------------------------------------------
--                                                                      
-- ENTITY:         tb_JKFF
--
-- FILENAME:       tb_JKFF_sim_cfg.vhd
-- 
-- ARCHITECTURE:   sim
-- 
-- ENGINEER:       Roland Höller
--
-- DATE:           30. June 2000
--
-- VERSION:        1.0
--
-------------------------------------------------------------------------------
--                                                                      
-- DESCRIPTION:    This is the configuration for the JKFF testbench
--                 of the JKFF VHDL class example.
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
-- CHANGES:        Version 2.0 - RH - 30 June 2000
--
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

configuration tb_JKFF_sim_cfg of tb_JKFF is
  for sim
    for i_JKFF : JKFF
      use configuration work.JKFF_rtl_cfg;
    end for;
  end for;
end tb_JKFF_sim_cfg;
