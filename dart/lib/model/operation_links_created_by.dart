part of keyclic_sdk_api.api;

class OperationLinksCreatedBy {
  OperationLinksCreatedBy({
    this.href,
    this.iriTemplate,
  });

  OperationLinksCreatedBy.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        OperationLinksCreatedByIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the createdBy associated to the given operation. */
  String href;

  OperationLinksCreatedByIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksCreatedBy &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ href.hashCode ^ iriTemplate.hashCode;

  static List<OperationLinksCreatedBy> listFromJson(List<dynamic> json) {
    return json == null
        ? <OperationLinksCreatedBy>[]
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
}
