// @dart=2.10
part of keyclic_sdk_api.api;

class CategoryPatch {
  CategoryPatch({
    this.identificationNumber,
    this.name,
  });

  factory CategoryPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CategoryPatch(
      identificationNumber: json['identificationNumber'],
      name: json['name'],
    );
  }

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
        identificationNumber == other.identificationNumber &&
        name == other.name;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

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
      if (identificationNumber != null)
        'identificationNumber': identificationNumber,
      if (name != null) 'name': name,
    };
  }

  @override
  String toString() {
    return 'CategoryPatch[identificationNumber=$identificationNumber, name=$name, ]';
  }
}
