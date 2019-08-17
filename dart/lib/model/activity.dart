part of keyclic_sdk_api.api;

class Activity {
  Activity({
    this.actor,
    this.message,
    this.object,
    this.origin,
    this.subject,
    this.time,
    this.title,
    this.verb,
  });

  Activity.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    actor = json['actor'];
    message = json['message'];
    object = json['object'];
    origin = json['origin'];
    subject = ActivitySubject.fromJson(json['subject']);
    time = json['time'] == null ? null : DateTime.parse(json['time']);
    if (time is DateTime && time.isUtc == false) {
      time = DateTime.parse('${time.toIso8601String()}Z');
    }
    title = json['title'];
    verb = json['verb'];
  }

  String actor;

  String message;

  String object;

  String origin;

  ActivitySubject subject;

  DateTime time;

  String title;

  String verb;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Activity && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<Activity> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Activity>()
        : json.map((value) => Activity.fromJson(value)).toList();
  }

  static Map<String, Activity> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Activity>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Activity.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'actor': actor,
      'message': message,
      'object': object,
      'origin': origin,
      'subject': subject,
      'time': time == null ? '' : time.toUtc().toIso8601String(),
      'title': title,
      'verb': verb,
    };
  }

  @override
  String toString() {
    return 'Activity[actor=$actor, message=$message, object=$object, origin=$origin, subject=$subject, time=$time, title=$title, verb=$verb, ]';
  }
}
