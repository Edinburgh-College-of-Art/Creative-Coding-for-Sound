//------------------------------------------------------------------------------
outlets = 8
inlets = 2
var imuData = []
var littleEndian = false;
var dt = 0.1; // time delta seconds
var gyroRoll = 0.0;
var gyroPitch = 0.0;
var sensorAlphaBlend = 1.0
//------------------------------------------------------------------------------
setinletassist(0, "24 byte list (list)")
setoutletassist(0, "Acc x (float)")
setoutletassist(1, "Acc y (float)")
setoutletassist(2, "Acc z (float)")
setoutletassist(3, "Gyro x (float)")
setoutletassist(4, "Gyro y (float)")
setoutletassist(5, "Gyro z (float)")
setoutletassist(6, "Pitch (float)")
setoutletassist(7, "Roll (float)")
//------------------------------------------------------------------------------
function getPitchAndRoll(ax, ay, az)
{
  var pitch, roll
  roll = Math.atan2(ay, az);

  if (ay * Math.sin(roll) + az * Math.cos(roll) == 0)
    var pitch = (ax > 0) ? (Math.PI / 2) : (-Math.PI / 2);
  else
    var pitch = Math.atan(-ax / (ay * Math.sin(roll) + (az * Math.cos(roll))));

  return [pitch, roll]
}

//------------------------------------------------------------------------------
function floatToIeee32(value)
{
  var bytes = 0;
  switch (value)
  {
    case Number.POSITIVE_INFINITY:
      bytes = 0x7F800000;
      break;
    case Number.NEGATIVE_INFINITY:
      bytes = 0xFF800000;
      break;
    case +0.0:
      bytes = 0x40000000;
      break;
    case -0.0:
      bytes = 0xC0000000;
      break;
    default:
      //if (Number.isNaN(value)) { bytes = 0x7FC00000; break; }

      if (value <= -0.0)
      {
        bytes = 0x80000000;
        value = -value;
      }

      var exponent = Math.floor(Math.log(value) / Math.log(2));
      var significand = ((value / Math.pow(2, exponent)) * 0x00800000) | 0;

      exponent += 127;
      if (exponent >= 0xFF)
      {
        exponent = 0xFF;
        significand = 0;
      }
      else if (exponent < 0) exponent = 0;

      bytes = bytes | (exponent << 23);
      bytes = bytes | (significand & ~(-1 << 23));
      break;
  }
  return bytes;
};
//------------------------------------------------------------------------------
function ieee32ToFloat(intval)
{
  var fval = 0.0;
  var x; //exponent
  var m; //mantissa
  var s; //sign
  s = (intval & 0x80000000) ? -1 : 1;
  x = ((intval >> 23) & 0xFF);
  m = (intval & 0x7FFFFF);
  switch (x)
  {
    case 0:
      //zero, do nothing, ignore negative zero and subnormals
      break;
    case 0xFF:
      if (m) fval = NaN;
      else if (s > 0) fval = Number.POSITIVE_INFINITY;
      else fval = Number.NEGATIVE_INFINITY;
      break;
    default:
      x -= 127;
      m += 0x800000;
      fval = s * (m / 8388608.0) * Math.pow(2, x);
      break;
  }
  return fval;
}
//------------------------------------------------------------------------------
function Bytes2Float32(bytes)
{
  var sign = (bytes & 0x80000000) ? -1 : 1;
  var exponent = ((bytes >> 23) & 0xFF) - 127;
  var significand = (bytes & ~(-1 << 23));
  if (exponent == 128)
  {
    return sign * ((significand) ? Number.NaN : Number.POSITIVE_INFINITY);
  }
  if (exponent == -127)
  {
    if (significand == 0)
    {
      return sign * 0.0;
    }
    exponent = -126;
    significand /= (1 << 22);
  }
  else
  {
    significand = (significand | (1 << 23)) / (1 << 23);
  }

  return sign * significand * Math.pow(2, exponent);
}

//------------------------------------------------------------------------------

function bytes2Array(bytes)
{
  var byteArray = []

  byteArray[3] = bytes & 0xFF
  byteArray[2] = (bytes >> 8) & 0xFF
  byteArray[1] = (bytes >> 16) & 0xFF
  byteArray[0] = (bytes >> 24) & 0xFF

  return byteArray
}
//------------------------------------------------------------------------------
function arrayToIeee(bytes)
{
  if (littleEndian)
  {
    return (bytes[3] | (bytes[2] << 8) | (bytes[1] << 16) | (bytes[0] << 24))
  }
  else
  {
    return (bytes[0] | (bytes[1] << 8) | (bytes[2] << 16) | (bytes[3] << 24))
  }

}
//------------------------------------------------------------------------------
function list(a)
{
  for (var i = 0; i < arguments.length; i += 4)
  {
    imuData[i / 4] = arrayToIeee([arguments[i],
      arguments[i + 1],
      arguments[i + 2],
      arguments[i + 3]
    ])
  }
  var ax = ieee32ToFloat(imuData[0])
  var ay = ieee32ToFloat(imuData[1])
  var az = ieee32ToFloat(imuData[2])
  var gx = ieee32ToFloat(imuData[3])
  var gy = ieee32ToFloat(imuData[4])
  var gz = ieee32ToFloat(imuData[5])

  // var pitch = Math.asin(ax);
  // pitch = Math.atan2(-ax, (Math.sqrt((ay * ay) + (az * az))))
  // var roll = (pitch == 0.00) ? 0.00 : Math.asin(ay / Math.cos(pitch))
  // roll = Math.atan2(ay, az);
  // gyroRoll += gy * dt;
  // gyroPitch += gx * dt;
  // roll = (gyroRoll * (1.0 - sensorAlphaBlend)) + (roll * sensorAlphaBlend)
  // pitch = (gyroPitch * (1.0 - sensorAlphaBlend)) + (pitch * sensorAlphaBlend)

  var pitch, roll
  [pitch, roll] = getPitchAndRoll(ax, ay, az)

  outlet(0, ax)
  outlet(1, ay)
  outlet(2, az)
  outlet(3, gx)
  outlet(4, gy)
  outlet(5, gz)
  outlet(6, pitch)
  outlet(7, roll)
}
//------------------------------------------------------------------------------
function msg_int(a)
{
  switch (inlet)
  {
    case 1:
      littleEndian = Boolean(a)
      break;
    default:
  }
}

function bang()
{

};
