part of keyclic_sdk_api.api;

class MemberData {
  MemberData({
    this.member,
  });

  MemberData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    member = json['member'];
  }

  String member;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is MemberData &&
        runtimeType == other.runtimeType &&
        member == other.member;
  }

  @override
  int get hashCode => 0 ^ member.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'member': member,
    };
  }

  @override
  String toString() {
    return 'MemberData[member=$member, ]';
  }

  static List<MemberData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<MemberData>()
        : json.map((value) => MemberData.fromJson(value)).toList();
  }

  static Map<String, MemberData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberData>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = MemberData.fromJson(value));
    }
    return map;
  }
}
