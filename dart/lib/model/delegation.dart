part of keyclic_sdk_api.api;

class Delegation {
  Delegation({
    this.id,
    this.createdAt,
    this.type,
    this.links,
  });

  Delegation.fromJson(Map<String, dynamic> json) {
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
    links = DelegationLinks.fromJson(json['_links']);
  }

  String id;

  DateTime createdAt;

  String type;

  DelegationLinks links;

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
    return 'Delegation[id=$id, createdAt=$createdAt, type=$type, links=$links, ]';
  }

  static List<Delegation> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Delegation>()
        : json.map((value) => Delegation.fromJson(value)).toList();
  }

  static Map<String, Delegation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Delegation>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Delegation.fromJson(value));
    }
    return map;
  }
}
