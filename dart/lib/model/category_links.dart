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
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinks && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<CategoryLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<CategoryLinks>()
        : json.map((value) => CategoryLinks.fromJson(value)).toList();
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
      'organization': organization,
      'self': self,
    };
  }

  @override
  String toString() {
    return 'CategoryLinks[organization=$organization, self=$self, ]';
  }
}
