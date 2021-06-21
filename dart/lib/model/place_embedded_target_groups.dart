// @dart=2.10
part of keyclic_sdk_api.api;

class PlaceEmbeddedTargetGroups {
  PlaceEmbeddedTargetGroups({
    this.id,
    this.name,
    this.description,
  });

  factory PlaceEmbeddedTargetGroups.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceEmbeddedTargetGroups(
      id: json['id'],
      name: json['name'],
      description: json['description'],
    );
  }

  String id;

  String name;

  String description;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceEmbeddedTargetGroups &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        name == other.name &&
        description == other.description;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlaceEmbeddedTargetGroups> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlaceEmbeddedTargetGroups.fromJson(value))
            ?.toList() ??
        <PlaceEmbeddedTargetGroups>[];
  }

  static Map<String, PlaceEmbeddedTargetGroups> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PlaceEmbeddedTargetGroups>(
            (String key, dynamic value) {
          return MapEntry(key, PlaceEmbeddedTargetGroups.fromJson(value));
        }) ??
        <String, PlaceEmbeddedTargetGroups>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
    };
  }

  @override
  String toString() {
    return 'PlaceEmbeddedTargetGroups[id=$id, name=$name, description=$description, ]';
  }
}
