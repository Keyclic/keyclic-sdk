part of keyclic_sdk_api.api;

class FeatureGeometryTypeEnum {
  static const String polygon_ = "Polygon";
  static const String point_ = "Point";
}

class FeatureGeometry {
  FeatureGeometry({
    this.type,
    this.coordinates,
  });

  factory FeatureGeometry.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeatureGeometry(
      type: json['type'],
      coordinates: (json['coordinates']),
    );
  }

  /// use FeatureGeometryTypeEnum
  String type;

  List<dynamic> coordinates;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeatureGeometry &&
        runtimeType == other.runtimeType &&
        type == other.type &&
        DeepCollectionEquality.unordered()
            .equals(coordinates, other.coordinates);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (coordinates is List && coordinates.isNotEmpty) {
      hashCode ^= coordinates
          .map((dynamic element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<FeatureGeometry> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => FeatureGeometry.fromJson(value))
            ?.toList() ??
        <FeatureGeometry>[];
  }

  static Map<String, FeatureGeometry> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, FeatureGeometry.fromJson(value));
        }) ??
        <String, FeatureGeometry>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (type != null) 'type': type,
      if (coordinates != null) 'coordinates': coordinates,
    };
  }

  @override
  String toString() {
    return 'FeatureGeometry[type=$type, coordinates=$coordinates, ]';
  }
}
