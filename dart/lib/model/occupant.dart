part of keyclic_sdk_api.api;

class Occupant {
  Occupant({
    this.links,
    this.createdAt,
    this.id,
    this.type,
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
  }

  OccupantLinks links;

  DateTime createdAt;

  String id;

  String type;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Occupant && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<Occupant> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Occupant>()
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
    };
  }

  @override
  String toString() {
    return 'Occupant[links=$links, createdAt=$createdAt, id=$id, type=$type, ]';
  }
}
