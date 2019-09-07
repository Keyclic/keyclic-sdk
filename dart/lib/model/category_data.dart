part of keyclic_sdk_api.api;

class CategoryData {
  CategoryData({
    this.name,
    this.color,
    this.icon,
    this.organization,
  });

  CategoryData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    name = json['name'];
    color = json['color'];
    icon = json['icon'];
    organization = json['organization'];
  }

  String name;

  String color;

  String icon;

  String organization;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryData &&
        runtimeType == other.runtimeType &&
        name == other.name &&
        color == other.color &&
        icon == other.icon &&
        organization == other.organization;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      name.hashCode ^
      color.hashCode ^
      icon.hashCode ^
      organization.hashCode;

  static List<CategoryData> listFromJson(List<dynamic> json) {
    return json == null
        ? <CategoryData>[]
        : json.map((value) => CategoryData.fromJson(value)).toList();
  }

  static Map<String, CategoryData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CategoryData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CategoryData.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'color': color,
      'icon': icon,
      'organization': organization,
    };
  }

  @override
  String toString() {
    return 'CategoryData[name=$name, color=$color, icon=$icon, organization=$organization, ]';
  }
}
