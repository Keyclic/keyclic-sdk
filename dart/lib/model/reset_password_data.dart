// @dart=2.10
part of keyclic_sdk_api.api;

class ResetPasswordData {
  ResetPasswordData({
    this.email,
  });

  factory ResetPasswordData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ResetPasswordData(
      email: json['email'],
    );
  }

  String email;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ResetPasswordData &&
        runtimeType == other.runtimeType &&
        email == other.email;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= email?.hashCode ?? 0;

    return hashCode;
  }

  static List<ResetPasswordData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ResetPasswordData.fromJson(value))
            ?.toList() ??
        <ResetPasswordData>[];
  }

  static Map<String, ResetPasswordData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ResetPasswordData>((String key, dynamic value) {
          return MapEntry(key, ResetPasswordData.fromJson(value));
        }) ??
        <String, ResetPasswordData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (email != null) 'email': email,
    };
  }

  @override
  String toString() {
    return 'ResetPasswordData[email=$email, ]';
  }
}
