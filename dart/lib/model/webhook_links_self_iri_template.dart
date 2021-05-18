part of keyclic_sdk_api.api;

class WebhookLinksSelfIriTemplate {
  WebhookLinksSelfIriTemplate({
    this.mapping,
  });

  factory WebhookLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WebhookLinksSelfIriTemplate(
      mapping: WebhookLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  WebhookLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WebhookLinksSelfIriTemplate &&
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

  static List<WebhookLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => WebhookLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <WebhookLinksSelfIriTemplate>[];
  }

  static Map<String, WebhookLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, WebhookLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, WebhookLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, WebhookLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'WebhookLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
