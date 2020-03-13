part of keyclic_sdk_api.api;

class MemberDataContactPoint {
  MemberDataContactPoint({
    this.email,
    this.telephone,
    this.name,
  });

  factory MemberDataContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberDataContactPoint(
      email: json['email'],
      telephone: json['telephone'],
      name: json['name'],
    );
  }

  String email;

  String telephone;

  String name;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberDataContactPoint &&
        runtimeType == other.runtimeType &&
        email == other.email &&
        telephone == other.telephone &&
        name == other.name;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= email?.hashCode ?? 0;
    hashCode ^= telephone?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;

    return hashCode;
  }

  static List<MemberDataContactPoint> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => MemberDataContactPoint.fromJson(value))
            ?.toList() ??
        <MemberDataContactPoint>[];
  }

  static Map<String, MemberDataContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, MemberDataContactPoint>((String key, dynamic value) {
          return MapEntry(key, MemberDataContactPoint.fromJson(value));
        }) ??
        <String, MemberDataContactPoint>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (email != null) 'email': email,
      if (telephone != null) 'telephone': telephone,
      if (name != null) 'name': name,
    };
  }

  @override
  String toString() {
    return 'MemberDataContactPoint[email=$email, telephone=$telephone, name=$name, ]';
  }
}
