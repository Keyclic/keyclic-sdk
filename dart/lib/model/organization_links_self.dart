part of keyclic_sdk_api.api;

class OrganizationLinksSelf {
  OrganizationLinksSelf();

  OrganizationLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = CategoryLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given organization. */
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
    return 'OrganizationLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<OrganizationLinksSelf> listFromJson(List<dynamic> json) {
    return json == null ? List<OrganizationLinksSelf>() : json.map((value) => OrganizationLinksSelf.fromJson(value)).toList();
  }

  static Map<String, OrganizationLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OrganizationLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OrganizationLinksSelf.fromJson(value));
    }
    return map;
  }
}
