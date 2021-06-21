// @dart=2.10
part of keyclic_sdk_api.api;

class ReportLinksCategory {
  ReportLinksCategory({
    this.href,
    this.iriTemplate,
  });

  factory ReportLinksCategory.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksCategory(
      href: json['href'],
      iriTemplate: ReportLinksCategoryIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the category associated to the given report. */
  String href;

  ReportLinksCategoryIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksCategory &&
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

  static List<ReportLinksCategory> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReportLinksCategory.fromJson(value))
            ?.toList() ??
        <ReportLinksCategory>[];
  }

  static Map<String, ReportLinksCategory> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReportLinksCategory>((String key, dynamic value) {
          return MapEntry(key, ReportLinksCategory.fromJson(value));
        }) ??
        <String, ReportLinksCategory>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportLinksCategory[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
