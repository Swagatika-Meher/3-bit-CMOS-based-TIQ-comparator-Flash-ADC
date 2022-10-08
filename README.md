# # Mixed Signal Circuit Design and Simulation Marathon
# 3-bit CMOS based TIQ comparator Flash ADC
* Abstract
* Reference Circuit Diagram
* Circuit Details
* TIQ Comparator
* Truth Table
* Designing Steps
* Software Used
* * eSim
* * NgSpice
* * Makerchip
* * Verilator
* Verilog Code
* Makerchip
* Makerchip Plots
* Generating Model for 8:3 Priority Encoder using NgVeri
* Circuit Diagram in eSim
* Netlists
* NgSpice Plots
* Steps to run and generate NgVeri Model
* Steps to run this project
* Acknowledgements
* References
# Abstract
This design describes a 3-bit high-speed and low-power Flash Analog to Digital Converter. The conventional Flash ADC contains the resistor ladder network, comparator, and encoder. Power consumption is higher in typical Flash ADCs since resistor ladder networks are used. The Threshold Inverter Quantization (TIQ) comparator and mux-based encoding technique has been employed in 3-bit Flash ADC to get over this problem and speed up the conversion rate. These designs increase speed and reduce power consumption by employing simply a series of inverters and multiplexers.
# Reference Circuit Diagram
Given attached is the block diagram for TIQ comparator based 3-bit Flash type ADC.

![diagram](https://user-images.githubusercontent.com/114692581/194697017-283623c1-a901-4f7f-9798-6264ac4d1deb.png)
                                                       
Fig:1 3-bit Flash ADC using TIQ Comparator
# Circuit Details
In TIQ technique, it uses two cascaded CMOS inverters as a comparator. While the second inverter serves as a gain booster, the first inverter internally creates reference voltage (Vref). As we adjust the size of CMOS, the cascading inverters produce various switching/reference voltages internally which serves as reference voltages. The purpose of TIQ comparator is to transform an input voltage (Vin) toward logic '1' or '0' by estimating a reference voltage (Vref) with the Vin. If Vin is greater than Vref, the comparator output is '1', otherwise '0'. This occurs when transistor width is altered while keeping the transistor length constant. The gain boosters create sharper thresholds for comparator outputs and offer a complete digital output voltage swing. The comparator outputs the thermometer code are turned to a binary code using 8:3 priority encoder. In this design, sine wave is given as input voltage with 20MHz frequency.
# TIQ Comparator
Two inverters are linked in series on the TIQ Comparator for comparing and balancing. The threshold voltage of the inverter circuits can be modified to provide different reference voltages by adjusting the width of PMOS and NMOS transistors. In analog section of 3-bit ADC, $\[{2^n} - 1\]$ comparators that is, 7 TIQ comparators are connected parallelly using CMOS inverters. Where, n is the number of output binary bits.
 
![images](https://user-images.githubusercontent.com/114692581/194702441-2e6e4ff6-7534-437c-b5da-8171514baa5d.png)

Fig:2 TIQ Comparator
# Truth Table

![Capture](https://user-images.githubusercontent.com/114692581/194705103-fb21f514-ca59-4f26-9e4e-8a998e3640c9.PNG)

# Designing Steps
* Step 1 : Writing Verilog code for an 8:3 mux-based Priority Encoder and simulating it on the Makerchip. The top module of Verilog code should have the same name as the file.
* Step 2: Generating models on NgVeri and employing Makerchip to simulate.
* Step 3 : Schematics creation using Eeschema.
* Step 4: Making a netlist after running an electrical rule check (ERC) and annotating the schematic.
* Step 5: Configuring the KiCad to NgSpice Converter's simulation instance parameters. Before switching to NgSpice, sub-circuits should also have the default path added.
* Step 6: Results verification and simulation.
# Software Used
* **eSim**

It is an Open Source EDA developed by FOSSEE, IIT Bombay. It is used for electronic circuit simulation. It is made by the combination of two software namely NgSpice and KiCAD. For more details refer: [https://esim.fossee.in/home](https://esim.fossee.in/home)
* **NgSpice**

It is an Open Source Software for Spice Simulations. For more details refer: [http://ngspice.sourceforge.net/docs.html](http://ngspice.sourceforge.net/docs.html)
* **Makerchip**

It is an Online Web Browser IDE for Verilog/System-verilog/TL-Verilog Simulation. For more details refer: [https://www.makerchip.com/](https://www.makerchip.com/)
* **Verilator**

It is a tool which converts Verilog code to C++ objects. For more details refer: [https://www.veripool.org/verilator/](https://www.veripool.org/verilator/)
# Verilog Code




