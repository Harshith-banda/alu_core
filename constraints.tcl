create_clock -name MYCLK -period 10 [get_ports clk]  
set_clock_latency -source 1 [get_clocks MYCLK]  
set_clock_latency 1 [get_clocks MYCLK]           
set_clock_uncertainty -setup 0.5 [get_clocks MYCLK]  
set_clock_uncertainty -hold 0.1 [get_clocks MYCLK]   
set_input_delay -max 3 -clock [get_clocks MYCLK] [get_ports {a[*]}]   
set_input_delay -min 1 -clock [get_clocks MYCLK] [get_ports {a[*]}]   
set_input_delay -max 3 -clock [get_clocks MYCLK] [get_ports {b[*]}]  
set_input_delay -min 1 -clock [get_clocks MYCLK] [get_ports {b[*]}]  
set_input_delay -max 3 -clock [get_clocks MYCLK] [get_ports {op[*]}]  
set_input_delay -min 1 -clock [get_clocks MYCLK] [get_ports {op[*]}]  
set_input_transition -max 0.4 [get_ports {a[*]}]  
set_input_transition -min 0.1 [get_ports {a[*]}]  
set_input_transition -max 0.4 [get_ports {b[*]}] 
set_input_transition -min 0.1 [get_ports {b[*]}]  
set_input_transition -max 0.4 [get_ports {op[*]}] 
set_input_transition -min 0.1 [get_ports {op[*]}] 
set_load -max 0.4 [get_ports {result[*]}] 
set_load -min 0.1 [get_ports {result[*]}]  
