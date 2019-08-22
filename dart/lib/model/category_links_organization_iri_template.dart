part of keyclic_sdk_api.api;

class CategoryLinksOrganizationIriTemplate {
  CategoryLinksOrganizationIriTemplate({
    this.mapping,
  });

  CategoryLinksOrganizationIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']);
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksOrganizationIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ mapping.hashCode;

  static List<CategoryLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <CategoryLinksOrganizationIriTemplate>[]
        : json
            .map(
                (value) => CategoryLinksOrganizationIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, CategoryLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, CategoryLinksOrganizationIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CategoryLinksOrganizationIriTemplate.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'CategoryLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }
}
