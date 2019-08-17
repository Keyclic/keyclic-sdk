part of keyclic_sdk_api.api;

class OperationLinksSelf {
  OperationLinksSelf({
    this.href,
    this.iriTemplate,
  });

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

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksSelf && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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
}
