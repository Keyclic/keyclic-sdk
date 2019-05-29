part of keyclic_sdk_api.api;

class CategoryLinks {
  CategoryLinks();

  CategoryLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    self = CategoryLinksSelf.fromJson(json['self']);
    organization = CategoryLinksOrganization.fromJson(json['organization']);
  }

  CategoryLinksSelf self;

  CategoryLinksOrganization organization;

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'organization': organization,
    };
  }

  @override
  String toString() {
    return 'CategoryLinks[self=$self, organization=$organization, ]';
  }

  static List<CategoryLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<CategoryLinks>() : json.map((value) => CategoryLinks.fromJson(value)).toList();
  }

  static Map<String, CategoryLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CategoryLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CategoryLinks.fromJson(value));
    }
    return map;
  }
}
