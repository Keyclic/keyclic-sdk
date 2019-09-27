part of keyclic_sdk_api.api;

class Delegation {
  Delegation({
    this.embedded,
    this.links,
    this.createdAt,
    this.description,
    this.id,
    this.state,
    this.type,
    this.updatedAt,
  });

  Delegation.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    embedded = DelegationEmbedded.fromJson(json['_embedded']);
    links = DelegationLinks.fromJson(json['_links']);
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    description = json['description'];
    id = json['id'];
    if (json['state'] is List) {
      state = List<String>.from(json['state']);
    }
    type = json['type'];
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
  }

  DelegationEmbedded embedded;

  DelegationLinks links;

  DateTime createdAt;

  String description;

  String id;

  List<String> state;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Delegation &&
        runtimeType == other.runtimeType &&
        embedded == other.embedded &&
        links == other.links &&
        createdAt == other.createdAt &&
        description == other.description &&
        id == other.id &&
        DeepCollectionEquality.unordered().equals(state, other.state) &&
        type == other.type &&
        updatedAt == other.updatedAt;
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

    hashCode ^= embedded?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Delegation> listFromJson(List<dynamic> json) {
    return json == null
        ? <Delegation>[]
        : json.map((dynamic value) => Delegation.fromJson(value)).toList();
  }

  static Map<String, Delegation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Delegation>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Delegation.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'description': description,
      'id': id,
      'state': state,
      'type': type,
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Delegation[embedded=$embedded, links=$links, createdAt=$createdAt, description=$description, id=$id, state=$state, type=$type, updatedAt=$updatedAt, ]';
  }
}
