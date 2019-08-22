part of keyclic_sdk_api.api;

class WebhookLinks {
  WebhookLinks({
    this.organization,
    this.self,
  });

  WebhookLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    organization = WebhookLinksOrganization.fromJson(json['organization']);
    self = WebhookLinksSelf.fromJson(json['self']);
  }

  WebhookLinksOrganization organization;

  WebhookLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WebhookLinks &&
        runtimeType == other.runtimeType &&
        organization == other.organization &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ organization.hashCode ^ self.hashCode;

  static List<WebhookLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <WebhookLinks>[]
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

  Map<String, dynamic> toJson() {
    return {
      'organization': organization,
      'self': self,
    };
  }

  @override
  String toString() {
    return 'WebhookLinks[organization=$organization, self=$self, ]';
  }
}
