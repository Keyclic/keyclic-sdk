part of keyclic_sdk_api.api;

class ResetPasswordData {
  ResetPasswordData({
    this.email,
  });

  ResetPasswordData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    email = json['email'];
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
    return json == null
        ? <ResetPasswordData>[]
        : json
            .map((dynamic value) => ResetPasswordData.fromJson(value))
            .toList();
  }

  static Map<String, ResetPasswordData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResetPasswordData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ResetPasswordData.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
    };
  }

  @override
  String toString() {
    return 'ResetPasswordData[email=$email, ]';
  }
}
