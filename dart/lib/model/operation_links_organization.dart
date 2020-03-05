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
    return json
            ?.map((dynamic value) => OperationLinksOrganization.fromJson(value))
            ?.toList() ??
        <OperationLinksOrganization>[];
  }

  static Map<String, OperationLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, OperationLinksOrganization.fromJson(value));
        }) ??
        <String, OperationLinksOrganization>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
