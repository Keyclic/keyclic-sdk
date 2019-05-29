part of keyclic_sdk_api.api;

class CategoryLinksOrganizationIriTemplate {
  CategoryLinksOrganizationIriTemplate();

  CategoryLinksOrganizationIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']);
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'CategoryLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }

  static List<CategoryLinksOrganizationIriTemplate> listFromJson(List<dynamic> json) {
    return json == null ? List<CategoryLinksOrganizationIriTemplate>() : json.map((value) => CategoryLinksOrganizationIriTemplate.fromJson(value)).toList();
  }

  static Map<String, CategoryLinksOrganizationIriTemplate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CategoryLinksOrganizationIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CategoryLinksOrganizationIriTemplate.fromJson(value));
    }
    return map;
  }
}
