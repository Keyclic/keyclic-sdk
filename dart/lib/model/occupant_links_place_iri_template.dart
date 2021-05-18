part of keyclic_sdk_api.api;

class OccupantLinksPlaceIriTemplate {
  OccupantLinksPlaceIriTemplate({
    this.mapping,
  });

  factory OccupantLinksPlaceIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksPlaceIriTemplate(
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

    return other is OccupantLinksPlaceIriTemplate &&
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

  static List<OccupantLinksPlaceIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OccupantLinksPlaceIriTemplate.fromJson(value))
            ?.toList() ??
        <OccupantLinksPlaceIriTemplate>[];
  }

  static Map<String, OccupantLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OccupantLinksPlaceIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, OccupantLinksPlaceIriTemplate.fromJson(value));
        }) ??
        <String, OccupantLinksPlaceIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'OccupantLinksPlaceIriTemplate[mapping=$mapping, ]';
  }
}
