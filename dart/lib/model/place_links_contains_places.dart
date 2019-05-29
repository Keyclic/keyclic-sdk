part of keyclic_sdk_api.api;

class PlaceLinksContainsPlaces {
  PlaceLinksContainsPlaces();

  PlaceLinksContainsPlaces.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = PlaceLinksContainsPlacesIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the containsPlaces associated to the given place. */
  String href;

  PlaceLinksContainsPlacesIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'PlaceLinksContainsPlaces[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<PlaceLinksContainsPlaces> listFromJson(List<dynamic> json) {
    return json == null ? List<PlaceLinksContainsPlaces>() : json.map((value) => PlaceLinksContainsPlaces.fromJson(value)).toList();
  }

  static Map<String, PlaceLinksContainsPlaces> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlaceLinksContainsPlaces>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PlaceLinksContainsPlaces.fromJson(value));
    }
    return map;
  }
}
