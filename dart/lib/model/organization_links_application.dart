// @dart=2.10
part of keyclic_sdk_api.api;

class OrganizationLinksApplication {
  OrganizationLinksApplication({
    this.href,
    this.iriTemplate,
  });

  factory OrganizationLinksApplication.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksApplication(
      href: json['href'],
      iriTemplate:
          OrganizationLinksApplicationIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the application associated to the given organization. */
  String href;

  OrganizationLinksApplicationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksApplication &&
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

  static List<OrganizationLinksApplication> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => OrganizationLinksApplication.fromJson(value))
            ?.toList() ??
        <OrganizationLinksApplication>[];
  }

  static Map<String, OrganizationLinksApplication> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OrganizationLinksApplication>(
            (String key, dynamic value) {
          return MapEntry(key, OrganizationLinksApplication.fromJson(value));
        }) ??
        <String, OrganizationLinksApplication>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'OrganizationLinksApplication[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
