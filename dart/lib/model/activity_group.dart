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

  factory ActivityGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return ActivityGroup(
      activities: Activity.listFromJson(json['activities']),
      activityCount: json['activity_count'],
      actorCount: json['actor_count'],
      createdAt: createdAt,
      group: json['group'],
      id: json['id'],
      updatedAt: updatedAt,
      verb: json['verb'],
      isRead: json['is_read'],
      isSeen: json['is_seen'],
    );
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
  int get hashCode {
    int hashCode = 0;

    if (activities is List && activities.isNotEmpty) {
      hashCode ^= activities
          .map((Activity element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= activityCount?.hashCode ?? 0;
    hashCode ^= actorCount?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= group?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;
    hashCode ^= verb?.hashCode ?? 0;
    hashCode ^= isRead?.hashCode ?? 0;
    hashCode ^= isSeen?.hashCode ?? 0;

    return hashCode;
  }

  static List<ActivityGroup> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ActivityGroup.fromJson(value))
            ?.toList() ??
        <ActivityGroup>[];
  }

  static Map<String, ActivityGroup> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ActivityGroup>((String key, dynamic value) {
          return MapEntry(key, ActivityGroup.fromJson(value));
        }) ??
        <String, ActivityGroup>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (activities != null) 'activities': activities,
      if (activityCount != null) 'activity_count': activityCount,
      if (actorCount != null) 'actor_count': actorCount,
      if (createdAt != null) 'created_at': createdAt.toUtc().toIso8601String(),
      if (group != null) 'group': group,
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt.toUtc().toIso8601String(),
      if (verb != null) 'verb': verb,
      if (isRead != null) 'is_read': isRead,
      if (isSeen != null) 'is_seen': isSeen,
    };
  }

  @override
  String toString() {
    return 'ActivityGroup[activities=$activities, activityCount=$activityCount, actorCount=$actorCount, createdAt=$createdAt, group=$group, id=$id, updatedAt=$updatedAt, verb=$verb, isRead=$isRead, isSeen=$isSeen, ]';
  }
}
