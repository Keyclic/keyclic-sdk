part of keyclic_sdk_api.api;

class DelegationLinksTo {
  DelegationLinksTo();

  DelegationLinksTo.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        CategoryLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the to associated to the given delegation. */
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
    return 'DelegationLinksTo[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<DelegationLinksTo> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DelegationLinksTo>()
        : json.map((value) => DelegationLinksTo.fromJson(value)).toList();
  }

  static Map<String, DelegationLinksTo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksTo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksTo.fromJson(value));
    }
    return map;
  }
}
