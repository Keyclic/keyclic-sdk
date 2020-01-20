part of keyclic_sdk_api.api;

class Transition {
  Transition({
    this.description,
    this.from,
    this.id,
    this.name,
    this.to,
    this.type,
  });

  factory Transition.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Transition(
      description: json['description'],
      from: State.fromJson(json['from']),
      id: json['id'],
      name: json['name'],
      to: State.fromJson(json['to']),
      type: json['type'],
    );
  }

  String description;

  State from;

  String id;

  String name;

  State to;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Transition &&
        runtimeType == other.runtimeType &&
        description == other.description &&
        from == other.from &&
        id == other.id &&
        name == other.name &&
        to == other.to &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= from?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= to?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<Transition> listFromJson(List<dynamic> json) {
    return json == null
        ? <Transition>[]
        : json.map((dynamic value) => Transition.fromJson(value)).toList();
  }

  static Map<String, Transition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Transition>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Transition.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (description != null) 'description': description,
      if (from != null) 'from': from,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (to != null) 'to': to,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'Transition[description=$description, from=$from, id=$id, name=$name, to=$to, type=$type, ]';
  }
}
