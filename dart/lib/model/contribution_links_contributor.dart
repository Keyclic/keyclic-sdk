part of keyclic_sdk_api.api;

class ContributionLinksContributor {
  ContributionLinksContributor({
    this.href,
    this.iriTemplate,
  });

  factory ContributionLinksContributor.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ContributionLinksContributor(
      href: json['href'],
      iriTemplate:
          ContributionLinksContributorIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the contributor associated to the given contribution. */
  String href;

  ContributionLinksContributorIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionLinksContributor &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<ContributionLinksContributor> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => ContributionLinksContributor.fromJson(value))
            ?.toList() ??
        <ContributionLinksContributor>[];
  }

  static Map<String, ContributionLinksContributor> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ContributionLinksContributor>(
            (String key, dynamic value) {
          return MapEntry(key, ContributionLinksContributor.fromJson(value));
        }) ??
        <String, ContributionLinksContributor>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'ContributionLinksContributor[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
