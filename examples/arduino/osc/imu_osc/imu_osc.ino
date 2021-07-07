//------------------------------------------------------------
#include <Arduino_LSM6DS3.h>
#include <WiFiNINA.h>   // For Nano 33 IoT
#include <WiFiUDP.h>
#include <OSCBundle.h> // OSC library by Adrian Freed, Yotam Mann
//------------------------------------------------------------
IPAddress outIp(192, 168, 1, 255); // x.x.x.255 is typical broadcast address for network.
const unsigned int outPort = 12000;
WiFiUDP Udp;
//------------------------------------------------------------
byte mac[6];
const char* ssid = "YOUR SSID";          // replace these with the name and password for your local wi-fi network
const char* password = "YOUR WIFI PASSWORD";
//------------------------------------------------------------
float ax = 0, ay = 0, az = 0, gx = 0, gy = 0, gz = 0;
//------------------------------------------------------------
void setup()
{
  Serial.begin(9600);
  pinMode(LED_BUILTIN, OUTPUT);
  // while (!Serial) {}
  if (!IMU.begin())
  {
    Serial.println("Failed to initialize IMU!");
    while (1);
  }
  connectToWifi(ssid, password);
  Udp.begin(8888);
}
//------------------------------------------------------------
void loop ()
{
  if (IMU.accelerationAvailable())
  {
    IMU.readAcceleration(ax, ay, az);
  }
  if (IMU.gyroscopeAvailable())
  {
    IMU.readGyroscope(gx, gy, gz);
  }
  //declare the bundle
  OSCBundle bndl;

  //BOSCBundle's add' returns the OSCMessage so the message's 'add' can be composed together
  bndl.add("/data/ax").add(ax);
  bndl.add("/data/ay").add(ay);
  bndl.add("/data/az").add(az);
  bndl.add("/data/gx").add(gx);
  bndl.add("/data/gy").add(gy);
  bndl.add("/data/gz").add(gz);

  Udp.beginPacket(outIp, outPort);
  bndl.send(Udp);  // send the bytes to the SLIP stream
  Udp.endPacket(); // mark the end of the OSC Packet
  bndl.empty();    // empty the bundle to free room for a new one
  delay(100);
}
//------------------------------------------------------------
// EOF
