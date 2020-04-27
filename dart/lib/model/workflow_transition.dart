part of keyclic_sdk_api.api;

class WorkflowTransition {
  WorkflowTransition({
    this.commentRequired,
    this.description,
    this.from,
    this.id,
    this.name,
    this.to,
    this.type,
  });

  factory WorkflowTransition.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WorkflowTransition(
      commentRequired: json['commentRequired'],
      description: json['description'],
      from: WorkflowState.fromJson(json['from']),
      id: json['id'],
      name: json['name'],
      to: WorkflowState.fromJson(json['to']),
      type: json['type'],
    );
  }

  bool commentRequired;

  String description;

  WorkflowState from;

  String id;

  String name;

  WorkflowState to;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowTransition &&
        runtimeType == other.runtimeType &&
        commentRequired == other.commentRequired &&
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

    hashCode ^= commentRequired?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= from?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= to?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<WorkflowTransition> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => WorkflowTransition.fromJson(value))
            ?.toList() ??
        <WorkflowTransition>[];
  }

  static Map<String, WorkflowTransition> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, WorkflowTransition>((String key, dynamic value) {
          return MapEntry(key, WorkflowTransition.fromJson(value));
        }) ??
        <String, WorkflowTransition>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (commentRequired != null) 'commentRequired': commentRequired,
      if (description != null) 'description': description,
      if (from != null) 'from': from.toJson(),
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (to != null) 'to': to.toJson(),
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'WorkflowTransition[commentRequired=$commentRequired, description=$description, from=$from, id=$id, name=$name, to=$to, type=$type, ]';
  }
}
