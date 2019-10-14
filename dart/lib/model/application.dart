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
  int get hashCode {
    int hashCode = 0;

    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= token?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;
    hashCode ^= version?.hashCode ?? 0;

    return hashCode;
  }

  static List<Application> listFromJson(List<dynamic> json) {
    return json == null
        ? <Application>[]
        : json.map((dynamic value) => Application.fromJson(value)).toList();
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
      if (links != null) '_links': links,
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (token != null) 'token': token,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
      if (version != null) 'version': version,
    };
  }

  @override
  String toString() {
    return 'Application[links=$links, createdAt=$createdAt, id=$id, name=$name, token=$token, type=$type, updatedAt=$updatedAt, version=$version, ]';
  }
}
