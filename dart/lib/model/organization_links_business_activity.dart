part of keyclic_sdk_api.api;

class OrganizationLinksBusinessActivity {
  OrganizationLinksBusinessActivity({
    this.href,
    this.iriTemplate,
  });

  OrganizationLinksBusinessActivity.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        BusinessActivityLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the businessActivity associated to the given organization. */
  String href;

  BusinessActivityLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksBusinessActivity &&
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
    return 'OrganizationLinksBusinessActivity[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<OrganizationLinksBusinessActivity> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<OrganizationLinksBusinessActivity>()
        : json
            .map((value) => OrganizationLinksBusinessActivity.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationLinksBusinessActivity> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationLinksBusinessActivity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationLinksBusinessActivity.fromJson(value));
    }
    return map;
  }
}
