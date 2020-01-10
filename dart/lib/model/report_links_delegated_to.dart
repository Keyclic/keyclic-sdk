part of keyclic_sdk_api.api;

class ReportLinksDelegatedTo {
  ReportLinksDelegatedTo({
    this.href,
    this.iriTemplate,
  });

  factory ReportLinksDelegatedTo.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksDelegatedTo(
      href: json['href'],
      iriTemplate:
          ReportLinksDelegatedToIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the delegatedTo associated to the given report. */
  String href;

  ReportLinksDelegatedToIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksDelegatedTo &&
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

  static List<ReportLinksDelegatedTo> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportLinksDelegatedTo>[]
        : json
            .map((dynamic value) => ReportLinksDelegatedTo.fromJson(value))
            .toList();
  }

  static Map<String, ReportLinksDelegatedTo> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksDelegatedTo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksDelegatedTo.fromJson(value));
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
    return 'ReportLinksDelegatedTo[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
