part of keyclic_sdk_api.api;

class CategoryLinks {
  CategoryLinks({
    this.organization,
    this.self,
  });

  factory CategoryLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CategoryLinks(
      organization: CategoryLinksOrganization.fromJson(json['organization']),
      self: CategoryLinksSelf.fromJson(json['self']),
    );
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
    return json
            ?.map((dynamic value) => CategoryLinks.fromJson(value))
            ?.toList() ??
        <CategoryLinks>[];
  }

  static Map<String, CategoryLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, CategoryLinks>((String key, dynamic value) {
          return MapEntry(key, CategoryLinks.fromJson(value));
        }) ??
        <String, CategoryLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (organization != null) 'organization': organization.toJson(),
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'CategoryLinks[organization=$organization, self=$self, ]';
  }
}
