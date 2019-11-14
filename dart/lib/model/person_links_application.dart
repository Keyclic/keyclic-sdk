part of keyclic_sdk_api.api;

class PersonLinksApplication {
  PersonLinksApplication({
    this.href,
    this.iriTemplate,
  });

  PersonLinksApplication.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        PersonLinksApplicationIriTemplate.fromJson(json['iriTemplate']);
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
    return json == null
        ? <PersonLinksApplication>[]
        : json
            .map((dynamic value) => PersonLinksApplication.fromJson(value))
            .toList();
  }

  static Map<String, PersonLinksApplication> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PersonLinksApplication>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonLinksApplication.fromJson(value));
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
    return 'PersonLinksApplication[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
