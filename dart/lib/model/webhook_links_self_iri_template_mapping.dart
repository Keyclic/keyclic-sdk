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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WebhookLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        webhook == other.webhook;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ webhook.hashCode;

  static List<WebhookLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <WebhookLinksSelfIriTemplateMapping>[]
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

  Map<String, dynamic> toJson() {
    return {
      'webhook': webhook,
    };
  }

  @override
  String toString() {
    return 'WebhookLinksSelfIriTemplateMapping[webhook=$webhook, ]';
  }
}
