vsim -t ns -novopt -lib work work.tb_JKFF_sim_cfg  
view *
do JKFF_wave.do
run 3000 ns
