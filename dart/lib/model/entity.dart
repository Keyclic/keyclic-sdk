part of keyclic_sdk_api.api;

class Entity {
  Entity({
    this.id,
    this.type,
  });

  factory Entity.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Entity(
      id: json['id'],
      type: json['type'],
    );
  }

  String id;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Entity &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<Entity> listFromJson(List<dynamic> json) {
    return json == null
        ? <Entity>[]
        : json.map((dynamic value) => Entity.fromJson(value)).toList();
  }

  static Map<String, Entity> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Entity>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Entity.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'Entity[id=$id, type=$type, ]';
  }
}
