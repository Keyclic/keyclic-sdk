part of keyclic_sdk_api.api;

class CategoryLinksOrganizationIriTemplateMapping {
  CategoryLinksOrganizationIriTemplateMapping({
    this.organization,
  });

  CategoryLinksOrganizationIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    organization = json['organization'];
  }

  String organization;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksOrganizationIriTemplateMapping &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'organization': organization,
    };
  }

  @override
  String toString() {
    return 'CategoryLinksOrganizationIriTemplateMapping[organization=$organization, ]';
  }

  static List<CategoryLinksOrganizationIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<CategoryLinksOrganizationIriTemplateMapping>()
        : json
            .map((value) =>
                CategoryLinksOrganizationIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, CategoryLinksOrganizationIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, CategoryLinksOrganizationIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          CategoryLinksOrganizationIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
