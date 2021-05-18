part of keyclic_sdk_api.api;

class MarkerLinksPlanIriTemplate {
  MarkerLinksPlanIriTemplate({
    this.mapping,
  });

  factory MarkerLinksPlanIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MarkerLinksPlanIriTemplate(
      mapping: MarkerLinksPlanIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  MarkerLinksPlanIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinksPlanIriTemplate &&
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

  static List<MarkerLinksPlanIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => MarkerLinksPlanIriTemplate.fromJson(value))
            ?.toList() ??
        <MarkerLinksPlanIriTemplate>[];
  }

  static Map<String, MarkerLinksPlanIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, MarkerLinksPlanIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, MarkerLinksPlanIriTemplate.fromJson(value));
        }) ??
        <String, MarkerLinksPlanIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'MarkerLinksPlanIriTemplate[mapping=$mapping, ]';
  }
}
