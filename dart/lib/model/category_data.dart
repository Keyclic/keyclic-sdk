part of keyclic_sdk_api.api;

class CategoryData {
  CategoryData({
    this.name,
    this.organization,
    this.parent,
  });

  factory CategoryData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CategoryData(
      name: json['name'],
      organization: json['organization'],
      parent: json['parent'],
    );
  }

  String name;

  String organization;

  String parent;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryData &&
        runtimeType == other.runtimeType &&
        name == other.name &&
        organization == other.organization &&
        parent == other.parent;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= parent?.hashCode ?? 0;

    return hashCode;
  }

  static List<CategoryData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => CategoryData.fromJson(value))
            ?.toList() ??
        <CategoryData>[];
  }

  static Map<String, CategoryData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, CategoryData>((String key, dynamic value) {
          return MapEntry(key, CategoryData.fromJson(value));
        }) ??
        <String, CategoryData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (name != null) 'name': name,
      if (organization != null) 'organization': organization,
      if (parent != null) 'parent': parent,
    };
  }

  @override
  String toString() {
    return 'CategoryData[name=$name, organization=$organization, parent=$parent, ]';
  }
}
