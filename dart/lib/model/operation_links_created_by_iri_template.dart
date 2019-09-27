part of keyclic_sdk_api.api;

class OperationLinksCreatedByIriTemplate {
  OperationLinksCreatedByIriTemplate({
    this.mapping,
  });

  OperationLinksCreatedByIriTemplate.fromJson(Map<String, dynamic> json) {
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
    return json == null
        ? <OperationLinksCreatedByIriTemplate>[]
        : json
            .map((dynamic value) =>
                OperationLinksCreatedByIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OperationLinksCreatedByIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksCreatedByIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksCreatedByIriTemplate.fromJson(value));
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
    return 'OperationLinksCreatedByIriTemplate[mapping=$mapping, ]';
  }
}
