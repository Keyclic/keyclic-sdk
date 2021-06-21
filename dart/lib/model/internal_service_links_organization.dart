// @dart=2.10
part of keyclic_sdk_api.api;

class InternalServiceLinksOrganization {
  InternalServiceLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  factory InternalServiceLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceLinksOrganization(
      href: json['href'],
      iriTemplate: InternalServiceLinksOrganizationIriTemplate.fromJson(
          json['iriTemplate']),
    );
  }

  /* The URI of the organization associated to the given internalservice. */
  String href;

  InternalServiceLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinksOrganization &&
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

  static List<InternalServiceLinksOrganization> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                InternalServiceLinksOrganization.fromJson(value))
            ?.toList() ??
        <InternalServiceLinksOrganization>[];
  }

  static Map<String, InternalServiceLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, InternalServiceLinksOrganization>(
            (String key, dynamic value) {
          return MapEntry(
              key, InternalServiceLinksOrganization.fromJson(value));
        }) ??
        <String, InternalServiceLinksOrganization>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'InternalServiceLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
