// @dart=2.10
part of keyclic_sdk_api.api;

class ReportLinksSelf {
  ReportLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory ReportLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksSelf(
      href: json['href'],
      iriTemplate: ReportLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given report. */
  String href;

  ReportLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksSelf &&
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

  static List<ReportLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReportLinksSelf.fromJson(value))
            ?.toList() ??
        <ReportLinksSelf>[];
  }

  static Map<String, ReportLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ReportLinksSelf>((String key, dynamic value) {
          return MapEntry(key, ReportLinksSelf.fromJson(value));
        }) ??
        <String, ReportLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
