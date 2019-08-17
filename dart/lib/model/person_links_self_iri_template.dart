part of keyclic_sdk_api.api;

class PersonLinksSelfIriTemplate {
  PersonLinksSelfIriTemplate({
    this.mapping,
  });

  PersonLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        DelegationLinksCreatedByIriTemplateMapping.fromJson(json['mapping']);
  }

  DelegationLinksCreatedByIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PersonLinksSelfIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<PersonLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PersonLinksSelfIriTemplate>()
        : json
            .map((value) => PersonLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, PersonLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PersonLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonLinksSelfIriTemplate.fromJson(value));
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
    return 'PersonLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
