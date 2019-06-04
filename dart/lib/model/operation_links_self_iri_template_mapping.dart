part of keyclic_sdk_api.api;

class OperationLinksSelfIriTemplateMapping {
  OperationLinksSelfIriTemplateMapping({
    this.operation,
  });

  OperationLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    operation = json['operation'];
  }

  String operation;

  Map<String, dynamic> toJson() {
    return {
      'operation': operation,
    };
  }

  @override
  String toString() {
    return 'OperationLinksSelfIriTemplateMapping[operation=$operation, ]';
  }

  static List<OperationLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<OperationLinksSelfIriTemplateMapping>()
        : json
            .map(
                (value) => OperationLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, OperationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksSelfIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
