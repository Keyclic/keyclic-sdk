part of keyclic_sdk_api.api;

class PersonLinksMemberOf {
  PersonLinksMemberOf({
    this.href,
    this.iriTemplate,
  });

  PersonLinksMemberOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        CategoryLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the memberOf associated to the given person. */
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
    return 'PersonLinksMemberOf[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<PersonLinksMemberOf> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PersonLinksMemberOf>()
        : json.map((value) => PersonLinksMemberOf.fromJson(value)).toList();
  }

  static Map<String, PersonLinksMemberOf> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PersonLinksMemberOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonLinksMemberOf.fromJson(value));
    }
    return map;
  }
}
