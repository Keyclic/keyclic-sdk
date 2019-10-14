part of keyclic_sdk_api.api;

class FeedbackLinksTrackingIriTemplate {
  FeedbackLinksTrackingIriTemplate({
    this.mapping,
  });

  FeedbackLinksTrackingIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is FeedbackLinksTrackingIriTemplate &&
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

  static List<FeedbackLinksTrackingIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <FeedbackLinksTrackingIriTemplate>[]
        : json
            .map((dynamic value) =>
                FeedbackLinksTrackingIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackLinksTrackingIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksTrackingIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksTrackingIriTemplate.fromJson(value));
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
    return 'FeedbackLinksTrackingIriTemplate[mapping=$mapping, ]';
  }
}
