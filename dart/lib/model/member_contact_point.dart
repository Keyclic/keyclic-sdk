part of keyclic_sdk_api.api;

class MemberContactPoint {
  MemberContactPoint({
    this.email,
    this.name,
    this.telephone,
  });

  factory MemberContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberContactPoint(
      email: json['email'],
      name: json['name'],
      telephone: json['telephone'],
    );
  }

  String email;

  String name;

  String telephone;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberContactPoint &&
        runtimeType == other.runtimeType &&
        email == other.email &&
        name == other.name &&
        telephone == other.telephone;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= email?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= telephone?.hashCode ?? 0;

    return hashCode;
  }

  static List<MemberContactPoint> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => MemberContactPoint.fromJson(value))
            ?.toList() ??
        <MemberContactPoint>[];
  }

  static Map<String, MemberContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, MemberContactPoint.fromJson(value));
        }) ??
        <String, MemberContactPoint>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (email != null) 'email': email,
      if (name != null) 'name': name,
      if (telephone != null) 'telephone': telephone,
    };
  }

  @override
  String toString() {
    return 'MemberContactPoint[email=$email, name=$name, telephone=$telephone, ]';
  }
}
