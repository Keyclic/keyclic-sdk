part of keyclic_sdk_api.api;

class CategoryLinksSelfIriTemplateMapping {
  CategoryLinksSelfIriTemplateMapping({
    this.category,
  });

  CategoryLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    category = json['category'];
  }

  String category;

  Map<String, dynamic> toJson() {
    return {
      'category': category,
    };
  }

  @override
  String toString() {
    return 'CategoryLinksSelfIriTemplateMapping[category=$category, ]';
  }

  static List<CategoryLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<CategoryLinksSelfIriTemplateMapping>()
        : json
            .map((value) => CategoryLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, CategoryLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, CategoryLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CategoryLinksSelfIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
