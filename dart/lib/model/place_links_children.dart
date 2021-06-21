// @dart=2.10
part of keyclic_sdk_api.api;

class PlaceLinksChildren {
  PlaceLinksChildren({
    this.href,
    this.iriTemplate,
  });

  factory PlaceLinksChildren.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksChildren(
      href: json['href'],
      iriTemplate: PlaceLinksChildrenIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the children associated to the given place. */
  String href;

  PlaceLinksChildrenIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksChildren &&
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

  static List<PlaceLinksChildren> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlaceLinksChildren.fromJson(value))
            ?.toList() ??
        <PlaceLinksChildren>[];
  }

  static Map<String, PlaceLinksChildren> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PlaceLinksChildren>((String key, dynamic value) {
          return MapEntry(key, PlaceLinksChildren.fromJson(value));
        }) ??
        <String, PlaceLinksChildren>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceLinksChildren[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
