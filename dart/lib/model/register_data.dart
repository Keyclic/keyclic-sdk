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

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is RegisterData &&
        runtimeType == other.runtimeType &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode => 0 ^ email.hashCode ^ password.hashCode;

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
