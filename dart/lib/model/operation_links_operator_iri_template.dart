part of keyclic_sdk_api.api;

class OperationLinksOperatorIriTemplate {
  OperationLinksOperatorIriTemplate({
    this.mapping,
  });

  OperationLinksOperatorIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        DelegationLinksCreatedByIriTemplateMapping.fromJson(json['mapping']);
  }

  DelegationLinksCreatedByIriTemplateMapping mapping;

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
  int get hashCode => 0 ^ mapping.hashCode;

  static List<OperationLinksOperatorIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <OperationLinksOperatorIriTemplate>[]
        : json
            .map((value) => OperationLinksOperatorIriTemplate.fromJson(value))
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
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'OperationLinksOperatorIriTemplate[mapping=$mapping, ]';
  }
}
