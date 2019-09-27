part of keyclic_sdk_api.api;

class SuccessLoginCredentials {
  SuccessLoginCredentials({
    this.id,
    this.login,
    this.roles,
    this.administratorOf,
    this.memberOf,
  });

  SuccessLoginCredentials.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    id = json['id'];
    login = json['login'];
    if (json['roles'] is List) {
      roles = List<String>.from(json['roles']);
    }
    administratorOf = SuccessLoginCredentialsAdministratorOf.listFromJson(
        json['administratorOf']);
    memberOf = SuccessLoginCredentialsMemberOf.listFromJson(json['memberOf']);
  }

  String id;

  String login;

  List<String> roles;

  List<SuccessLoginCredentialsAdministratorOf> administratorOf;

  List<SuccessLoginCredentialsMemberOf> memberOf;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SuccessLoginCredentials &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        login == other.login &&
        DeepCollectionEquality.unordered().equals(roles, other.roles) &&
        DeepCollectionEquality.unordered()
            .equals(administratorOf, other.administratorOf) &&
        DeepCollectionEquality.unordered().equals(memberOf, other.memberOf);
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
    if (administratorOf is List && administratorOf.isNotEmpty) {
      hashCode ^= administratorOf
          .map((SuccessLoginCredentialsAdministratorOf element) =>
              element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (memberOf is List && memberOf.isNotEmpty) {
      hashCode ^= memberOf
          .map((SuccessLoginCredentialsMemberOf element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= login?.hashCode ?? 0;

    return hashCode;
  }

  static List<SuccessLoginCredentials> listFromJson(List<dynamic> json) {
    return json == null
        ? <SuccessLoginCredentials>[]
        : json
            .map((dynamic value) => SuccessLoginCredentials.fromJson(value))
            .toList();
  }

  static Map<String, SuccessLoginCredentials> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, SuccessLoginCredentials>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = SuccessLoginCredentials.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'login': login,
      'roles': roles,
      'administratorOf': administratorOf,
      'memberOf': memberOf,
    };
  }

  @override
  String toString() {
    return 'SuccessLoginCredentials[id=$id, login=$login, roles=$roles, administratorOf=$administratorOf, memberOf=$memberOf, ]';
  }
}
