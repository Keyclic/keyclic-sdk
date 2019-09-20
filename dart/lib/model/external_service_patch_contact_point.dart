part of keyclic_sdk_api.api;

class ExternalServicePatchContactPoint {
  ExternalServicePatchContactPoint({
    this.email,
    this.name,
    this.telephone,
  });

  ExternalServicePatchContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    email = json['email'];
    name = json['name'];
    telephone = json['telephone'];
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

    hashCode ^= (email?.hashCode ?? 0);
    hashCode ^= (name?.hashCode ?? 0);
    hashCode ^= (telephone?.hashCode ?? 0);

    return hashCode;
  }

  static List<ExternalServicePatchContactPoint> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <ExternalServicePatchContactPoint>[]
        : json
            .map((dynamic value) =>
                ExternalServicePatchContactPoint.fromJson(value))
            .toList();
  }

  static Map<String, ExternalServicePatchContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ExternalServicePatchContactPoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ExternalServicePatchContactPoint.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'name': name,
      'telephone': telephone,
    };
  }

  @override
  String toString() {
    return 'ExternalServicePatchContactPoint[email=$email, name=$name, telephone=$telephone, ]';
  }
}
