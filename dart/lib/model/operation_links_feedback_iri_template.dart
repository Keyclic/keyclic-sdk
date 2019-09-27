part of keyclic_sdk_api.api;

class OperationLinksFeedbackIriTemplate {
  OperationLinksFeedbackIriTemplate({
    this.mapping,
  });

  OperationLinksFeedbackIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        ContributionLinksFeedbackIriTemplateMapping.fromJson(json['mapping']);
  }

  ContributionLinksFeedbackIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksFeedbackIriTemplate &&
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

  static List<OperationLinksFeedbackIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <OperationLinksFeedbackIriTemplate>[]
        : json
            .map((dynamic value) =>
                OperationLinksFeedbackIriTemplate.fromJson(value))
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
