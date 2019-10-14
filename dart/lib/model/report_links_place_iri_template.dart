part of keyclic_sdk_api.api;

class ReportLinksPlaceIriTemplate {
  ReportLinksPlaceIriTemplate({
    this.mapping,
  });

  ReportLinksPlaceIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = OccupantLinksPlaceIriTemplateMapping.fromJson(json['mapping']);
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
    return json == null
        ? <ReportLinksPlaceIriTemplate>[]
        : json
            .map((dynamic value) => ReportLinksPlaceIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReportLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksPlaceIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksPlaceIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'ReportLinksPlaceIriTemplate[mapping=$mapping, ]';
  }
}
