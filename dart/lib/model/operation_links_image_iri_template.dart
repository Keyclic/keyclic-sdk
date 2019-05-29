part of keyclic_sdk_api.api;

class OperationLinksImageIriTemplate {
  OperationLinksImageIriTemplate();

  OperationLinksImageIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = OperationLinksImageIriTemplateMapping.fromJson(json['mapping']);
  }

  OperationLinksImageIriTemplateMapping mapping;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'OperationLinksImageIriTemplate[mapping=$mapping, ]';
  }

  static List<OperationLinksImageIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OperationLinksImageIriTemplate>()
        : json
            .map((value) => OperationLinksImageIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OperationLinksImageIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksImageIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksImageIriTemplate.fromJson(value));
    }
    return map;
  }
}
