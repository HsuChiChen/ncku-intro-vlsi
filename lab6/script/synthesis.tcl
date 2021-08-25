gui_start

read_file {../include ../src} -autoread -recursive -format verilog -top system

current_design system

source ../script/DC.sdc

check_timing

compile -map_effort high

remove_unconnected_ports -blast_buses [get_cells * -hier]


write -hierarchy -format verilog -output ../syn/system_syn.v
write_sdf -version 2.1 -context verilog -load_delay net ../syn/system_syn.sdf

report_timing -path full -delay max -nworst 1 -max_paths 1 -significant_digits 2 -sort_by group > setup.log
report_timing -path full -delay min -nworst 1 -max_paths 1 -significant_digits 2 -sort_by group > hold.log
report_area > area.log
report_power > power.log

