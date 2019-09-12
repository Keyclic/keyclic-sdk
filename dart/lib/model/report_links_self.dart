part of keyclic_sdk_api.api;

class ReportLinksSelf {
  ReportLinksSelf({
    this.href,
    this.iriTemplate,
  });

  ReportLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = ReportLinksSelfIriTemplate.fromJson(json['iriTemplate']);
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

    hashCode ^= (href?.hashCode ?? 0);
    hashCode ^= (iriTemplate?.hashCode ?? 0);

    return hashCode;
  }

  static List<ReportLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportLinksSelf>[]
        : json.map((dynamic value) => ReportLinksSelf.fromJson(value)).toList();
  }

  static Map<String, ReportLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksSelf.fromJson(value));
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
    return 'ReportLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
