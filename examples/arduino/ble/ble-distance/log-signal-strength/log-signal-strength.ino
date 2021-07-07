/*
  BLE Log Signal Strength

  Send signal strength (RSSI) of a specified device over Serial

  RSSI is an integer typically between -30 to -100.

  RSSI value sent is made positive and cast as a single byte.
 */

#include <ArduinoBLE.h>

// Enter the BLE Address you are looking for
String bleAddress = "aa:bb:cc:dd:ee:ff";

void setup()
{
  Serial.begin(9600);
  while (!Serial);

  if (!BLE.begin())
  {
    Serial.println("starting BLE failed!");
    while (1);
  }

  BLE.scanForAddress(bleAddress, true);
}

void loop()
{
  BLEDevice peripheral = BLE.available();

  if (peripheral)
  {
      Serial.write(byte(peripheral.rssi()*-1));
  }
}
