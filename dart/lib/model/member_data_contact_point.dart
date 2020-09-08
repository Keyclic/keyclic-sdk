part of keyclic_sdk_api.api;

class MemberDataContactPoint {
  MemberDataContactPoint({
    this.description,
    this.email,
    this.name,
    this.telephone,
  });

  factory MemberDataContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberDataContactPoint(
      description: json['description'],
      email: json['email'],
      name: json['name'],
      telephone: json['telephone'],
    );
  }

  String description;

  String email;

  String name;

  String telephone;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberDataContactPoint &&
        runtimeType == other.runtimeType &&
        description == other.description &&
        email == other.email &&
        name == other.name &&
        telephone == other.telephone;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= email?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= telephone?.hashCode ?? 0;

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
      if (description != null) 'description': description,
      if (email != null) 'email': email,
      if (name != null) 'name': name,
      if (telephone != null) 'telephone': telephone,
    };
  }

  @override
  String toString() {
    return 'MemberDataContactPoint[description=$description, email=$email, name=$name, telephone=$telephone, ]';
  }
}
