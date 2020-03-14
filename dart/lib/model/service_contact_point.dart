part of keyclic_sdk_api.api;

class ServiceContactPoint {
  ServiceContactPoint({
    this.email,
    this.isOpen,
    this.name,
    this.telephone,
  });

  factory ServiceContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ServiceContactPoint(
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

    return other is ServiceContactPoint &&
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

  static List<ServiceContactPoint> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ServiceContactPoint.fromJson(value))
            ?.toList() ??
        <ServiceContactPoint>[];
  }

  static Map<String, ServiceContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ServiceContactPoint>((String key, dynamic value) {
          return MapEntry(key, ServiceContactPoint.fromJson(value));
        }) ??
        <String, ServiceContactPoint>{};
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
    return 'ServiceContactPoint[email=$email, isOpen=$isOpen, name=$name, telephone=$telephone, ]';
  }
}
