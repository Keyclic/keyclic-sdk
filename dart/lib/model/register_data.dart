part of keyclic_sdk_api.api;

class RegisterData {
  RegisterData({
    this.agreement,
    this.email,
    this.invitation,
    this.password,
  });

  factory RegisterData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RegisterData(
      agreement: RegisterDataAgreement.fromJson(json['agreement']),
      email: json['email'],
      invitation: json['invitation'],
      password: json['password'],
    );
  }

  RegisterDataAgreement agreement;

  String email;

  String invitation;

  String password;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RegisterData &&
        runtimeType == other.runtimeType &&
        agreement == other.agreement &&
        email == other.email &&
        invitation == other.invitation &&
        password == other.password;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= agreement?.hashCode ?? 0;
    hashCode ^= email?.hashCode ?? 0;
    hashCode ^= invitation?.hashCode ?? 0;
    hashCode ^= password?.hashCode ?? 0;

    return hashCode;
  }

  static List<RegisterData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => RegisterData.fromJson(value))
            ?.toList() ??
        <RegisterData>[];
  }

  static Map<String, RegisterData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, RegisterData>((String key, dynamic value) {
          return MapEntry(key, RegisterData.fromJson(value));
        }) ??
        <String, RegisterData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'agreement': agreement?.toJson(),
      'email': email,
      'invitation': invitation,
      'password': password,
    };
  }

  @override
  String toString() {
    return 'RegisterData[agreement=$agreement, email=$email, invitation=$invitation, password=$password, ]';
  }
}
