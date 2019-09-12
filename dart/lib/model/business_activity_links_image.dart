part of keyclic_sdk_api.api;

class BusinessActivityLinksImage {
  BusinessActivityLinksImage({
    this.href,
    this.iriTemplate,
  });

  BusinessActivityLinksImage.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        BusinessActivityLinksImageIriTemplate.fromJson(json['iriTemplate']);
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

    hashCode ^= (href?.hashCode ?? 0);
    hashCode ^= (iriTemplate?.hashCode ?? 0);

    return hashCode;
  }

  static List<BusinessActivityLinksImage> listFromJson(List<dynamic> json) {
    return json == null
        ? <BusinessActivityLinksImage>[]
        : json
            .map((dynamic value) => BusinessActivityLinksImage.fromJson(value))
            .toList();
  }

  static Map<String, BusinessActivityLinksImage> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, BusinessActivityLinksImage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = BusinessActivityLinksImage.fromJson(value));
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
    return 'BusinessActivityLinksImage[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
