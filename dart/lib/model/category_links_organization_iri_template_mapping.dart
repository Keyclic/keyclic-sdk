part of keyclic_sdk_api.api;

class CategoryLinksOrganizationIriTemplateMapping {
  CategoryLinksOrganizationIriTemplateMapping({
    this.organization,
  });

  factory CategoryLinksOrganizationIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CategoryLinksOrganizationIriTemplateMapping(
      organization: json['organization'],
    );
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
    return json
            ?.map((dynamic value) =>
                CategoryLinksOrganizationIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <CategoryLinksOrganizationIriTemplateMapping>[];
  }

  static Map<String, CategoryLinksOrganizationIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, CategoryLinksOrganizationIriTemplateMapping.fromJson(value));
        }) ??
        <String, CategoryLinksOrganizationIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (organization != null) 'organization': organization,
    };
  }

  @override
  String toString() {
    return 'CategoryLinksOrganizationIriTemplateMapping[organization=$organization, ]';
  }
}
