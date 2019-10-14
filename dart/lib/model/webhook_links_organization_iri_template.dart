part of keyclic_sdk_api.api;

class WebhookLinksOrganizationIriTemplate {
  WebhookLinksOrganizationIriTemplate({
    this.mapping,
  });

  WebhookLinksOrganizationIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']);
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
    return json == null
        ? <WebhookLinksOrganizationIriTemplate>[]
        : json
            .map((dynamic value) =>
                WebhookLinksOrganizationIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, WebhookLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, WebhookLinksOrganizationIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = WebhookLinksOrganizationIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'WebhookLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }
}
