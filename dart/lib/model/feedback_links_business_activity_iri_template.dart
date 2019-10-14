part of keyclic_sdk_api.api;

class FeedbackLinksBusinessActivityIriTemplate {
  FeedbackLinksBusinessActivityIriTemplate({
    this.mapping,
  });

  FeedbackLinksBusinessActivityIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        BusinessActivityLinksImageIriTemplateMapping.fromJson(json['mapping']);
  }

  BusinessActivityLinksImageIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksBusinessActivityIriTemplate &&
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

  static List<FeedbackLinksBusinessActivityIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <FeedbackLinksBusinessActivityIriTemplate>[]
        : json
            .map((dynamic value) =>
                FeedbackLinksBusinessActivityIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackLinksBusinessActivityIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksBusinessActivityIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksBusinessActivityIriTemplate.fromJson(value));
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
    return 'FeedbackLinksBusinessActivityIriTemplate[mapping=$mapping, ]';
  }
}
