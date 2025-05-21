analyze -format vhdl ./synthesis_pad/VITAL_timing.vhd
analyze -format vhdl ./synthesis_pad/VITAL_Primitives.vhd
analyze -format vhdl ./synthesis_pad/prim.vhd
analyze -format vhdl ./synthesis_pad/pads_SS_s1vg.vhd
analyze -format vhdl ./source_code/polynomial_cfg.vhd
analyze -format vhdl ./source_code/polynomial.vhd
analyze -format vhdl ./source_code/polynomial_top.vhd

elaborate polynomial_top

check_design -multiple_designs
uniquify
set_dont_touch [find cell {outp* inp* pad* PAD*} -hier] true
create_clock "PAD_clock" -period 10
current_design polynomial_top
compile -map_effort high -boundary_optimization

write_sdc ./Synthesized/polynomial_top.sdc
write -format verilog -hierarchy -output ./Synthesized/polynomial_top.v
