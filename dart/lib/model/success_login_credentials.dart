// @dart=2.10
part of keyclic_sdk_api.api;

class SuccessLoginCredentials {
  SuccessLoginCredentials({
    this.id,
    this.login,
  });

  factory SuccessLoginCredentials.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SuccessLoginCredentials(
      id: json['id'],
      login: json['login'],
    );
  }

  String id;

  String login;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SuccessLoginCredentials &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        login == other.login;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= login?.hashCode ?? 0;

    return hashCode;
  }

  static List<SuccessLoginCredentials> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => SuccessLoginCredentials.fromJson(value))
            ?.toList() ??
        <SuccessLoginCredentials>[];
  }

  static Map<String, SuccessLoginCredentials> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, SuccessLoginCredentials>((String key, dynamic value) {
          return MapEntry(key, SuccessLoginCredentials.fromJson(value));
        }) ??
        <String, SuccessLoginCredentials>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (login != null) 'login': login,
    };
  }

  @override
  String toString() {
    return 'SuccessLoginCredentials[id=$id, login=$login, ]';
  }
}
