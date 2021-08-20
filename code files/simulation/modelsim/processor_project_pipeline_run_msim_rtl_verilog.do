transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/alex/verilog_codes/processor_project_pipeline {/home/alex/verilog_codes/processor_project_pipeline/IM_pp.v}
vlog -vlog01compat -work work +incdir+/home/alex/verilog_codes/processor_project_pipeline {/home/alex/verilog_codes/processor_project_pipeline/AL.v}
vlog -vlog01compat -work work +incdir+/home/alex/verilog_codes/processor_project_pipeline {/home/alex/verilog_codes/processor_project_pipeline/SE816.v}
vlog -vlog01compat -work work +incdir+/home/alex/verilog_codes/processor_project_pipeline {/home/alex/verilog_codes/processor_project_pipeline/SE516.v}
vlog -vlog01compat -work work +incdir+/home/alex/verilog_codes/processor_project_pipeline {/home/alex/verilog_codes/processor_project_pipeline/mod1.v}
vlog -vlog01compat -work work +incdir+/home/alex/verilog_codes/processor_project_pipeline {/home/alex/verilog_codes/processor_project_pipeline/flag_pp.v}
vlog -vlog01compat -work work +incdir+/home/alex/verilog_codes/processor_project_pipeline {/home/alex/verilog_codes/processor_project_pipeline/alu_pp.v}
vlog -vlog01compat -work work +incdir+/home/alex/verilog_codes/processor_project_pipeline {/home/alex/verilog_codes/processor_project_pipeline/adder_pp.v}
vlog -vlog01compat -work work +incdir+/home/alex/verilog_codes/processor_project_pipeline {/home/alex/verilog_codes/processor_project_pipeline/RF_pp.v}
vlog -vlog01compat -work work +incdir+/home/alex/verilog_codes/processor_project_pipeline {/home/alex/verilog_codes/processor_project_pipeline/mod0.v}
vlog -vlog01compat -work work +incdir+/home/alex/verilog_codes/processor_project_pipeline {/home/alex/verilog_codes/processor_project_pipeline/controller_pp.v}
vlog -vlog01compat -work work +incdir+/home/alex/verilog_codes/processor_project_pipeline {/home/alex/verilog_codes/processor_project_pipeline/DM_pp.v}
vlog -vlog01compat -work work +incdir+/home/alex/verilog_codes/processor_project_pipeline {/home/alex/verilog_codes/processor_project_pipeline/processor_project_pipeline.v}
vlog -vlog01compat -work work +incdir+/home/alex/verilog_codes/processor_project_pipeline {/home/alex/verilog_codes/processor_project_pipeline/hazard_control_pp.v}

vlog -vlog01compat -work work +incdir+/home/alex/verilog_codes/processor_project_pipeline {/home/alex/verilog_codes/processor_project_pipeline/pp_pipeline_tb1.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  pp_pipeline_tb1

add wave *
view structure
view signals
run -all
