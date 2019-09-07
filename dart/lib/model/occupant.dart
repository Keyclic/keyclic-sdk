part of keyclic_sdk_api.api;

class Occupant {
  Occupant({
    this.links,
    this.createdAt,
    this.id,
    this.type,
    this.updatedAt,
  });

  Occupant.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = OccupantLinks.fromJson(json['_links']);
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    id = json['id'];
    type = json['type'];
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
  }

  OccupantLinks links;

  DateTime createdAt;

  String id;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Occupant &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        createdAt == other.createdAt &&
        id == other.id &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      links.hashCode ^
      createdAt.hashCode ^
      id.hashCode ^
      type.hashCode ^
      updatedAt.hashCode;

  static List<Occupant> listFromJson(List<dynamic> json) {
    return json == null
        ? <Occupant>[]
        : json.map((value) => Occupant.fromJson(value)).toList();
  }

  static Map<String, Occupant> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Occupant>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Occupant.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      '_links': links,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'id': id,
      'type': type,
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Occupant[links=$links, createdAt=$createdAt, id=$id, type=$type, updatedAt=$updatedAt, ]';
  }
}
