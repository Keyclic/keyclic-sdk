// @dart=2.10
part of keyclic_sdk_api.api;

class ExternalServicePatchContactPoint {
  ExternalServicePatchContactPoint({
    this.email,
    this.name,
    this.telephone,
  });

  factory ExternalServicePatchContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServicePatchContactPoint(
      email: json['email'],
      name: json['name'],
      telephone: json['telephone'],
    );
  }

  String email;

  String name;

  String telephone;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServicePatchContactPoint &&
        runtimeType == other.runtimeType &&
        email == other.email &&
        name == other.name &&
        telephone == other.telephone;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= email?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= telephone?.hashCode ?? 0;

    return hashCode;
  }

  static List<ExternalServicePatchContactPoint> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ExternalServicePatchContactPoint.fromJson(value))
            ?.toList() ??
        <ExternalServicePatchContactPoint>[];
  }

  static Map<String, ExternalServicePatchContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ExternalServicePatchContactPoint>(
            (String key, dynamic value) {
          return MapEntry(
              key, ExternalServicePatchContactPoint.fromJson(value));
        }) ??
        <String, ExternalServicePatchContactPoint>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (email != null) 'email': email,
      if (name != null) 'name': name,
      if (telephone != null) 'telephone': telephone,
    };
  }

  @override
  String toString() {
    return 'ExternalServicePatchContactPoint[email=$email, name=$name, telephone=$telephone, ]';
  }
}
