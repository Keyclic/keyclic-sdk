part of keyclic_sdk_api.api;

class OrganizationLinksConfiguration {
  OrganizationLinksConfiguration({
    this.href,
    this.iriTemplate,
  });

  factory OrganizationLinksConfiguration.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksConfiguration(
      href: json['href'],
      iriTemplate: OrganizationLinksConfigurationIriTemplate.fromJson(
          json['iriTemplate']),
    );
  }

  /* The URI of the configuration associated to the given organization. */
  String href;

  OrganizationLinksConfigurationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksConfiguration &&
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

  static List<OrganizationLinksConfiguration> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OrganizationLinksConfiguration.fromJson(value))
            ?.toList() ??
        <OrganizationLinksConfiguration>[];
  }

  static Map<String, OrganizationLinksConfiguration> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OrganizationLinksConfiguration>(
            (String key, dynamic value) {
          return MapEntry(key, OrganizationLinksConfiguration.fromJson(value));
        }) ??
        <String, OrganizationLinksConfiguration>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'OrganizationLinksConfiguration[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
