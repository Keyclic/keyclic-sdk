part of keyclic_sdk_api.api;

class OccupantData {
  OccupantData({
    this.person,
    this.place,
  });

  OccupantData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    person = json['person'];
    place = json['place'];
  }

  String person;

  String place;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantData &&
        runtimeType == other.runtimeType &&
        person == other.person &&
        place == other.place;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= person?.hashCode ?? 0;
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
      if (person != null) 'person': person,
      if (place != null) 'place': place,
    };
  }

  @override
  String toString() {
    return 'OccupantData[person=$person, place=$place, ]';
  }
}
