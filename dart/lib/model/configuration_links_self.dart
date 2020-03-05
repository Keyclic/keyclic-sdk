part of keyclic_sdk_api.api;

class ConfigurationLinksSelf {
  ConfigurationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory ConfigurationLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ConfigurationLinksSelf(
      href: json['href'],
      iriTemplate:
          ConfigurationLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given configuration. */
  String href;

  ConfigurationLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationLinksSelf &&
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

  static List<ConfigurationLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ConfigurationLinksSelf.fromJson(value))
            ?.toList() ??
        <ConfigurationLinksSelf>[];
  }

  static Map<String, ConfigurationLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, ConfigurationLinksSelf.fromJson(value));
        }) ??
        <String, ConfigurationLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'ConfigurationLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
