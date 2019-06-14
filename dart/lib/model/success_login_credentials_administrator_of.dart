part of keyclic_sdk_api.api;

class SuccessLoginCredentialsAdministratorOf {
  SuccessLoginCredentialsAdministratorOf({
    this.id,
    this.token,
    this.type,
  });

  SuccessLoginCredentialsAdministratorOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    id = json['id'];
    token = json['token'];
    type = json['type'];
  }

  String id;

  String token;

  String type;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is SuccessLoginCredentialsAdministratorOf &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'token': token,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'SuccessLoginCredentialsAdministratorOf[id=$id, token=$token, type=$type, ]';
  }

  static List<SuccessLoginCredentialsAdministratorOf> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<SuccessLoginCredentialsAdministratorOf>()
        : json
            .map((value) =>
                SuccessLoginCredentialsAdministratorOf.fromJson(value))
            .toList();
  }

  static Map<String, SuccessLoginCredentialsAdministratorOf> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, SuccessLoginCredentialsAdministratorOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = SuccessLoginCredentialsAdministratorOf.fromJson(value));
    }
    return map;
  }
}