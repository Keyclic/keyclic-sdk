part of keyclic_sdk_api.api;

class ReviewLinksSelfIriTemplateMapping {
  ReviewLinksSelfIriTemplateMapping({
    this.review,
  });

  factory ReviewLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewLinksSelfIriTemplateMapping(
      review: json['review'],
    );
  }

  String review;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        review == other.review;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= review?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReviewLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ReviewLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <ReviewLinksSelfIriTemplateMapping>[];
  }

  static Map<String, ReviewLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReviewLinksSelfIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, ReviewLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, ReviewLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'review': review,
    };
  }

  @override
  String toString() {
    return 'ReviewLinksSelfIriTemplateMapping[review=$review, ]';
  }
}
