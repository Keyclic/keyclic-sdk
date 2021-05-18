part of keyclic_sdk_api.api;

class CategoryLinksOrganizationIriTemplate {
  CategoryLinksOrganizationIriTemplate({
    this.mapping,
  });

  factory CategoryLinksOrganizationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CategoryLinksOrganizationIriTemplate(
      mapping:
          CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']),
    );
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
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<CategoryLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                CategoryLinksOrganizationIriTemplate.fromJson(value))
            ?.toList() ??
        <CategoryLinksOrganizationIriTemplate>[];
  }

  static Map<String, CategoryLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, CategoryLinksOrganizationIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, CategoryLinksOrganizationIriTemplate.fromJson(value));
        }) ??
        <String, CategoryLinksOrganizationIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'CategoryLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }
}
