part of keyclic_sdk_api.api;

class WebhookLinks {
  WebhookLinks({
    this.organization,
    this.self,
  });

  factory WebhookLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WebhookLinks(
      organization: WebhookLinksOrganization.fromJson(json['organization']),
      self: WebhookLinksSelf.fromJson(json['self']),
    );
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
  int get hashCode {
    int hashCode = 0;

    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<WebhookLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => WebhookLinks.fromJson(value))
            ?.toList() ??
        <WebhookLinks>[];
  }

  static Map<String, WebhookLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, WebhookLinks>((String key, dynamic value) {
          return MapEntry(key, WebhookLinks.fromJson(value));
        }) ??
        <String, WebhookLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (organization != null) 'organization': organization.toJson(),
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'WebhookLinks[organization=$organization, self=$self, ]';
  }
}
