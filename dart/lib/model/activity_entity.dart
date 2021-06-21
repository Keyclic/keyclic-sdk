// @dart=2.10
part of keyclic_sdk_api.api;

class ActivityEntity {
  ActivityEntity({
    this.id,
    this.type,
  });

  factory ActivityEntity.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ActivityEntity(
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

    return other is ActivityEntity &&
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

  static List<ActivityEntity> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ActivityEntity.fromJson(value))
            ?.toList() ??
        <ActivityEntity>[];
  }

  static Map<String, ActivityEntity> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ActivityEntity>((String key, dynamic value) {
          return MapEntry(key, ActivityEntity.fromJson(value));
        }) ??
        <String, ActivityEntity>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'ActivityEntity[id=$id, type=$type, ]';
  }
}
