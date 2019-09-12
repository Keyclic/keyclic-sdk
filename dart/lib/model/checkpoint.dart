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
    if (json['state'] is List) {
      state = List<String>.from(json['state']);
    }
    links = CheckpointLinks.fromJson(json['_links']);
  }

  DateTime createdAt;

  List<String> state;

  CheckpointLinks links;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Checkpoint &&
        runtimeType == other.runtimeType &&
        createdAt == other.createdAt &&
        DeepCollectionEquality.unordered().equals(state, other.state) &&
        links == other.links;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (state is List && state.isNotEmpty) {
      hashCode ^= state
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= (createdAt?.hashCode ?? 0);
    hashCode ^= (links?.hashCode ?? 0);

    return hashCode;
  }

  static List<Checkpoint> listFromJson(List<dynamic> json) {
    return json == null
        ? <Checkpoint>[]
        : json.map((dynamic value) => Checkpoint.fromJson(value)).toList();
  }

  static Map<String, Checkpoint> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Checkpoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Checkpoint.fromJson(value));
    }

    return map;
  }

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
}
