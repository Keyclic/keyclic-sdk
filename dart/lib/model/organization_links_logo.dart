part of keyclic_sdk_api.api;

class OrganizationLinksLogo {
  OrganizationLinksLogo({
    this.href,
    this.iriTemplate,
  });

  OrganizationLinksLogo.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        OrganizationLinksLogoIriTemplate.fromJson(json['iriTemplate']);
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
    return json == null
        ? <OrganizationLinksLogo>[]
        : json
            .map((dynamic value) => OrganizationLinksLogo.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationLinksLogo> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationLinksLogo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationLinksLogo.fromJson(value));
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
    return 'OrganizationLinksLogo[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
