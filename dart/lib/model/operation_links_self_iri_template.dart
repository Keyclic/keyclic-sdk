part of keyclic_sdk_api.api;

class OperationLinksSelfIriTemplate {
  OperationLinksSelfIriTemplate({
    this.mapping,
  });

  OperationLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = OperationLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  OperationLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksSelfIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<OperationLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OperationLinksSelfIriTemplate>()
        : json
            .map((value) => OperationLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OperationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksSelfIriTemplate.fromJson(value));
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
    return 'OperationLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
