/*
  Simple Analog Sensor Reading
*/

int sensorPin = A0;    // select the input pin for the potentiometer
uint16_t sensorValue = 0;
uint16_t previousValue = 0;
unsigned long previousUpdateTime = 0;
unsigned long updateTime = 50;

void setup() {}

void loop()
{
  sensorValue = analogRead(sensorPin);

  if (millis() - previousUpdateTime > updateTime && previousValue != sensorValue)
  {
    previousUpdateTime = millis();
    previousValue = sensorValue;
    Serial.println(sensorValue);
  }
}
