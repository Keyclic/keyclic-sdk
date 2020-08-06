part of keyclic_sdk_api.api;

class MemberPatchContactPoint {
  MemberPatchContactPoint({
    this.description,
    this.email,
    this.telephone,
    this.name,
  });

  factory MemberPatchContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberPatchContactPoint(
      description: json['description'],
      email: json['email'],
      telephone: json['telephone'],
      name: json['name'],
    );
  }

  String description;

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
        description == other.description &&
        email == other.email &&
        telephone == other.telephone &&
        name == other.name;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= email?.hashCode ?? 0;
    hashCode ^= telephone?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;

    return hashCode;
  }

  static List<MemberPatchContactPoint> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => MemberPatchContactPoint.fromJson(value))
            ?.toList() ??
        <MemberPatchContactPoint>[];
  }

  static Map<String, MemberPatchContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, MemberPatchContactPoint>((String key, dynamic value) {
          return MapEntry(key, MemberPatchContactPoint.fromJson(value));
        }) ??
        <String, MemberPatchContactPoint>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (description != null) 'description': description,
      if (email != null) 'email': email,
      if (telephone != null) 'telephone': telephone,
      if (name != null) 'name': name,
    };
  }

  @override
  String toString() {
    return 'MemberPatchContactPoint[description=$description, email=$email, telephone=$telephone, name=$name, ]';
  }
}
