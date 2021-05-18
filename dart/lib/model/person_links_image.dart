part of keyclic_sdk_api.api;

class PersonLinksImage {
  PersonLinksImage({
    this.href,
    this.iriTemplate,
  });

  factory PersonLinksImage.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonLinksImage(
      href: json['href'],
      iriTemplate: PersonLinksImageIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the image associated to the given person. */
  String href;

  PersonLinksImageIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonLinksImage &&
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

  static List<PersonLinksImage> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PersonLinksImage.fromJson(value))
            ?.toList() ??
        <PersonLinksImage>[];
  }

  static Map<String, PersonLinksImage> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PersonLinksImage>((String key, dynamic value) {
          return MapEntry(key, PersonLinksImage.fromJson(value));
        }) ??
        <String, PersonLinksImage>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'PersonLinksImage[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
