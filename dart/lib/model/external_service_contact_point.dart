part of keyclic_sdk_api.api;

class ExternalServiceContactPoint {
  ExternalServiceContactPoint({
    this.email,
    this.isOpen,
    this.name,
    this.telephone,
  });

  ExternalServiceContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    email = json['email'];
    isOpen = json['isOpen'];
    name = json['name'];
    telephone = json['telephone'];
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

    return other is ExternalServiceContactPoint &&
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

  static List<ExternalServiceContactPoint> listFromJson(List<dynamic> json) {
    return json == null
        ? <ExternalServiceContactPoint>[]
        : json
            .map((dynamic value) => ExternalServiceContactPoint.fromJson(value))
            .toList();
  }

  static Map<String, ExternalServiceContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ExternalServiceContactPoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ExternalServiceContactPoint.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'isOpen': isOpen,
      'name': name,
      'telephone': telephone,
    };
  }

  @override
  String toString() {
    return 'ExternalServiceContactPoint[email=$email, isOpen=$isOpen, name=$name, telephone=$telephone, ]';
  }
}
