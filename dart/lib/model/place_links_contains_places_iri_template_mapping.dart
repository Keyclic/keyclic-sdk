part of keyclic_sdk_api.api;

class PlaceLinksContainsPlacesIriTemplateMapping {
  PlaceLinksContainsPlacesIriTemplateMapping();

  PlaceLinksContainsPlacesIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    parent = json['parent'];
  }

  String parent;

  Map<String, dynamic> toJson() {
    return {
      'parent': parent,
    };
  }

  @override
  String toString() {
    return 'PlaceLinksContainsPlacesIriTemplateMapping[parent=$parent, ]';
  }

  static List<PlaceLinksContainsPlacesIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<PlaceLinksContainsPlacesIriTemplateMapping>()
        : json
            .map((value) =>
                PlaceLinksContainsPlacesIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, PlaceLinksContainsPlacesIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PlaceLinksContainsPlacesIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          PlaceLinksContainsPlacesIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
