part of keyclic_sdk_api.api;

class DelegationLinksCreatedByIriTemplate {
  DelegationLinksCreatedByIriTemplate({
    this.mapping,
  });

  factory DelegationLinksCreatedByIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationLinksCreatedByIriTemplate(
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
    return json
            ?.map((dynamic value) =>
                DelegationLinksCreatedByIriTemplate.fromJson(value))
            ?.toList() ??
        <DelegationLinksCreatedByIriTemplate>[];
  }

  static Map<String, DelegationLinksCreatedByIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DelegationLinksCreatedByIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, DelegationLinksCreatedByIriTemplate.fromJson(value));
        }) ??
        <String, DelegationLinksCreatedByIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'DelegationLinksCreatedByIriTemplate[mapping=$mapping, ]';
  }
}
