part of keyclic_sdk_api.api;

class CategoryPatch {
  CategoryPatch({
    this.color,
    this.icon,
    this.identificationNumber,
    this.name,
  });

  factory CategoryPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CategoryPatch(
      color: json['color'],
      icon: json['icon'],
      identificationNumber: json['identificationNumber'],
      name: json['name'],
    );
  }

  String color;

  String icon;

  String identificationNumber;

  String name;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryPatch &&
        runtimeType == other.runtimeType &&
        color == other.color &&
        icon == other.icon &&
        identificationNumber == other.identificationNumber &&
        name == other.name;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= color?.hashCode ?? 0;
    hashCode ^= icon?.hashCode ?? 0;
    hashCode ^= identificationNumber?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;

    return hashCode;
  }

  static List<CategoryPatch> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => CategoryPatch.fromJson(value))
            ?.toList() ??
        <CategoryPatch>[];
  }

  static Map<String, CategoryPatch> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, CategoryPatch>((String key, dynamic value) {
          return MapEntry(key, CategoryPatch.fromJson(value));
        }) ??
        <String, CategoryPatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (color != null) 'color': color,
      if (icon != null) 'icon': icon,
      if (identificationNumber != null)
        'identificationNumber': identificationNumber,
      if (name != null) 'name': name,
    };
  }

  @override
  String toString() {
    return 'CategoryPatch[color=$color, icon=$icon, identificationNumber=$identificationNumber, name=$name, ]';
  }
}
