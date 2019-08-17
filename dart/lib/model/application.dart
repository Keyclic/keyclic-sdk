part of keyclic_sdk_api.api;

class Application {
  Application({
    this.links,
    this.id,
    this.name,
    this.token,
    this.type,
    this.version,
  });

  Application.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = ApplicationLinks.fromJson(json['_links']);
    id = json['id'];
    name = json['name'];
    token = json['token'];
    type = json['type'];
    version = json['version'];
  }

  ApplicationLinks links;

  String id;

  String name;

  String token;

  String type;

  String version;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Application &&
        runtimeType == other.runtimeType &&
        name == other.name &&
        token == other.token;
  }

  @override
  int get hashCode => 0 ^ name.hashCode ^ token.hashCode;

  static List<Application> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Application>()
        : json.map((value) => Application.fromJson(value)).toList();
  }

  static Map<String, Application> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Application>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = Application.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      '_links': links,
      'id': id,
      'name': name,
      'token': token,
      'type': type,
      'version': version,
    };
  }

  @override
  String toString() {
    return 'Application[links=$links, id=$id, name=$name, token=$token, type=$type, version=$version, ]';
  }
}
