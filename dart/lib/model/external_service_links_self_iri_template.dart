part of keyclic_sdk_api.api;

class ExternalServiceLinksSelfIriTemplate {
  ExternalServiceLinksSelfIriTemplate({
    this.mapping,
  });

  factory ExternalServiceLinksSelfIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceLinksSelfIriTemplate(
      mapping:
          ExternalServiceLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  ExternalServiceLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceLinksSelfIriTemplate &&
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

  static List<ExternalServiceLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ExternalServiceLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <ExternalServiceLinksSelfIriTemplate>[];
  }

  static Map<String, ExternalServiceLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ExternalServiceLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, ExternalServiceLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, ExternalServiceLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ExternalServiceLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
