part of keyclic_sdk_api.api;

class OccupantLinksSelfIriTemplate {
  OccupantLinksSelfIriTemplate();

  OccupantLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = OccupantLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  OccupantLinksSelfIriTemplateMapping mapping;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'OccupantLinksSelfIriTemplate[mapping=$mapping, ]';
  }

  static List<OccupantLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null ? List<OccupantLinksSelfIriTemplate>() : json.map((value) => OccupantLinksSelfIriTemplate.fromJson(value)).toList();
  }

  static Map<String, OccupantLinksSelfIriTemplate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OccupantLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OccupantLinksSelfIriTemplate.fromJson(value));
    }
    return map;
  }
}
