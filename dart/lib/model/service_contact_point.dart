part of keyclic_sdk_api.api;

class ServiceContactPoint {
  ServiceContactPoint({
    this.email,
    this.isOpen,
    this.name,
    this.telephone,
  });

  ServiceContactPoint.fromJson(Map<String, dynamic> json) {
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

    return other is ServiceContactPoint &&
        runtimeType == other.runtimeType &&
        email == other.email &&
        isOpen == other.isOpen &&
        name == other.name &&
        telephone == other.telephone;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^ email.hashCode ^ isOpen.hashCode ^ name.hashCode ^ telephone.hashCode;

  static List<ServiceContactPoint> listFromJson(List<dynamic> json) {
    return json == null
        ? <ServiceContactPoint>[]
        : json.map((value) => ServiceContactPoint.fromJson(value)).toList();
  }

  static Map<String, ServiceContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ServiceContactPoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ServiceContactPoint.fromJson(value));
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
    return 'ServiceContactPoint[email=$email, isOpen=$isOpen, name=$name, telephone=$telephone, ]';
  }
}
