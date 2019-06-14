part of keyclic_sdk_api.api;

class OccupantLinksPlace {
  OccupantLinksPlace({
    this.href,
    this.iriTemplate,
  });

  OccupantLinksPlace.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = OccupantLinksPlaceIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the place associated to the given occupant. */
  String href;

  OccupantLinksPlaceIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksPlace && runtimeType == other.runtimeType;
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
    return 'OccupantLinksPlace[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<OccupantLinksPlace> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OccupantLinksPlace>()
        : json.map((value) => OccupantLinksPlace.fromJson(value)).toList();
  }

  static Map<String, OccupantLinksPlace> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OccupantLinksPlace>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OccupantLinksPlace.fromJson(value));
    }
    return map;
  }
}
