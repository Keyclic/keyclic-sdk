part of keyclic_sdk_api.api;

class PlaceLinksContainedInPlace {
  PlaceLinksContainedInPlace({
    this.href,
    this.iriTemplate,
  });

  PlaceLinksContainedInPlace.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        PlaceLinksContainedInPlaceIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the containedInPlace associated to the given place. */
  String href;

  PlaceLinksContainedInPlaceIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksContainedInPlace &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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
    return json == null
        ? List<PlaceLinksContainedInPlace>()
        : json
            .map((value) => PlaceLinksContainedInPlace.fromJson(value))
            .toList();
  }

  static Map<String, PlaceLinksContainedInPlace> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PlaceLinksContainedInPlace>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PlaceLinksContainedInPlace.fromJson(value));
    }
    return map;
  }
}
