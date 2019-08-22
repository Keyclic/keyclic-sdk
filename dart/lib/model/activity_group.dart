part of keyclic_sdk_api.api;

class ActivityGroup {
  ActivityGroup({
    this.activities,
    this.activityCount,
    this.actorCount,
    this.createdAt,
    this.group,
    this.id,
    this.updatedAt,
    this.verb,
    this.isRead,
    this.isSeen,
  });

  ActivityGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    activities = Activity.listFromJson(json['activities']);
    activityCount = json['activity_count'];
    actorCount = json['actor_count'];
    createdAt =
        json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    group = json['group'];
    id = json['id'];
    updatedAt =
        json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
    verb = json['verb'];
    isRead = json['is_read'];
    isSeen = json['is_seen'];
  }

  List<Activity> activities;

  int activityCount;

  int actorCount;

  DateTime createdAt;

  String group;

  String id;

  DateTime updatedAt;

  String verb;

  bool isRead;

  bool isSeen;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ActivityGroup &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered()
            .equals(activities, other.activities) &&
        activityCount == other.activityCount &&
        actorCount == other.actorCount &&
        createdAt == other.createdAt &&
        group == other.group &&
        id == other.id &&
        updatedAt == other.updatedAt &&
        verb == other.verb &&
        isRead == other.isRead &&
        isSeen == other.isSeen;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      activities.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      activityCount.hashCode ^
      actorCount.hashCode ^
      createdAt.hashCode ^
      group.hashCode ^
      id.hashCode ^
      updatedAt.hashCode ^
      verb.hashCode ^
      isRead.hashCode ^
      isSeen.hashCode;

  static List<ActivityGroup> listFromJson(List<dynamic> json) {
    return json == null
        ? <ActivityGroup>[]
        : json.map((value) => ActivityGroup.fromJson(value)).toList();
  }

  static Map<String, ActivityGroup> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ActivityGroup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ActivityGroup.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'activities': activities,
      'activity_count': activityCount,
      'actor_count': actorCount,
      'created_at':
          createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'group': group,
      'id': id,
      'updated_at':
          updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'verb': verb,
      'is_read': isRead,
      'is_seen': isSeen,
    };
  }

  @override
  String toString() {
    return 'ActivityGroup[activities=$activities, activityCount=$activityCount, actorCount=$actorCount, createdAt=$createdAt, group=$group, id=$id, updatedAt=$updatedAt, verb=$verb, isRead=$isRead, isSeen=$isSeen, ]';
  }
}
