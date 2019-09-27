part of keyclic_sdk_api.api;

class SuccessLoginCredentialsMemberOf {
  SuccessLoginCredentialsMemberOf({
    this.id,
    this.organization,
    this.roles,
  });

  SuccessLoginCredentialsMemberOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    id = json['id'];
    organization =
        SuccessLoginCredentialsOrganization.fromJson(json['organization']);
    if (json['roles'] is List) {
      roles = List<String>.from(json['roles']);
    }
  }

  String id;

  SuccessLoginCredentialsOrganization organization;

  List<String> roles;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SuccessLoginCredentialsMemberOf &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        organization == other.organization &&
        DeepCollectionEquality.unordered().equals(roles, other.roles);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (roles is List && roles.isNotEmpty) {
      hashCode ^= roles
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;

    return hashCode;
  }

  static List<SuccessLoginCredentialsMemberOf> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <SuccessLoginCredentialsMemberOf>[]
        : json
            .map((dynamic value) =>
                SuccessLoginCredentialsMemberOf.fromJson(value))
            .toList();
  }

  static Map<String, SuccessLoginCredentialsMemberOf> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, SuccessLoginCredentialsMemberOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = SuccessLoginCredentialsMemberOf.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'organization': organization,
      'roles': roles,
    };
  }

  @override
  String toString() {
    return 'SuccessLoginCredentialsMemberOf[id=$id, organization=$organization, roles=$roles, ]';
  }
}
