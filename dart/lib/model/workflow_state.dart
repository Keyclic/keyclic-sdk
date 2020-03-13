part of keyclic_sdk_api.api;

class WorkflowState {
  WorkflowState({
    this.allowAdd,
    this.allowDispatch,
    this.color,
    this.description,
    this.id,
    this.name,
    this.progression,
    this.type,
  });

  factory WorkflowState.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WorkflowState(
      allowAdd: json['allowAdd'],
      allowDispatch: json['allowDispatch'],
      color: json['color'],
      description: json['description'],
      id: json['id'],
      name: json['name'],
      progression: json['progression']?.toDouble(),
      type: json['type'],
    );
  }

  bool allowAdd;

  bool allowDispatch;

  String color;

  String description;

  String id;

  String name;

  double progression;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowState &&
        runtimeType == other.runtimeType &&
        allowAdd == other.allowAdd &&
        allowDispatch == other.allowDispatch &&
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

    hashCode ^= allowAdd?.hashCode ?? 0;
    hashCode ^= allowDispatch?.hashCode ?? 0;
    hashCode ^= color?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= progression?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<WorkflowState> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => WorkflowState.fromJson(value))
            ?.toList() ??
        <WorkflowState>[];
  }

  static Map<String, WorkflowState> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, WorkflowState>((String key, dynamic value) {
          return MapEntry(key, WorkflowState.fromJson(value));
        }) ??
        <String, WorkflowState>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (allowAdd != null) 'allowAdd': allowAdd,
      if (allowDispatch != null) 'allowDispatch': allowDispatch,
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
    return 'WorkflowState[allowAdd=$allowAdd, allowDispatch=$allowDispatch, color=$color, description=$description, id=$id, name=$name, progression=$progression, type=$type, ]';
  }
}
