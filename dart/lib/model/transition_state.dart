part of keyclic_sdk_api.api;

class TransitionState {
  TransitionState({
    this.color,
    this.description,
    this.id,
    this.name,
    this.progression,
    this.type,
  });

  factory TransitionState.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return TransitionState(
      color: json['color'],
      description: json['description'],
      id: json['id'],
      name: json['name'],
      progression: json['progression']?.toDouble(),
      type: json['type'],
    );
  }

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

    return other is TransitionState &&
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

  static List<TransitionState> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => TransitionState.fromJson(value))
            ?.toList() ??
        <TransitionState>[];
  }

  static Map<String, TransitionState> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, TransitionState.fromJson(value));
        }) ??
        <String, TransitionState>{};
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
    return 'TransitionState[color=$color, description=$description, id=$id, name=$name, progression=$progression, type=$type, ]';
  }
}
