part of keyclic_sdk_api.api;

class WebhookLinksOrganization {
  WebhookLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  WebhookLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        CategoryLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the organization associated to the given webhook. */
  String href;

  CategoryLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is WebhookLinksOrganization &&
        runtimeType == other.runtimeType;
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
    return 'WebhookLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<WebhookLinksOrganization> listFromJson(List<dynamic> json) {
    return json == null
        ? List<WebhookLinksOrganization>()
        : json
            .map((value) => WebhookLinksOrganization.fromJson(value))
            .toList();
  }

  static Map<String, WebhookLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, WebhookLinksOrganization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = WebhookLinksOrganization.fromJson(value));
    }
    return map;
  }
}
