part of keyclic_sdk_api.api;

class State {
  State({
    this.id,
    this.type,
    this.name,
    this.description,
    this.color,
    this.progression,
  });

  factory State.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return State(
      id: json['id'],
      type: json['type'],
      name: json['name'],
      description: json['description'],
      color: json['color'],
      progression: json['progression']?.toDouble(),
    );
  }

  String id;

  String type;

  String name;

  String description;

  String color;

  double progression;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is State &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        description == other.description &&
        color == other.color &&
        progression == other.progression;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= color?.hashCode ?? 0;
    hashCode ^= progression?.hashCode ?? 0;

    return hashCode;
  }

  static List<State> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => State.fromJson(value))?.toList() ??
        <State>[];
  }

  static Map<String, State> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, State.fromJson(value));
        }) ??
        <String, State>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (color != null) 'color': color,
      if (progression != null) 'progression': progression,
    };
  }

  @override
  String toString() {
    return 'State[id=$id, type=$type, name=$name, description=$description, color=$color, progression=$progression, ]';
  }
}
