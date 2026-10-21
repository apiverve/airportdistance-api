# Airport Distance API - Ruby Gem

Airport Distance calculates the great-circle distance between two airports, plus estimated travel time, using their 3-letter IATA codes. It provides route distance in miles and kilometers plus estimated flight duration.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_airportdistance'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_airportdistance
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_airportdistance'

# Initialize the client
client = APIVerve::Airportdistance::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  iata1: "JFK",
  iata2: "LAX"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ iata1: "JFK", iata2: "LAX" })
  puts response["data"]
rescue APIVerve::Airportdistance::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Airportdistance::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Airportdistance::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/airportdistance?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/airportdistance?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/airportdistance?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
