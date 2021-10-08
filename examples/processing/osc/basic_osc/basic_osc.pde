/**
 * OSC Send / Recieve
 * Listen for an int over OSC and send a bang message on mouse click.
 * See the Corresponding Max Patch
 * 
 * Don't forget to download the oscP5 library from the library manager
 */

import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

int size = 0;
int listenPort = 7401;
int sendPort = 7400;

void setup() 
{
  size(400, 400);
  frameRate(25);  
  oscP5 = new OscP5(this, listenPort);
  myRemoteLocation = new NetAddress("127.0.0.1", sendPort);
}

void draw() 
{
  background(0);
  ellipse(width/2, height/2, size, size);
}

void mousePressed() 
{
  OscMessage myMessage = new OscMessage("/test");
  myMessage.add("bang"); /* add an int to the osc message */
  oscP5.send(myMessage, myRemoteLocation);
}

void oscEvent(OscMessage oscMessage) 
{  
  size = oscMessage.get(0).intValue();
}
