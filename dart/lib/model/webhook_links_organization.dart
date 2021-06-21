// @dart=2.10
part of keyclic_sdk_api.api;

class WebhookLinksOrganization {
  WebhookLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  factory WebhookLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WebhookLinksOrganization(
      href: json['href'],
      iriTemplate:
          WebhookLinksOrganizationIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the organization associated to the given webhook. */
  String href;

  WebhookLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WebhookLinksOrganization &&
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

  static List<WebhookLinksOrganization> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => WebhookLinksOrganization.fromJson(value))
            ?.toList() ??
        <WebhookLinksOrganization>[];
  }

  static Map<String, WebhookLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, WebhookLinksOrganization>(
            (String key, dynamic value) {
          return MapEntry(key, WebhookLinksOrganization.fromJson(value));
        }) ??
        <String, WebhookLinksOrganization>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'WebhookLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
