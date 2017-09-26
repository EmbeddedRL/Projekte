onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb_DFF/clk_i
add wave -noupdate -format Logic /tb_DFF/d_i
add wave -noupdate -format Logic /tb_DFF/r_i
add wave -noupdate -format Logic /tb_DFF/q_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {0 ps}
WaveRestoreZoom {0 ps} {1 ns}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -signalnamewidth 0
configure wave -justifyvalue left
