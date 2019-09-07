part of keyclic_sdk_api.api;

class Application {
  Application({
    this.links,
    this.createdAt,
    this.id,
    this.name,
    this.token,
    this.type,
    this.updatedAt,
    this.version,
  });

  Application.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = ApplicationLinks.fromJson(json['_links']);
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    id = json['id'];
    name = json['name'];
    token = json['token'];
    type = json['type'];
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
    version = json['version'];
  }

  ApplicationLinks links;

  DateTime createdAt;

  String id;

  String name;

  String token;

  String type;

  DateTime updatedAt;

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
        createdAt == other.createdAt &&
        id == other.id &&
        name == other.name &&
        token == other.token &&
        type == other.type &&
        updatedAt == other.updatedAt &&
        version == other.version;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      links.hashCode ^
      createdAt.hashCode ^
      id.hashCode ^
      name.hashCode ^
      token.hashCode ^
      type.hashCode ^
      updatedAt.hashCode ^
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
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'id': id,
      'name': name,
      'token': token,
      'type': type,
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'version': version,
    };
  }

  @override
  String toString() {
    return 'Application[links=$links, createdAt=$createdAt, id=$id, name=$name, token=$token, type=$type, updatedAt=$updatedAt, version=$version, ]';
  }
}
