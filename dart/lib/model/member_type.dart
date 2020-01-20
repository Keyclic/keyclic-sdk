part of keyclic_sdk_api.api;

class MemberType {
  MemberType({
    this.id,
    this.roles,
    this.type,
  });

  factory MemberType.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberType(
      id: json['id'],
      roles: Role.listFromJson(json['roles']),
      type: json['type'],
    );
  }

  String id;

  List<Role> roles;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberType &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        DeepCollectionEquality.unordered().equals(roles, other.roles) &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (roles is List && roles.isNotEmpty) {
      hashCode ^= roles
          .map((Role element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<MemberType> listFromJson(List<dynamic> json) {
    return json == null
        ? <MemberType>[]
        : json.map((dynamic value) => MemberType.fromJson(value)).toList();
  }

  static Map<String, MemberType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberType>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = MemberType.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (roles != null) 'roles': roles,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'MemberType[id=$id, roles=$roles, type=$type, ]';
  }
}
