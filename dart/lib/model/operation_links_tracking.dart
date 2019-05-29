part of keyclic_sdk_api.api;

class OperationLinksTracking {
  OperationLinksTracking();

  OperationLinksTracking.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = OperationLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the tracking associated to the given operation. */
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
    return 'OperationLinksTracking[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<OperationLinksTracking> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OperationLinksTracking>()
        : json.map((value) => OperationLinksTracking.fromJson(value)).toList();
  }

  static Map<String, OperationLinksTracking> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksTracking>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksTracking.fromJson(value));
    }
    return map;
  }
}
