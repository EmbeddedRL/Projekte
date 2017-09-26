onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb_JKFF/clk_i
add wave -noupdate -format Logic /tb_JKFF/r_i
add wave -noupdate -format Logic /tb_JKFF/j_i
add wave -noupdate -format Logic /tb_JKFF/k_i
add wave -noupdate -format Logic /tb_JKFF/q_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {0 ps}
WaveRestoreZoom {0 ps} {1 ns}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -signalnamewidth 0
configure wave -justifyvalue left
