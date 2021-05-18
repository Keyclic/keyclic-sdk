part of keyclic_sdk_api.api;

class Marker {
  Marker({
    this.links,
    this.id,
    this.point,
    this.type,
  });

  factory Marker.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Marker(
      links: MarkerLinks.fromJson(json['_links']),
      id: json['id'],
      point: Point.fromJson(json['point']),
      type: json['type'],
    );
  }

  MarkerLinks links;

  String id;

  Point point;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Marker &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        id == other.id &&
        point == other.point &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= point?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<Marker> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Marker.fromJson(value))?.toList() ??
        <Marker>[];
  }

  static Map<String, Marker> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Marker>((String key, dynamic value) {
          return MapEntry(key, Marker.fromJson(value));
        }) ??
        <String, Marker>{};
  }

  Map<String, dynamic> toJson() {
    return {
      '_links': links?.toJson(),
      'id': id,
      'point': point?.toJson(),
      'type': type,
    };
  }

  @override
  String toString() {
    return 'Marker[links=$links, id=$id, point=$point, type=$type, ]';
  }
}
