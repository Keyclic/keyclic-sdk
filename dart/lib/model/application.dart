part of keyclic_sdk_api.api;

class Application {
  Application({
    this.name,
    this.token,
    this.version,
    this.id,
    this.type,
    this.links,
  });

  Application.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    name = json['name'];
    token = json['token'];
    version = json['version'];
    id = json['id'];
    type = json['type'];
    links = ApplicationLinks.fromJson(json['_links']);
  }

  String name;

  String token;

  String version;

  String id;

  String type;

  ApplicationLinks links;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Application &&
        runtimeType == other.runtimeType &&
        name == other.name &&
        token == other.token &&
        id == other.id;
  }

  @override
  int get hashCode => 0 ^ name.hashCode ^ token.hashCode ^ id.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'token': token,
      'version': version,
      'id': id,
      'type': type,
      '_links': links,
    };
  }

  @override
  String toString() {
    return 'Application[name=$name, token=$token, version=$version, id=$id, type=$type, links=$links, ]';
  }

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
}
