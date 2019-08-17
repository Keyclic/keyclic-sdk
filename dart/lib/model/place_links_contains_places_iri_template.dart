part of keyclic_sdk_api.api;

class PlaceLinksContainsPlacesIriTemplate {
  PlaceLinksContainsPlacesIriTemplate({
    this.mapping,
  });

  PlaceLinksContainsPlacesIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        PlaceLinksContainsPlacesIriTemplateMapping.fromJson(json['mapping']);
  }

  PlaceLinksContainsPlacesIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksContainsPlacesIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<PlaceLinksContainsPlacesIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<PlaceLinksContainsPlacesIriTemplate>()
        : json
            .map((value) => PlaceLinksContainsPlacesIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, PlaceLinksContainsPlacesIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PlaceLinksContainsPlacesIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PlaceLinksContainsPlacesIriTemplate.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'PlaceLinksContainsPlacesIriTemplate[mapping=$mapping, ]';
  }
}
