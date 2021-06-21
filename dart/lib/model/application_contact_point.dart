// @dart=2.10
part of keyclic_sdk_api.api;

class ApplicationContactPoint {
  ApplicationContactPoint({
    this.email,
    this.id,
    this.name,
    this.telephone,
    this.type,
  });

  factory ApplicationContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationContactPoint(
      email: json['email'],
      id: json['id'],
      name: json['name'],
      telephone: json['telephone'],
      type: json['type'],
    );
  }

  String email;

  String id;

  String name;

  String telephone;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationContactPoint &&
        runtimeType == other.runtimeType &&
        email == other.email &&
        id == other.id &&
        name == other.name &&
        telephone == other.telephone &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= email?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= telephone?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<ApplicationContactPoint> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ApplicationContactPoint.fromJson(value))
            ?.toList() ??
        <ApplicationContactPoint>[];
  }

  static Map<String, ApplicationContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, ApplicationContactPoint>((String key, dynamic value) {
          return MapEntry(key, ApplicationContactPoint.fromJson(value));
        }) ??
        <String, ApplicationContactPoint>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (email != null) 'email': email,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (telephone != null) 'telephone': telephone,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'ApplicationContactPoint[email=$email, id=$id, name=$name, telephone=$telephone, type=$type, ]';
  }
}
