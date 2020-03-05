part of keyclic_sdk_api.api;

class ContributionLinksContributorIriTemplateMapping {
  ContributionLinksContributorIriTemplateMapping({
    this.person,
  });

  factory ContributionLinksContributorIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ContributionLinksContributorIriTemplateMapping(
      person: json['person'],
    );
  }

  String person;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionLinksContributorIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        person == other.person;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= person?.hashCode ?? 0;

    return hashCode;
  }

  static List<ContributionLinksContributorIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ContributionLinksContributorIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <ContributionLinksContributorIriTemplateMapping>[];
  }

  static Map<String, ContributionLinksContributorIriTemplateMapping>
      mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key,
              ContributionLinksContributorIriTemplateMapping.fromJson(value));
        }) ??
        <String, ContributionLinksContributorIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (person != null) 'person': person,
    };
  }

  @override
  String toString() {
    return 'ContributionLinksContributorIriTemplateMapping[person=$person, ]';
  }
}
