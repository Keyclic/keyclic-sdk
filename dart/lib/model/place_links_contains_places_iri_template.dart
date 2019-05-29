part of keyclic_sdk_api.api;

class PlaceLinksContainsPlacesIriTemplate {
  PlaceLinksContainsPlacesIriTemplate();

  PlaceLinksContainsPlacesIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = PlaceLinksContainsPlacesIriTemplateMapping.fromJson(json['mapping']);
  }

  PlaceLinksContainsPlacesIriTemplateMapping mapping;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'PlaceLinksContainsPlacesIriTemplate[mapping=$mapping, ]';
  }

  static List<PlaceLinksContainsPlacesIriTemplate> listFromJson(List<dynamic> json) {
    return json == null ? List<PlaceLinksContainsPlacesIriTemplate>() : json.map((value) => PlaceLinksContainsPlacesIriTemplate.fromJson(value)).toList();
  }

  static Map<String, PlaceLinksContainsPlacesIriTemplate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlaceLinksContainsPlacesIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PlaceLinksContainsPlacesIriTemplate.fromJson(value));
    }
    return map;
  }
}
