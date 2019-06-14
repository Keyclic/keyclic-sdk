part of keyclic_sdk_api.api;

class WebhookLinksSelfIriTemplateMapping {
  WebhookLinksSelfIriTemplateMapping({
    this.webhook,
  });

  WebhookLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    webhook = json['webhook'];
  }

  String webhook;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is WebhookLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'webhook': webhook,
    };
  }

  @override
  String toString() {
    return 'WebhookLinksSelfIriTemplateMapping[webhook=$webhook, ]';
  }

  static List<WebhookLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<WebhookLinksSelfIriTemplateMapping>()
        : json
            .map((value) => WebhookLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, WebhookLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, WebhookLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = WebhookLinksSelfIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
