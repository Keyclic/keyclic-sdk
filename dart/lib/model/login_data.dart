part of keyclic_sdk_api.api;

class LoginData {
  LoginData({
    this.login,
    this.password,
  });

  LoginData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    login = json['login'];
    password = json['password'];
  }

  String login;

  String password;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is LoginData &&
        runtimeType == other.runtimeType &&
        login == other.login &&
        password == other.password;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= login?.hashCode ?? 0;
    hashCode ^= password?.hashCode ?? 0;

    return hashCode;
  }

  static List<LoginData> listFromJson(List<dynamic> json) {
    return json == null
        ? <LoginData>[]
        : json.map((dynamic value) => LoginData.fromJson(value)).toList();
  }

  static Map<String, LoginData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LoginData>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = LoginData.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (login != null) 'login': login,
      if (password != null) 'password': password,
    };
  }

  @override
  String toString() {
    return 'LoginData[login=$login, password=$password, ]';
  }
}
