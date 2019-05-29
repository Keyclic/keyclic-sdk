part of keyclic_sdk_api.api;

class OccupantLinksPlaceIriTemplate {
  OccupantLinksPlaceIriTemplate();

  OccupantLinksPlaceIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = OccupantLinksPlaceIriTemplateMapping.fromJson(json['mapping']);
  }

  OccupantLinksPlaceIriTemplateMapping mapping;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'OccupantLinksPlaceIriTemplate[mapping=$mapping, ]';
  }

  static List<OccupantLinksPlaceIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OccupantLinksPlaceIriTemplate>()
        : json
            .map((value) => OccupantLinksPlaceIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OccupantLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OccupantLinksPlaceIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OccupantLinksPlaceIriTemplate.fromJson(value));
    }
    return map;
  }
}
