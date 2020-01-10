part of keyclic_sdk_api.api;

class OperationLinksSelf {
  OperationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory OperationLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksSelf(
      href: json['href'],
      iriTemplate: OperationLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given operation. */
  String href;

  OperationLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksSelf &&
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

  static List<OperationLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? <OperationLinksSelf>[]
        : json
            .map((dynamic value) => OperationLinksSelf.fromJson(value))
            .toList();
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
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'OperationLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
