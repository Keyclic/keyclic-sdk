part of keyclic_sdk_api.api;

class DelegationLinksSelf {
  DelegationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  DelegationLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = DelegationLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given delegation. */
  String href;

  DelegationLinksSelfIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<DelegationLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DelegationLinksSelf>()
        : json.map((value) => DelegationLinksSelf.fromJson(value)).toList();
  }

  static Map<String, DelegationLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksSelf.fromJson(value));
    }
    return map;
  }
}
