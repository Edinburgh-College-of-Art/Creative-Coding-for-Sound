# Getting Started

This document will cover how to install the necessary software and libraries to getting started with your Arduino kit.

## Tutorial Videos

The following tutorial videos cover the setup material in the rest of this document. Follow along if you are having any difficulty setting up.

1. [Installing Arduino](https://media.ed.ac.uk/media/1+Installing+Arduino/1_3ccyec92)
2. [Configuring Arduino IDE](https://media.ed.ac.uk/media/2+Configuring+Arduino+IDE/1_2xnvhgkj)
3. [Nano 33 IoT](https://media.ed.ac.uk/media/3+Nano+33+IoT/1_p7ufan0z)
4. [Sketches and debug](https://media.ed.ac.uk/media/4+Sketches+and+debug/1_uwmvsir1)

## Setup

Before you start programming your Arduino you will need to:

- [Download Arduino IDE](https://www.arduino.cc/en/Main/Software#download): Download the relevant version for your operating system.
- [Install Arduino SAMD Core](https://www.arduino.cc/en/Guide/NANO33IoT#use-your-arduino-nano-33-iot-on-the-arduino-desktop-ide): simply follow the instructions in the link


### [Upload Your First Sketch](https://www.arduino.cc/en/Guide/NANO33IoT#use-your-arduino-nano-33-iot-with-the-arduino-iot-cloud#open-your-first-sketch)

Now you should be ready to upload your first program (sketch) to the Arduino. First, plug in your Arduino to your computer with the USB cable provided in your kit.

#### Open Blink Sketch

![](https://www.arduino.cc/en/uploads/Guide/Blynk%20Select.jpg)

#### Select your board type and port

![](https://www.arduino.cc/wiki/static/9ceac239b6306535ca8f47077d11bf8a/9c311/NANOIOT_BoardSel.jpg)

#### Upload the program

![](https://www.arduino.cc/wiki/static/0bd943210336ba4022b1b4e493775d82/008e2/UNO_Upload.png)

You should now have a blinking LED on your Arduino.

### Troubleshooting

- If you have any problem with the above, it can help sometimes to restart your computer
<!--
### Basic Examples


#### Blink

Arduino & LED on breadboard (resistors?)

#### Analogue Read

Add potentiometer to breadboard (input data, make decision, make LED blink) – Fade

#### SerialRead -->


<!-- ### Arduino Libraries

Libraries required to run the examples. -->

### WifiNINA

The Nano 33 IoT uses the WifiNINA library for wifi. Download this via the Arduino Library Manager.

#### WiFi Firmware Updates

Make sure your wifi module is the latest firmware. If you've downloaded Arduino IDE before, check your WifiNINA library and make sure it is at version `1.6.0`.

The firmware of your wifi would be `1.3.0`. Everyone should be starting at firmware `1.2.3` so you **will** need to update.
