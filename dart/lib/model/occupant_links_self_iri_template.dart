part of keyclic_sdk_api.api;

class OccupantLinksSelfIriTemplate {
  OccupantLinksSelfIriTemplate({
    this.mapping,
  });

  factory OccupantLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksSelfIriTemplate(
      mapping: OccupantLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  OccupantLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksSelfIriTemplate &&
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

  static List<OccupantLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => OccupantLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <OccupantLinksSelfIriTemplate>[];
  }

  static Map<String, OccupantLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, OccupantLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, OccupantLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'OccupantLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
