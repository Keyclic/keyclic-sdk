part of keyclic_sdk_api.api;

class CheckpointState {
  CheckpointState({
    this.allowAdd,
    this.allowDispatch,
    this.backgroundColor,
    this.color,
    this.description,
    this.end,
    this.id,
    this.name,
    this.progression,
    this.type,
  });

  factory CheckpointState.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CheckpointState(
      allowAdd: json['allowAdd'],
      allowDispatch: json['allowDispatch'],
      backgroundColor: json['backgroundColor'],
      color: json['color'],
      description: json['description'],
      end: json['end'],
      id: json['id'],
      name: json['name'],
      progression: json['progression']?.toDouble(),
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

  String name;

  double progression;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CheckpointState &&
        runtimeType == other.runtimeType &&
        allowAdd == other.allowAdd &&
        allowDispatch == other.allowDispatch &&
        backgroundColor == other.backgroundColor &&
        color == other.color &&
        description == other.description &&
        end == other.end &&
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
    hashCode ^= backgroundColor?.hashCode ?? 0;
    hashCode ^= color?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= end?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= progression?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<CheckpointState> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => CheckpointState.fromJson(value))
            ?.toList() ??
        <CheckpointState>[];
  }

  static Map<String, CheckpointState> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, CheckpointState>((String key, dynamic value) {
          return MapEntry(key, CheckpointState.fromJson(value));
        }) ??
        <String, CheckpointState>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (allowAdd != null) 'allowAdd': allowAdd,
      if (allowDispatch != null) 'allowDispatch': allowDispatch,
      if (backgroundColor != null) 'backgroundColor': backgroundColor,
      if (color != null) 'color': color,
      if (description != null) 'description': description,
      if (end != null) 'end': end,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (progression != null) 'progression': progression,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'CheckpointState[allowAdd=$allowAdd, allowDispatch=$allowDispatch, backgroundColor=$backgroundColor, color=$color, description=$description, end=$end, id=$id, name=$name, progression=$progression, type=$type, ]';
  }
}
