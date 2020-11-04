outlets = 2
setinletassist(0, "list of accelerometer (x, y ,z)")
setoutletassist(0, "Pitch (float)")
setoutletassist(1, "Roll (float)")
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
function list(a)
{
  var ax = arguments[0]
  var ay = arguments[1]
  var az = arguments[2]
  var pitch, roll
  [pitch, roll] = getPitchAndRoll(ax, ay, az)
  outlet(0, pitch)
  outlet(1, roll)
}
