part of keyclic_sdk_api.api;

class OperationLinksTracking {
  OperationLinksTracking({
    this.href,
    this.iriTemplate,
  });

  OperationLinksTracking.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        OperationLinksTrackingIriTemplate.fromJson(json['iriTemplate']);
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
    return json == null
        ? <OperationLinksTracking>[]
        : json
            .map((dynamic value) => OperationLinksTracking.fromJson(value))
            .toList();
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
}
