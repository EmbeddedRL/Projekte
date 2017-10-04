-------------------------------------------------------------------------------
--                                                                      
--                        adder_8bit VHDL Class Example
--  
-------------------------------------------------------------------------------
--                                                                      
-- ENTITY:         tb_adder_8bit
--
-- FILENAME:       tb_adder_8bit_sim_cfg.vhd
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
-- DESCRIPTION:    This is the configuration for the adder_8bit testbench
--                 of the adder_8bit VHDL class example.
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

configuration tb_adder_8bit_sim_cfg of tb_adder_8bit is
  for sim
    for i_adder_8bit : adder_8bit
      use configuration work.adder_8bit_rtl_cfg;
    end for;
  end for;
end tb_adder_8bit_sim_cfg;
