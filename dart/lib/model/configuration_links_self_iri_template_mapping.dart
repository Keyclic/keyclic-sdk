part of keyclic_sdk_api.api;

class ConfigurationLinksSelfIriTemplateMapping {
  ConfigurationLinksSelfIriTemplateMapping({
    this.configuration,
  });

  factory ConfigurationLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ConfigurationLinksSelfIriTemplateMapping(
      configuration: json['configuration'],
    );
  }

  String configuration;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        configuration == other.configuration;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= configuration?.hashCode ?? 0;

    return hashCode;
  }

  static List<ConfigurationLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ConfigurationLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <ConfigurationLinksSelfIriTemplateMapping>[];
  }

  static Map<String, ConfigurationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, ConfigurationLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, ConfigurationLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (configuration != null) 'configuration': configuration,
    };
  }

  @override
  String toString() {
    return 'ConfigurationLinksSelfIriTemplateMapping[configuration=$configuration, ]';
  }
}
