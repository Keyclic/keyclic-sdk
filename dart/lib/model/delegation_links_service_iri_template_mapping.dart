part of keyclic_sdk_api.api;

class DelegationLinksServiceIriTemplateMapping {
  DelegationLinksServiceIriTemplateMapping({
    this.service,
  });

  factory DelegationLinksServiceIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationLinksServiceIriTemplateMapping(
      service: json['service'],
    );
  }

  String service;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksServiceIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        service == other.service;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= service?.hashCode ?? 0;

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
    return json?.map<String, DelegationLinksServiceIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, DelegationLinksServiceIriTemplateMapping.fromJson(value));
        }) ??
        <String, DelegationLinksServiceIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (service != null) 'service': service,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksServiceIriTemplateMapping[service=$service, ]';
  }
}
