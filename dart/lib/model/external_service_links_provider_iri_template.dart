part of keyclic_sdk_api.api;

class ExternalServiceLinksProviderIriTemplate {
  ExternalServiceLinksProviderIriTemplate({
    this.mapping,
  });

  factory ExternalServiceLinksProviderIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceLinksProviderIriTemplate(
      mapping:
          CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceLinksProviderIriTemplate &&
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

  static List<ExternalServiceLinksProviderIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ExternalServiceLinksProviderIriTemplate.fromJson(value))
            ?.toList() ??
        <ExternalServiceLinksProviderIriTemplate>[];
  }

  static Map<String, ExternalServiceLinksProviderIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ExternalServiceLinksProviderIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, ExternalServiceLinksProviderIriTemplate.fromJson(value));
        }) ??
        <String, ExternalServiceLinksProviderIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ExternalServiceLinksProviderIriTemplate[mapping=$mapping, ]';
  }
}
