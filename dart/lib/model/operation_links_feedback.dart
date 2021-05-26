part of keyclic_sdk_api.api;

class OperationLinksFeedback {
  OperationLinksFeedback({
    this.href,
    this.iriTemplate,
  });

  factory OperationLinksFeedback.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksFeedback(
      href: json['href'],
      iriTemplate:
          OperationLinksFeedbackIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the feedback associated to the given operation. */
  String href;

  OperationLinksFeedbackIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksFeedback &&
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

  static List<OperationLinksFeedback> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OperationLinksFeedback.fromJson(value))
            ?.toList() ??
        <OperationLinksFeedback>[];
  }

  static Map<String, OperationLinksFeedback> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, OperationLinksFeedback>((String key, dynamic value) {
          return MapEntry(key, OperationLinksFeedback.fromJson(value));
        }) ??
        <String, OperationLinksFeedback>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksFeedback[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
