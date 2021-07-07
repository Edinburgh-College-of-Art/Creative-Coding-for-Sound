/*
  Simple Analog Sensor Reading Over BLE

  Connect a potentiometer to GND, A0, VCC

*/
#include <ArduinoBLE.h>
//----------------------------------------------------------------------------
int sensorPin = A0;    // select the input pin for the potentiometer
uint16_t sensorValue = 0;
unsigned long previousUpdateTime = 0;
unsigned long updateTime = 50;
//----------------------------------------------------------------------------
BLEService sensorService("4F46DD0C-A113-40C9-86CC-E99B47C0B140");
BLECharacteristic sensorCharacteristic("4F46DD0C-A113-40C9-86CC-E99B47C0B140", BLERead | BLENotify, 2);
//----------------------------------------------------------------------------

void setup()
{
  Serial.begin(9600);
  
  if (!BLE.begin())
    halt("starting BLE failed!");

  BLE.setLocalName("ArduinoSensor");
  BLE.setAdvertisedService(sensorService);
  sensorService.addCharacteristic(sensorCharacteristic);
  BLE.addService(sensorService);

  sensorCharacteristic.writeValue((void*)sensorValue, 2); // set the initial value for the characeristic:

  BLE.advertise();
}

//----------------------------------------------------------------------------

void loop()
{
  BLE.poll();
  BLEDevice central = BLE.central();

  if (millis() - previousUpdateTime > updateTime)
  {
    sensorValue = analogRead(sensorPin);
    Serial.println(sensorValue);
    sensorCharacteristic.writeValue(sensorValue); 
  }
}

void halt(const char* error)
{
  Serial.println(error);
  while (1);
}
