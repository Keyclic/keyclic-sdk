part of keyclic_sdk_api.api;

class OrganizationLinksDispatcherIriTemplate {
  OrganizationLinksDispatcherIriTemplate({
    this.mapping,
  });

  factory OrganizationLinksDispatcherIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksDispatcherIriTemplate(
      mapping: OrganizationLinksDispatcherIriTemplateMapping.fromJson(
          json['mapping']),
    );
  }

  OrganizationLinksDispatcherIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksDispatcherIriTemplate &&
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

  static List<OrganizationLinksDispatcherIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OrganizationLinksDispatcherIriTemplate.fromJson(value))
            ?.toList() ??
        <OrganizationLinksDispatcherIriTemplate>[];
  }

  static Map<String, OrganizationLinksDispatcherIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OrganizationLinksDispatcherIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, OrganizationLinksDispatcherIriTemplate.fromJson(value));
        }) ??
        <String, OrganizationLinksDispatcherIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'OrganizationLinksDispatcherIriTemplate[mapping=$mapping, ]';
  }
}
