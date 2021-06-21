// @dart=2.10
part of keyclic_sdk_api.api;

class ServiceMemberData {
  ServiceMemberData({
    this.member,
  });

  factory ServiceMemberData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ServiceMemberData(
      member: json['member'],
    );
  }

  String member;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ServiceMemberData &&
        runtimeType == other.runtimeType &&
        member == other.member;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= member?.hashCode ?? 0;

    return hashCode;
  }

  static List<ServiceMemberData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ServiceMemberData.fromJson(value))
            ?.toList() ??
        <ServiceMemberData>[];
  }

  static Map<String, ServiceMemberData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ServiceMemberData>((String key, dynamic value) {
          return MapEntry(key, ServiceMemberData.fromJson(value));
        }) ??
        <String, ServiceMemberData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (member != null) 'member': member,
    };
  }

  @override
  String toString() {
    return 'ServiceMemberData[member=$member, ]';
  }
}
