part of keyclic_sdk_api.api;

class PersonLinksImageIriTemplate {
  PersonLinksImageIriTemplate({
    this.mapping,
  });

  PersonLinksImageIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is PersonLinksImageIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'PersonLinksImageIriTemplate[mapping=$mapping, ]';
  }

  static List<PersonLinksImageIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PersonLinksImageIriTemplate>()
        : json
            .map((value) => PersonLinksImageIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, PersonLinksImageIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PersonLinksImageIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonLinksImageIriTemplate.fromJson(value));
    }
    return map;
  }
}
