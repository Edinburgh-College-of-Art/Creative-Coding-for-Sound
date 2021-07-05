var api_url = "https://api.twitter.com";
var url = api_url + "/1.1/search/tweets.json?count=1&q=";
var auth = "YOUR-LONG-TWITTER-AUTH-KEY-HERE";

//------------------------------------------------------------------------------
post(auth);
//------------------------------------------------------------------------------
var http = new XMLHttpRequest();
http.open("POST", api_url + "/oauth2/token", false);
http.setRequestHeader("User-Agent", "LukeTimothy's Feed");
http.setRequestHeader("Authorization", "Basic " + auth);
http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
http.onreadystatechange = onReadyStateChange;
http.send("grant_type=client_credentials");
//------------------------------------------------------------------------------
var query = '';
//------------------------------------------------------------------------------
outlets = 5;

if (jsarguments.length > 1)
  query = jsarguments[1];

post(bearer);

var response = '';
//------------------------------------------------------------------------------
function anything() {
  query = "from:" + arrayfromargs(messagename, arguments);
  bang();
}
//------------------------------------------------------------------------------
function bang() {
  http = new XMLHttpRequest();
  http.open("GET", url + encodeURIComponent(query), false);
  http.setRequestHeader("User-Agent", "My Twitter Feed");
  http.setRequestHeader("Authorization", "Bearer " + bearer);
  http.onreadystatechange = onReadyStateChange;
  http.send();
}
//------------------------------------------------------------------------------
function onReadyStateChange()
{
  if (this.readyState == 4) {
    var json = JSON.parse(this.responseText);

    if (json['token_type'] != null) {
      bearer = json['access_token'];
    }
  }
  //----------------------------------------------------------------------------
  post("readyState: " + this.readyState + "\n");
  post("AllResponseHeaders: " + this.getAllResponseHeaders() + "\n");
  // maxurl dict implementation keys (_getResponseKey is a maxurl specific backdoor for things not in XMLHttpRequest)
  post("content_type : " + this._getResponseKey("content_type") + "\n");
  post("total_time : " + this._getResponseKey("total_time") + "\n");
  post("size_download : " + this._getResponseKey("size_download") + "\n");
  post("filename_out : " + this._getResponseKey("filename_out") + "\n");
  post("-----------begin-body----------------\n");
  post(this.responseText);
  post("\n");
  post("-----------end-body-may-truncate----------------\n");
  post();
  //----------------------------------------------------------------------------
  var json = JSON.parse(this.responseText);
  outlet(0, this.responseText);
  //----------------------------------------------------------------------------
  if (json['statuses'] != null)
  {
    outlet(1, json['statuses'][0]['text']);
    outlet(2, "@" + json['statuses'][0]['user']['screen_name']);
    outlet(3, json['statuses'][0]['user']['profile_image_url'].replace("_normal.jpg", ".jpg"));
    if (json['statuses'][0]['entities']['media'] != null)
      outlet(4, json['statuses'][0]['entities']['media'][0]['media_url']);
    else
      outlet(4, "");
  }
  //----------------------------------------------------------------------------
}
