vsim -t ns -novopt -lib work work.tb_vectorgate_sim_cfg  
view *
do vectorgate_wave.do
run 1500 ns
