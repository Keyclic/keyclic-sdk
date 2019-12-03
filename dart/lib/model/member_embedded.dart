part of keyclic_sdk_api.api;

class MemberEmbedded {
  MemberEmbedded({
    this.availableRoles,
    this.roles,
  });

  MemberEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    if (json['availableRoles'] is List) {
      availableRoles = List<String>.from(json['availableRoles']);
    }
    roles = Role.listFromJson(json['roles']);
  }

  List<String> availableRoles;

  List<Role> roles;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberEmbedded &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered()
            .equals(availableRoles, other.availableRoles) &&
        DeepCollectionEquality.unordered().equals(roles, other.roles);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (availableRoles is List && availableRoles.isNotEmpty) {
      hashCode ^= availableRoles
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (roles is List && roles.isNotEmpty) {
      hashCode ^= roles
          .map((Role element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<MemberEmbedded> listFromJson(List<dynamic> json) {
    return json == null
        ? <MemberEmbedded>[]
        : json.map((dynamic value) => MemberEmbedded.fromJson(value)).toList();
  }

  static Map<String, MemberEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MemberEmbedded.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (availableRoles != null) 'availableRoles': availableRoles,
      if (roles != null) 'roles': roles,
    };
  }

  @override
  String toString() {
    return 'MemberEmbedded[availableRoles=$availableRoles, roles=$roles, ]';
  }
}
