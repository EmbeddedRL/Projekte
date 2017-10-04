vsim -t ns -novopt -lib work work.tb_adder_8bit_sim_cfg  
view *
do adder_8bit_wave.do
run 500 ns
