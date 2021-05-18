part of keyclic_sdk_api.api;

class FeedbackLinksPlansIriTemplateMapping {
  FeedbackLinksPlansIriTemplateMapping({
    this.plan,
    this.feedback,
  });

  factory FeedbackLinksPlansIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksPlansIriTemplateMapping(
      plan: json['plan'],
      feedback: json['feedback'],
    );
  }

  String plan;

  String feedback;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksPlansIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        plan == other.plan &&
        feedback == other.feedback;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= plan?.hashCode ?? 0;
    hashCode ^= feedback?.hashCode ?? 0;

    return hashCode;
  }

  static List<FeedbackLinksPlansIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                FeedbackLinksPlansIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <FeedbackLinksPlansIriTemplateMapping>[];
  }

  static Map<String, FeedbackLinksPlansIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, FeedbackLinksPlansIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, FeedbackLinksPlansIriTemplateMapping.fromJson(value));
        }) ??
        <String, FeedbackLinksPlansIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'plan': plan,
      'feedback': feedback,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksPlansIriTemplateMapping[plan=$plan, feedback=$feedback, ]';
  }
}
