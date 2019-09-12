part of keyclic_sdk_api.api;

class PersonLinksImageIriTemplate {
  PersonLinksImageIriTemplate({
    this.mapping,
  });

  PersonLinksImageIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is PersonLinksImageIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (mapping?.hashCode ?? 0);

    return hashCode;
  }

  static List<PersonLinksImageIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <PersonLinksImageIriTemplate>[]
        : json
            .map((dynamic value) => PersonLinksImageIriTemplate.fromJson(value))
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

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'PersonLinksImageIriTemplate[mapping=$mapping, ]';
  }
}
