// @dart=2.10
part of keyclic_sdk_api.api;

class WebhookLinksOrganizationIriTemplate {
  WebhookLinksOrganizationIriTemplate({
    this.mapping,
  });

  factory WebhookLinksOrganizationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WebhookLinksOrganizationIriTemplate(
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

    return other is WebhookLinksOrganizationIriTemplate &&
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

  static List<WebhookLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                WebhookLinksOrganizationIriTemplate.fromJson(value))
            ?.toList() ??
        <WebhookLinksOrganizationIriTemplate>[];
  }

  static Map<String, WebhookLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, WebhookLinksOrganizationIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, WebhookLinksOrganizationIriTemplate.fromJson(value));
        }) ??
        <String, WebhookLinksOrganizationIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'WebhookLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }
}
