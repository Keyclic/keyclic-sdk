part of keyclic_sdk_api.api;

class GeoCoordinates {
  GeoCoordinates({
    this.elevation,
    this.point,
  });

  factory GeoCoordinates.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return GeoCoordinates(
      elevation: json['elevation'],
      point: Object.fromJson(json['point']),
    );
  }

  /// range from -10000 to 8000
  int elevation;

  Object point;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GeoCoordinates &&
        runtimeType == other.runtimeType &&
        elevation == other.elevation &&
        point == other.point;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= elevation?.hashCode ?? 0;
    hashCode ^= point?.hashCode ?? 0;

    return hashCode;
  }

  static List<GeoCoordinates> listFromJson(List<dynamic> json) {
    return json == null
        ? <GeoCoordinates>[]
        : json.map((dynamic value) => GeoCoordinates.fromJson(value)).toList();
  }

  static Map<String, GeoCoordinates> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GeoCoordinates>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = GeoCoordinates.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (elevation != null) 'elevation': elevation,
      if (point != null) 'point': point,
    };
  }

  @override
  String toString() {
    return 'GeoCoordinates[elevation=$elevation, point=$point, ]';
  }
}
