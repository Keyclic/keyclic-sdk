part of keyclic_sdk_api.api;

class PersonLinksSelfIriTemplate {
  PersonLinksSelfIriTemplate({
    this.mapping,
  });

  PersonLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = ContributionLinksContributorIriTemplateMapping.fromJson(
        json['mapping']);
  }

  ContributionLinksContributorIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonLinksSelfIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<PersonLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <PersonLinksSelfIriTemplate>[]
        : json
            .map((dynamic value) => PersonLinksSelfIriTemplate.fromJson(value))
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
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'PersonLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
