part of keyclic_sdk_api.api;

class PlanLinksSelfIriTemplate {
  PlanLinksSelfIriTemplate({
    this.mapping,
  });

  factory PlanLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanLinksSelfIriTemplate(
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

    return other is PlanLinksSelfIriTemplate &&
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

  static List<PlanLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlanLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <PlanLinksSelfIriTemplate>[];
  }

  static Map<String, PlanLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PlanLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, PlanLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, PlanLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlanLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
