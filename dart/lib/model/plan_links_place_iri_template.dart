// @dart=2.10
part of keyclic_sdk_api.api;

class PlanLinksPlaceIriTemplate {
  PlanLinksPlaceIriTemplate({
    this.mapping,
  });

  factory PlanLinksPlaceIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanLinksPlaceIriTemplate(
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

    return other is PlanLinksPlaceIriTemplate &&
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

  static List<PlanLinksPlaceIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlanLinksPlaceIriTemplate.fromJson(value))
            ?.toList() ??
        <PlanLinksPlaceIriTemplate>[];
  }

  static Map<String, PlanLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PlanLinksPlaceIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, PlanLinksPlaceIriTemplate.fromJson(value));
        }) ??
        <String, PlanLinksPlaceIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlanLinksPlaceIriTemplate[mapping=$mapping, ]';
  }
}
