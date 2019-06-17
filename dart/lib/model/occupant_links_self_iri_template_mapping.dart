part of keyclic_sdk_api.api;

class OccupantLinksSelfIriTemplateMapping {
  OccupantLinksSelfIriTemplateMapping({
    this.occupant,
  });

  OccupantLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    occupant = json['occupant'];
  }

  String occupant;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'occupant': occupant,
    };
  }

  @override
  String toString() {
    return 'OccupantLinksSelfIriTemplateMapping[occupant=$occupant, ]';
  }

  static List<OccupantLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<OccupantLinksSelfIriTemplateMapping>()
        : json
            .map((value) => OccupantLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, OccupantLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OccupantLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OccupantLinksSelfIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
