//------------------------------------------------------------------------------
// Twitter API MaxMSP Javascript Interface
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
      assistMsg = "Tweet Text";
        break;
    case 1:
      assistMsg = "Username";
        break;
    case 2:
      assistMsg = "Query Dumpout on Error"
        break;
  }

  assist(assistMsg, num)
}
setoutletassist(-1, describeOutlet)
//------------------------------------------------------------------------------
// Setup Global Variables
var api_url = "https://api.twitter.com";
var url = api_url + "/1.1/search/tweets.json?count=1&q=";
//------------------------------------------------------------------------------
var auth = "";
var query = "";
var response = "";
var bearer = ""
//------------------------------------------------------------------------------
// get arguments
if (jsarguments.length == 1)
  error("You have to provide an Auth key!\n");
if (jsarguments.length > 1)
  auth = jsarguments[1];
if (jsarguments.length > 2)
  query = jsarguments[2];
//------------------------------------------------------------------------------
var getAuthorisation = function getTwitterApiAuthorisation()
{
  var http = new XMLHttpRequest();
  http.open("POST", api_url + "/oauth2/token", false);
  http.setRequestHeader("User-Agent", "My Twitter Feed");
  http.setRequestHeader("Authorization", "Basic " + auth);
  http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  http.onreadystatechange = onAuthorisationRepsonse;
  http.send("grant_type=client_credentials");
}()
//------------------------------------------------------------------------------
function onAuthorisationRepsonse(xmlRequest)
{
  if (xmlRequest.readyState == 4)
  {
    var json = JSON.parse(this.responseText);
    if (json['token_type'] != null)
      bearer = json['access_token'];
    else
    {
      apiErrors  = json['errors']
      for (var i = 0; i < apiErrors.length; i++)
        error(apiErrors[i]['message'] + '\n')
    }

  }
  else {
    error('Request Error\n')
  }
}

//------------------------------------------------------------------------------
/// anything is called when a message is received. This is used as the query string
function anything()
{
  query = "from:" + arrayfromargs(messagename, arguments);
  bang();
}
//------------------------------------------------------------------------------
/// on bang, repeat the last query
function bang()
{
  http = new XMLHttpRequest();
  http.open("GET", url + encodeURIComponent(query), false);
  http.setRequestHeader("User-Agent", "My Twitter Feed");
  http.setRequestHeader("Authorization", "Bearer " + bearer);
  http.onreadystatechange = onApiRequestComplete;
  http.send();
}
//------------------------------------------------------------------------------
///
function onApiRequestComplete(xmlRequest)
{
  if (xmlRequest.readyState == 4)
  {
    //----------------------------------------------------------------------------
    var json = JSON.parse(xmlRequest.responseText);
    // post(xmlRequest.responseText) // for debugging
    //----------------------------------------------------------------------------
    if (json['statuses'] != null && json['statuses'].length)
    {
      outlet(0, json['statuses'][0]['text']);
      outlet(1, "@" + json['statuses'][0]['user']['screen_name']);
    }
  }
}
//------------------------------------------------------------------------------
function reportOnResponse(xmlRequest)
{
  post("readyState: " + xmlRequest.readyState + "\n");
  post("AllResponseHeaders: " + xmlRequest.getAllResponseHeaders() + "\n");
  post("content_type : " + xmlRequest._getResponseKey("content_type") + "\n");
  post("total_time : " + xmlRequest._getResponseKey("total_time") + "\n");
  post("size_download : " + xmlRequest._getResponseKey("size_download") + "\n");
  post("filename_out : " + xmlRequest._getResponseKey("filename_out") + "\n");
  post("-----------begin-body----------------\n");
  post(xmlRequest.responseText);
  post("\n");
  post("-----------end-body-may-truncate----------------\n");
  post();
}
