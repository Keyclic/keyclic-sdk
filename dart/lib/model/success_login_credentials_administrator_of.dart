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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SuccessLoginCredentialsAdministratorOf &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        token == other.token &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= token?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<SuccessLoginCredentialsAdministratorOf> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <SuccessLoginCredentialsAdministratorOf>[]
        : json
            .map((dynamic value) =>
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

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (token != null) 'token': token,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'SuccessLoginCredentialsAdministratorOf[id=$id, token=$token, type=$type, ]';
  }
}
