part of keyclic_sdk_api.api;

class PasswordData {
  PasswordData({
    this.password,
  });

  PasswordData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    password = json['password'];
  }

  String password;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PasswordData &&
        runtimeType == other.runtimeType &&
        password == other.password;
  }

  @override
  int get hashCode => 0 ^ password.hashCode;

  static List<PasswordData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PasswordData>()
        : json.map((value) => PasswordData.fromJson(value)).toList();
  }

  static Map<String, PasswordData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PasswordData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PasswordData.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'password': password,
    };
  }

  @override
  String toString() {
    return 'PasswordData[password=$password, ]';
  }
}
