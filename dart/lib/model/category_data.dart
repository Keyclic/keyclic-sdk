part of keyclic_sdk_api.api;

class CategoryData {
  CategoryData();

  CategoryData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    name = json['name'];
    color = json['color'];
    icon = json['icon'];
  }

  String name;

  String color;

  String icon;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'color': color,
      'icon': icon,
    };
  }

  @override
  String toString() {
    return 'CategoryData[name=$name, color=$color, icon=$icon, ]';
  }

  static List<CategoryData> listFromJson(List<dynamic> json) {
    return json == null ? List<CategoryData>() : json.map((value) => CategoryData.fromJson(value)).toList();
  }

  static Map<String, CategoryData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CategoryData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CategoryData.fromJson(value));
    }
    return map;
  }
}
