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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksOrganizationIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        organization == other.organization;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= organization?.hashCode ?? 0;

    return hashCode;
  }

  static List<CategoryLinksOrganizationIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <CategoryLinksOrganizationIriTemplateMapping>[]
        : json
            .map((dynamic value) =>
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

  Map<String, dynamic> toJson() {
    return {
      'organization': organization,
    };
  }

  @override
  String toString() {
    return 'CategoryLinksOrganizationIriTemplateMapping[organization=$organization, ]';
  }
}
