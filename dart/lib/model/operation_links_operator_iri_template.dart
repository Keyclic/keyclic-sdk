// @dart=2.10
part of keyclic_sdk_api.api;

class OperationLinksOperatorIriTemplate {
  OperationLinksOperatorIriTemplate({
    this.mapping,
  });

  factory OperationLinksOperatorIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksOperatorIriTemplate(
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

    return other is OperationLinksOperatorIriTemplate &&
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

  static List<OperationLinksOperatorIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OperationLinksOperatorIriTemplate.fromJson(value))
            ?.toList() ??
        <OperationLinksOperatorIriTemplate>[];
  }

  static Map<String, OperationLinksOperatorIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OperationLinksOperatorIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, OperationLinksOperatorIriTemplate.fromJson(value));
        }) ??
        <String, OperationLinksOperatorIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksOperatorIriTemplate[mapping=$mapping, ]';
  }
}
