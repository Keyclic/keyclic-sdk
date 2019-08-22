part of keyclic_sdk_api.api;

class PersonLinksMemberOf {
  PersonLinksMemberOf({
    this.href,
    this.iriTemplate,
  });

  PersonLinksMemberOf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = PersonLinksMemberOfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the memberOf associated to the given person. */
  String href;

  PersonLinksMemberOfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonLinksMemberOf &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ href.hashCode ^ iriTemplate.hashCode;

  static List<PersonLinksMemberOf> listFromJson(List<dynamic> json) {
    return json == null
        ? <PersonLinksMemberOf>[]
        : json.map((value) => PersonLinksMemberOf.fromJson(value)).toList();
  }

  static Map<String, PersonLinksMemberOf> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PersonLinksMemberOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonLinksMemberOf.fromJson(value));
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
    return 'PersonLinksMemberOf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
