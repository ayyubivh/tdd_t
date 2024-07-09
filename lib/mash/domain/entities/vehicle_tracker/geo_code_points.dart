class PolylineBetweenModel {
  final List<GeoCodedWaypoint>? geocodedWaypoints;
  final List<Route> routes;
  final String status;

  PolylineBetweenModel({
    this.geocodedWaypoints,
    required this.routes,
    required this.status,
  });

  factory PolylineBetweenModel.fromJson(Map<String, dynamic> json) =>
      PolylineBetweenModel(
        routes: List<Route>.from(json["routes"].map((x) => Route.fromJson(x))),
        status: json["status"],
      );
}

class GeoCodedWaypoint {
  final String geocoderStatus;
  final String placeId;
  final List<String> types;

  GeoCodedWaypoint({
    required this.geocoderStatus,
    required this.placeId,
    required this.types,
  });

  factory GeoCodedWaypoint.fromJson(Map<String, dynamic> json) {
    return GeoCodedWaypoint(
      geocoderStatus: json['geocoder_status'],
      placeId: json['place_id'],
      types: List<String>.from(json['types']),
    );
  }
}

class Bounds {
  final Map<String, double> northeast;
  final Map<String, double> southwest;

  Bounds({
    required this.northeast,
    required this.southwest,
  });

  factory Bounds.fromJson(Map<String, dynamic> json) {
    return Bounds(
      northeast: Map<String, double>.from(json['northeast']),
      southwest: Map<String, double>.from(json['southwest']),
    );
  }
}

class Distance {
  final String text;
  final int value;

  Distance({
    required this.text,
    required this.value,
  });

  factory Distance.fromJson(Map<String, dynamic> json) {
    return Distance(
      text: json['text'],
      value: json['value'],
    );
  }
}

class Duration {
  final String text;
  final int value;

  Duration({
    required this.text,
    required this.value,
  });

  factory Duration.fromJson(Map<String, dynamic> json) {
    return Duration(
      text: json['text'],
      value: json['value'],
    );
  }
}

class StartEndLocation {
  final double lat;
  final double lng;

  StartEndLocation({
    required this.lat,
    required this.lng,
  });

  factory StartEndLocation.fromJson(Map<String, dynamic> json) {
    return StartEndLocation(
      lat: json['lat'],
      lng: json['lng'],
    );
  }
}

class Step {
  final Distance distance;
  final Duration duration;
  final StartEndLocation startLocation;
  final StartEndLocation endLocation;
  final String htmlInstructions;
  final String? maneuver;
  final PolylineModel polyline;
  final String travelMode;

  Step({
    required this.distance,
    required this.duration,
    required this.startLocation,
    required this.endLocation,
    required this.htmlInstructions,
    required this.maneuver,
    required this.polyline,
    required this.travelMode,
  });

  factory Step.fromJson(Map<String, dynamic> json) {
    return Step(
      distance: Distance.fromJson(json['distance']),
      duration: Duration.fromJson(json['duration']),
      startLocation: StartEndLocation.fromJson(json['start_location']),
      endLocation: StartEndLocation.fromJson(json['end_location']),
      htmlInstructions: json['html_instructions'],
      maneuver: json['maneuver'],
      polyline: json['polyline'],
      travelMode: json['travel_mode'],
    );
  }
}

class Leg {
  final Distance distance;
  final Duration duration;
  final StartEndLocation startLocation;
  final StartEndLocation endLocation;
  final String startAddress;
  final String endAddress;
  final List<Step> steps;

  Leg({
    required this.distance,
    required this.duration,
    required this.startLocation,
    required this.endLocation,
    required this.startAddress,
    required this.endAddress,
    required this.steps,
  });

  factory Leg.fromJson(Map<String, dynamic> json) {
    return Leg(
      distance: Distance.fromJson(json['distance']),
      duration: Duration.fromJson(json['duration']),
      startLocation: StartEndLocation.fromJson(json['start_location']),
      endLocation: StartEndLocation.fromJson(json['end_location']),
      startAddress: json['start_address'],
      endAddress: json['end_address'],
      steps: List<Step>.from(json['steps'].map((step) => Step.fromJson(step))),
    );
  }
}

class Route {
  final Bounds bounds;
  final List<Leg> legs;

  Route({
    required this.bounds,
    required this.legs,
  });

  factory Route.fromJson(Map<String, dynamic> json) {
    return Route(
      bounds: Bounds.fromJson(json['bounds']),
      legs: List<Leg>.from(json['legs'].map((leg) => Leg.fromJson(leg))),
    );
  }
}

class DirectionResponse {
  final List<GeoCodedWaypoint> geocodedWaypoints;
  final List<Route> routes;
  final String status;

  DirectionResponse({
    required this.geocodedWaypoints,
    required this.routes,
    required this.status,
  });

  factory DirectionResponse.fromJson(Map<String, dynamic> json) {
    return DirectionResponse(
      geocodedWaypoints: List<GeoCodedWaypoint>.from(json['geocoded_waypoints']
          .map((waypoint) => GeoCodedWaypoint.fromJson(waypoint))),
      routes: List<Route>.from(
          json['routes'].map((route) => Route.fromJson(route))),
      status: json['status'],
    );
  }
}

class PolylineModel {
  final String points;

  PolylineModel({
    required this.points,
  });

  factory PolylineModel.fromJson(Map<String, dynamic> json) => PolylineModel(
        points: json["points"],
      );

  Map<String, dynamic> toJson() => {
        "points": points,
      };
}
