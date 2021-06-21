// @dart=2.10
part of keyclic_sdk_api.api;

class PlaceLinksOrganization {
  PlaceLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  factory PlaceLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksOrganization(
      href: json['href'],
      iriTemplate:
          PlaceLinksOrganizationIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the organization associated to the given place. */
  String href;

  PlaceLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksOrganization &&
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

  static List<PlaceLinksOrganization> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlaceLinksOrganization.fromJson(value))
            ?.toList() ??
        <PlaceLinksOrganization>[];
  }

  static Map<String, PlaceLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, PlaceLinksOrganization>((String key, dynamic value) {
          return MapEntry(key, PlaceLinksOrganization.fromJson(value));
        }) ??
        <String, PlaceLinksOrganization>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
