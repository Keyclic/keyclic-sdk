// @dart=2.10
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
    return json
            ?.map((dynamic value) => InvitationData.fromJson(value))
            ?.toList() ??
        <InvitationData>[];
  }

  static Map<String, InvitationData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, InvitationData>((String key, dynamic value) {
          return MapEntry(key, InvitationData.fromJson(value));
        }) ??
        <String, InvitationData>{};
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
