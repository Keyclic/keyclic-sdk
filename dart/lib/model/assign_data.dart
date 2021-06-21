// @dart=2.10
part of keyclic_sdk_api.api;

class AssignData {
  AssignData({
    this.member,
  });

  factory AssignData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignData(
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

    return other is AssignData &&
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

  static List<AssignData> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => AssignData.fromJson(value))?.toList() ??
        <AssignData>[];
  }

  static Map<String, AssignData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, AssignData>((String key, dynamic value) {
          return MapEntry(key, AssignData.fromJson(value));
        }) ??
        <String, AssignData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (member != null) 'member': member,
    };
  }

  @override
  String toString() {
    return 'AssignData[member=$member, ]';
  }
}
