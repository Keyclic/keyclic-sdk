// @dart=2.10
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

  factory Activity.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime time = json['time'] == null ? null : DateTime.parse(json['time']);
    if (time is DateTime && time.isUtc == false) {
      time = DateTime.parse('${time.toIso8601String()}Z');
    }

    return Activity(
      actor: json['actor'],
      message: json['message'],
      object: json['object'],
      origin: json['origin'],
      subject: ActivityEntity.fromJson(json['subject']),
      time: time,
      title: json['title'],
      verb: json['verb'],
    );
  }

  String actor;

  String message;

  String object;

  String origin;

  ActivityEntity subject;

  DateTime time;

  String title;

  String verb;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Activity &&
        runtimeType == other.runtimeType &&
        actor == other.actor &&
        message == other.message &&
        object == other.object &&
        origin == other.origin &&
        subject == other.subject &&
        time == other.time &&
        title == other.title &&
        verb == other.verb;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= actor?.hashCode ?? 0;
    hashCode ^= message?.hashCode ?? 0;
    hashCode ^= object?.hashCode ?? 0;
    hashCode ^= origin?.hashCode ?? 0;
    hashCode ^= subject?.hashCode ?? 0;
    hashCode ^= time?.hashCode ?? 0;
    hashCode ^= title?.hashCode ?? 0;
    hashCode ^= verb?.hashCode ?? 0;

    return hashCode;
  }

  static List<Activity> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Activity.fromJson(value))?.toList() ??
        <Activity>[];
  }

  static Map<String, Activity> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Activity>((String key, dynamic value) {
          return MapEntry(key, Activity.fromJson(value));
        }) ??
        <String, Activity>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (actor != null) 'actor': actor,
      if (message != null) 'message': message,
      if (object != null) 'object': object,
      if (origin != null) 'origin': origin,
      if (subject != null) 'subject': subject.toJson(),
      if (time != null) 'time': time.toUtc().toIso8601String(),
      if (title != null) 'title': title,
      if (verb != null) 'verb': verb,
    };
  }

  @override
  String toString() {
    return 'Activity[actor=$actor, message=$message, object=$object, origin=$origin, subject=$subject, time=$time, title=$title, verb=$verb, ]';
  }
}
