# FPGA VGA Driver Project by Liam Noone

This project demonstrates an FPGA VGA Driver developed in Vivado to display a Metallica logo. It showcases skills in working with VGA and FPGA technology using the Basys3 board. Vivado, created by Xilinx (now acquired by AMD), provided the platform for this project. The primary objective was to implement a VGA controller for producing video signals, an essential feature for displaying frames on a monitor via analog signals.

---

## VGA Design

### Introduction to VGA

VGA (**V**ideo **G**raphics **A**rray) is a display interface standard that uses analog signals to render images on a display. A VGA controller generates horizontal and vertical sync signals (`hsync` and `vsync`) and RGB values to control pixel color on the screen.

The VGA Controller consists of:
- **Timing Generation:** Synchronizes the display.
- **Signal Output:** Produces analog RGB signals for the monitor.

### Project Setup
1. **Create a New Vivado Project:**
   - Start Vivado and create a new project.
   - Add the provided design source files ( we were given `colour_stripes.v` and `colourcycle.v` ).
2. **Verify Design Sources:**
   - Ensure all required files are in the design sources (a bug can occur where certain files are in the wrong area).
3. **Run Simulation:**
   - Simulate the design to check functionality. to ensure it is working with no errors
4. **Perform Synthesis:**
   - Generate the netlist and ensure there are no syntax errors.
5. **Generate Bitstream:**
   - Load the design onto the Basys 3 Artix-7 FPGA Trainer Board and connect the VGA cable and usb cable.

![Sample Vivado Design](https://github.com/user-attachments/assets/6b66928d-ddeb-4882-9670-51b33e3257b0)

### Main Files
- **`colour_stripes.v`:** Responsible for rendering color bars on the display.
- **`vga_top.v`:** Integrates the VGA controller and generates output signals.

```verilog
always @(posedge clk) begin
    if (reset) 
        count <= 0;
    else
        count <= count + 1;
end
```

---

## Simulation

Simulation verifies the functionality of your design. Using a testbench, input clock signals and observe outputs like `hsync`, `vsync`, and RGB signals. This ensures the design adheres to VGA timing standards and allows you to debug issues before implementation.

![Simulation Example](https://github.com/user-attachments/assets/7ea4f9ca-57b5-484f-8721-8a83ad56c5ef)

---

## Synthesis and Implementation

Synthesis converts your Verilog RTL code into a netlist that maps logical functions to FPGA resources. Implementation ensures that this netlist fits into the physical constraints of the Basys3 board.

Steps:
1. **Synthesis:**
   - Check for warnings or errors in the logic design.
2. **Implementation:**
   - Map the design to FPGA components and run timing analysis.

### Resource Utilization
| Resource | Usage         |
|----------|---------------|
| LUTs     | 30%           |
| Flip-Flops | 20%         |
| IO Pins  | 50%           |

![Synthesis Report](https://github.com/user-attachments/assets/f5708315-a31b-425e-96b2-338152597b38)

---

## Custom Design: Metallica Logo

### Idea
The goal was to create a Metallica-inspired logo using the VGA interface. The design featured diagonal and horizontal bars to replicate the iconic lettering.

![Inspiration](https://static.wikia.nocookie.net/metal-central/images/6/69/18122-1366x768.jpg)

Challenges included aligning diagonal bars and ensuring proportional dimensions due to the pixel resolution limitations of VGA.

### Code Adaptation
The provided `colour_stripes.v` file was modified to:
- Set the starting position of the lightning bolt.
- Adjust color transitions for the Metallica logo.

```verilog
if ((x > 100 && x < 150) && (y > 200 && y < 250)) begin
    red <= 1;
    green <= 0;
    blue <= 0;
end
```

### Simulation and Testing
Using the testbench, the modified design was simulated to verify correct `hsync` and `vsync` signal timing, ensuring no flickering or stuttering happened to the logo.

---

##  Code
![code1](https://github.com/user-attachments/assets/b1f1abf7-16c7-4141-9fa1-d061f499fe6d)
![code2](https://github.com/user-attachments/assets/5b68ec4b-c767-4cd0-a1e0-b1ef103ac2cf)
![code3](https://github.com/user-attachments/assets/8c3ebe98-1f35-4549-9f8f-18f6ca0de304)
![code4](https://github.com/user-attachments/assets/6be69702-3796-47f3-8fe8-bf43f8337940)
![code5](https://github.com/user-attachments/assets/c9525b6b-1e51-4f45-8b0b-7b306db54c37)


## Demonstration

The final design was successfully loaded onto the Basys3 board. Below are images of the Metallica logo displayed:

![Demo Image 1](https://github.com/Liamnooneatu/SOC-Project/blob/main/20241126_140116209_iOS.jpg)
![Demo Image 2](https://github.com/Liamnooneatu/SOC-Project/blob/main/20241203_151303494_iOS.jpg)

---

## Markdown Basics

This is a paragraph. Add an empty line to start a new paragraph.

Font can be emphasized as *Italic* or **Bold**.

Code can be highlighted by using `backticks`.

Hyperlinks look like this: [GitHub Help](https://help.github.com/).

A bullet list can be rendered as follows:
- Vectors
- Algorithms
- Iterators

Images can be added by uploading them to the repository in a `/docs/assets/images` folder, then rendering using Markdown syntax:

```markdown
![Image Description](https://raw.githubusercontent.com/melgineer/fpga-vga-verilog/main/docs/assets/images/VGAPrjSrcs.png)
