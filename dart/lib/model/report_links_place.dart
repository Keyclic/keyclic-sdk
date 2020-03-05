part of keyclic_sdk_api.api;

class ReportLinksPlace {
  ReportLinksPlace({
    this.href,
    this.iriTemplate,
  });

  factory ReportLinksPlace.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksPlace(
      href: json['href'],
      iriTemplate: ReportLinksPlaceIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the place associated to the given report. */
  String href;

  ReportLinksPlaceIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksPlace &&
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

  static List<ReportLinksPlace> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReportLinksPlace.fromJson(value))
            ?.toList() ??
        <ReportLinksPlace>[];
  }

  static Map<String, ReportLinksPlace> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, ReportLinksPlace.fromJson(value));
        }) ??
        <String, ReportLinksPlace>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportLinksPlace[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
