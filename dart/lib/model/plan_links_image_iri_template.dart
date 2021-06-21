// @dart=2.10
part of keyclic_sdk_api.api;

class PlanLinksImageIriTemplate {
  PlanLinksImageIriTemplate({
    this.mapping,
  });

  factory PlanLinksImageIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanLinksImageIriTemplate(
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

    return other is PlanLinksImageIriTemplate &&
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

  static List<PlanLinksImageIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlanLinksImageIriTemplate.fromJson(value))
            ?.toList() ??
        <PlanLinksImageIriTemplate>[];
  }

  static Map<String, PlanLinksImageIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PlanLinksImageIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, PlanLinksImageIriTemplate.fromJson(value));
        }) ??
        <String, PlanLinksImageIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlanLinksImageIriTemplate[mapping=$mapping, ]';
  }
}
