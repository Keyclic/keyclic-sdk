part of keyclic_sdk_api.api;

class OperationLinksCreatedByIriTemplate {
  OperationLinksCreatedByIriTemplate({
    this.mapping,
  });

  OperationLinksCreatedByIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is OperationLinksCreatedByIriTemplate &&
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
    return 'OperationLinksCreatedByIriTemplate[mapping=$mapping, ]';
  }

  static List<OperationLinksCreatedByIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<OperationLinksCreatedByIriTemplate>()
        : json
            .map((value) => OperationLinksCreatedByIriTemplate.fromJson(value))
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
}
