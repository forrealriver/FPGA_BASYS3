# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {F:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program/ov7725/ov7725/ov7725.cache/wt} [current_project]
set_property parent.project_path {F:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program/ov7725/ov7725/ov7725.xpr} [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  {f:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/Digital-Design-Lab-master/Chapter_12/Digital_camera/files/HDL_source/IP_Catalog}
  {f:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program/HDL_source}
  {f:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program}
} [current_project]
read_ip -quiet {{F:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/cam_ov7670_ov7725_0/cam_ov7670_ov7725_0.xci}}
set_property is_locked true [get_files {{F:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/cam_ov7670_ov7725_0/cam_ov7670_ov7725_0.xci}}]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top cam_ov7670_ov7725_0 -part xc7a35tcpg236-1 -mode out_of_context

rename_ref -prefix_all cam_ov7670_ov7725_0_

write_checkpoint -force -noxdef cam_ov7670_ov7725_0.dcp

catch { report_utilization -file cam_ov7670_ov7725_0_utilization_synth.rpt -pb cam_ov7670_ov7725_0_utilization_synth.pb }

if { [catch {
  file copy -force {F:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program/ov7725/ov7725/ov7725.runs/cam_ov7670_ov7725_0_synth_1/cam_ov7670_ov7725_0.dcp} {F:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/cam_ov7670_ov7725_0/cam_ov7670_ov7725_0.dcp}
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub {F:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/cam_ov7670_ov7725_0/cam_ov7670_ov7725_0_stub.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub {F:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/cam_ov7670_ov7725_0/cam_ov7670_ov7725_0_stub.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim {F:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/cam_ov7670_ov7725_0/cam_ov7670_ov7725_0_sim_netlist.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim {F:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/cam_ov7670_ov7725_0/cam_ov7670_ov7725_0_sim_netlist.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir {F:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program/ov7725/ov7725/ov7725.ip_user_files/ip/cam_ov7670_ov7725_0}]} {
  catch { 
    file copy -force {{F:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/cam_ov7670_ov7725_0/cam_ov7670_ov7725_0_stub.v}} {F:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program/ov7725/ov7725/ov7725.ip_user_files/ip/cam_ov7670_ov7725_0}
  }
}

if {[file isdir {F:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program/ov7725/ov7725/ov7725.ip_user_files/ip/cam_ov7670_ov7725_0}]} {
  catch { 
    file copy -force {{F:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/cam_ov7670_ov7725_0/cam_ov7670_ov7725_0_stub.vhdl}} {F:/1___study/1___study/FPGA/The edge of the recognition/new/new/program/program/ov7725/ov7725/ov7725.ip_user_files/ip/cam_ov7670_ov7725_0}
  }
}
