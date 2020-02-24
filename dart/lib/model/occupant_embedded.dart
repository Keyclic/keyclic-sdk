part of keyclic_sdk_api.api;

class OccupantEmbedded {
  OccupantEmbedded({
    this.member,
  });

  factory OccupantEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantEmbedded(
      member: Member.fromJson(json['member']),
    );
  }

  Member member;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantEmbedded &&
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

  static List<OccupantEmbedded> listFromJson(List<dynamic> json) {
    return json == null
        ? <OccupantEmbedded>[]
        : json
            .map((dynamic value) => OccupantEmbedded.fromJson(value))
            .toList();
  }

  static Map<String, OccupantEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OccupantEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OccupantEmbedded.fromJson(value));
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
    return 'OccupantEmbedded[member=$member, ]';
  }
}
