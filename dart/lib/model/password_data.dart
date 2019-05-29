part of keyclic_sdk_api.api;

class PasswordData {
  PasswordData();

  PasswordData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    password = json['password'];
  }

  String password;

  Map<String, dynamic> toJson() {
    return {
      'password': password,
    };
  }

  @override
  String toString() {
    return 'PasswordData[password=$password, ]';
  }

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
}
