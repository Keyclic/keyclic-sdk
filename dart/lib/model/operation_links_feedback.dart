part of keyclic_sdk_api.api;

class OperationLinksFeedback {
  OperationLinksFeedback({
    this.href,
    this.iriTemplate,
  });

  OperationLinksFeedback.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        OperationLinksFeedbackIriTemplate.fromJson(json['iriTemplate']);
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
  int get hashCode => 0 ^ href.hashCode ^ iriTemplate.hashCode;

  static List<OperationLinksFeedback> listFromJson(List<dynamic> json) {
    return json == null
        ? <OperationLinksFeedback>[]
        : json.map((value) => OperationLinksFeedback.fromJson(value)).toList();
  }

  static Map<String, OperationLinksFeedback> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksFeedback>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksFeedback.fromJson(value));
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
    return 'OperationLinksFeedback[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
