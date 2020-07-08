part of keyclic_sdk_api.api;

class Dispatcher {
  Dispatcher({
    this.id,
    this.type,
  });

  factory Dispatcher.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Dispatcher(
      id: json['id'],
      type: json['type'],
    );
  }

  String id;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Dispatcher &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<Dispatcher> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Dispatcher.fromJson(value))?.toList() ??
        <Dispatcher>[];
  }

  static Map<String, Dispatcher> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Dispatcher>((String key, dynamic value) {
          return MapEntry(key, Dispatcher.fromJson(value));
        }) ??
        <String, Dispatcher>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'Dispatcher[id=$id, type=$type, ]';
  }
}
