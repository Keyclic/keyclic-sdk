part of keyclic_sdk_api.api;

class ActivitySubject {
  ActivitySubject({
    this.id,
    this.type,
  });

  factory ActivitySubject.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ActivitySubject(
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

    return other is ActivitySubject &&
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

  static List<ActivitySubject> listFromJson(List<dynamic> json) {
    return json == null
        ? <ActivitySubject>[]
        : json.map((dynamic value) => ActivitySubject.fromJson(value)).toList();
  }

  static Map<String, ActivitySubject> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ActivitySubject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ActivitySubject.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'ActivitySubject[id=$id, type=$type, ]';
  }
}
