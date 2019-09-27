part of keyclic_sdk_api.api;

class ReportLinksDelegatedFromIriTemplate {
  ReportLinksDelegatedFromIriTemplate({
    this.mapping,
  });

  ReportLinksDelegatedFromIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']);
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksDelegatedFromIriTemplate &&
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

  static List<ReportLinksDelegatedFromIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <ReportLinksDelegatedFromIriTemplate>[]
        : json
            .map((dynamic value) =>
                ReportLinksDelegatedFromIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReportLinksDelegatedFromIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksDelegatedFromIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksDelegatedFromIriTemplate.fromJson(value));
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
    return 'ReportLinksDelegatedFromIriTemplate[mapping=$mapping, ]';
  }
}
