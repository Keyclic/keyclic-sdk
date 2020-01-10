part of keyclic_sdk_api.api;

class BusinessActivityLinksThumbnail {
  BusinessActivityLinksThumbnail({
    this.href,
    this.iriTemplate,
  });

  factory BusinessActivityLinksThumbnail.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksThumbnail(
      href: json['href'],
      iriTemplate: BusinessActivityLinksThumbnailIriTemplate.fromJson(
          json['iriTemplate']),
    );
  }

  /* The URI of the thumbnail associated to the given businessactivity. */
  String href;

  BusinessActivityLinksThumbnailIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksThumbnail &&
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

  static List<BusinessActivityLinksThumbnail> listFromJson(List<dynamic> json) {
    return json == null
        ? <BusinessActivityLinksThumbnail>[]
        : json
            .map((dynamic value) =>
                BusinessActivityLinksThumbnail.fromJson(value))
            .toList();
  }

  static Map<String, BusinessActivityLinksThumbnail> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, BusinessActivityLinksThumbnail>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = BusinessActivityLinksThumbnail.fromJson(value));
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
    return 'BusinessActivityLinksThumbnail[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
