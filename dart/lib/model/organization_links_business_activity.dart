part of keyclic_sdk_api.api;

class OrganizationLinksBusinessActivity {
  OrganizationLinksBusinessActivity({
    this.href,
    this.iriTemplate,
  });

  OrganizationLinksBusinessActivity.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = OrganizationLinksBusinessActivityIriTemplate.fromJson(
        json['iriTemplate']);
  }

  /* The URI of the businessActivity associated to the given organization. */
  String href;

  OrganizationLinksBusinessActivityIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksBusinessActivity &&
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

  static List<OrganizationLinksBusinessActivity> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <OrganizationLinksBusinessActivity>[]
        : json
            .map((dynamic value) =>
                OrganizationLinksBusinessActivity.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationLinksBusinessActivity> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationLinksBusinessActivity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationLinksBusinessActivity.fromJson(value));
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
    return 'OrganizationLinksBusinessActivity[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
