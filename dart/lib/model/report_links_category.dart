part of keyclic_sdk_api.api;

class ReportLinksCategory {
  ReportLinksCategory({
    this.href,
    this.iriTemplate,
  });

  ReportLinksCategory.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = ReportLinksCategoryIriTemplate.fromJson(json['iriTemplate']);
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
    return json == null
        ? <ReportLinksCategory>[]
        : json
            .map((dynamic value) => ReportLinksCategory.fromJson(value))
            .toList();
  }

  static Map<String, ReportLinksCategory> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksCategory>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksCategory.fromJson(value));
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
    return 'ReportLinksCategory[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
