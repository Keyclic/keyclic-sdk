part of keyclic_sdk_api.api;

class WebhookLinksSelfIriTemplateMapping {
  WebhookLinksSelfIriTemplateMapping({
    this.webhook,
  });

  factory WebhookLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WebhookLinksSelfIriTemplateMapping(
      webhook: json['webhook'],
    );
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
  int get hashCode {
    int hashCode = 0;

    hashCode ^= webhook?.hashCode ?? 0;

    return hashCode;
  }

  static List<WebhookLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                WebhookLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <WebhookLinksSelfIriTemplateMapping>[];
  }

  static Map<String, WebhookLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, WebhookLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, WebhookLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (webhook != null) 'webhook': webhook,
    };
  }

  @override
  String toString() {
    return 'WebhookLinksSelfIriTemplateMapping[webhook=$webhook, ]';
  }
}
