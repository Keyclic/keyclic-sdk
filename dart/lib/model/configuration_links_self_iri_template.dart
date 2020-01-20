part of keyclic_sdk_api.api;

class ConfigurationLinksSelfIriTemplate {
  ConfigurationLinksSelfIriTemplate({
    this.mapping,
  });

  factory ConfigurationLinksSelfIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ConfigurationLinksSelfIriTemplate(
      mapping:
          ConfigurationLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  ConfigurationLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationLinksSelfIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<ConfigurationLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <ConfigurationLinksSelfIriTemplate>[]
        : json
            .map((dynamic value) =>
                ConfigurationLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ConfigurationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ConfigurationLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ConfigurationLinksSelfIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'ConfigurationLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
