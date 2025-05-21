# Cadence_Polynomial_Solver
This repository showcases a project I did based on my interest in advanced integrated circuit design, featuring two major components developed using Cadence tools: a Polynomial Solver, and a Ring Oscillator.

1: Polynomial Solver Hardware Implementation
A custom digital circuit that computes the value of a cubic polynomial (y = ax³ + bx² + cx + d) with the option to add custom values to compute. The design and functioanlity of this was confirmed using a C - based program parsing through different hardware complications, as logical errors that could arise.

The design includes:

- VHDL implementation of the polynomial solver
- RTL synthesis and verification
- Place-and-route using Cadence Innovus
- Timing analysis (pre-CTS, post-CTS, and post-route)
- Physical verification (DRC/LVS clean)
- Computes the maximum clock frequency (speed) that depends by polynomial


2: Ring Oscillator and Boolean Gate Analysis
A series of analog/mixed-signal experiments including:

- NAND-based ring oscillator design
- Transistor sizing optimization (parametric sweeps for optimal PMOS width)
- Propagation delay analysis
- Process corner simulations (fast-fast, slow-slow, MC)
- Custom layout design with DRC/LVS clean results
- Achieved oscillation frequencies as high as 3.26 GHz


Key Skills Demonstrated:
- Digital Design:
  - VHDL coding
  - RTL synthesis
  - Timing constraints
  
- Analog Design:
  - Transistor-level optimization
  - Process corner analysis
    
- Physical Implementation:
  - Floorplanning
  - Placement
  - Metal Routing
    
- Verification:
  - DRC
  - LVS
  - Pre/Post-layout simulation
  - C/C++

- Analysis:
  - Timing characterization
  - Power estimation and optimization

- Tools:
-   Cadence Virtuoso
-   Innovus
-   ModelSim
-   CAD


