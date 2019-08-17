part of keyclic_sdk_api.api;

class Service {
  Service({
    this.contactPoint,
    this.createdAt,
    this.description,
    this.id,
    this.name,
    this.type,
    this.updatedAt,
  });

  Service.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    contactPoint = ServiceContactPoint.fromJson(json['contactPoint']);
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    description = json['description'];
    id = json['id'];
    name = json['name'];
    type = json['type'];
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
  }

  ServiceContactPoint contactPoint;

  DateTime createdAt;

  String description;

  String id;

  String name;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Service &&
        runtimeType == other.runtimeType &&
        name == other.name;
  }

  @override
  int get hashCode => 0 ^ name.hashCode;

  static List<Service> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Service>()
        : json.map((value) => Service.fromJson(value)).toList();
  }

  static Map<String, Service> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Service>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Service.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'contactPoint': contactPoint,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'description': description,
      'id': id,
      'name': name,
      'type': type,
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Service[contactPoint=$contactPoint, createdAt=$createdAt, description=$description, id=$id, name=$name, type=$type, updatedAt=$updatedAt, ]';
  }
}
