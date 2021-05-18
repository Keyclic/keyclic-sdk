part of keyclic_sdk_api.api;

class MemberContactPoint {
  MemberContactPoint({
    this.description,
    this.email,
    this.isOpen,
    this.name,
    this.telephone,
  });

  factory MemberContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberContactPoint(
      description: json['description'],
      email: json['email'],
      isOpen: json['isOpen'],
      name: json['name'],
      telephone: json['telephone'],
    );
  }

  String description;

  String email;

  bool isOpen;

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
        description == other.description &&
        email == other.email &&
        isOpen == other.isOpen &&
        name == other.name &&
        telephone == other.telephone;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= email?.hashCode ?? 0;
    hashCode ^= isOpen?.hashCode ?? 0;
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
    return json?.map<String, MemberContactPoint>((String key, dynamic value) {
          return MapEntry(key, MemberContactPoint.fromJson(value));
        }) ??
        <String, MemberContactPoint>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'email': email,
      'isOpen': isOpen,
      'name': name,
      'telephone': telephone,
    };
  }

  @override
  String toString() {
    return 'MemberContactPoint[description=$description, email=$email, isOpen=$isOpen, name=$name, telephone=$telephone, ]';
  }
}
