part of keyclic_sdk_api.api;

class InvitationData {
  InvitationData({
    this.member,
  });

  factory InvitationData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InvitationData(
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

    return other is InvitationData &&
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

  static List<InvitationData> listFromJson(List<dynamic> json) {
    return json == null
        ? <InvitationData>[]
        : json.map((dynamic value) => InvitationData.fromJson(value)).toList();
  }

  static Map<String, InvitationData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InvitationData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = InvitationData.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (member != null) 'member': member,
    };
  }

  @override
  String toString() {
    return 'InvitationData[member=$member, ]';
  }
}
