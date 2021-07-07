//------------------------------------------------------------------------------
// MaxMSP XMLHttpRequest Javascript Interface
//------------------------------------------------------------------------------
// Setup outlets
outlets = 3;
// assistance function
function describeOutlet(num)
{
  var assistMsg = ''
  switch (num)
  {
    case 0:
      assistMsg = "Pressure X (m/s^2)";
      break;
    case 1:
      assistMsg = "Pressure Y (m/s^2)";
      break;
    case 2:
      assistMsg = "Pressure Z (m/s^2)";
      break;
  }

  assist(assistMsg, num)
}
setoutletassist(-1, describeOutlet)
//------------------------------------------------------------------------------
// Setup Global Variables
var baseUrl = "https://api.thingspeak.com/channels/1434419/fields/"
var dataType = "/last.json"
//------------------------------------------------------------------------------
function bang()
{
  for (var i = 1; i <= 3; i++)
  {
    var requestUrl = baseUrl + String(i) + dataType;
    var xhrRequest = new XMLHttpRequest();
    xhrRequest.open("GET", requestUrl, false);
    xhrRequest.onreadystatechange = onApiRequestComplete;
    xhrRequest.send();
    xhrRequest.fieldNumber = String(i)
  }
}
//------------------------------------------------------------------------------
///
function onApiRequestComplete(xhrRequest)
{
  if (xhrRequest.readyState == 4)
  {
    var json = JSON.parse(xhrRequest.responseText);
    var responseOutlet = parseInt(xhrRequest.fieldNumber) - 1
    outlet(responseOutlet, parseFloat(json['field' + xhrRequest.fieldNumber]));
  }
}
