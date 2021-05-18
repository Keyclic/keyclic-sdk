part of keyclic_sdk_api.api;

class OrganizationLinksDispatcherIriTemplateMapping {
  OrganizationLinksDispatcherIriTemplateMapping({
    this.dispatcher,
  });

  factory OrganizationLinksDispatcherIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksDispatcherIriTemplateMapping(
      dispatcher: json['dispatcher'],
    );
  }

  String dispatcher;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksDispatcherIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        dispatcher == other.dispatcher;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= dispatcher?.hashCode ?? 0;

    return hashCode;
  }

  static List<OrganizationLinksDispatcherIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OrganizationLinksDispatcherIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <OrganizationLinksDispatcherIriTemplateMapping>[];
  }

  static Map<String, OrganizationLinksDispatcherIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OrganizationLinksDispatcherIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(key,
              OrganizationLinksDispatcherIriTemplateMapping.fromJson(value));
        }) ??
        <String, OrganizationLinksDispatcherIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'dispatcher': dispatcher,
    };
  }

  @override
  String toString() {
    return 'OrganizationLinksDispatcherIriTemplateMapping[dispatcher=$dispatcher, ]';
  }
}
