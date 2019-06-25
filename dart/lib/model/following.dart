part of keyclic_sdk_api.api;

class Following {
  Following({
    this.createdAt,
    this.feedId,
    this.targetId,
    this.updatedAt,
  });

  Following.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    createdAt = json['created_at'];
    feedId = json['feed_id'];
    targetId = json['target_id'];
    updatedAt = json['updated_at'];
  }

  String createdAt;

  String feedId;

  String targetId;

  String updatedAt;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Following && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'created_at': createdAt,
      'feed_id': feedId,
      'target_id': targetId,
      'updated_at': updatedAt,
    };
  }

  @override
  String toString() {
    return 'Following[createdAt=$createdAt, feedId=$feedId, targetId=$targetId, updatedAt=$updatedAt, ]';
  }

  static List<Following> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Following>()
        : json.map((value) => Following.fromJson(value)).toList();
  }

  static Map<String, Following> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Following>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Following.fromJson(value));
    }
    return map;
  }
}
