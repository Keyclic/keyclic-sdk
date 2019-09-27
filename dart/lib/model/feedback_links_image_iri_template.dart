part of keyclic_sdk_api.api;

class FeedbackLinksImageIriTemplate {
  FeedbackLinksImageIriTemplate({
    this.mapping,
  });

  FeedbackLinksImageIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = FeedbackLinksImageIriTemplateMapping.fromJson(json['mapping']);
  }

  FeedbackLinksImageIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksImageIriTemplate &&
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

  static List<FeedbackLinksImageIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackLinksImageIriTemplate>[]
        : json
            .map((dynamic value) =>
                FeedbackLinksImageIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackLinksImageIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksImageIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksImageIriTemplate.fromJson(value));
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
    return 'FeedbackLinksImageIriTemplate[mapping=$mapping, ]';
  }
}
