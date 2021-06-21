// @dart=2.10
part of keyclic_sdk_api.api;

class BusinessActivityLinksImage {
  BusinessActivityLinksImage({
    this.href,
    this.iriTemplate,
  });

  factory BusinessActivityLinksImage.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksImage(
      href: json['href'],
      iriTemplate:
          BusinessActivityLinksImageIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the image associated to the given businessactivity. */
  String href;

  BusinessActivityLinksImageIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksImage &&
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

  static List<BusinessActivityLinksImage> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => BusinessActivityLinksImage.fromJson(value))
            ?.toList() ??
        <BusinessActivityLinksImage>[];
  }

  static Map<String, BusinessActivityLinksImage> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, BusinessActivityLinksImage>(
            (String key, dynamic value) {
          return MapEntry(key, BusinessActivityLinksImage.fromJson(value));
        }) ??
        <String, BusinessActivityLinksImage>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'BusinessActivityLinksImage[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
