part of keyclic_sdk_api.api;

class MemberDataTypeEnum {
  static const String collaborator_ = "Collaborator";
  static const String contact_ = "Contact";
}

class MemberData {
  MemberData({
    this.contactPoint,
    this.organization,
    this.person,
    this.type,
  });

  factory MemberData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberData(
      contactPoint:
          InternalServiceDataContactPoint.fromJson(json['contactPoint']),
      organization: json['organization'],
      person: json['person'],
      type: json['type'],
    );
  }

  InternalServiceDataContactPoint contactPoint;

  String organization;

  String person;

  /// use MemberDataTypeEnum
  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberData &&
        runtimeType == other.runtimeType &&
        contactPoint == other.contactPoint &&
        organization == other.organization &&
        person == other.person &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= contactPoint?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= person?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<MemberData> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => MemberData.fromJson(value))?.toList() ??
        <MemberData>[];
  }

  static Map<String, MemberData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, MemberData>((String key, dynamic value) {
          return MapEntry(key, MemberData.fromJson(value));
        }) ??
        <String, MemberData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (contactPoint != null) 'contactPoint': contactPoint.toJson(),
      if (organization != null) 'organization': organization,
      if (person != null) 'person': person,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'MemberData[contactPoint=$contactPoint, organization=$organization, person=$person, type=$type, ]';
  }
}
