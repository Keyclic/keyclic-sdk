part of keyclic_sdk_api.api;

class OperationLinksCreatedBy {
  OperationLinksCreatedBy({
    this.href,
    this.iriTemplate,
  });

  factory OperationLinksCreatedBy.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksCreatedBy(
      href: json['href'],
      iriTemplate:
          OperationLinksCreatedByIriTemplate.fromJson(json['iriTemplate']),
    );
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
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationLinksCreatedBy> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OperationLinksCreatedBy.fromJson(value))
            ?.toList() ??
        <OperationLinksCreatedBy>[];
  }

  static Map<String, OperationLinksCreatedBy> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, OperationLinksCreatedBy.fromJson(value));
        }) ??
        <String, OperationLinksCreatedBy>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksCreatedBy[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
