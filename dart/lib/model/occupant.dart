part of keyclic_sdk_api.api;

class Occupant {
  Occupant({
    this.id,
    this.createdAt,
    this.type,
    this.links,
  });

  Occupant.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    id = json['id'];
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    type = json['type'];
    links = OccupantLinks.fromJson(json['_links']);
  }

  String id;

  DateTime createdAt;

  String type;

  OccupantLinks links;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'type': type,
      '_links': links,
    };
  }

  @override
  String toString() {
    return 'Occupant[id=$id, createdAt=$createdAt, type=$type, links=$links, ]';
  }

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
}
