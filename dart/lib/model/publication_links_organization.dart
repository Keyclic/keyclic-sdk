part of keyclic_sdk_api.api;

class PublicationLinksOrganization {
  PublicationLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  factory PublicationLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksOrganization(
      href: json['href'],
      iriTemplate:
          PublicationLinksOrganizationIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the organization associated to the given publication. */
  String href;

  PublicationLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksOrganization &&
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

  static List<PublicationLinksOrganization> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => PublicationLinksOrganization.fromJson(value))
            ?.toList() ??
        <PublicationLinksOrganization>[];
  }

  static Map<String, PublicationLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PublicationLinksOrganization>(
            (String key, dynamic value) {
          return MapEntry(key, PublicationLinksOrganization.fromJson(value));
        }) ??
        <String, PublicationLinksOrganization>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'PublicationLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
