part of keyclic_sdk_api.api;

class Role {
  Role({
    this.createdAt,
    this.description,
    this.id,
    this.name,
    this.permissions,
    this.type,
    this.updatedAt,
  });

  factory Role.fromJson(Map<String, dynamic> json) {
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

    return Role(
      createdAt: createdAt,
      description: json['description'],
      id: json['id'],
      name: json['name'],
      permissions: json['permissions'] is List
          ? List<String>.from(json['permissions'])
          : null,
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  DateTime createdAt;

  String description;

  String id;

  String name;

  List<String> permissions;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Role &&
        runtimeType == other.runtimeType &&
        createdAt == other.createdAt &&
        description == other.description &&
        id == other.id &&
        name == other.name &&
        DeepCollectionEquality.unordered()
            .equals(permissions, other.permissions) &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (permissions is List && permissions.isNotEmpty) {
      hashCode ^= permissions
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Role> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Role.fromJson(value))?.toList() ??
        <Role>[];
  }

  static Map<String, Role> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Role>((String key, dynamic value) {
          return MapEntry(key, Role.fromJson(value));
        }) ??
        <String, Role>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (description != null) 'description': description,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (permissions != null) 'permissions': permissions,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Role[createdAt=$createdAt, description=$description, id=$id, name=$name, permissions=$permissions, type=$type, updatedAt=$updatedAt, ]';
  }
}
