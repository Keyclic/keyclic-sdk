part of keyclic_sdk_api.api;

class ConfigurationMemberType {
  ConfigurationMemberType({
    this.id,
    this.roles,
    this.type,
  });

  factory ConfigurationMemberType.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ConfigurationMemberType(
      id: json['id'],
      roles: MemberTypeRole.listFromJson(json['roles']),
      type: json['type'],
    );
  }

  String id;

  List<MemberTypeRole> roles;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationMemberType &&
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
          .map((MemberTypeRole element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<ConfigurationMemberType> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ConfigurationMemberType.fromJson(value))
            ?.toList() ??
        <ConfigurationMemberType>[];
  }

  static Map<String, ConfigurationMemberType> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, ConfigurationMemberType>((String key, dynamic value) {
          return MapEntry(key, ConfigurationMemberType.fromJson(value));
        }) ??
        <String, ConfigurationMemberType>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'roles': roles,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'ConfigurationMemberType[id=$id, roles=$roles, type=$type, ]';
  }
}
