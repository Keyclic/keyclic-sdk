part of keyclic_sdk_api.api;

class OperationLinksOperator {
  OperationLinksOperator({
    this.href,
    this.iriTemplate,
  });

  factory OperationLinksOperator.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksOperator(
      href: json['href'],
      iriTemplate:
          OperationLinksOperatorIriTemplate.fromJson(json['iriTemplate']),
    );
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
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationLinksOperator> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OperationLinksOperator.fromJson(value))
            ?.toList() ??
        <OperationLinksOperator>[];
  }

  static Map<String, OperationLinksOperator> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, OperationLinksOperator>((String key, dynamic value) {
          return MapEntry(key, OperationLinksOperator.fromJson(value));
        }) ??
        <String, OperationLinksOperator>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksOperator[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
