part of keyclic_sdk_api.api;

class MemberPatchContactPoint {
  MemberPatchContactPoint({
    this.email,
    this.telephone,
    this.name,
  });

  factory MemberPatchContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberPatchContactPoint(
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

    return other is MemberPatchContactPoint &&
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

  static List<MemberPatchContactPoint> listFromJson(List<dynamic> json) {
    return json == null
        ? <MemberPatchContactPoint>[]
        : json
            .map((dynamic value) => MemberPatchContactPoint.fromJson(value))
            .toList();
  }

  static Map<String, MemberPatchContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, MemberPatchContactPoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MemberPatchContactPoint.fromJson(value));
    }

    return map;
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
    return 'MemberPatchContactPoint[email=$email, telephone=$telephone, name=$name, ]';
  }
}
