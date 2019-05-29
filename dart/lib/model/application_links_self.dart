part of keyclic_sdk_api.api;

class ApplicationLinksSelf {
  ApplicationLinksSelf();

  ApplicationLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = ApplicationLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given application. */
  String href;

  ApplicationLinksSelfIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'ApplicationLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<ApplicationLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ApplicationLinksSelf>()
        : json.map((value) => ApplicationLinksSelf.fromJson(value)).toList();
  }

  static Map<String, ApplicationLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ApplicationLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ApplicationLinksSelf.fromJson(value));
    }
    return map;
  }
}
