part of keyclic_sdk_api.api;

class PersonLinksMemberOfIriTemplate {
  PersonLinksMemberOfIriTemplate({
    this.mapping,
  });

  PersonLinksMemberOfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']);
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonLinksMemberOfIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ mapping.hashCode;

  static List<PersonLinksMemberOfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <PersonLinksMemberOfIriTemplate>[]
        : json
            .map((value) => PersonLinksMemberOfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, PersonLinksMemberOfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PersonLinksMemberOfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonLinksMemberOfIriTemplate.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'PersonLinksMemberOfIriTemplate[mapping=$mapping, ]';
  }
}
