part of keyclic_sdk_api.api;

class OrganizationLinksLogo {
  OrganizationLinksLogo({
    this.href,
    this.iriTemplate,
  });

  OrganizationLinksLogo.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        CategoryLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the logo associated to the given organization. */
  String href;

  CategoryLinksOrganizationIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'OrganizationLinksLogo[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<OrganizationLinksLogo> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OrganizationLinksLogo>()
        : json.map((value) => OrganizationLinksLogo.fromJson(value)).toList();
  }

  static Map<String, OrganizationLinksLogo> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationLinksLogo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationLinksLogo.fromJson(value));
    }
    return map;
  }
}
