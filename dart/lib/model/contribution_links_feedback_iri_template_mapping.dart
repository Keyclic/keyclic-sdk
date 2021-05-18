part of keyclic_sdk_api.api;

class ContributionLinksFeedbackIriTemplateMapping {
  ContributionLinksFeedbackIriTemplateMapping({
    this.feedback,
  });

  factory ContributionLinksFeedbackIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ContributionLinksFeedbackIriTemplateMapping(
      feedback: json['feedback'],
    );
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
  int get hashCode {
    int hashCode = 0;

    hashCode ^= feedback?.hashCode ?? 0;

    return hashCode;
  }

  static List<ContributionLinksFeedbackIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ContributionLinksFeedbackIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <ContributionLinksFeedbackIriTemplateMapping>[];
  }

  static Map<String, ContributionLinksFeedbackIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ContributionLinksFeedbackIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, ContributionLinksFeedbackIriTemplateMapping.fromJson(value));
        }) ??
        <String, ContributionLinksFeedbackIriTemplateMapping>{};
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
