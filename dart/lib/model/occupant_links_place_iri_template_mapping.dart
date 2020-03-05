part of keyclic_sdk_api.api;

class OccupantLinksPlaceIriTemplateMapping {
  OccupantLinksPlaceIriTemplateMapping({
    this.place,
  });

  factory OccupantLinksPlaceIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksPlaceIriTemplateMapping(
      place: json['place'],
    );
  }

  String place;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksPlaceIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        place == other.place;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= place?.hashCode ?? 0;

    return hashCode;
  }

  static List<OccupantLinksPlaceIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OccupantLinksPlaceIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <OccupantLinksPlaceIriTemplateMapping>[];
  }

  static Map<String, OccupantLinksPlaceIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, OccupantLinksPlaceIriTemplateMapping.fromJson(value));
        }) ??
        <String, OccupantLinksPlaceIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (place != null) 'place': place,
    };
  }

  @override
  String toString() {
    return 'OccupantLinksPlaceIriTemplateMapping[place=$place, ]';
  }
}
