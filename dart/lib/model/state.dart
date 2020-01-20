part of keyclic_sdk_api.api;

class State {
  State({
    this.color,
    this.description,
    this.id,
    this.name,
    this.progression,
    this.type,
  });

  factory State.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return State(
      color: json['color'],
      description: json['description'],
      id: json['id'],
      name: json['name'],
      progression: json['progression'],
      type: json['type'],
    );
  }

  String color;

  String description;

  String id;

  String name;

  int progression;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is State &&
        runtimeType == other.runtimeType &&
        color == other.color &&
        description == other.description &&
        id == other.id &&
        name == other.name &&
        progression == other.progression &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= color?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= progression?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<State> listFromJson(List<dynamic> json) {
    return json == null
        ? <State>[]
        : json.map((dynamic value) => State.fromJson(value)).toList();
  }

  static Map<String, State> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, State>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = State.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (color != null) 'color': color,
      if (description != null) 'description': description,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (progression != null) 'progression': progression,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'State[color=$color, description=$description, id=$id, name=$name, progression=$progression, type=$type, ]';
  }
}
