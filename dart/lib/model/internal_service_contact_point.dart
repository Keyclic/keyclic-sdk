part of keyclic_sdk_api.api;

class InternalServiceContactPoint {
  InternalServiceContactPoint({
    this.description,
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

    return other is InternalServiceContactPoint &&
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

  static List<InternalServiceContactPoint> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => InternalServiceContactPoint.fromJson(value))
            ?.toList() ??
        <InternalServiceContactPoint>[];
  }

  static Map<String, InternalServiceContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, InternalServiceContactPoint>(
            (String key, dynamic value) {
          return MapEntry(key, InternalServiceContactPoint.fromJson(value));
        }) ??
        <String, InternalServiceContactPoint>{};
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
    return 'InternalServiceContactPoint[description=$description, email=$email, isOpen=$isOpen, name=$name, telephone=$telephone, ]';
  }
}
