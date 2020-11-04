//------------------------------------------------------------
#include <WiFiNINA.h>   // For Nano 33 IoT
#include <WiFiUDP.h>
#include <OSCMessage.h> // OSC library by Adrian Freed, Yotam Mann
//------------------------------------------------------------
IPAddress outIp(192, 168, 1 , 255); // x.x.x.255 is typical broadcast address for network.
const unsigned int outPort = 12000;
WiFiUDP Udp;
//------------------------------------------------------------
byte mac[6];
const char* ssid = "YOUR SSID";          // replace these with the name and password for your local wi-fi network
const char* password = "YOUR WIFI PASSWORD";
//------------------------------------------------------------
void setup()
{
  Serial.begin(9600);
  // while (!Serial) {}
  void printMac();
  connectToWifi(ssid, password);
  Udp.begin(8888);
}
//------------------------------------------------------------
void loop ()
{
  // the message wants an OSC address as first argument
  OSCMessage msg("/analog/0");
  msg.add((int32_t)analogRead(0));

  Udp.beginPacket(outIp, outPort);
  msg.send(Udp);   // send the bytes to the SLIP stream
  Udp.endPacket(); // mark the end of the OSC Packet
  msg.empty();     // free space occupied by message
  delay(20);
//  haltFirmware();
}
//------------------------------------------------------------
// EOF
