void printImuInfo()
{
  Serial.print("Accelerometer sample rate = ");
  Serial.print(IMU.accelerationSampleRate());
  Serial.println(" Hz");
  Serial.println();
  Serial.println("Acceleration in G's");
  Serial.println("X\tY\tZ");
}

void printImuData()
{
  if (IMU.accelerationAvailable())
    IMU.readAcceleration(ax, ay, az);

  Serial.print(ax);
  Serial.print('\t');
  Serial.print(ay);
  Serial.print('\t');
  Serial.println(az);
}

void writeFloatBytesToSerial()
{
  Serial.write((byte*)&ax, 4);
  Serial.write((byte*)&ay, 4);
  Serial.write((byte*)&az, 4);
  Serial.flush();
}

void writeRoundedFloatToSerial()
{
  Serial.write(ax);
  Serial.write(ay);
  Serial.write(az);
  Serial.flush();
}
