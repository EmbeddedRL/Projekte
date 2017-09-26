vsim -t ns -novopt -lib work work.tb_DFF_sim_cfg  
view *
do DFF_wave.do
run 3000 ns
