part of keyclic_sdk_api.api;

class OperationLinksFeedbackIriTemplate {
  OperationLinksFeedbackIriTemplate({
    this.mapping,
  });

  OperationLinksFeedbackIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = FeedbackLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  FeedbackLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksFeedbackIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<OperationLinksFeedbackIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<OperationLinksFeedbackIriTemplate>()
        : json
            .map((value) => OperationLinksFeedbackIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OperationLinksFeedbackIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksFeedbackIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksFeedbackIriTemplate.fromJson(value));
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
    return 'OperationLinksFeedbackIriTemplate[mapping=$mapping, ]';
  }
}
