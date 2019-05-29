part of keyclic_sdk_api.api;

class PersonLinksImage {
  PersonLinksImage();

  PersonLinksImage.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = DelegationLinksCreatedByIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the image associated to the given person. */
  String href;

  DelegationLinksCreatedByIriTemplate iriTemplate;

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
    return json == null ? List<PersonLinksImage>() : json.map((value) => PersonLinksImage.fromJson(value)).toList();
  }

  static Map<String, PersonLinksImage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PersonLinksImage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PersonLinksImage.fromJson(value));
    }
    return map;
  }
}
