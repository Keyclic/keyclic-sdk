part of keyclic_sdk_api.api;

class CategoryLinksSelfIriTemplate {
  CategoryLinksSelfIriTemplate({
    this.mapping,
  });

  factory CategoryLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CategoryLinksSelfIriTemplate(
      mapping: CategoryLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  CategoryLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksSelfIriTemplate &&
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

  static List<CategoryLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => CategoryLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <CategoryLinksSelfIriTemplate>[];
  }

  static Map<String, CategoryLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, CategoryLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, CategoryLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'CategoryLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
