part of keyclic_sdk_api.api;

class ReportLinksSelfIriTemplate {
  ReportLinksSelfIriTemplate({
    this.mapping,
  });

  ReportLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = DelegationLinksReportIriTemplateMapping.fromJson(json['mapping']);
  }

  DelegationLinksReportIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksSelfIriTemplate &&
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

  static List<ReportLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportLinksSelfIriTemplate>[]
        : json
            .map((dynamic value) => ReportLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReportLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksSelfIriTemplate.fromJson(value));
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
    return 'ReportLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
