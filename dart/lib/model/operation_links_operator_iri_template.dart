part of keyclic_sdk_api.api;

class OperationLinksOperatorIriTemplate {
  OperationLinksOperatorIriTemplate({
    this.mapping,
  });

  OperationLinksOperatorIriTemplate.fromJson(Map<String, dynamic> json) {
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
    return json == null
        ? <OperationLinksOperatorIriTemplate>[]
        : json
            .map((dynamic value) =>
                OperationLinksOperatorIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OperationLinksOperatorIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksOperatorIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksOperatorIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'OperationLinksOperatorIriTemplate[mapping=$mapping, ]';
  }
}
