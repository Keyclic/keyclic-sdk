part of keyclic_sdk_api.api;

class ActivitySubject {
  ActivitySubject({
    this.type,
    this.id,
  });

  ActivitySubject.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    type = json['type'];
    id = json['id'];
  }

  String type;

  String id;

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id,
    };
  }

  @override
  String toString() {
    return 'ActivitySubject[type=$type, id=$id, ]';
  }

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
}
