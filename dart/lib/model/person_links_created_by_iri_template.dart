part of keyclic_sdk_api.api;

class PersonLinksCreatedByIriTemplate {
  PersonLinksCreatedByIriTemplate({
    this.mapping,
  });

  factory PersonLinksCreatedByIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonLinksCreatedByIriTemplate(
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

    return other is PersonLinksCreatedByIriTemplate &&
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

  static List<PersonLinksCreatedByIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <PersonLinksCreatedByIriTemplate>[]
        : json
            .map((dynamic value) =>
                PersonLinksCreatedByIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, PersonLinksCreatedByIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PersonLinksCreatedByIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonLinksCreatedByIriTemplate.fromJson(value));
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
    return 'PersonLinksCreatedByIriTemplate[mapping=$mapping, ]';
  }
}
