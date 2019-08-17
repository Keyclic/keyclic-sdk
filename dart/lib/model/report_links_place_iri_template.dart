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
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksPlaceIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<ReportLinksPlaceIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportLinksPlaceIriTemplate>()
        : json
            .map((value) => ReportLinksPlaceIriTemplate.fromJson(value))
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
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'ReportLinksPlaceIriTemplate[mapping=$mapping, ]';
  }
}
