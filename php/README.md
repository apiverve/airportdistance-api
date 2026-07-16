# Airport Distance API - PHP Package

Airport Distance is a simple tool for getting the distance between two airports. It returns the distance between the two airports.

## Installation

Install via Composer:

```bash
composer require apiverve/airportdistance
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Airportdistance\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'iata1' => 'JFK',
    'iata2' => 'LAX'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Airportdistance\Client;
use APIVerve\Airportdistance\Exceptions\APIException;
use APIVerve\Airportdistance\Exceptions\ValidationException;

try {
    $response = $client->execute(['iata1' => 'JFK', 'iata2' => 'LAX']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "distanceMiles": 2470.23,
    "distanceKm": 3974.2,
    "distanceNauticalMiles": 2145.12,
    "estimatedFlightTime": "5h 24m",
    "timezoneDiffHours": -3,
    "bearing": 265,
    "direction": "West",
    "isInternational": false,
    "carbonEstimateKg": 543,
    "airport1": {
      "name": "John F Kennedy International Airport",
      "iata": "JFK",
      "icao": "KJFK",
      "city": "New York",
      "state": "New-York",
      "country": "US",
      "elevation": 13,
      "latitude": 40.63980103,
      "longitude": -73.77890015,
      "timezone": "America/New_York"
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
      "longitude": -118.4079971,
      "timezone": "America/Los_Angeles"
    }
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/airportdistance?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://airportdistance.apiverve.com?utm_source=php&utm_medium=readme](https://airportdistance.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
