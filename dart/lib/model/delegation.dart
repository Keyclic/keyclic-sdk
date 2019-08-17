part of keyclic_sdk_api.api;

class Delegation {
  Delegation({
    this.links,
    this.createdAt,
    this.description,
    this.id,
    this.state,
    this.type,
  });

  Delegation.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = DelegationLinks.fromJson(json['_links']);
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    description = json['description'];
    id = json['id'];
    state = (json['state'] as List)?.map((item) => item as String)?.toList();
    type = json['type'];
  }

  DelegationLinks links;

  DateTime createdAt;

  String description;

  String id;

  List<String> state;

  String type;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Delegation &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(state, other.state);
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      '_links': links,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'description': description,
      'id': id,
      'state': state,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'Delegation[links=$links, createdAt=$createdAt, description=$description, id=$id, state=$state, type=$type, ]';
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
