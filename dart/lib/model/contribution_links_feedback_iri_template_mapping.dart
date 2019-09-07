part of keyclic_sdk_api.api;

class ContributionLinksFeedbackIriTemplateMapping {
  ContributionLinksFeedbackIriTemplateMapping({
    this.feedback,
  });

  ContributionLinksFeedbackIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    feedback = json['feedback'];
  }

  String feedback;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionLinksFeedbackIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        feedback == other.feedback;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ feedback.hashCode;

  static List<ContributionLinksFeedbackIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <ContributionLinksFeedbackIriTemplateMapping>[]
        : json
            .map((value) =>
                ContributionLinksFeedbackIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, ContributionLinksFeedbackIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ContributionLinksFeedbackIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          ContributionLinksFeedbackIriTemplateMapping.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'feedback': feedback,
    };
  }

  @override
  String toString() {
    return 'ContributionLinksFeedbackIriTemplateMapping[feedback=$feedback, ]';
  }
}
