part of keyclic_sdk_api.api;

class MemberPatch {
  MemberPatch({
    this.roles,
  });

  MemberPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    roles = (json['roles'] as List)?.map((item) => item as String)?.toList();
  }

  List<String> roles;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberPatch &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(roles, other.roles);
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      roles.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<MemberPatch> listFromJson(List<dynamic> json) {
    return json == null
        ? <MemberPatch>[]
        : json.map((value) => MemberPatch.fromJson(value)).toList();
  }

  static Map<String, MemberPatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberPatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MemberPatch.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'roles': roles,
    };
  }

  @override
  String toString() {
    return 'MemberPatch[roles=$roles, ]';
  }
}
