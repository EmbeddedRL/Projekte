-------------------------------------------------------------------------------
--                                                                      
--                        vectorgate VHDL Class Example
--  
-------------------------------------------------------------------------------
--                                                                      
-- ENTITY:         tb_vectorgate
--
-- FILENAME:       tb_vectorgate_sim_cfg.vhd
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
-- DESCRIPTION:    This is the configuration for the vectorgate testbench
--                 of the vectorgate VHDL class example.
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

configuration tb_vectorgate_sim_cfg of tb_vectorgate is
  for sim
    for i_vectorgate : vectorgate
      use configuration work.vectorgate_rtl_cfg;
    end for;
  end for;
end tb_vectorgate_sim_cfg;
