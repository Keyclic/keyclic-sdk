part of keyclic_sdk_api.api;

class PasswordChangeData {
  PasswordChangeData({
    this.password,
  });

  factory PasswordChangeData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PasswordChangeData(
      password: json['password'],
    );
  }

  String password;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PasswordChangeData &&
        runtimeType == other.runtimeType &&
        password == other.password;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= password?.hashCode ?? 0;

    return hashCode;
  }

  static List<PasswordChangeData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PasswordChangeData.fromJson(value))
            ?.toList() ??
        <PasswordChangeData>[];
  }

  static Map<String, PasswordChangeData> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PasswordChangeData>((String key, dynamic value) {
          return MapEntry(key, PasswordChangeData.fromJson(value));
        }) ??
        <String, PasswordChangeData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (password != null) 'password': password,
    };
  }

  @override
  String toString() {
    return 'PasswordChangeData[password=$password, ]';
  }
}
