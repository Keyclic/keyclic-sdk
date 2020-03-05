part of keyclic_sdk_api.api;

class ReviewLinksSelfIriTemplate {
  ReviewLinksSelfIriTemplate({
    this.mapping,
  });

  factory ReviewLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewLinksSelfIriTemplate(
      mapping: ReviewLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  ReviewLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksSelfIriTemplate &&
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

  static List<ReviewLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReviewLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <ReviewLinksSelfIriTemplate>[];
  }

  static Map<String, ReviewLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, ReviewLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, ReviewLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReviewLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
