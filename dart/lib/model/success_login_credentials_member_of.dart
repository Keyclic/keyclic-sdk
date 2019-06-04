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
    roles = (json['roles'] as List)?.map((item) => item as String)?.toList();
  }

  String id;

  SuccessLoginCredentialsOrganization organization;

  List<String> roles;

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

  static List<SuccessLoginCredentialsMemberOf> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<SuccessLoginCredentialsMemberOf>()
        : json
            .map((value) => SuccessLoginCredentialsMemberOf.fromJson(value))
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
}
