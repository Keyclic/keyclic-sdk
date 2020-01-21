part of keyclic_sdk_api.api;

class InternalServiceContactPoint {
  InternalServiceContactPoint({
    this.email,
    this.isOpen,
    this.name,
    this.telephone,
  });

  factory InternalServiceContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceContactPoint(
      email: json['email'],
      isOpen: json['isOpen'],
      name: json['name'],
      telephone: json['telephone'],
    );
  }

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

    return other is InternalServiceContactPoint &&
        runtimeType == other.runtimeType &&
        email == other.email &&
        isOpen == other.isOpen &&
        name == other.name &&
        telephone == other.telephone;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= email?.hashCode ?? 0;
    hashCode ^= isOpen?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= telephone?.hashCode ?? 0;

    return hashCode;
  }

  static List<InternalServiceContactPoint> listFromJson(List<dynamic> json) {
    return json == null
        ? <InternalServiceContactPoint>[]
        : json
            .map((dynamic value) => InternalServiceContactPoint.fromJson(value))
            .toList();
  }

  static Map<String, InternalServiceContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, InternalServiceContactPoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = InternalServiceContactPoint.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (email != null) 'email': email,
      if (isOpen != null) 'isOpen': isOpen,
      if (name != null) 'name': name,
      if (telephone != null) 'telephone': telephone,
    };
  }

  @override
  String toString() {
    return 'InternalServiceContactPoint[email=$email, isOpen=$isOpen, name=$name, telephone=$telephone, ]';
  }
}
