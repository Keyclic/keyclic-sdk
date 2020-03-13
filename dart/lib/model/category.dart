part of keyclic_sdk_api.api;

class Category {
  Category({
    this.embedded,
    this.links,
    this.color,
    this.createdAt,
    this.icon,
    this.id,
    this.identificationNumber,
    this.name,
    this.type,
    this.updatedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return Category(
      embedded: CategoryEmbedded.fromJson(json['_embedded']),
      links: CategoryLinks.fromJson(json['_links']),
      color: json['color'],
      createdAt: createdAt,
      icon: json['icon'],
      id: json['id'],
      identificationNumber: json['identificationNumber'],
      name: json['name'],
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  CategoryEmbedded embedded;

  CategoryLinks links;

  String color;

  DateTime createdAt;

  String icon;

  String id;

  String identificationNumber;

  String name;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Category &&
        runtimeType == other.runtimeType &&
        embedded == other.embedded &&
        links == other.links &&
        color == other.color &&
        createdAt == other.createdAt &&
        icon == other.icon &&
        id == other.id &&
        identificationNumber == other.identificationNumber &&
        name == other.name &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= embedded?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= color?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= icon?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= identificationNumber?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Category> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Category.fromJson(value))?.toList() ??
        <Category>[];
  }

  static Map<String, Category> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Category>((String key, dynamic value) {
          return MapEntry(key, Category.fromJson(value));
        }) ??
        <String, Category>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (embedded != null) '_embedded': embedded.toJson(),
      if (links != null) '_links': links.toJson(),
      if (color != null) 'color': color,
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (icon != null) 'icon': icon,
      if (id != null) 'id': id,
      if (identificationNumber != null)
        'identificationNumber': identificationNumber,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Category[embedded=$embedded, links=$links, color=$color, createdAt=$createdAt, icon=$icon, id=$id, identificationNumber=$identificationNumber, name=$name, type=$type, updatedAt=$updatedAt, ]';
  }
}
