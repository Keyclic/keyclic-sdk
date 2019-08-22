part of keyclic_sdk_api.api;

class Category {
  Category({
    this.links,
    this.color,
    this.createdAt,
    this.icon,
    this.id,
    this.identificationNumber,
    this.name,
    this.type,
  });

  Category.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = CategoryLinks.fromJson(json['_links']);
    color = json['color'];
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    icon = json['icon'];
    id = json['id'];
    identificationNumber = json['identificationNumber'];
    name = json['name'];
    type = json['type'];
  }

  CategoryLinks links;

  String color;

  DateTime createdAt;

  String icon;

  String id;

  String identificationNumber;

  String name;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Category &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        color == other.color &&
        createdAt == other.createdAt &&
        icon == other.icon &&
        id == other.id &&
        identificationNumber == other.identificationNumber &&
        name == other.name &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      links.hashCode ^
      color.hashCode ^
      createdAt.hashCode ^
      icon.hashCode ^
      id.hashCode ^
      identificationNumber.hashCode ^
      name.hashCode ^
      type.hashCode;

  static List<Category> listFromJson(List<dynamic> json) {
    return json == null
        ? <Category>[]
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

  Map<String, dynamic> toJson() {
    return {
      '_links': links,
      'color': color,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'icon': icon,
      'id': id,
      'identificationNumber': identificationNumber,
      'name': name,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'Category[links=$links, color=$color, createdAt=$createdAt, icon=$icon, id=$id, identificationNumber=$identificationNumber, name=$name, type=$type, ]';
  }
}
