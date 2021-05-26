part of keyclic_sdk_api.api;

class PersonLinksSelf {
  PersonLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory PersonLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonLinksSelf(
      href: json['href'],
      iriTemplate: PersonLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given person. */
  String href;

  PersonLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonLinksSelf &&
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

  static List<PersonLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PersonLinksSelf.fromJson(value))
            ?.toList() ??
        <PersonLinksSelf>[];
  }

  static Map<String, PersonLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PersonLinksSelf>((String key, dynamic value) {
          return MapEntry(key, PersonLinksSelf.fromJson(value));
        }) ??
        <String, PersonLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'PersonLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
