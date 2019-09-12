part of keyclic_sdk_api.api;

class OccupantLinks {
  OccupantLinks({
    this.person,
    this.place,
    this.self,
  });

  OccupantLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    person = OccupantLinksPerson.fromJson(json['person']);
    place = OccupantLinksPlace.fromJson(json['place']);
    self = OccupantLinksSelf.fromJson(json['self']);
  }

  OccupantLinksPerson person;

  OccupantLinksPlace place;

  OccupantLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinks &&
        runtimeType == other.runtimeType &&
        person == other.person &&
        place == other.place &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (person?.hashCode ?? 0);
    hashCode ^= (place?.hashCode ?? 0);
    hashCode ^= (self?.hashCode ?? 0);

    return hashCode;
  }

  static List<OccupantLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <OccupantLinks>[]
        : json.map((dynamic value) => OccupantLinks.fromJson(value)).toList();
  }

  static Map<String, OccupantLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OccupantLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OccupantLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'person': person,
      'place': place,
      'self': self,
    };
  }

  @override
  String toString() {
    return 'OccupantLinks[person=$person, place=$place, self=$self, ]';
  }
}
