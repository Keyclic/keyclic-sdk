part of keyclic_sdk_api.api;

class Checkpoint {
  Checkpoint({
    this.createdAt,
    this.state,
    this.links,
  });

  Checkpoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    state = (json['state'] as List)?.map((item) => item as String)?.toList();
    links = CheckpointLinks.fromJson(json['_links']);
  }

  DateTime createdAt;

  List<String> state;

  CheckpointLinks links;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Checkpoint && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'state': state,
      '_links': links,
    };
  }

  @override
  String toString() {
    return 'Checkpoint[createdAt=$createdAt, state=$state, links=$links, ]';
  }

  static List<Checkpoint> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Checkpoint>()
        : json.map((value) => Checkpoint.fromJson(value)).toList();
  }

  static Map<String, Checkpoint> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Checkpoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Checkpoint.fromJson(value));
    }
    return map;
  }
}
