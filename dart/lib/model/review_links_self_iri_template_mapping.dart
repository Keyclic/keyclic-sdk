part of keyclic_sdk_api.api;

class ReviewLinksSelfIriTemplateMapping {
  ReviewLinksSelfIriTemplateMapping({
    this.review,
  });

  ReviewLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    review = json['review'];
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
    return json == null
        ? <ReviewLinksSelfIriTemplateMapping>[]
        : json
            .map((dynamic value) =>
                ReviewLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, ReviewLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewLinksSelfIriTemplateMapping.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (review != null) 'review': review,
    };
  }

  @override
  String toString() {
    return 'ReviewLinksSelfIriTemplateMapping[review=$review, ]';
  }
}
