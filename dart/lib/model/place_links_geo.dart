part of keyclic_sdk_api.api;

class PlaceLinksGeo {
  PlaceLinksGeo({
    this.href,
    this.iriTemplate,
  });

  factory PlaceLinksGeo.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksGeo(
      href: json['href'],
      iriTemplate: PlaceLinksGeoIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the geo associated to the given place. */
  String href;

  PlaceLinksGeoIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksGeo &&
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

  static List<PlaceLinksGeo> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlaceLinksGeo.fromJson(value))
            ?.toList() ??
        <PlaceLinksGeo>[];
  }

  static Map<String, PlaceLinksGeo> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PlaceLinksGeo>((String key, dynamic value) {
          return MapEntry(key, PlaceLinksGeo.fromJson(value));
        }) ??
        <String, PlaceLinksGeo>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceLinksGeo[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
