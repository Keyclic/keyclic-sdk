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
    roles = (json['roles'] as List)?.map((item) => item as String)?.toList();
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
  int get hashCode =>
      0 ^
      id.hashCode ^
      login.hashCode ^
      roles.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      administratorOf.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      memberOf.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<SuccessLoginCredentials> listFromJson(List<dynamic> json) {
    return json == null
        ? <SuccessLoginCredentials>[]
        : json.map((value) => SuccessLoginCredentials.fromJson(value)).toList();
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
