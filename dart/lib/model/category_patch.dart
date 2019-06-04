part of keyclic_sdk_api.api;

class CategoryPatch {
  CategoryPatch({
    this.color,
    this.icon,
    this.identificationNumber,
    this.name,
  });

  CategoryPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    color = json['color'];
    icon = json['icon'];
    identificationNumber = json['identificationNumber'];
    name = json['name'];
  }

  String color;

  String icon;

  String identificationNumber;

  String name;

  Map<String, dynamic> toJson() {
    return {
      'color': color,
      'icon': icon,
      'identificationNumber': identificationNumber,
      'name': name,
    };
  }

  @override
  String toString() {
    return 'CategoryPatch[color=$color, icon=$icon, identificationNumber=$identificationNumber, name=$name, ]';
  }

  static List<CategoryPatch> listFromJson(List<dynamic> json) {
    return json == null
        ? List<CategoryPatch>()
        : json.map((value) => CategoryPatch.fromJson(value)).toList();
  }

  static Map<String, CategoryPatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CategoryPatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CategoryPatch.fromJson(value));
    }
    return map;
  }
}
