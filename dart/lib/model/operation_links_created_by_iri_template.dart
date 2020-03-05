part of keyclic_sdk_api.api;

class OperationLinksCreatedByIriTemplate {
  OperationLinksCreatedByIriTemplate({
    this.mapping,
  });

  factory OperationLinksCreatedByIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksCreatedByIriTemplate(
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

    return other is OperationLinksCreatedByIriTemplate &&
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

  static List<OperationLinksCreatedByIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OperationLinksCreatedByIriTemplate.fromJson(value))
            ?.toList() ??
        <OperationLinksCreatedByIriTemplate>[];
  }

  static Map<String, OperationLinksCreatedByIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, OperationLinksCreatedByIriTemplate.fromJson(value));
        }) ??
        <String, OperationLinksCreatedByIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksCreatedByIriTemplate[mapping=$mapping, ]';
  }
}
