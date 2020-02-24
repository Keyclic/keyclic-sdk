part of keyclic_sdk_api.api;

class OccupantData {
  OccupantData({
    this.member,
    this.place,
  });

  factory OccupantData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantData(
      member: json['member'],
      place: json['place'],
    );
  }

  String member;

  String place;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantData &&
        runtimeType == other.runtimeType &&
        member == other.member &&
        place == other.place;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= member?.hashCode ?? 0;
    hashCode ^= place?.hashCode ?? 0;

    return hashCode;
  }

  static List<OccupantData> listFromJson(List<dynamic> json) {
    return json == null
        ? <OccupantData>[]
        : json.map((dynamic value) => OccupantData.fromJson(value)).toList();
  }

  static Map<String, OccupantData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OccupantData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OccupantData.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (member != null) 'member': member,
      if (place != null) 'place': place,
    };
  }

  @override
  String toString() {
    return 'OccupantData[member=$member, place=$place, ]';
  }
}
