part of keyclic_sdk_api.api;

class MemberPatch {
  MemberPatch({
    this.contactPoint,
    this.roles,
  });

  factory MemberPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberPatch(
      contactPoint: MemberPatchContactPoint.fromJson(json['contactPoint']),
      roles: json['roles'],
    );
  }

  MemberPatchContactPoint contactPoint;

  String roles;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberPatch &&
        runtimeType == other.runtimeType &&
        contactPoint == other.contactPoint &&
        roles == other.roles;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= contactPoint?.hashCode ?? 0;
    hashCode ^= roles?.hashCode ?? 0;

    return hashCode;
  }

  static List<MemberPatch> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => MemberPatch.fromJson(value))
            ?.toList() ??
        <MemberPatch>[];
  }

  static Map<String, MemberPatch> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, MemberPatch>((String key, dynamic value) {
          return MapEntry(key, MemberPatch.fromJson(value));
        }) ??
        <String, MemberPatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (contactPoint != null) 'contactPoint': contactPoint.toJson(),
      if (roles != null) 'roles': roles,
    };
  }

  @override
  String toString() {
    return 'MemberPatch[contactPoint=$contactPoint, roles=$roles, ]';
  }
}
