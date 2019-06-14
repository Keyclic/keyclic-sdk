part of keyclic_sdk_api.api;

class WebhookLinks {
  WebhookLinks({
    this.self,
    this.organization,
  });

  WebhookLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    self = WebhookLinksSelf.fromJson(json['self']);
    organization = WebhookLinksOrganization.fromJson(json['organization']);
  }

  WebhookLinksSelf self;

  WebhookLinksOrganization organization;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is WebhookLinks && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'organization': organization,
    };
  }

  @override
  String toString() {
    return 'WebhookLinks[self=$self, organization=$organization, ]';
  }

  static List<WebhookLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<WebhookLinks>()
        : json.map((value) => WebhookLinks.fromJson(value)).toList();
  }

  static Map<String, WebhookLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebhookLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = WebhookLinks.fromJson(value));
    }
    return map;
  }
}
