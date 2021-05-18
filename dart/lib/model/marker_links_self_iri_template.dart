part of keyclic_sdk_api.api;

class MarkerLinksSelfIriTemplate {
  MarkerLinksSelfIriTemplate({
    this.mapping,
  });

  factory MarkerLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MarkerLinksSelfIriTemplate(
      mapping: MarkerLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  MarkerLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinksSelfIriTemplate &&
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

  static List<MarkerLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => MarkerLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <MarkerLinksSelfIriTemplate>[];
  }

  static Map<String, MarkerLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, MarkerLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, MarkerLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, MarkerLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'MarkerLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
