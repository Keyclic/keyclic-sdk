part of keyclic_sdk_api.api;

class PlaceLinksContainsPlacesIriTemplate {
  PlaceLinksContainsPlacesIriTemplate({
    this.mapping,
  });

  factory PlaceLinksContainsPlacesIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksContainsPlacesIriTemplate(
      mapping:
          PlaceLinksContainsPlacesIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  PlaceLinksContainsPlacesIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksContainsPlacesIriTemplate &&
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

  static List<PlaceLinksContainsPlacesIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                PlaceLinksContainsPlacesIriTemplate.fromJson(value))
            ?.toList() ??
        <PlaceLinksContainsPlacesIriTemplate>[];
  }

  static Map<String, PlaceLinksContainsPlacesIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, PlaceLinksContainsPlacesIriTemplate.fromJson(value));
        }) ??
        <String, PlaceLinksContainsPlacesIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceLinksContainsPlacesIriTemplate[mapping=$mapping, ]';
  }
}
