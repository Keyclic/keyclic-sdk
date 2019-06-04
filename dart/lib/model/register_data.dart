part of keyclic_sdk_api.api;

class RegisterData {
  RegisterData({
    this.email,
    this.password,
  });

  RegisterData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    email = json['email'];
    password = json['password'];
  }

  String email;

  String password;

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }

  @override
  String toString() {
    return 'RegisterData[email=$email, password=$password, ]';
  }

  static List<RegisterData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<RegisterData>()
        : json.map((value) => RegisterData.fromJson(value)).toList();
  }

  static Map<String, RegisterData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RegisterData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = RegisterData.fromJson(value));
    }
    return map;
  }
}
