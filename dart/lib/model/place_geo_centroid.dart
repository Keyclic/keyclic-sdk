part of keyclic_sdk_api.api;

class PlaceGeoCentroid {
  PlaceGeoCentroid({
    this.latitude,
    this.longitude,
  });

  PlaceGeoCentroid.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  double latitude;

  double longitude;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceGeoCentroid &&
        runtimeType == other.runtimeType &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode => 0 ^ latitude.hashCode ^ longitude.hashCode;

  static List<PlaceGeoCentroid> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PlaceGeoCentroid>()
        : json.map((value) => PlaceGeoCentroid.fromJson(value)).toList();
  }

  static Map<String, PlaceGeoCentroid> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlaceGeoCentroid>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PlaceGeoCentroid.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  @override
  String toString() {
    return 'PlaceGeoCentroid[latitude=$latitude, longitude=$longitude, ]';
  }
}
