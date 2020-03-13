part of keyclic_sdk_api.api;

class OrganizationLinksSelf {
  OrganizationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory OrganizationLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksSelf(
      href: json['href'],
      iriTemplate:
          OrganizationLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given organization. */
  String href;

  OrganizationLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksSelf &&
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

  static List<OrganizationLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OrganizationLinksSelf.fromJson(value))
            ?.toList() ??
        <OrganizationLinksSelf>[];
  }

  static Map<String, OrganizationLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, OrganizationLinksSelf>((String key, dynamic value) {
          return MapEntry(key, OrganizationLinksSelf.fromJson(value));
        }) ??
        <String, OrganizationLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'OrganizationLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
