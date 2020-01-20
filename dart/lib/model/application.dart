part of keyclic_sdk_api.api;

class Application {
  Application({
    this.links,
    this.about,
    this.agreement,
    this.contactPoints,
    this.createdAt,
    this.id,
    this.name,
    this.token,
    this.type,
    this.updatedAt,
    this.version,
  });

  factory Application.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return Application(
      links: ApplicationLinks.fromJson(json['_links']),
      about: About.fromJson(json['about']),
      agreement: Agreement.fromJson(json['agreement']),
      contactPoints: ContactPoint.listFromJson(json['contactPoints']),
      createdAt: createdAt,
      id: json['id'],
      name: json['name'],
      token: json['token'],
      type: json['type'],
      updatedAt: updatedAt,
      version: json['version'],
    );
  }

  ApplicationLinks links;

  About about;

  Agreement agreement;

  List<ContactPoint> contactPoints;

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
        about == other.about &&
        agreement == other.agreement &&
        DeepCollectionEquality.unordered()
            .equals(contactPoints, other.contactPoints) &&
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

    if (contactPoints is List && contactPoints.isNotEmpty) {
      hashCode ^= contactPoints
          .map((ContactPoint element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= about?.hashCode ?? 0;
    hashCode ^= agreement?.hashCode ?? 0;
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
      if (about != null) 'about': about,
      if (agreement != null) 'agreement': agreement,
      if (contactPoints != null) 'contactPoints': contactPoints,
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
    return 'Application[links=$links, about=$about, agreement=$agreement, contactPoints=$contactPoints, createdAt=$createdAt, id=$id, name=$name, token=$token, type=$type, updatedAt=$updatedAt, version=$version, ]';
  }
}
