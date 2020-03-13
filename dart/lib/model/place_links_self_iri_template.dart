part of keyclic_sdk_api.api;

class PlaceLinksSelfIriTemplate {
  PlaceLinksSelfIriTemplate({
    this.mapping,
  });

  factory PlaceLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksSelfIriTemplate(
      mapping: OccupantLinksPlaceIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  OccupantLinksPlaceIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksSelfIriTemplate &&
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

  static List<PlaceLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlaceLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <PlaceLinksSelfIriTemplate>[];
  }

  static Map<String, PlaceLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PlaceLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, PlaceLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, PlaceLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
