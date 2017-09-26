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

architecture sim of tb_JKFF is

  component JKFF
  port (j_i : in std_logic;      	-- input j - single bit
		k_i : in std_logic;      	-- input k - single bit
		clk_i : in std_logic;		-- input clk - single bit
		r_i : in std_logic;		-- input r - single bit
        q_o : out std_logic);       -- output q - single bit
  end component;
  
  -- Declare the signals used stimulating the design's inputs.
signal j_i : std_logic;
signal k_i : std_logic;
signal clk_i : std_logic;
signal r_i : std_logic;
signal q_o : std_logic;

  
begin

  -- Instantiate the fulladder design for testing
  i_JKFF : JKFF
  port map              
    (j_i => j_i,
	 k_i => k_i,
	 clk_i => clk_i,
	 r_i => r_i,
	 q_o => q_o);
	 
  p_test : process
  begin
  
	r_i <= '1';
	j_i <= '0';
	k_i <= '0';
	wait for 100 ns;
	
	r_i <= '0';
	j_i <= '0';
	k_i <= '0';
	wait for 100 ns;
	
	r_i <= '0';
	j_i <= '1';
	k_i <= '0';
	wait for 100 ns;
	
	r_i <= '0';
	j_i <= '0';
	k_i <= '0';
	wait for 100 ns;
	
	r_i <= '0';
	j_i <= '0';
	k_i <= '1';
	wait for 100 ns;
	
	r_i <= '0';
	j_i <= '0';
	k_i <= '0';
	wait for 100 ns;
	
	r_i <= '0';
	j_i <= '1';
	k_i <= '1';
	wait for 100 ns;
	
	r_i <= '0';
	j_i <= '1';
	k_i <= '1';
	wait for 100 ns;

  end process p_test;
  
  p_clk : process
  begin
  
	  clk_i <= '0';
	  wait for 25 ns;
	  clk_i <= '1';
	  wait for 25 ns;
	  
  end process p_clk;

end sim;
