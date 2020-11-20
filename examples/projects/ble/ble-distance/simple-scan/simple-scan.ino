/*
  Simple Scan

  List BLE device addresses and their signal strengths
 */

#include <ArduinoBLE.h>

void setup()
{
  Serial.begin(9600);
  while (!Serial);

  if (!BLE.begin())
  {
    Serial.println("starting BLE failed!");
    while (1);
  }

  BLE.scan();
}

void loop()
{
  BLEDevice peripheral = BLE.available();

  if (peripheral)
  {
      Serial.print("Address: ");
      Serial.print(peripheral.address());
      Serial.print("\tRSSI: ");
      Serial.println(peripheral.rssi());
  }
}
