part of keyclic_sdk_api.api;

class ReportLinksPlace {
  ReportLinksPlace({
    this.href,
    this.iriTemplate,
  });

  ReportLinksPlace.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = ReportLinksPlaceIriTemplate.fromJson(json['iriTemplate']);
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
  int get hashCode => 0 ^ href.hashCode ^ iriTemplate.hashCode;

  static List<ReportLinksPlace> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportLinksPlace>[]
        : json.map((value) => ReportLinksPlace.fromJson(value)).toList();
  }

  static Map<String, ReportLinksPlace> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportLinksPlace>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksPlace.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'ReportLinksPlace[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
