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
    if (identical(this, other)) {
      return true;
    }

    return other is SuccessLoginCredentials && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<SuccessLoginCredentials> listFromJson(List<dynamic> json) {
    return json == null
        ? List<SuccessLoginCredentials>()
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
