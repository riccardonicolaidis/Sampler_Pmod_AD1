# Sampler Pmod AD1 and XADC project for Arty A7-35T developement board

The aim of this project is to create an easy way, HDL implemented, to visualise data coming from the analog to digital converter provided by the Pmod AD1. In this way, it is possible to characterise the ADC, perform some tests on the ADC performances, test some Digital Signal Processing (DSP) modules or to sample analog signals.

## Hardware used:
- Board: Arty A7-35T by Digilent ![Arty A7 35T](https://digilent.com/reference/_media/reference/programmable-logic/arty/arty-0.png)

- Pmod AD1 : ![Pmod AD1](https://cdn11.bigcommerce.com/s-7gavg/images/stencil/1280x1280/products/159/3375/Pmod_AD1_top_600__16998.1533766952.png?c=2) The PmodAD1 contains a pair of AD7476A ADCs by Analog Devices

- Reference manual PmodAD1 [link](https://digilent.com/reference/pmod/pmodad1/reference-manual)
- Datasheet AD7476A [PDF link](https://www.analog.com/media/cn/technical-documentation/evaluation-documentation/AD7476A_7477A_7478A.pdf?_ga=2.175879970.1215787112.1648830927-383124528.1648830927)

## Software used:

- The software used is **Vivado 2021.1** by Xilinx 
![Vivado logo](https://www.xilinx.com/content/dam/xilinx/imgs/products/vivado/vivado-ml/vivado-hero-logo-web.png)

- The HDL language used is **SystemVerilog** and a little of **VHDL** (see below).

--------------------------

## Pin configuration
Let's see the configuration for the pins on the board.

Below is reported the schematic of the Pmod interface. 

![Pmod scheme](https://digilent.com/reference/_media/basys3-pmod_connector.png?w=350&tok=20c9fc)

I have used the JC interface since it is configured to run at High-speeds.

|Pin figure |Pin XDC (vector) | Pin FPGA | Pmod connection |  Direction |
|-----------|-----------------|----------|-----------------|------------|
|  1        |  0              |  U12     | Not used        | --         |
|  2        |  1              |  V12     | Not used        | --         |
|  3        |  2              |  V10     | Not used        | --         |
|  4        |  3              |  V11     | Not used        | --         |
|  7        |  4              |  U14     | CS negation     | Output     |
|  8        |  5              |  V14     | D0 (MISO)       | Input      |
|  9        |  6              |  T13     | D1 (MISO)       | Input      |
|  10       |  7              |  U13     | CLK             | Output     |

**Note** :
- **Input**  : from the external Pmod towards the FPGA
- **Output** : from the FPGA towards the external device


-----------------------------

## Functionalities of the device

The Sampler realised with the Arty A7 35T developement board takes four analog signals from the outside and it returns on screen, via the UART cable, the digitalised values. The update frequency of the ADC is about 10 Hz, but in principle it can be modified from the Top module changing the parameters. Once the FPGA is programmed and the UART cable is connected to the computer, thanks to a serial reader like PuTTY it is possible to display the following data

![Terminal view](docs/assets/images/sampler_terminal.png)

From left to right:
1. Time measured in milliseconds (8 digits)
2. Channel A0 XADC (5 digits)
3. Channel A1 XADC (5 digits)
4. Channel A0 PmodAD1 (5 digits)
5. Channel A1 PmodAD1 (5 digits)

Analog signals are sampled by the XADC in bipolar mode (input signal can range from -0.5 V to 0.5 V). The signal is digitalised using the 2's complement notation for the negative potentials. Then, by switching the most significant bit (MSB), the number is displayed on the terminal screen using the unipolar representation  (See the XADC repository on my GitHub page). 

The core containing the SPI interface to collect data from the PmodAD1 can be found at the following website [Digi-Key link](https://forum.digikey.com/t/adc-ad7476a-pmod-controller-vhdl/12894). The core is written in VHDL. Vivado, the tool provided by Xilinx, allow the language mixing within a project. Hence, using the traditional Verilog instantiation template, it is possible to use the VHDL core. 


---------------------------
## IP catalogue
To build up the design I have used some IPs by Xilinx. These modules can be configurated from the **IP catalogue** in **Vivado**. 
To create your personal module follow these steps:
- Click on IP catalogue in the **Project flow navigator**
- Search for the desired IP. In our case the IPs used are the **XADC Wiziard** and the **FIFO generator**
- Click on the IP desired
- Customize the IP according to the fatures required
- Click on **Generate IP instance**
- Then you have to generate and synthesise the required files (Click on **Generate** in the pop-up window). 
- In the file manager, where you can see the **Source Hierarchy** click on the **IP sources** panel.
- In the path: IP_COMPONENT_NAME >> Instantiation template >> ...    youìll find the two **Instantiation templates**, one written in **Verilog HDL** and the other in **VHDL**. Now you can instantiate your customised module into your design. 


-----------------------------
## Some resources
Here some useful online resources which I have used to develope this simple ADC sampler:
- Digilent reference webpage (Arty A7) : https://digilent.com/reference/programmable-logic/arty-a7/start

![Digilent logo](https://cdn11.bigcommerce.com/s-7gavg/images/stencil/original/digilent-logo_ni_2021-260px_1_1627086513__23106.original.png)

- Arty A7 reference manual [link](https://digilent.com/reference/programmable-logic/arty-a7/reference-manual)
- OpenCores (a useful web platform where it is possible to find HDL open source cores) :[link](https://opencores.org/)
- Companion website for the book **FPGA prototyping by SystemVerilog examples** by Dr. Chu : [link](https://academic.csuohio.edu/chu_p/index.html)
- Xilinx Vivado website: [link](https://www.xilinx.com/products/design-tools/vivado.html)
- Digilent GitHub repositories : [link](https://github.com/digilent)
- Pmod AD1 resource center [link](https://digilent.com/reference/pmod/pmodad1/start?redirect=1)
- ADC AD7476A Pmod Controller (VHDL) from Digi-key website [link](https://forum.digikey.com/t/adc-ad7476a-pmod-controller-vhdl/12894)


---------------------------------
## How to create a Vivado project
To build up a Vivado project, the following operations are required:
- Open Vivado
- Click on **New project**
- Give a name to the project and click on **Create project subdirectory** and click on **Next**
- Click on **RTL project**. Then, click **Next**
- Now choose all the sources files .v (if the files are written in verilog), .sv (if they are written in SystemVerilog), .vhd (if files are written in VHDL), click on **Scan and add RTL include files into the project** and **Copy sources into project**. Then, click on **Next**
- Import the **Costraint file** .xdc in the same manner as before.
- Now you need to select the **Target device**. To do this, select the **Boards** menu and search for **ARTY A7-35T**. To do this operation you need to install on your computer the **Digilent boards files**. This procedure is described at the following link https://digilent.com/reference/programmable-logic/guides/installing-vivado-and-vitis if you use the latest versions of Vivado and Vitis unified platform or the following link https://digilent.com/reference/programmable-logic/guides/installing-vivado-and-sdk if you use Vivado and Vivado SDK. 
- Now it is possible to modify the project, run the synthesis, the implementation and the bitstream generation
