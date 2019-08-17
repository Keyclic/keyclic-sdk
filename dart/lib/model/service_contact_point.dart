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
    if (identical(this, other)) {
      return true;
    }

    return other is ServiceContactPoint && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<ServiceContactPoint> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ServiceContactPoint>()
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
