part of keyclic_sdk_api.api;

class LoginData {
  LoginData();

  LoginData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    login = json['login'];
    password = json['password'];
  }

  String login;

  String password;

  Map<String, dynamic> toJson() {
    return {
      'login': login,
      'password': password,
    };
  }

  @override
  String toString() {
    return 'LoginData[login=$login, password=$password, ]';
  }

  static List<LoginData> listFromJson(List<dynamic> json) {
    return json == null ? List<LoginData>() : json.map((value) => LoginData.fromJson(value)).toList();
  }

  static Map<String, LoginData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LoginData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LoginData.fromJson(value));
    }
    return map;
  }
}
