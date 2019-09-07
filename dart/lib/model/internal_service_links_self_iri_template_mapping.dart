part of keyclic_sdk_api.api;

class InternalServiceLinksSelfIriTemplateMapping {
  InternalServiceLinksSelfIriTemplateMapping({
    this.internalService,
  });

  InternalServiceLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    internalService = json['internalService'];
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
  int get hashCode => 0 ^ internalService.hashCode;

  static List<InternalServiceLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <InternalServiceLinksSelfIriTemplateMapping>[]
        : json
            .map((value) =>
                InternalServiceLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, InternalServiceLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, InternalServiceLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          InternalServiceLinksSelfIriTemplateMapping.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'internalService': internalService,
    };
  }

  @override
  String toString() {
    return 'InternalServiceLinksSelfIriTemplateMapping[internalService=$internalService, ]';
  }
}
