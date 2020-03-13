part of keyclic_sdk_api.api;

class ReportLinksDelegatedFrom {
  ReportLinksDelegatedFrom({
    this.href,
    this.iriTemplate,
  });

  factory ReportLinksDelegatedFrom.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksDelegatedFrom(
      href: json['href'],
      iriTemplate:
          ReportLinksDelegatedFromIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the delegatedFrom associated to the given report. */
  String href;

  ReportLinksDelegatedFromIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksDelegatedFrom &&
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

  static List<ReportLinksDelegatedFrom> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReportLinksDelegatedFrom.fromJson(value))
            ?.toList() ??
        <ReportLinksDelegatedFrom>[];
  }

  static Map<String, ReportLinksDelegatedFrom> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReportLinksDelegatedFrom>(
            (String key, dynamic value) {
          return MapEntry(key, ReportLinksDelegatedFrom.fromJson(value));
        }) ??
        <String, ReportLinksDelegatedFrom>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportLinksDelegatedFrom[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
