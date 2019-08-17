part of keyclic_sdk_api.api;

class OperationLinksTrackingIriTemplate {
  OperationLinksTrackingIriTemplate({
    this.mapping,
  });

  OperationLinksTrackingIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is OperationLinksTrackingIriTemplate &&
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
    return 'OperationLinksTrackingIriTemplate[mapping=$mapping, ]';
  }

  static List<OperationLinksTrackingIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<OperationLinksTrackingIriTemplate>()
        : json
            .map((value) => OperationLinksTrackingIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OperationLinksTrackingIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksTrackingIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksTrackingIriTemplate.fromJson(value));
    }
    return map;
  }
}
