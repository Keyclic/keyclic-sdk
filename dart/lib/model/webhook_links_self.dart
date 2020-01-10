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
    return json == null
        ? <WebhookLinksSelf>[]
        : json
            .map((dynamic value) => WebhookLinksSelf.fromJson(value))
            .toList();
  }

  static Map<String, WebhookLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebhookLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = WebhookLinksSelf.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'WebhookLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
