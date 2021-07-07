/*
  IMU Serial:

  Send IMU (accelerometer and gyroscope) data over Serial as raw bytes.
  Look at corresponding MaxMSP patch for parsing this data.

  Libraries:

  You will need to install the Arduino_LSM6DS3 library via the library manager
  before uploading.
*/
//----------------------------------------------------------------------------
#include <Arduino_LSM6DS3.h>
#include <ArduinoBLE.h>
//----------------------------------------------------------------------------
const bool DEBUG = false;
//----------------------------------------------------------------------------
float accArray[3] = {0};
float &ax = accArray[0], &ay = accArray[1], &az = accArray[2];
//----------------------------------------------------------------------------
BLEService imuService("B1C054FD-E6FC-469F-AA37-E464FF60957D");
BLECharacteristic imuCharacteristic("B1C054FD-E6FC-469F-AA37-E464FF60957D", BLERead | BLENotify, 12);
//------------------------------------------------------------------------------------------
void setup()
{
  Serial.begin(9600);
  if (DEBUG)
    while (!Serial);


  if (!BLE.begin())
    halt("starting BLE failed!");

  if (!IMU.begin())  
    halt("IMU Failed to start");
  
  BLE.setLocalName("ArduinoIMU");
  BLE.setAdvertisedService(imuService);
  imuService.addCharacteristic(imuCharacteristic);
  BLE.addService(imuService);
  imuCharacteristic.writeValue((void*)accArray, 12); // set the initial value for the characeristic:

  BLE.advertise(); // start advertising

  if (DEBUG)  
    printImuInfo();  
}
//----------------------------------------------------------------------------
void loop()
{
  BLE.poll();
  BLEDevice central = BLE.central();

  if (IMU.accelerationAvailable())
  {
    IMU.readAcceleration(ax, ay, az);    
    imuCharacteristic.writeValue((void*)accArray, 12);
  }
}
//----------------------------------------------------------------------------

void halt(const char* error)
{  
  Serial.println(error);
  while (1);
}
