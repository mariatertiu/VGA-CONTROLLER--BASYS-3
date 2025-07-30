# VGA-CONTROLLER--BASYS-3
# Full HD VGA Display Controller in Verilog (1920x1080 @ 60Hz)

This project implements a Verilog-based VGA display controller capable of rendering graphics at Full HD resolution (1920x1080) with a 60 Hz refresh rate. The design is developed for the Digilent Basys3 FPGA board and demonstrates real-time interaction through user-controlled movement of a circle across the screen.

## Overview

The system generates precise VGA synchronization signals compatible with 1080p monitors and displays a red circle whose position is controlled by push buttons on the FPGA board. The circle can be moved up, down, left, or right within the screen boundaries. All modules are written in Verilog and organized using a modular design approach, promoting readability and extensibility.

## Key Features

- VGA signal generation for 1920x1080 resolution at 60 Hz
- Red circle rendered on screen with real-time user control
- Button-based navigation (Up, Down, Left, Right)
- Clean modular architecture with synchronization, control, and display components
- Rising-edge detection to ensure single-step movement per button press
- Designed and tested on the Basys3 FPGA board with a 60 MHz input clock

## Technical Highlights

- **Resolution**: 1920x1080 (Full HD)
- **Frame rate**: 60 Hz
- **Clock**: 60 MHz input clock
- **Synchronization**: Horizontal and vertical sync signals conforming to VGA standards
- **Control Logic**: User inputs are debounced and edge-detected for reliable circle movement
- **Modularity**: Separated logic for video timing, object control, and input processing

## Usage

1. Open the project in Vivado and add the Verilog source files.
2. Apply the appropriate XDC constraints for clock, VGA pins, and push buttons.
3. Run synthesis, implementation, and generate the bitstream.
4. Program the Basys3 board and connect a VGA display.
5. Use the push buttons to interactively move the circle across the screen.

## Applications

This project serves as a learning foundation for:

- Understanding VGA signal generation
- Creating interactive visual elements on FPGA
- Developing modular Verilog designs with timing constraints
- Expanding toward more complex graphics systems (e.g., games or UI)
## Demo



https://github.com/user-attachments/assets/0cc7a219-b878-4dba-bf7d-3589daf663ec


