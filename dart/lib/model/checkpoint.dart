part of keyclic_sdk_api.api;

class Checkpoint {
  Checkpoint({
    this.createdAt,
    this.state,
    this.links,
  });

  factory Checkpoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Checkpoint(
      createdAt: json['createdAt'],
      state: json['state'] is List ? List<String>.from(json['state']) : null,
      links: CheckpointLinks.fromJson(json['_links']),
    );
  }

  String createdAt;

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

    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;

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
      if (createdAt != null) 'createdAt': createdAt,
      if (state != null) 'state': state,
      if (links != null) '_links': links,
    };
  }

  @override
  String toString() {
    return 'Checkpoint[createdAt=$createdAt, state=$state, links=$links, ]';
  }
}
