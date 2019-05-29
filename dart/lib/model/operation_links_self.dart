part of keyclic_sdk_api.api;

class OperationLinksSelf {
  OperationLinksSelf();

  OperationLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = OperationLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given operation. */
  String href;

  OperationLinksSelfIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'OperationLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<OperationLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OperationLinksSelf>()
        : json.map((value) => OperationLinksSelf.fromJson(value)).toList();
  }

  static Map<String, OperationLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksSelf.fromJson(value));
    }
    return map;
  }
}
