part of keyclic_sdk_api.api;

class WebhookLinksSelfIriTemplate {
  WebhookLinksSelfIriTemplate({
    this.mapping,
  });

  WebhookLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = WebhookLinksSelfIriTemplateMapping.fromJson(json['mapping']);
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

    hashCode ^= (mapping?.hashCode ?? 0);

    return hashCode;
  }

  static List<WebhookLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <WebhookLinksSelfIriTemplate>[]
        : json
            .map((dynamic value) => WebhookLinksSelfIriTemplate.fromJson(value))
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

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'WebhookLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
