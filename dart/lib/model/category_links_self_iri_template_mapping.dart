// @dart=2.10
part of keyclic_sdk_api.api;

class CategoryLinksSelfIriTemplateMapping {
  CategoryLinksSelfIriTemplateMapping({
    this.category,
  });

  factory CategoryLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CategoryLinksSelfIriTemplateMapping(
      category: json['category'],
    );
  }

  String category;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        category == other.category;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= category?.hashCode ?? 0;

    return hashCode;
  }

  static List<CategoryLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                CategoryLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <CategoryLinksSelfIriTemplateMapping>[];
  }

  static Map<String, CategoryLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, CategoryLinksSelfIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, CategoryLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, CategoryLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (category != null) 'category': category,
    };
  }

  @override
  String toString() {
    return 'CategoryLinksSelfIriTemplateMapping[category=$category, ]';
  }
}
