part of keyclic_sdk_api.api;

class MarkerDataPoint {
  MarkerDataPoint({
    this.x,
    this.y,
  });

  factory MarkerDataPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MarkerDataPoint(
      x: json['x'],
      y: json['y'],
    );
  }

  num x;

  num y;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerDataPoint &&
        runtimeType == other.runtimeType &&
        x == other.x &&
        y == other.y;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= x?.hashCode ?? 0;
    hashCode ^= y?.hashCode ?? 0;

    return hashCode;
  }

  static List<MarkerDataPoint> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => MarkerDataPoint.fromJson(value))
            ?.toList() ??
        <MarkerDataPoint>[];
  }

  static Map<String, MarkerDataPoint> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, MarkerDataPoint>((String key, dynamic value) {
          return MapEntry(key, MarkerDataPoint.fromJson(value));
        }) ??
        <String, MarkerDataPoint>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'x': x,
      'y': y,
    };
  }

  @override
  String toString() {
    return 'MarkerDataPoint[x=$x, y=$y, ]';
  }
}
