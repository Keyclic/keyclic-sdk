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
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksOrganization && runtimeType == other.runtimeType;
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
    return 'PlaceLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<PlaceLinksOrganization> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PlaceLinksOrganization>()
        : json.map((value) => PlaceLinksOrganization.fromJson(value)).toList();
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
}
