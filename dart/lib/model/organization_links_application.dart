part of keyclic_sdk_api.api;

class OrganizationLinksApplication {
  OrganizationLinksApplication({
    this.href,
    this.iriTemplate,
  });

  OrganizationLinksApplication.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        OrganizationLinksApplicationIriTemplate.fromJson(json['iriTemplate']);
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
    return json == null
        ? <OrganizationLinksApplication>[]
        : json
            .map(
                (dynamic value) => OrganizationLinksApplication.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationLinksApplication> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationLinksApplication>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationLinksApplication.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'OrganizationLinksApplication[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
