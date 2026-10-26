# Airport Distance API - Dart/Flutter Client

Airport Distance calculates the great-circle distance between two airports, plus estimated travel time, using their 3-letter IATA codes. It provides route distance in miles and kilometers plus estimated flight duration.

[![pub package](https://img.shields.io/pub/v/apiverve_airportdistance.svg)](https://pub.dev/packages/apiverve_airportdistance)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Airport Distance API](https://apiverve.com/marketplace/airportdistance?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_airportdistance: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_airportdistance/apiverve_airportdistance.dart';

void main() async {
  final client = AirportdistanceClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'iata1': 'JFK',
      'iata2': 'LAX'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Airport Distance API](https://apiverve.com/marketplace/airportdistance?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/airportdistance](https://docs.apiverve.com/ref/airportdistance?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
