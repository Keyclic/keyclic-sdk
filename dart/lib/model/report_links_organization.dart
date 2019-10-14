part of keyclic_sdk_api.api;

class ReportLinksOrganization {
  ReportLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  ReportLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        ReportLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
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
    return json == null
        ? <ReportLinksOrganization>[]
        : json
            .map((dynamic value) => ReportLinksOrganization.fromJson(value))
            .toList();
  }

  static Map<String, ReportLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksOrganization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksOrganization.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'ReportLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
