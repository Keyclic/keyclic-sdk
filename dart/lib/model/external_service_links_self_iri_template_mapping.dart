part of keyclic_sdk_api.api;

class ExternalServiceLinksSelfIriTemplateMapping {
  ExternalServiceLinksSelfIriTemplateMapping({
    this.externalService,
  });

  factory ExternalServiceLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceLinksSelfIriTemplateMapping(
      externalService: json['externalService'],
    );
  }

  String externalService;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        externalService == other.externalService;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= externalService?.hashCode ?? 0;

    return hashCode;
  }

  static List<ExternalServiceLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ExternalServiceLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <ExternalServiceLinksSelfIriTemplateMapping>[];
  }

  static Map<String, ExternalServiceLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ExternalServiceLinksSelfIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, ExternalServiceLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, ExternalServiceLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'externalService': externalService,
    };
  }

  @override
  String toString() {
    return 'ExternalServiceLinksSelfIriTemplateMapping[externalService=$externalService, ]';
  }
}
