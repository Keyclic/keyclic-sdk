part of keyclic_sdk_api.api;

class DelegationLinksFrom {
  DelegationLinksFrom();

  DelegationLinksFrom.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        CategoryLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the from associated to the given delegation. */
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
    return 'DelegationLinksFrom[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<DelegationLinksFrom> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DelegationLinksFrom>()
        : json.map((value) => DelegationLinksFrom.fromJson(value)).toList();
  }

  static Map<String, DelegationLinksFrom> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksFrom>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksFrom.fromJson(value));
    }
    return map;
  }
}
