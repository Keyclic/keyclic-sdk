part of keyclic_sdk_api.api;

class WebhookLinksSelf {
  WebhookLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory WebhookLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WebhookLinksSelf(
      href: json['href'],
      iriTemplate: WebhookLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given webhook. */
  String href;

  WebhookLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WebhookLinksSelf &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<WebhookLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => WebhookLinksSelf.fromJson(value))
            ?.toList() ??
        <WebhookLinksSelf>[];
  }

  static Map<String, WebhookLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, WebhookLinksSelf.fromJson(value));
        }) ??
        <String, WebhookLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'WebhookLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
