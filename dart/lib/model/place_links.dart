part of keyclic_sdk_api.api;

class PlaceLinks {
  PlaceLinks({
    this.self,
    this.organization,
    this.containedInPlace,
    this.containsPlaces,
  });

  PlaceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    self = PlaceLinksSelf.fromJson(json['self']);
    organization = PlaceLinksOrganization.fromJson(json['organization']);
    containedInPlace =
        PlaceLinksContainedInPlace.fromJson(json['containedInPlace']);
    containsPlaces = PlaceLinksContainsPlaces.fromJson(json['containsPlaces']);
  }

  PlaceLinksSelf self;

  PlaceLinksOrganization organization;

  PlaceLinksContainedInPlace containedInPlace;

  PlaceLinksContainsPlaces containsPlaces;

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'organization': organization,
      'containedInPlace': containedInPlace,
      'containsPlaces': containsPlaces,
    };
  }

  @override
  String toString() {
    return 'PlaceLinks[self=$self, organization=$organization, containedInPlace=$containedInPlace, containsPlaces=$containsPlaces, ]';
  }

  static List<PlaceLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PlaceLinks>()
        : json.map((value) => PlaceLinks.fromJson(value)).toList();
  }

  static Map<String, PlaceLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlaceLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = PlaceLinks.fromJson(value));
    }
    return map;
  }
}
