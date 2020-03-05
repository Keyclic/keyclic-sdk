part of keyclic_sdk_api.api;

class DelegationLinksServiceIriTemplateMapping {
  DelegationLinksServiceIriTemplateMapping({
    this.externalService,
  });

  factory DelegationLinksServiceIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationLinksServiceIriTemplateMapping(
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

    return other is DelegationLinksServiceIriTemplateMapping &&
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

  static List<DelegationLinksServiceIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                DelegationLinksServiceIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <DelegationLinksServiceIriTemplateMapping>[];
  }

  static Map<String, DelegationLinksServiceIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, DelegationLinksServiceIriTemplateMapping.fromJson(value));
        }) ??
        <String, DelegationLinksServiceIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (externalService != null) 'externalService': externalService,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksServiceIriTemplateMapping[externalService=$externalService, ]';
  }
}
