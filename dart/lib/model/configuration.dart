part of keyclic_sdk_api.api;

class Configuration {
  Configuration({
    this.createdAt,
    this.description,
    this.id,
    this.memberType,
    this.name,
    this.type,
    this.updatedAt,
  });

  Configuration.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    description = json['description'];
    id = json['id'];
    memberType = ConfigurationMemberType.fromJson(json['memberType']);
    name = json['name'];
    type = json['type'];
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
  }

  DateTime createdAt;

  String description;

  String id;

  ConfigurationMemberType memberType;

  String name;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Configuration &&
        runtimeType == other.runtimeType &&
        createdAt == other.createdAt &&
        description == other.description &&
        id == other.id &&
        memberType == other.memberType &&
        name == other.name &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= memberType?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Configuration> listFromJson(List<dynamic> json) {
    return json == null
        ? <Configuration>[]
        : json.map((dynamic value) => Configuration.fromJson(value)).toList();
  }

  static Map<String, Configuration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Configuration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = Configuration.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (description != null) 'description': description,
      if (id != null) 'id': id,
      if (memberType != null) 'memberType': memberType,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Configuration[createdAt=$createdAt, description=$description, id=$id, memberType=$memberType, name=$name, type=$type, updatedAt=$updatedAt, ]';
  }
}
