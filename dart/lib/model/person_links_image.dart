part of keyclic_sdk_api.api;

class PersonLinksImage {
  PersonLinksImage({
    this.href,
    this.iriTemplate,
  });

  PersonLinksImage.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = PersonLinksImageIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the image associated to the given person. */
  String href;

  PersonLinksImageIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PersonLinksImage && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'PersonLinksImage[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<PersonLinksImage> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PersonLinksImage>()
        : json.map((value) => PersonLinksImage.fromJson(value)).toList();
  }

  static Map<String, PersonLinksImage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PersonLinksImage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonLinksImage.fromJson(value));
    }
    return map;
  }
}
