part of keyclic_sdk_api.api;

class CategoryLinksSelf {
  CategoryLinksSelf({
    this.href,
    this.iriTemplate,
  });

  CategoryLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = CategoryLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given category. */
  String href;

  CategoryLinksSelfIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'CategoryLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<CategoryLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? List<CategoryLinksSelf>()
        : json.map((value) => CategoryLinksSelf.fromJson(value)).toList();
  }

  static Map<String, CategoryLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CategoryLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CategoryLinksSelf.fromJson(value));
    }
    return map;
  }
}
