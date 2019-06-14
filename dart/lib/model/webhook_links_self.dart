part of keyclic_sdk_api.api;

class WebhookLinksSelf {
  WebhookLinksSelf({
    this.href,
    this.iriTemplate,
  });

  WebhookLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = WebhookLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given webhook. */
  String href;

  WebhookLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is WebhookLinksSelf && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'WebhookLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<WebhookLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? List<WebhookLinksSelf>()
        : json.map((value) => WebhookLinksSelf.fromJson(value)).toList();
  }

  static Map<String, WebhookLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebhookLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = WebhookLinksSelf.fromJson(value));
    }
    return map;
  }
}
