part of keyclic_sdk_api.api;

class BusinessActivityLinksSelf {
  BusinessActivityLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory BusinessActivityLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksSelf(
      href: json['href'],
      iriTemplate:
          BusinessActivityLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given businessactivity. */
  String href;

  BusinessActivityLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksSelf &&
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

  static List<BusinessActivityLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => BusinessActivityLinksSelf.fromJson(value))
            ?.toList() ??
        <BusinessActivityLinksSelf>[];
  }

  static Map<String, BusinessActivityLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, BusinessActivityLinksSelf>(
            (String key, dynamic value) {
          return MapEntry(key, BusinessActivityLinksSelf.fromJson(value));
        }) ??
        <String, BusinessActivityLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'BusinessActivityLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
