part of keyclic_sdk_api.api;

class ServiceLinksOrganization {
  ServiceLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  ServiceLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        CategoryLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the organization associated to the given service. */
  String href;

  CategoryLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ServiceLinksOrganization &&
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
    return 'ServiceLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<ServiceLinksOrganization> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ServiceLinksOrganization>()
        : json
            .map((value) => ServiceLinksOrganization.fromJson(value))
            .toList();
  }

  static Map<String, ServiceLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ServiceLinksOrganization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ServiceLinksOrganization.fromJson(value));
    }
    return map;
  }
}
