part of keyclic_sdk_api.api;

class TransitionState {
  TransitionState({
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
    this.type,
  });

  factory TransitionState.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return TransitionState(
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

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TransitionState &&
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
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<TransitionState> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => TransitionState.fromJson(value))
            ?.toList() ??
        <TransitionState>[];
  }

  static Map<String, TransitionState> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, TransitionState>((String key, dynamic value) {
          return MapEntry(key, TransitionState.fromJson(value));
        }) ??
        <String, TransitionState>{};
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
      if (key != null) 'key': key,
      if (name != null) 'name': name,
      if (progression != null) 'progression': progression,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'TransitionState[allowAdd=$allowAdd, allowDispatch=$allowDispatch, backgroundColor=$backgroundColor, color=$color, description=$description, end=$end, id=$id, key=$key, name=$name, progression=$progression, type=$type, ]';
  }
}
