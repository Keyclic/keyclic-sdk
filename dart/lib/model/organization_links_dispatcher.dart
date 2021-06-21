// @dart=2.10
part of keyclic_sdk_api.api;

class OrganizationLinksDispatcher {
  OrganizationLinksDispatcher({
    this.href,
    this.iriTemplate,
  });

  factory OrganizationLinksDispatcher.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksDispatcher(
      href: json['href'],
      iriTemplate:
          OrganizationLinksDispatcherIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the dispatcher associated to the given organization. */
  String href;

  OrganizationLinksDispatcherIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksDispatcher &&
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

  static List<OrganizationLinksDispatcher> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => OrganizationLinksDispatcher.fromJson(value))
            ?.toList() ??
        <OrganizationLinksDispatcher>[];
  }

  static Map<String, OrganizationLinksDispatcher> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OrganizationLinksDispatcher>(
            (String key, dynamic value) {
          return MapEntry(key, OrganizationLinksDispatcher.fromJson(value));
        }) ??
        <String, OrganizationLinksDispatcher>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'OrganizationLinksDispatcher[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
