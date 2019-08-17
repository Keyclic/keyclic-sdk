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
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksOperatorIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'OperationLinksOperatorIriTemplate[mapping=$mapping, ]';
  }

  static List<OperationLinksOperatorIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<OperationLinksOperatorIriTemplate>()
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
}
