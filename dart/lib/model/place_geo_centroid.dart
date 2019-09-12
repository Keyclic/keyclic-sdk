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
    latitude = json['latitude']?.toDouble();
    longitude = json['longitude']?.toDouble();
  }

  double latitude;

  double longitude;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceGeoCentroid &&
        runtimeType == other.runtimeType &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (latitude?.hashCode ?? 0);
    hashCode ^= (longitude?.hashCode ?? 0);

    return hashCode;
  }

  static List<PlaceGeoCentroid> listFromJson(List<dynamic> json) {
    return json == null
        ? <PlaceGeoCentroid>[]
        : json
            .map((dynamic value) => PlaceGeoCentroid.fromJson(value))
            .toList();
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
