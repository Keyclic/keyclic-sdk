part of keyclic_sdk_api.api;

class ActivitySubject {
  ActivitySubject({
    this.id,
    this.type,
  });

  ActivitySubject.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    id = json['id'];
    type = json['type'];
  }

  String id;

  String type;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ActivitySubject && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<ActivitySubject> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ActivitySubject>()
        : json.map((value) => ActivitySubject.fromJson(value)).toList();
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
      'id': id,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'ActivitySubject[id=$id, type=$type, ]';
  }
}
