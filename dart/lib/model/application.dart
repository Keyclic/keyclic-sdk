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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Application &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        id == other.id &&
        name == other.name &&
        token == other.token &&
        type == other.type &&
        version == other.version;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      links.hashCode ^
      id.hashCode ^
      name.hashCode ^
      token.hashCode ^
      type.hashCode ^
      version.hashCode;

  static List<Application> listFromJson(List<dynamic> json) {
    return json == null
        ? <Application>[]
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
