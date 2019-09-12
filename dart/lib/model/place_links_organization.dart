part of keyclic_sdk_api.api;

class PlaceLinksOrganization {
  PlaceLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  PlaceLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        PlaceLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
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

    hashCode ^= (href?.hashCode ?? 0);
    hashCode ^= (iriTemplate?.hashCode ?? 0);

    return hashCode;
  }

  static List<PlaceLinksOrganization> listFromJson(List<dynamic> json) {
    return json == null
        ? <PlaceLinksOrganization>[]
        : json
            .map((dynamic value) => PlaceLinksOrganization.fromJson(value))
            .toList();
  }

  static Map<String, PlaceLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PlaceLinksOrganization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PlaceLinksOrganization.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'PlaceLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
