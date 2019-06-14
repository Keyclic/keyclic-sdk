part of keyclic_sdk_api.api;

class Service {
  Service({
    this.contactPoint,
    this.description,
    this.name,
    this.id,
    this.type,
    this.links,
  });

  Service.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    contactPoint = ServiceContactPoint.fromJson(json['contactPoint']);
    description = json['description'];
    name = json['name'];
    id = json['id'];
    type = json['type'];
    links = ServiceLinks.fromJson(json['_links']);
  }

  ServiceContactPoint contactPoint;

  String description;

  String name;

  String id;

  String type;

  ServiceLinks links;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Service &&
        runtimeType == other.runtimeType &&
        contactPoint == other.contactPoint &&
        name == other.name &&
        id == other.id;
  }

  @override
  int get hashCode => 0 ^ contactPoint.hashCode ^ name.hashCode ^ id.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'contactPoint': contactPoint,
      'description': description,
      'name': name,
      'id': id,
      'type': type,
      '_links': links,
    };
  }

  @override
  String toString() {
    return 'Service[contactPoint=$contactPoint, description=$description, name=$name, id=$id, type=$type, links=$links, ]';
  }

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
}
