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
    if (identical(this, other)) {
      return true;
    }

    return other is WebhookLinksOrganizationIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<WebhookLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<WebhookLinksOrganizationIriTemplate>()
        : json
            .map((value) => WebhookLinksOrganizationIriTemplate.fromJson(value))
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
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'WebhookLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }
}
