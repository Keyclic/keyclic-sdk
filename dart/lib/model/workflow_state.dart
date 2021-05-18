part of keyclic_sdk_api.api;

class WorkflowState {
  WorkflowState({
    this.allowAdd,
    this.allowDispatch,
    this.backgroundColor,
    this.color,
    this.description,
    this.end,
    this.id,
    this.key,
    this.name,
    this.progression,
    this.reference,
    this.type,
  });

  factory WorkflowState.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WorkflowState(
      allowAdd: json['allowAdd'],
      allowDispatch: json['allowDispatch'],
      backgroundColor: json['backgroundColor'],
      color: json['color'],
      description: json['description'],
      end: json['end'],
      id: json['id'],
      key: json['key'],
      name: json['name'],
      progression: json['progression']?.toDouble(),
      reference: json['reference'],
      type: json['type'],
    );
  }

  bool allowAdd;

  bool allowDispatch;

  String backgroundColor;

  String color;

  String description;

  bool end;

  String id;

  String key;

  String name;

  double progression;

  String reference;

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
        backgroundColor == other.backgroundColor &&
        color == other.color &&
        description == other.description &&
        end == other.end &&
        id == other.id &&
        key == other.key &&
        name == other.name &&
        progression == other.progression &&
        reference == other.reference &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= allowAdd?.hashCode ?? 0;
    hashCode ^= allowDispatch?.hashCode ?? 0;
    hashCode ^= backgroundColor?.hashCode ?? 0;
    hashCode ^= color?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= end?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= key?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= progression?.hashCode ?? 0;
    hashCode ^= reference?.hashCode ?? 0;
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
      'allowAdd': allowAdd,
      'allowDispatch': allowDispatch,
      'backgroundColor': backgroundColor,
      'color': color,
      'description': description,
      'end': end,
      'id': id,
      'key': key,
      'name': name,
      'progression': progression,
      'reference': reference,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'WorkflowState[allowAdd=$allowAdd, allowDispatch=$allowDispatch, backgroundColor=$backgroundColor, color=$color, description=$description, end=$end, id=$id, key=$key, name=$name, progression=$progression, reference=$reference, type=$type, ]';
  }
}
