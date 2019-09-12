part of keyclic_sdk_api.api;

class AssignData {
  AssignData({
    this.member,
  });

  AssignData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    member = json['member'];
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

    hashCode ^= (member?.hashCode ?? 0);

    return hashCode;
  }

  static List<AssignData> listFromJson(List<dynamic> json) {
    return json == null
        ? <AssignData>[]
        : json.map((dynamic value) => AssignData.fromJson(value)).toList();
  }

  static Map<String, AssignData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AssignData>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = AssignData.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'member': member,
    };
  }

  @override
  String toString() {
    return 'AssignData[member=$member, ]';
  }
}
