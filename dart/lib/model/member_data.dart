part of keyclic_sdk_api.api;

class MemberData {
  MemberData({
    this.person,
    this.organization,
  });

  MemberData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    person = json['person'];
    organization = json['organization'];
  }

  String person;

  String organization;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberData &&
        runtimeType == other.runtimeType &&
        person == other.person &&
        organization == other.organization;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= person?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;

    return hashCode;
  }

  static List<MemberData> listFromJson(List<dynamic> json) {
    return json == null
        ? <MemberData>[]
        : json.map((dynamic value) => MemberData.fromJson(value)).toList();
  }

  static Map<String, MemberData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberData>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = MemberData.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (person != null) 'person': person,
      if (organization != null) 'organization': organization,
    };
  }

  @override
  String toString() {
    return 'MemberData[person=$person, organization=$organization, ]';
  }
}
