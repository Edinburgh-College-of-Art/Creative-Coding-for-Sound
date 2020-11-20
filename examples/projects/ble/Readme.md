# BLE on Nano 33 IoT

This is a set of examples projects utilising the Nano 33 IoTs Bluetooth Low energy module.

Each example contains an Arduino sketch and, if relevant, an accompanying Max Patch.

## Setup

In each instance you will need to:

1. Upload the sketch
2. Open the accompanying max patch
3. Choose the serial device in Max
4. Start a reading data, usually with a `[metro]` object

### Libraries

- Install the [ArduinoBLE Library](https://github.com/arduino-libraries/ArduinoBLE) via Arduino IDE Library Manager

## Examples

### BLE Distance

Distance measurement between two devices using signal strength readings

#### Find Device

#### Log Signal Strength

Send RSSI of a device with a specific address and send over Serial for use in Max.

#### Simple Scan

Scan for devices and report Address and RSSI over serial

### BLE Spy

BLE Device logging

***

## Links

- [ArduinoBLE Reference](https://www.arduino.cc/en/Reference/ArduinoBLE)
