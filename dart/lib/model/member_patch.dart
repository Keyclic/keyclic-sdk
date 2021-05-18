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
      roles: json['roles'] is List ? List<String>.from(json['roles']) : null,
    );
  }

  MemberPatchContactPoint contactPoint;

  List<String> roles;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberPatch &&
        runtimeType == other.runtimeType &&
        contactPoint == other.contactPoint &&
        DeepCollectionEquality.unordered().equals(roles, other.roles);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (roles is List && roles.isNotEmpty) {
      hashCode ^= roles
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= contactPoint?.hashCode ?? 0;

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
      'contactPoint': contactPoint?.toJson(),
      'roles': roles,
    };
  }

  @override
  String toString() {
    return 'MemberPatch[contactPoint=$contactPoint, roles=$roles, ]';
  }
}
