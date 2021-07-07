# MaxMSP API Examples

## What is an API?

There are plenty of definitions online for what an Application Programming Interface (API) is. For our purposes, it is a place to get data. Usually it is a url, that wehn access, you'll get some information. This could be anything from weather data, stock market data, twitter data, literally any data that someone is providing on a server somewhere.

### How do I use an API

An important aspect of an API is that the data has to be in a format that can be digested by other programmes. As such, you will typically find data in the following formats

-   JSON
-   XML
-   CSV

JSON is by far the most common nowadays. JSON is in a format of `key`, `value` pairs

```json
{
  "key": "value"
}
```

If you know the shape of the data in advance, you can use it in a programme.

To actually get the data, the process typically boils down to [accessing a URL. e.g.](http://date.jsontest.com)

    http://date.jsontest.com

which will give a response like

```json
{
   "date": "07-06-2021",
   "milliseconds_since_epoch": 1625565351998,
   "time": "09:55:51 AM"
}
```

You now have a way to programatically check the time.

### Caveats

Typically an API will require an authorisation key. This is basically a long string of numbers and letters which you will have to provide to use the service.

APIs are not free to run, so your usage will be capped to some threshold unless you pay a subscription. For our purposes since usage will be very limited, the free tier is typically sufficient. It is worth being minduful of the restriction.

If you connect a `[metro 20]` object to something that makes an API call, you'll probably burn through your quota pretty quickly. If your API calls suddenly start failing, it's probably worth while checking if you've went over your quota.

## Where Can I Find More APIs?

-   [Public APIs](https://github.com/public-apis/public-apis)

## Examples

Included in this directory are a couple of example which illustrate methods for gathering data from APIs. The examples also show how you might want to interpret data received.

### Weather

These examples relate to gathering weather data. The Open Wether example will require an API key, which is typical for most APIs. You can get your key by signing up for the [API service](https://openweathermap.org/api).

The Open Weather example demonstrates how you can parametrise your API queries using Max messages and `sprintf`. In this case, a message of place name is added to the API request url.

### Twitter

The Twitter examples demonstrate the use of `XMLHttpRequest` and the JavaScript object. This can look quite intimidating at first, but you will realise over time that there is a recipe that can be followed.

The example shows how to start building up your queries from first simply getting the data, then moving on to filtering and parsing it and using the output to control your patch.

### Seismic Waves

The Seismic waves example shows how you can tap into data streams, in this case seismographic data. This examples aims to demonstrate how to start smoothing out data when the sample interval is quite long.

## Useful Objects

-   [`maxurl`](https://docs.cycling74.com/max8/refpages/maxurl): for making http request
-   [The Dictionary library in Max](https://docs.cycling74.com/max8/vignettes/dictionaries). This is particularly useful for unpacking JSON data.
-   [`sprintf`](https://docs.cycling74.com/max8/refpages/sprintf) will help with formatting API queries
-   [`combine`](https://docs.cycling74.com/max8/refpages/combine). If `sprintf` feels a bit obtuse, then `combine` may make a little more sense.
-   [`js`](https://docs.cycling74.com/max8/refpages/js): sometimes handling data is just easier in a script. [`XMLHttpRequest`](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest) in JavaScript make some things easier than `maxurl`.
