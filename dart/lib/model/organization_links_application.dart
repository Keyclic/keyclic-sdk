part of keyclic_sdk_api.api;

class OrganizationLinksApplication {
  OrganizationLinksApplication({
    this.href,
    this.iriTemplate,
  });

  OrganizationLinksApplication.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        OrganizationLinksApplicationIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the application associated to the given organization. */
  String href;

  OrganizationLinksApplicationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksApplication &&
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
    return 'OrganizationLinksApplication[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<OrganizationLinksApplication> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OrganizationLinksApplication>()
        : json
            .map((value) => OrganizationLinksApplication.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationLinksApplication> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationLinksApplication>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationLinksApplication.fromJson(value));
    }
    return map;
  }
}
