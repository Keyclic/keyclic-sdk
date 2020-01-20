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
    return json == null
        ? <OrganizationLinksConfiguration>[]
        : json
            .map((dynamic value) =>
                OrganizationLinksConfiguration.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationLinksConfiguration> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationLinksConfiguration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationLinksConfiguration.fromJson(value));
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
    return 'OrganizationLinksConfiguration[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
