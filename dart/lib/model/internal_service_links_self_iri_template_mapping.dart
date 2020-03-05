part of keyclic_sdk_api.api;

class InternalServiceLinksSelfIriTemplateMapping {
  InternalServiceLinksSelfIriTemplateMapping({
    this.internalService,
  });

  factory InternalServiceLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceLinksSelfIriTemplateMapping(
      internalService: json['internalService'],
    );
  }

  String internalService;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        internalService == other.internalService;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= internalService?.hashCode ?? 0;

    return hashCode;
  }

  static List<InternalServiceLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                InternalServiceLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <InternalServiceLinksSelfIriTemplateMapping>[];
  }

  static Map<String, InternalServiceLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, InternalServiceLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, InternalServiceLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (internalService != null) 'internalService': internalService,
    };
  }

  @override
  String toString() {
    return 'InternalServiceLinksSelfIriTemplateMapping[internalService=$internalService, ]';
  }
}
