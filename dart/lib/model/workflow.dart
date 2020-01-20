part of keyclic_sdk_api.api;

class Workflow {
  Workflow({
    this.createdAt,
    this.description,
    this.end,
    this.id,
    this.name,
    this.start,
    this.states,
    this.transitions,
    this.type,
    this.updatedAt,
  });

  factory Workflow.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Workflow(
      createdAt: json['createdAt'],
      description: json['description'],
      end: State.fromJson(json['end']),
      id: json['id'],
      name: json['name'],
      start: State.fromJson(json['start']),
      states: State.listFromJson(json['states']),
      transitions: Transition.listFromJson(json['transitions']),
      type: json['type'],
      updatedAt: json['updatedAt'],
    );
  }

  String createdAt;

  String description;

  State end;

  String id;

  String name;

  State start;

  List<State> states;

  List<Transition> transitions;

  String type;

  String updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Workflow &&
        runtimeType == other.runtimeType &&
        createdAt == other.createdAt &&
        description == other.description &&
        end == other.end &&
        id == other.id &&
        name == other.name &&
        start == other.start &&
        DeepCollectionEquality.unordered().equals(states, other.states) &&
        DeepCollectionEquality.unordered()
            .equals(transitions, other.transitions) &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (states is List && states.isNotEmpty) {
      hashCode ^= states
          .map((State element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (transitions is List && transitions.isNotEmpty) {
      hashCode ^= transitions
          .map((Transition element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= end?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= start?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Workflow> listFromJson(List<dynamic> json) {
    return json == null
        ? <Workflow>[]
        : json.map((dynamic value) => Workflow.fromJson(value)).toList();
  }

  static Map<String, Workflow> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Workflow>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Workflow.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (createdAt != null) 'createdAt': createdAt,
      if (description != null) 'description': description,
      if (end != null) 'end': end,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (start != null) 'start': start,
      if (states != null) 'states': states,
      if (transitions != null) 'transitions': transitions,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt,
    };
  }

  @override
  String toString() {
    return 'Workflow[createdAt=$createdAt, description=$description, end=$end, id=$id, name=$name, start=$start, states=$states, transitions=$transitions, type=$type, updatedAt=$updatedAt, ]';
  }
}
