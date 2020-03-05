part of keyclic_sdk_api.api;

class PersonLinksImageIriTemplate {
  PersonLinksImageIriTemplate({
    this.mapping,
  });

  factory PersonLinksImageIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonLinksImageIriTemplate(
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

    return other is PersonLinksImageIriTemplate &&
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

  static List<PersonLinksImageIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => PersonLinksImageIriTemplate.fromJson(value))
            ?.toList() ??
        <PersonLinksImageIriTemplate>[];
  }

  static Map<String, PersonLinksImageIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, PersonLinksImageIriTemplate.fromJson(value));
        }) ??
        <String, PersonLinksImageIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'PersonLinksImageIriTemplate[mapping=$mapping, ]';
  }
}
