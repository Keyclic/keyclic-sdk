part of keyclic_sdk_api.api;

class Transition {
  Transition({
    this.id,
    this.type,
    this.name,
    this.description,
    this.commentRequired,
    this.from,
    this.to,
  });

  factory Transition.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Transition(
      id: json['id'],
      type: json['type'],
      name: json['name'],
      description: json['description'],
      commentRequired: json['commentRequired'],
      from: WorkflowState.fromJson(json['from']),
      to: WorkflowState.fromJson(json['to']),
    );
  }

  String id;

  String type;

  String name;

  String description;

  bool commentRequired;

  WorkflowState from;

  WorkflowState to;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Transition &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        description == other.description &&
        commentRequired == other.commentRequired &&
        from == other.from &&
        to == other.to;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= commentRequired?.hashCode ?? 0;
    hashCode ^= from?.hashCode ?? 0;
    hashCode ^= to?.hashCode ?? 0;

    return hashCode;
  }

  static List<Transition> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Transition.fromJson(value))?.toList() ??
        <Transition>[];
  }

  static Map<String, Transition> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Transition>((String key, dynamic value) {
          return MapEntry(key, Transition.fromJson(value));
        }) ??
        <String, Transition>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (commentRequired != null) 'commentRequired': commentRequired,
      if (from != null) 'from': from.toJson(),
      if (to != null) 'to': to.toJson(),
    };
  }

  @override
  String toString() {
    return 'Transition[id=$id, type=$type, name=$name, description=$description, commentRequired=$commentRequired, from=$from, to=$to, ]';
  }
}
