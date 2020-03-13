part of keyclic_sdk_api.api;

class OrganizationLinksLogo {
  OrganizationLinksLogo({
    this.href,
    this.iriTemplate,
  });

  factory OrganizationLinksLogo.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksLogo(
      href: json['href'],
      iriTemplate:
          OrganizationLinksLogoIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the logo associated to the given organization. */
  String href;

  OrganizationLinksLogoIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksLogo &&
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

  static List<OrganizationLinksLogo> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OrganizationLinksLogo.fromJson(value))
            ?.toList() ??
        <OrganizationLinksLogo>[];
  }

  static Map<String, OrganizationLinksLogo> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, OrganizationLinksLogo>((String key, dynamic value) {
          return MapEntry(key, OrganizationLinksLogo.fromJson(value));
        }) ??
        <String, OrganizationLinksLogo>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'OrganizationLinksLogo[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
