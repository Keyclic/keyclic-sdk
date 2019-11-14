part of keyclic_sdk_api.api;

class RegisterData {
  RegisterData({
    this.email,
    this.password,
    this.agreement,
  });

  RegisterData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    email = json['email'];
    password = json['password'];
    agreement = PersonAgreement.fromJson(json['agreement']);
  }

  String email;

  String password;

  PersonAgreement agreement;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RegisterData &&
        runtimeType == other.runtimeType &&
        email == other.email &&
        password == other.password &&
        agreement == other.agreement;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= email?.hashCode ?? 0;
    hashCode ^= password?.hashCode ?? 0;
    hashCode ^= agreement?.hashCode ?? 0;

    return hashCode;
  }

  static List<RegisterData> listFromJson(List<dynamic> json) {
    return json == null
        ? <RegisterData>[]
        : json.map((dynamic value) => RegisterData.fromJson(value)).toList();
  }

  static Map<String, RegisterData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RegisterData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = RegisterData.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (agreement != null) 'agreement': agreement,
    };
  }

  @override
  String toString() {
    return 'RegisterData[email=$email, password=$password, agreement=$agreement, ]';
  }
}
