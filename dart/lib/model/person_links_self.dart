part of keyclic_sdk_api.api;

class PersonLinksSelf {
  PersonLinksSelf();

  PersonLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        DelegationLinksCreatedByIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given person. */
  String href;

  DelegationLinksCreatedByIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'PersonLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<PersonLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PersonLinksSelf>()
        : json.map((value) => PersonLinksSelf.fromJson(value)).toList();
  }

  static Map<String, PersonLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PersonLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonLinksSelf.fromJson(value));
    }
    return map;
  }
}
