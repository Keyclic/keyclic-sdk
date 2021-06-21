// @dart=2.10
part of keyclic_sdk_api.api;

class PlaceLinksGeoIriTemplate {
  PlaceLinksGeoIriTemplate({
    this.mapping,
  });

  factory PlaceLinksGeoIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksGeoIriTemplate(
      mapping: BookmarkLinksPlaceIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksGeoIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlaceLinksGeoIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlaceLinksGeoIriTemplate.fromJson(value))
            ?.toList() ??
        <PlaceLinksGeoIriTemplate>[];
  }

  static Map<String, PlaceLinksGeoIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PlaceLinksGeoIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, PlaceLinksGeoIriTemplate.fromJson(value));
        }) ??
        <String, PlaceLinksGeoIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceLinksGeoIriTemplate[mapping=$mapping, ]';
  }
}
