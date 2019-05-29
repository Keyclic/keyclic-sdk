part of keyclic_sdk_api.api;

class ServiceContactPoint {
  ServiceContactPoint();

  ServiceContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    telephone = json['telephone'];
    isOpen = json['isOpen'];
  }

  String telephone;

  bool isOpen;

  Map<String, dynamic> toJson() {
    return {
      'telephone': telephone,
      'isOpen': isOpen,
    };
  }

  @override
  String toString() {
    return 'ServiceContactPoint[telephone=$telephone, isOpen=$isOpen, ]';
  }

  static List<ServiceContactPoint> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceContactPoint>() : json.map((value) => ServiceContactPoint.fromJson(value)).toList();
  }

  static Map<String, ServiceContactPoint> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceContactPoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceContactPoint.fromJson(value));
    }
    return map;
  }
}
