part of keyclic_sdk_api.api;

class PlanLinksImage {
  PlanLinksImage({
    this.href,
    this.iriTemplate,
  });

  factory PlanLinksImage.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanLinksImage(
      href: json['href'],
      iriTemplate: PlanLinksImageIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the image associated to the given plan. */
  String href;

  PlanLinksImageIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanLinksImage &&
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

  static List<PlanLinksImage> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlanLinksImage.fromJson(value))
            ?.toList() ??
        <PlanLinksImage>[];
  }

  static Map<String, PlanLinksImage> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PlanLinksImage>((String key, dynamic value) {
          return MapEntry(key, PlanLinksImage.fromJson(value));
        }) ??
        <String, PlanLinksImage>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlanLinksImage[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
