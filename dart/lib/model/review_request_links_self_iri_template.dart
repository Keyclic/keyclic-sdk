part of keyclic_sdk_api.api;

class ReviewRequestLinksSelfIriTemplate {
  ReviewRequestLinksSelfIriTemplate({
    this.mapping,
  });

  factory ReviewRequestLinksSelfIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksSelfIriTemplate(
      mapping:
          ReviewRequestLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  ReviewRequestLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksSelfIriTemplate &&
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

  static List<ReviewRequestLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <ReviewRequestLinksSelfIriTemplate>[]
        : json
            .map((dynamic value) =>
                ReviewRequestLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReviewRequestLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewRequestLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewRequestLinksSelfIriTemplate.fromJson(value));
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
    return 'ReviewRequestLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
