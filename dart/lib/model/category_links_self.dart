part of keyclic_sdk_api.api;

class CategoryLinksSelf {
  CategoryLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory CategoryLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CategoryLinksSelf(
      href: json['href'],
      iriTemplate: CategoryLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given category. */
  String href;

  CategoryLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksSelf &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<CategoryLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? <CategoryLinksSelf>[]
        : json
            .map((dynamic value) => CategoryLinksSelf.fromJson(value))
            .toList();
  }

  static Map<String, CategoryLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CategoryLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CategoryLinksSelf.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'CategoryLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
