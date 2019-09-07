part of keyclic_sdk_api.api;

class ContributionLinksContributorIriTemplate {
  ContributionLinksContributorIriTemplate({
    this.mapping,
  });

  ContributionLinksContributorIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is ContributionLinksContributorIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ mapping.hashCode;

  static List<ContributionLinksContributorIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <ContributionLinksContributorIriTemplate>[]
        : json
            .map((value) =>
                ContributionLinksContributorIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ContributionLinksContributorIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ContributionLinksContributorIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ContributionLinksContributorIriTemplate.fromJson(value));
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
    return 'ContributionLinksContributorIriTemplate[mapping=$mapping, ]';
  }
}
