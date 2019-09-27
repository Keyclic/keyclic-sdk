part of keyclic_sdk_api.api;

class ContributionLinksContributor {
  ContributionLinksContributor({
    this.href,
    this.iriTemplate,
  });

  ContributionLinksContributor.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        ContributionLinksContributorIriTemplate.fromJson(json['iriTemplate']);
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
    return json == null
        ? <ContributionLinksContributor>[]
        : json
            .map(
                (dynamic value) => ContributionLinksContributor.fromJson(value))
            .toList();
  }

  static Map<String, ContributionLinksContributor> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ContributionLinksContributor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ContributionLinksContributor.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'ContributionLinksContributor[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
