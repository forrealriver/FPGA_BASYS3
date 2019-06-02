proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param xicom.use_bs_reader 1
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.cache/wt [current_project]
  set_property parent.project_path C:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.xpr [current_project]
  set_property ip_repo_paths {
  c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.cache/ip
  C:/Users/WZJ/Desktop/zuiyong/Digital-Design-Lab-master/Chapter_12/Digital_camera/files/HDL_source/IP_Catalog
  C:/Users/WZJ/Desktop/zuiyong/program/HDL_source
  C:/Users/WZJ/Desktop/zuiyong/program
} [current_project]
  set_property ip_output_repo c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.cache/ip [current_project]
  set_property XPM_LIBRARIES XPM_MEMORY [current_project]
  add_files -quiet C:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.runs/synth_1/design_1_wrapper.dcp
  add_files -quiet c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/IICctrl_0/IICctrl_0.dcp
  set_property netlist_only true [get_files c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/IICctrl_0/IICctrl_0.dcp]
  add_files -quiet c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.dcp
  set_property netlist_only true [get_files c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.dcp]
  add_files -quiet c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/cam_ov7670_ov7725_0/cam_ov7670_ov7725_0.dcp
  set_property netlist_only true [get_files c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/cam_ov7670_ov7725_0/cam_ov7670_ov7725_0.dcp]
  add_files -quiet c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp
  set_property netlist_only true [get_files c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp]
  add_files -quiet c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/ov7725_regData_0/ov7725_regData_0.dcp
  set_property netlist_only true [get_files c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/ov7725_regData_0/ov7725_regData_0.dcp]
  add_files -quiet c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/vga_0/vga_0.dcp
  set_property netlist_only true [get_files c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/vga_0/vga_0.dcp]
  add_files -quiet c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/sqrt/sqrt.dcp
  set_property netlist_only true [get_files c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/sqrt/sqrt.dcp]
  add_files -quiet c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1.dcp
  set_property netlist_only true [get_files c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1.dcp]
  read_xdc -mode out_of_context -ref blk_mem_gen_0 -cells U0 c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_ooc.xdc]
  read_xdc -mode out_of_context -ref clk_wiz_0 -cells inst c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]
  read_xdc -prop_thru_buffers -ref clk_wiz_0 -cells inst c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
  read_xdc -ref clk_wiz_0 -cells inst c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc
  set_property processing_order EARLY [get_files c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
  read_xdc -mode out_of_context -ref sqrt -cells U0 c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/sqrt/sqrt_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/sqrt/sqrt_ooc.xdc]
  read_xdc -mode out_of_context -ref blk_mem_gen_1 -cells U0 c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_ooc.xdc]
  read_xdc C:/Users/WZJ/Desktop/zuiyong/program/ov7725/ov7725/ov7725.srcs/constrs_1/imports/Constraint/cam_bram_vga.xdc
  link_design -top design_1_wrapper -part xc7a35tcpg236-1
  write_hwdef -file design_1_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force design_1_wrapper_opt.dcp
  report_drc -file design_1_wrapper_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force design_1_wrapper_placed.dcp
  report_io -file design_1_wrapper_io_placed.rpt
  report_utilization -file design_1_wrapper_utilization_placed.rpt -pb design_1_wrapper_utilization_placed.pb
  report_control_sets -verbose -file design_1_wrapper_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force design_1_wrapper_routed.dcp
  report_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file design_1_wrapper_timing_summary_routed.rpt -rpx design_1_wrapper_timing_summary_routed.rpx
  report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx
  report_route_status -file design_1_wrapper_route_status.rpt -pb design_1_wrapper_route_status.pb
  report_clock_utilization -file design_1_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force design_1_wrapper.mmi }
  write_bitstream -force design_1_wrapper.bit 
  catch { write_sysdef -hwdef design_1_wrapper.hwdef -bitfile design_1_wrapper.bit -meminfo design_1_wrapper.mmi -file design_1_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

