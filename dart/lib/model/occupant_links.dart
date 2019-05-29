part of keyclic_sdk_api.api;

class OccupantLinks {
  OccupantLinks();

  OccupantLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    self = OccupantLinksSelf.fromJson(json['self']);
    person = OccupantLinksPerson.fromJson(json['person']);
    place = OccupantLinksPlace.fromJson(json['place']);
  }

  OccupantLinksSelf self;

  OccupantLinksPerson person;

  OccupantLinksPlace place;

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'person': person,
      'place': place,
    };
  }

  @override
  String toString() {
    return 'OccupantLinks[self=$self, person=$person, place=$place, ]';
  }

  static List<OccupantLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<OccupantLinks>() : json.map((value) => OccupantLinks.fromJson(value)).toList();
  }

  static Map<String, OccupantLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OccupantLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OccupantLinks.fromJson(value));
    }
    return map;
  }
}
