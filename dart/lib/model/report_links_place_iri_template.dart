part of keyclic_sdk_api.api;

class ReportLinksPlaceIriTemplate {
  ReportLinksPlaceIriTemplate({
    this.mapping,
  });

  factory ReportLinksPlaceIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksPlaceIriTemplate(
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

    return other is ReportLinksPlaceIriTemplate &&
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

  static List<ReportLinksPlaceIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => ReportLinksPlaceIriTemplate.fromJson(value))
            ?.toList() ??
        <ReportLinksPlaceIriTemplate>[];
  }

  static Map<String, ReportLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, ReportLinksPlaceIriTemplate.fromJson(value));
        }) ??
        <String, ReportLinksPlaceIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportLinksPlaceIriTemplate[mapping=$mapping, ]';
  }
}
