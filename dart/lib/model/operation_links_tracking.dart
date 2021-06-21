// @dart=2.10
part of keyclic_sdk_api.api;

class OperationLinksTracking {
  OperationLinksTracking({
    this.href,
    this.iriTemplate,
  });

  factory OperationLinksTracking.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksTracking(
      href: json['href'],
      iriTemplate:
          OperationLinksTrackingIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the tracking associated to the given operation. */
  String href;

  OperationLinksTrackingIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksTracking &&
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

  static List<OperationLinksTracking> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OperationLinksTracking.fromJson(value))
            ?.toList() ??
        <OperationLinksTracking>[];
  }

  static Map<String, OperationLinksTracking> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, OperationLinksTracking>((String key, dynamic value) {
          return MapEntry(key, OperationLinksTracking.fromJson(value));
        }) ??
        <String, OperationLinksTracking>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksTracking[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
