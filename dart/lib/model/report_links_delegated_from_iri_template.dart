part of keyclic_sdk_api.api;

class ReportLinksDelegatedFromIriTemplate {
  ReportLinksDelegatedFromIriTemplate({
    this.mapping,
  });

  factory ReportLinksDelegatedFromIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksDelegatedFromIriTemplate(
      mapping:
          CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']),
    );
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
    return json
            ?.map((dynamic value) =>
                ReportLinksDelegatedFromIriTemplate.fromJson(value))
            ?.toList() ??
        <ReportLinksDelegatedFromIriTemplate>[];
  }

  static Map<String, ReportLinksDelegatedFromIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, ReportLinksDelegatedFromIriTemplate.fromJson(value));
        }) ??
        <String, ReportLinksDelegatedFromIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportLinksDelegatedFromIriTemplate[mapping=$mapping, ]';
  }
}
