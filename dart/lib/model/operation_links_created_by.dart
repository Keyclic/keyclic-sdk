part of keyclic_sdk_api.api;

class OperationLinksCreatedBy {
  OperationLinksCreatedBy();

  OperationLinksCreatedBy.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        DelegationLinksCreatedByIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the createdBy associated to the given operation. */
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
    return 'OperationLinksCreatedBy[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<OperationLinksCreatedBy> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OperationLinksCreatedBy>()
        : json.map((value) => OperationLinksCreatedBy.fromJson(value)).toList();
  }

  static Map<String, OperationLinksCreatedBy> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksCreatedBy>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksCreatedBy.fromJson(value));
    }
    return map;
  }
}
