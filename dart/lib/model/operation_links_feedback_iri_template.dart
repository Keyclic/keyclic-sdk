part of keyclic_sdk_api.api;

class OperationLinksFeedbackIriTemplate {
  OperationLinksFeedbackIriTemplate({
    this.mapping,
  });

  factory OperationLinksFeedbackIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksFeedbackIriTemplate(
      mapping:
          ContributionLinksFeedbackIriTemplateMapping.fromJson(json['mapping']),
    );
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
    return json
            ?.map((dynamic value) =>
                OperationLinksFeedbackIriTemplate.fromJson(value))
            ?.toList() ??
        <OperationLinksFeedbackIriTemplate>[];
  }

  static Map<String, OperationLinksFeedbackIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OperationLinksFeedbackIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, OperationLinksFeedbackIriTemplate.fromJson(value));
        }) ??
        <String, OperationLinksFeedbackIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksFeedbackIriTemplate[mapping=$mapping, ]';
  }
}
