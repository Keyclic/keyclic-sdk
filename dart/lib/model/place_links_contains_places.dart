part of keyclic_sdk_api.api;

class PlaceLinksContainsPlaces {
  PlaceLinksContainsPlaces({
    this.href,
    this.iriTemplate,
  });

  factory PlaceLinksContainsPlaces.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksContainsPlaces(
      href: json['href'],
      iriTemplate:
          PlaceLinksContainsPlacesIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the containsPlaces associated to the given place. */
  String href;

  PlaceLinksContainsPlacesIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksContainsPlaces &&
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

  static List<PlaceLinksContainsPlaces> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlaceLinksContainsPlaces.fromJson(value))
            ?.toList() ??
        <PlaceLinksContainsPlaces>[];
  }

  static Map<String, PlaceLinksContainsPlaces> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, PlaceLinksContainsPlaces.fromJson(value));
        }) ??
        <String, PlaceLinksContainsPlaces>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceLinksContainsPlaces[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
