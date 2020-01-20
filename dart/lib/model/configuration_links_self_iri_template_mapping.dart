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
    return json == null
        ? <ConfigurationLinksSelfIriTemplateMapping>[]
        : json
            .map((dynamic value) =>
                ConfigurationLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, ConfigurationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ConfigurationLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ConfigurationLinksSelfIriTemplateMapping.fromJson(value));
    }

    return map;
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
