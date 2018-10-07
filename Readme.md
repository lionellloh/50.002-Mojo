## FPGA 1 Bit Full Adder Automated Testing

### Introduction

We built a full adder by following the following circuit. The process took us 2 days of planning and half a day of prototyping, cutting wires and soldering. 

![Image result for 1 bit full adder circuit diagram](http://www.circuitstoday.com/wp-content/uploads/2010/04/Full-Adder-Circuit.gif)

After 8 hours of concerted hard work, we got the full adder working - which by definition is that it gives the correct output values for each of the 8 possible input values. The truth table is as follows: 

![Image result for 1 bit full adder truth table](https://www.electronicshub.org/wp-content/uploads/2014/08/Truth-Table-for-Full-Adder.jpg)



### Automated Testing  

Previously, we were able to verify that the 1-bit full adder works by manually examining whether the sum and carry were lit. This process can be extremely arduous and susceptible. 

We hence decide to use a Field Programmable Gate Array (FPGA) to automate the testing. We use a **Finite State Machine**to run all the test cases. In total we have 11 test cases - 8 to simulate the 8 different cases of input along with 3 more states - Default, Success and Error. 

There are two levels of implementation. The first is semi-automated error checking - the user will still have to manually control the inputs with the 3 rightmost dip switches.  The segment display will show if it is a `YAY` or `NAY` to indicate Success and error respestively. We implement this with a series of conditionals. 

The second implementation starts with the **default** state. **State 1** is triggered upon pressing the middle button of the 5 input buttons. It will use a Finite State Machine and a D Flip-Flop to run through all 8 test cases. When all test cases are passed, it will go to **success**. If one test case fails, it will enter **error**. 

The FPGA will send the 8 different permutations of input and based on the inputs fed back from the Sum and Carry, it will either carry on to the next case or stop due to error. 

For more, the [**Video**](https://youtu.be/rhJR6hDfmiw) shows a more comprehensive explanation. 



### Running the Lucid Code 

##### 1. On your terminal 

``` git clone https://github.com/lionellloh/50.002-Mojo```

##### 2. Open the .mojo file in [Mojo IDE](https://alchitry.com/pages/mojo-ide)

##### 3. Build 

##### 4. Load into FPGA Flash Memory / RAM 

##### 5. Connect FPGA to the circuit according to the input and output ports defined by the ```custom.ucf``` file. 

``````
NET "sum" LOC = P33 | IOSTANDARD = LVTTL;
NET "cout" LOC = P30 | IOSTANDARD = LVTTL;

NET "a" LOC = P51 | IOSTANDARD = LVTTL;
NET "b" LOC = P41 | IOSTANDARD = LVTTL;
``````



### Requirements 

1. [Mojo IDE ](https://alchitry.com/pages/mojo-ide)
2. [ISE Design Suite](https://www.xilinx.com/products/design-tools/ise-design-suite.html)



### Acknowledgements 

1. [Tutorials from Alchitry](https://alchitry.com/pages/lucid)


### Team 

1. Claire Tan 
2. Eda Tan 
3. Glenn Chia 
4. Lionell Loh 
