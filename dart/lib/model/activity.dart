part of keyclic_sdk_api.api;

class Activity {
  Activity();

  Activity.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    actor = json['actor'];
    message = json['message'];
    object = json['object'];
    verb = json['verb'];
    origin = json['origin'];
    title = json['title'];
    subject = ActivitySubject.fromJson(json['subject']);
    time = json['time'] == null ? null : DateTime.parse(json['time']);
    if (time is DateTime && time.isUtc == false) {
      time = DateTime.parse('${time.toIso8601String()}Z');
    }
  }

  String actor;

  String message;

  String object;

  String verb;

  String origin;

  String title;

  ActivitySubject subject;

  DateTime time;

  Map<String, dynamic> toJson() {
    return {
      'actor': actor,
      'message': message,
      'object': object,
      'verb': verb,
      'origin': origin,
      'title': title,
      'subject': subject,
      'time': time == null ? '' : time.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Activity[actor=$actor, message=$message, object=$object, verb=$verb, origin=$origin, title=$title, subject=$subject, time=$time, ]';
  }

  static List<Activity> listFromJson(List<dynamic> json) {
    return json == null ? List<Activity>() : json.map((value) => Activity.fromJson(value)).toList();
  }

  static Map<String, Activity> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Activity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Activity.fromJson(value));
    }
    return map;
  }
}
