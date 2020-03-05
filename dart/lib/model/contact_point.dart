part of keyclic_sdk_api.api;

class ContactPoint {
  ContactPoint({
    this.email,
    this.id,
    this.name,
    this.telephone,
    this.type,
  });

  factory ContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ContactPoint(
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

    return other is ContactPoint &&
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

  static List<ContactPoint> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ContactPoint.fromJson(value))
            ?.toList() ??
        <ContactPoint>[];
  }

  static Map<String, ContactPoint> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, ContactPoint.fromJson(value));
        }) ??
        <String, ContactPoint>{};
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
    return 'ContactPoint[email=$email, id=$id, name=$name, telephone=$telephone, type=$type, ]';
  }
}
