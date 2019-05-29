part of keyclic_sdk_api.api;

class WebhookLinksSelfIriTemplate {
  WebhookLinksSelfIriTemplate();

  WebhookLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = WebhookLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  WebhookLinksSelfIriTemplateMapping mapping;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'WebhookLinksSelfIriTemplate[mapping=$mapping, ]';
  }

  static List<WebhookLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<WebhookLinksSelfIriTemplate>()
        : json
            .map((value) => WebhookLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, WebhookLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, WebhookLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = WebhookLinksSelfIriTemplate.fromJson(value));
    }
    return map;
  }
}
