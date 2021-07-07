/*
 Simple Analog Sensor Reading

 Connect a potentiometer to GND, A0, VCC
  
*/

int sensorPin = A0;    // select the input pin for the potentiometer
uint16_t sensorValue = 0;

void setup() 
{
  pinMode(ledPin, OUTPUT);
}

void loop() 
{
  if(analogRead(sensorPin) != sensorValue)
  {  
    sensorValue = analogRead(sensorPin);
    Serial.println(sensorValue);
  }  
}
