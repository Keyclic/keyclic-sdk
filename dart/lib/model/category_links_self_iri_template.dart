part of keyclic_sdk_api.api;

class CategoryLinksSelfIriTemplate {
  CategoryLinksSelfIriTemplate({
    this.mapping,
  });

  CategoryLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = CategoryLinksSelfIriTemplateMapping.fromJson(json['mapping']);
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
    return json == null
        ? <CategoryLinksSelfIriTemplate>[]
        : json
            .map(
                (dynamic value) => CategoryLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, CategoryLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, CategoryLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CategoryLinksSelfIriTemplate.fromJson(value));
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
    return 'CategoryLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
