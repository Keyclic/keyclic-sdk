part of keyclic_sdk_api.api;

class PlaceLinksContainedInPlace {
  PlaceLinksContainedInPlace();

  PlaceLinksContainedInPlace.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = OccupantLinksPlaceIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the containedInPlace associated to the given place. */
  String href;

  OccupantLinksPlaceIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'PlaceLinksContainedInPlace[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<PlaceLinksContainedInPlace> listFromJson(List<dynamic> json) {
    return json == null ? List<PlaceLinksContainedInPlace>() : json.map((value) => PlaceLinksContainedInPlace.fromJson(value)).toList();
  }

  static Map<String, PlaceLinksContainedInPlace> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlaceLinksContainedInPlace>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PlaceLinksContainedInPlace.fromJson(value));
    }
    return map;
  }
}
