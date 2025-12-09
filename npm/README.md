# Airport Distance API

Airport Distance is a simple tool for getting the distance between two airports. It returns the distance between the two airports.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Javascript Wrapper for the [Airport Distance API](https://apiverve.com/marketplace/airportdistance)

---

## Installation

Using npm:
```shell
npm install @apiverve/airportdistance
```

Using yarn:
```shell
yarn add @apiverve/airportdistance
```

---

## Configuration

Before using the Airport Distance API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart)

The Airport Distance API documentation is found here: [https://docs.apiverve.com/ref/airportdistance](https://docs.apiverve.com/ref/airportdistance).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const airportdistanceAPI = require('@apiverve/airportdistance');
const api = new airportdistanceAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  iata1: "JFK",
  iata2: "LAX"
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  iata1: "JFK",
  iata2: "LAX"
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  iata1: "JFK",
  iata2: "LAX"
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "distanceMiles": 2470.23,
    "distanceKm": 3974.2,
    "airport1": {
      "name": "John F Kennedy International Airport",
      "iata": "JFK",
      "icao": "KJFK",
      "city": "New York",
      "state": "New-York",
      "country": "US",
      "elevation": 13,
      "latitude": 40.63980103,
      "longitude": -73.77890015
    },
    "airport2": {
      "name": "Los Angeles International Airport",
      "iata": "LAX",
      "icao": "KLAX",
      "city": "Los Angeles",
      "state": "California",
      "country": "US",
      "elevation": 125,
      "latitude": 33.94250107,
      "longitude": -118.4079971
    }
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2025 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
