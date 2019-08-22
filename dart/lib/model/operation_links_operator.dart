part of keyclic_sdk_api.api;

class OperationLinksOperator {
  OperationLinksOperator({
    this.href,
    this.iriTemplate,
  });

  OperationLinksOperator.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        OperationLinksOperatorIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the operator associated to the given operation. */
  String href;

  OperationLinksOperatorIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksOperator &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ href.hashCode ^ iriTemplate.hashCode;

  static List<OperationLinksOperator> listFromJson(List<dynamic> json) {
    return json == null
        ? <OperationLinksOperator>[]
        : json.map((value) => OperationLinksOperator.fromJson(value)).toList();
  }

  static Map<String, OperationLinksOperator> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksOperator>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksOperator.fromJson(value));
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
    return 'OperationLinksOperator[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
