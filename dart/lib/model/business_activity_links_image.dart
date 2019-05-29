part of keyclic_sdk_api.api;

class BusinessActivityLinksImage {
  BusinessActivityLinksImage();

  BusinessActivityLinksImage.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = BusinessActivityLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the image associated to the given businessactivity. */
  String href;

  BusinessActivityLinksSelfIriTemplate iriTemplate;

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

  static List<BusinessActivityLinksImage> listFromJson(List<dynamic> json) {
    return json == null ? List<BusinessActivityLinksImage>() : json.map((value) => BusinessActivityLinksImage.fromJson(value)).toList();
  }

  static Map<String, BusinessActivityLinksImage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BusinessActivityLinksImage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BusinessActivityLinksImage.fromJson(value));
    }
    return map;
  }
}
