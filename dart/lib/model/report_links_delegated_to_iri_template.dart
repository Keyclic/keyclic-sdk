part of keyclic_sdk_api.api;

class ReportLinksDelegatedToIriTemplate {
  ReportLinksDelegatedToIriTemplate({
    this.mapping,
  });

  factory ReportLinksDelegatedToIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksDelegatedToIriTemplate(
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

    return other is ReportLinksDelegatedToIriTemplate &&
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

  static List<ReportLinksDelegatedToIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ReportLinksDelegatedToIriTemplate.fromJson(value))
            ?.toList() ??
        <ReportLinksDelegatedToIriTemplate>[];
  }

  static Map<String, ReportLinksDelegatedToIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, ReportLinksDelegatedToIriTemplate.fromJson(value));
        }) ??
        <String, ReportLinksDelegatedToIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportLinksDelegatedToIriTemplate[mapping=$mapping, ]';
  }
}
