part of keyclic_sdk_api.api;

class ContributionLinksFeedbackIriTemplate {
  ContributionLinksFeedbackIriTemplate({
    this.mapping,
  });

  factory ContributionLinksFeedbackIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ContributionLinksFeedbackIriTemplate(
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

    return other is ContributionLinksFeedbackIriTemplate &&
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

  static List<ContributionLinksFeedbackIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <ContributionLinksFeedbackIriTemplate>[]
        : json
            .map((dynamic value) =>
                ContributionLinksFeedbackIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ContributionLinksFeedbackIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ContributionLinksFeedbackIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ContributionLinksFeedbackIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'ContributionLinksFeedbackIriTemplate[mapping=$mapping, ]';
  }
}
