#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Mar 12 12:12:58 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.17-s075_1 (64bit) 03/15/2023 11:17 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.17-s075_1 NR230308-2354/21_17-UB (database version 18.20.604) {superthreading v2.17}
#@(#)CDS: AAE 21.17-s026 (64bit) 03/15/2023 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.17-s025_1 () Mar 14 2023 11:00:06 ( )
#@(#)CDS: SYNTECH 21.17-s007_1 () Feb 20 2023 06:56:35 ( )
#@(#)CDS: CPE v21.17-s068
#@(#)CDS: IQuantus/TQuantus 21.1.1-s939 (64bit) Wed Nov 9 09:34:24 PST 2022 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
help saveNetlist
set init_gnd_net VSS
set init_lef_file {../LEF/gsclib045_tech.lef ../LEF/gsclib045_macro.lef ../LEF/gsclib045_multibitsDFF.lef ../LEF/giolib045.lef}
set init_verilog ../Synthesized/polynomial_top.v
set init_io_file polynomial_top.io.prov
set init_top_cell polynomial_top
set init_pwr_net VDD
init_design
set init_gnd_net VSS
set init_lef_file {../LEF/gsclib045_tech.lef ../LEF/gsclib045_macro.lef ../LEF/gsclib045_multibitsDFF.lef ../LEF/giolib045.lef}
set init_verilog ../Synthesized/polynomial_top.v
set init_io_file polynomial.io.prov
set init_top_cell polynomial_top
set init_pwr_net VDD
init_design
man saveNetlist
