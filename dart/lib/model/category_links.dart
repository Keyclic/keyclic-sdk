part of keyclic_sdk_api.api;

class CategoryLinks {
  CategoryLinks({
    this.organization,
    this.self,
  });

  CategoryLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    organization = CategoryLinksOrganization.fromJson(json['organization']);
    self = CategoryLinksSelf.fromJson(json['self']);
  }

  CategoryLinksOrganization organization;

  CategoryLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinks &&
        runtimeType == other.runtimeType &&
        organization == other.organization &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<CategoryLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <CategoryLinks>[]
        : json.map((dynamic value) => CategoryLinks.fromJson(value)).toList();
  }

  static Map<String, CategoryLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CategoryLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CategoryLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (organization != null) 'organization': organization,
      if (self != null) 'self': self,
    };
  }

  @override
  String toString() {
    return 'CategoryLinks[organization=$organization, self=$self, ]';
  }
}
