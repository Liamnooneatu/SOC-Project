---
layout: home
title: FPGA VGA Driver Project
tags: fpga vga verilog by Liam Noone
categories: demo

This is my Project i have created in **Vivado** that displays a Metallica logo. Vivado was created **Xillinx** and then they were purchased by **AMD**.
This Project is used to show skills i have learned using Vivado with  **VGA** and **FPGA** (*Field Programmable Gate Arrays*), **VGA** stands for *Video Graphics Array*.
A **VGA** Controller is the main component of Video Signal generator responsible for video signal production. It uses *analog singal* for displaying frames onto the display.
Here is my FPGA VGA Driver Project that contains information and code regarding the possibilites of the  basys3 board.

## **VGA Design**
### **Project Set-Up**
Enter Vivado and create a new project and select desired starting files ( we were given colour stripes and colourcycle.v files). Once you are happy with you setup make sure design sources has the correct amount of files (common bug).
Then you can then run your simulatioin and complete a Synthesis to check for syntax errors and basic logic compatibility. After successful synthesis and implementation you can then Generate a Bitstream. You then plug the vga cable ionto your board and monitor and upload the file and you can view your creation. These are the main files i utilized in the project.

![sample1](https://github.com/user-attachments/assets/6b66928d-ddeb-4882-9670-51b33e3257b0)
![vgasync](https://github.com/user-attachments/assets/81b224ca-3b8e-4f32-80c4-a58647f63a57)


### **Template Code**
This is what most of my coding with Verilog looked like, fixing my Testbench in the Simulation. On the left hand side of the screen you can see my files in **design sources** and the main file i was utilizing was the **colour stripes** and **VGA top** which i kept as the same name for convinience. On the right side of the screen you can see my **Colour stripes** file that i was editing at the time, i was configuring the lightining bolt starting positon that i could use. Colour stripes was the main file i was working on but i did end up making some minor changes when begining the project in *VGA TOP*.
---![sample1](https://github.com/user-attachments/assets/ebb3ae66-4b99-4646-9856-f27e2587bdfa)

Outline the structure and design of the Verilog code templates you were given. What do they do? Include reference to how a VGA interface works. Guideline: 2/3 short paragraphs, consider including screenshot(s).
### **Simulation**
The Simulation verifies the functionality of your program before implementation. Using testbench you can simulate your VGA controller by providing input clock signals and observing outputs like hsync, vsync, and RGB signals. The simulation allows you to confirm if there are bugs or errors withing the program. For example, ensure horizontal and vertical sync pulses match the VGA timing standard.
![schematic](https://github.com/user-attachments/assets/7ea4f9ca-57b5-484f-8721-8a83ad56c5ef)

Explain the simulation process. Reference any important details, include a well-selected screenshot of the simulation. Guideline: 1/2 short paragraphs.
### **Synthesis**
The synthesis process converts your Verilog RTL code into a netlist, describing how the hardware components are connected. It ensures the design meets logical requirements and hardware constraints. Implementation maps this netlist to the FPGA resources. Ensuring no warnings or errors appear after synthesis. after synthesis and implementation you can view reports to check resource utilization and timing analysis.

![Snip of  graph](https://github.com/user-attachments/assets/f5708315-a31b-425e-96b2-338152597b38)


Describe the synthesis and implementation processes. Consider including 1/2 useful screenshot(s). Guideline: 1/2 short paragraphs.
### **Demonstration**
This was the work in progress i had for the metallcia lettering the M letter was the most difficult to line up as using diagonal bars instead of vertical and horizontal has to 
Perhaps add a picture of your demo. Guideline: 1/2 sentences.
![20241203_140447307_iOS](https://github.com/user-attachments/assets/ef1ee899-3872-4967-9c78-f0ba24a82c85)
![20241203_151303494_iOS](https://github.com/user-attachments/assets/401f3321-5bbc-447d-98a6-ba5c482789e8)

## **My VGA Design Edit**
for my project i had the idea for a metallica logo and wanted to make the lettering similar to the classic logo. I took inspiration from some photos online including this one. 
(  https://static.wikia.nocookie.net/metal-central/images/6/69/18122-1366x768.jpg/revision/latest?cb=20131229034257  ). Making the lettering started off very difficult because the dimensions for vertical and horizontal were very close,
which made it harder to get lined up correctly. 
Introduce your own design idea. Consider how complex/achievabble this might be or otherwise. Reference any research you do online (use hyperlinks).


### **Code Adaptation**
This is my Working code i used
![code1](https://github.com/user-attachments/assets/2ff2ae4b-2982-4dc3-9fcd-f3662d663f78)
![code2](https://github.com/user-attachments/assets/4b584eb1-7732-42fb-b3d8-0b6116a05635)
![code3](https://github.com/user-attachments/assets/35e4b5a1-1aed-4c0c-9939-ae1e2cffb986)
![code4](https://github.com/user-attachments/assets/c385340f-f066-46d8-986c-7d7065fe1fea)
![code5](https://github.com/user-attachments/assets/74071219-adeb-46d1-9367-56b91a7b1478)
Briefly show how you changed the template code to display a different image. Demonstrate your understanding. Guideline: 1-2 short paragraphs.
### **Simulation**
Show how you simulated your own design. Are there any things to note? Demonstrate your understanding. Add a screenshot. Guideline: 1-2 short paragraphs.
### **Synthesis**
Describe the synthesis & implementation outputs for your design, are there any differences to that of the original design? Guideline 1-2 short paragraphs.
### **Demonstration**
If you get your own design working on the Basys3 board, take a picture! Guideline: 1-2 sentences.

The first imgae i created was the colour cycle , then the colour stripes and finally the metallica logo.

<img src="https://github.com/Liamnooneatu/SOC-Project/blob/main/20241126_140116209_iOS.jpg">
<img src="https://raw.githubusercontent.com/Liamnooneatu/SOC-Project/blob/main/docs/assets/images/20241126_140116209_iOS.jpg">
## **More Markdown Basics**
This is a paragraph. Add an empty line to start a new paragraph.

Font can be emphasised as *Italic* or **Bold**.

Code can be highlighted by using `backticks`.

Hyperlinks look like this: [GitHub Help](https://help.github.com/).

A bullet list can be rendered as follows:
- vectors
- algorithms
- iterators

Images can be added by uploading them to the repository in a /docs/assets/images folder, and then rendering using HTML via githubusercontent.com as shown in the example below.

<img src="https://raw.githubusercontent.com/melgineer/fpga-vga-verilog/main/docs/assets/images/VGAPrjSrcs.png">
