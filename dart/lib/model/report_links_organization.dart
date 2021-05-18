part of keyclic_sdk_api.api;

class ReportLinksOrganization {
  ReportLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  factory ReportLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksOrganization(
      href: json['href'],
      iriTemplate:
          ReportLinksOrganizationIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the organization associated to the given report. */
  String href;

  ReportLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksOrganization &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReportLinksOrganization> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReportLinksOrganization.fromJson(value))
            ?.toList() ??
        <ReportLinksOrganization>[];
  }

  static Map<String, ReportLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, ReportLinksOrganization>((String key, dynamic value) {
          return MapEntry(key, ReportLinksOrganization.fromJson(value));
        }) ??
        <String, ReportLinksOrganization>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
