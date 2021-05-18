part of keyclic_sdk_api.api;

class PersonLinksSelfIriTemplate {
  PersonLinksSelfIriTemplate({
    this.mapping,
  });

  factory PersonLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonLinksSelfIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json['mapping']),
    );
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
    return json
            ?.map((dynamic value) => PersonLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <PersonLinksSelfIriTemplate>[];
  }

  static Map<String, PersonLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PersonLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, PersonLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, PersonLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'PersonLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
