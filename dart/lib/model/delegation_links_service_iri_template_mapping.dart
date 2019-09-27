part of keyclic_sdk_api.api;

class DelegationLinksServiceIriTemplateMapping {
  DelegationLinksServiceIriTemplateMapping({
    this.externalService,
  });

  DelegationLinksServiceIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    externalService = json['externalService'];
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
    return json == null
        ? <DelegationLinksServiceIriTemplateMapping>[]
        : json
            .map((dynamic value) =>
                DelegationLinksServiceIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, DelegationLinksServiceIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksServiceIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksServiceIriTemplateMapping.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'externalService': externalService,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksServiceIriTemplateMapping[externalService=$externalService, ]';
  }
}
