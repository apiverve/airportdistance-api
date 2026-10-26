/// Response models for the Airport Distance API.

/// API Response wrapper.
class AirportdistanceResponse {
  final String status;
  final dynamic error;
  final AirportdistanceData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  AirportdistanceResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory AirportdistanceResponse.fromJson(Map<String, dynamic> json) => AirportdistanceResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AirportdistanceData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Airport Distance API.

class AirportdistanceData {
  num? distanceMiles;
  num? distanceKm;
  num? distanceNauticalMiles;
  String? estimatedFlightTime;
  num? timezoneDiffHours;
  num? bearing;
  String? direction;
  bool? isInternational;
  num? carbonEstimateKg;
  AirportdistanceDataAirport1? airport1;
  AirportdistanceDataAirport2? airport2;

  AirportdistanceData({
    this.distanceMiles,
    this.distanceKm,
    this.distanceNauticalMiles,
    this.estimatedFlightTime,
    this.timezoneDiffHours,
    this.bearing,
    this.direction,
    this.isInternational,
    this.carbonEstimateKg,
    this.airport1,
    this.airport2,
  });

  factory AirportdistanceData.fromJson(Map<String, dynamic> json) => AirportdistanceData(
      distanceMiles: json['distanceMiles'],
      distanceKm: json['distanceKm'],
      distanceNauticalMiles: json['distanceNauticalMiles'],
      estimatedFlightTime: json['estimatedFlightTime'],
      timezoneDiffHours: json['timezoneDiffHours'],
      bearing: json['bearing'],
      direction: json['direction'],
      isInternational: json['isInternational'],
      carbonEstimateKg: json['carbonEstimateKg'],
      airport1: json['airport1'] != null ? AirportdistanceDataAirport1.fromJson(json['airport1']) : null,
      airport2: json['airport2'] != null ? AirportdistanceDataAirport2.fromJson(json['airport2']) : null,
    );
}

class AirportdistanceDataAirport1 {
  String? name;
  String? iata;
  String? icao;
  String? city;
  String? state;
  String? country;
  num? elevation;
  num? latitude;
  num? longitude;
  String? timezone;

  AirportdistanceDataAirport1({
    this.name,
    this.iata,
    this.icao,
    this.city,
    this.state,
    this.country,
    this.elevation,
    this.latitude,
    this.longitude,
    this.timezone,
  });

  factory AirportdistanceDataAirport1.fromJson(Map<String, dynamic> json) => AirportdistanceDataAirport1(
      name: json['name'],
      iata: json['iata'],
      icao: json['icao'],
      city: json['city'],
      state: json['state'],
      country: json['country'],
      elevation: json['elevation'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      timezone: json['timezone'],
    );
}

class AirportdistanceDataAirport2 {
  String? name;
  String? iata;
  String? icao;
  String? city;
  String? state;
  String? country;
  num? elevation;
  num? latitude;
  num? longitude;
  String? timezone;

  AirportdistanceDataAirport2({
    this.name,
    this.iata,
    this.icao,
    this.city,
    this.state,
    this.country,
    this.elevation,
    this.latitude,
    this.longitude,
    this.timezone,
  });

  factory AirportdistanceDataAirport2.fromJson(Map<String, dynamic> json) => AirportdistanceDataAirport2(
      name: json['name'],
      iata: json['iata'],
      icao: json['icao'],
      city: json['city'],
      state: json['state'],
      country: json['country'],
      elevation: json['elevation'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      timezone: json['timezone'],
    );
}

class AirportdistanceRequest {
  String iata1;
  String iata2;

  AirportdistanceRequest({
    required this.iata1,
    required this.iata2,
  });

  Map<String, dynamic> toJson() => {
      'iata1': iata1,
      'iata2': iata2,
    };
}
