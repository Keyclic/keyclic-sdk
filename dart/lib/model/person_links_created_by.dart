part of keyclic_sdk_api.api;

class PersonLinksCreatedBy {
  PersonLinksCreatedBy({
    this.href,
    this.iriTemplate,
  });

  factory PersonLinksCreatedBy.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonLinksCreatedBy(
      href: json['href'],
      iriTemplate:
          PersonLinksCreatedByIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the createdBy associated to the given person. */
  String href;

  PersonLinksCreatedByIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonLinksCreatedBy &&
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

  static List<PersonLinksCreatedBy> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PersonLinksCreatedBy.fromJson(value))
            ?.toList() ??
        <PersonLinksCreatedBy>[];
  }

  static Map<String, PersonLinksCreatedBy> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PersonLinksCreatedBy>((String key, dynamic value) {
          return MapEntry(key, PersonLinksCreatedBy.fromJson(value));
        }) ??
        <String, PersonLinksCreatedBy>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'PersonLinksCreatedBy[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
