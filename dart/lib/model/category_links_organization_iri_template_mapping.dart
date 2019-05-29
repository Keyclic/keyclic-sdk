part of keyclic_sdk_api.api;

class CategoryLinksOrganizationIriTemplateMapping {
  CategoryLinksOrganizationIriTemplateMapping();

  CategoryLinksOrganizationIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    organization = json['organization'];
  }

  String organization;

  Map<String, dynamic> toJson() {
    return {
      'organization': organization,
    };
  }

  @override
  String toString() {
    return 'CategoryLinksOrganizationIriTemplateMapping[organization=$organization, ]';
  }

  static List<CategoryLinksOrganizationIriTemplateMapping> listFromJson(List<dynamic> json) {
    return json == null ? List<CategoryLinksOrganizationIriTemplateMapping>() : json.map((value) => CategoryLinksOrganizationIriTemplateMapping.fromJson(value)).toList();
  }

  static Map<String, CategoryLinksOrganizationIriTemplateMapping> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CategoryLinksOrganizationIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CategoryLinksOrganizationIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
