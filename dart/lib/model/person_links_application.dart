part of keyclic_sdk_api.api;

class PersonLinksApplication {
  PersonLinksApplication({
    this.href,
    this.iriTemplate,
  });

  factory PersonLinksApplication.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonLinksApplication(
      href: json['href'],
      iriTemplate:
          PersonLinksApplicationIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the application associated to the given person. */
  String href;

  PersonLinksApplicationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonLinksApplication &&
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

  static List<PersonLinksApplication> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PersonLinksApplication.fromJson(value))
            ?.toList() ??
        <PersonLinksApplication>[];
  }

  static Map<String, PersonLinksApplication> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, PersonLinksApplication>((String key, dynamic value) {
          return MapEntry(key, PersonLinksApplication.fromJson(value));
        }) ??
        <String, PersonLinksApplication>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'PersonLinksApplication[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
