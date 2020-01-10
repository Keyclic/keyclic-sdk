part of keyclic_sdk_api.api;

class OccupantLinksPlace {
  OccupantLinksPlace({
    this.href,
    this.iriTemplate,
  });

  factory OccupantLinksPlace.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksPlace(
      href: json['href'],
      iriTemplate: OccupantLinksPlaceIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the place associated to the given occupant. */
  String href;

  OccupantLinksPlaceIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksPlace &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<OccupantLinksPlace> listFromJson(List<dynamic> json) {
    return json == null
        ? <OccupantLinksPlace>[]
        : json
            .map((dynamic value) => OccupantLinksPlace.fromJson(value))
            .toList();
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

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'OccupantLinksPlace[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
