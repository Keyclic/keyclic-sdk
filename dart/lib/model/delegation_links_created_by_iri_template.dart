part of keyclic_sdk_api.api;

class DelegationLinksCreatedByIriTemplate {
  DelegationLinksCreatedByIriTemplate({
    this.mapping,
  });

  DelegationLinksCreatedByIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is DelegationLinksCreatedByIriTemplate &&
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

  static List<DelegationLinksCreatedByIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <DelegationLinksCreatedByIriTemplate>[]
        : json
            .map((dynamic value) =>
                DelegationLinksCreatedByIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, DelegationLinksCreatedByIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksCreatedByIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksCreatedByIriTemplate.fromJson(value));
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
    return 'DelegationLinksCreatedByIriTemplate[mapping=$mapping, ]';
  }
}
