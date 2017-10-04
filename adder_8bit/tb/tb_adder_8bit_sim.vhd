-------------------------------------------------------------------------------
--                                                                      
--                        Fulladder VHDL Class Example
--  
-------------------------------------------------------------------------------
--                                                                      
-- ENTITY:         tb_fulladder
--
-- FILENAME:       tb_fulladder_sim.vhd
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
-- DESCRIPTION:    This is the architecture of the fulladder testbench
--                 for the fulladder VHDL class example.
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

architecture sim of tb_adder_8bit is

  component adder_8bit
  port (data0_i : in std_logic_vector(7 downto 0);  -- input data - 8bit bus
        data1_i : in std_logic_vector(7 downto 0);	-- input data - 8bit bus
		sum_o   : out std_logic_vector(7 downto 0);	-- output data - 8bit bus
		cy_o    : out std_logic);					-- carry out data - 1bit
  end component;
  
  -- Declare the signals used stimulating the design's inputs.
signal data0_i : std_logic_vector(7 downto 0);
signal data1_i : std_logic_vector(7 downto 0);
signal sum_o : std_logic_vector(7 downto 0);
signal cy_o : std_logic;

  
begin

  -- Instantiate the fulladder design for testing
  i_adder_8bit : adder_8bit
  port map              
    (data0_i => data0_i,
	 data1_i => data1_i,
	 sum_o   => sum_o,
	 cy_o    => cy_o);
	 
  p_test : process
  begin
	
	data0_i <= x"00";
	data1_i <= x"00";
	wait for 10 ns;
	
	data0_i <= x"3B";
	data1_i <= x"C0";
	wait for 10 ns;
	
	data0_i <= x"80";
	data1_i <= x"80";
	wait for 10 ns;
	
	data0_i <= x"3B";
	data1_i <= x"67";
	wait for 10 ns;
	
	
  end process;

end sim;
