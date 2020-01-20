part of keyclic_sdk_api.api;

class Permission {
  Permission({
    this.targetGroup,
  });

  factory Permission.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Permission(
      targetGroup: json['targetGroup'],
    );
  }

  String targetGroup;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Permission &&
        runtimeType == other.runtimeType &&
        targetGroup == other.targetGroup;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= targetGroup?.hashCode ?? 0;

    return hashCode;
  }

  static List<Permission> listFromJson(List<dynamic> json) {
    return json == null
        ? <Permission>[]
        : json.map((dynamic value) => Permission.fromJson(value)).toList();
  }

  static Map<String, Permission> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Permission>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Permission.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (targetGroup != null) 'targetGroup': targetGroup,
    };
  }

  @override
  String toString() {
    return 'Permission[targetGroup=$targetGroup, ]';
  }
}
