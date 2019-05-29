part of keyclic_sdk_api.api;

class OccupantLinksSelfIriTemplateMapping {
  OccupantLinksSelfIriTemplateMapping();

  OccupantLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    place = json['place'];
    occupant = json['occupant'];
  }

  String place;

  String occupant;

  Map<String, dynamic> toJson() {
    return {
      'place': place,
      'occupant': occupant,
    };
  }

  @override
  String toString() {
    return 'OccupantLinksSelfIriTemplateMapping[place=$place, occupant=$occupant, ]';
  }

  static List<OccupantLinksSelfIriTemplateMapping> listFromJson(List<dynamic> json) {
    return json == null ? List<OccupantLinksSelfIriTemplateMapping>() : json.map((value) => OccupantLinksSelfIriTemplateMapping.fromJson(value)).toList();
  }

  static Map<String, OccupantLinksSelfIriTemplateMapping> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OccupantLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OccupantLinksSelfIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
