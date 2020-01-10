part of keyclic_sdk_api.api;

class OperationLinksOrganization {
  OperationLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  factory OperationLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksOrganization(
      href: json['href'],
      iriTemplate:
          OperationLinksOrganizationIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the organization associated to the given operation. */
  String href;

  OperationLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksOrganization &&
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

  static List<OperationLinksOrganization> listFromJson(List<dynamic> json) {
    return json == null
        ? <OperationLinksOrganization>[]
        : json
            .map((dynamic value) => OperationLinksOrganization.fromJson(value))
            .toList();
  }

  static Map<String, OperationLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksOrganization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksOrganization.fromJson(value));
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
    return 'OperationLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
