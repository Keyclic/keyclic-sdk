part of keyclic_sdk_api.api;

class Category {
  Category({
    this.color,
    this.icon,
    this.name,
    this.id,
    this.identificationNumber,
    this.createdAt,
    this.type,
    this.links,
  });

  Category.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    color = json['color'];
    icon = json['icon'];
    name = json['name'];
    id = json['id'];
    identificationNumber = json['identificationNumber'];
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    type = json['type'];
    links = CategoryLinks.fromJson(json['_links']);
  }

  String color;

  String icon;

  String name;

  String id;

  String identificationNumber;

  DateTime createdAt;

  String type;

  CategoryLinks links;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Category &&
        runtimeType == other.runtimeType &&
        color == other.color &&
        name == other.name &&
        id == other.id &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode =>
      0 ^ color.hashCode ^ name.hashCode ^ id.hashCode ^ createdAt.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'color': color,
      'icon': icon,
      'name': name,
      'id': id,
      'identificationNumber': identificationNumber,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'type': type,
      '_links': links,
    };
  }

  @override
  String toString() {
    return 'Category[color=$color, icon=$icon, name=$name, id=$id, identificationNumber=$identificationNumber, createdAt=$createdAt, type=$type, links=$links, ]';
  }

  static List<Category> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Category>()
        : json.map((value) => Category.fromJson(value)).toList();
  }

  static Map<String, Category> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Category>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Category.fromJson(value));
    }
    return map;
  }
}
