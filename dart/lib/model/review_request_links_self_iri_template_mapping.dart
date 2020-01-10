part of keyclic_sdk_api.api;

class ReviewRequestLinksSelfIriTemplateMapping {
  ReviewRequestLinksSelfIriTemplateMapping({
    this.reviewRequest,
  });

  factory ReviewRequestLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksSelfIriTemplateMapping(
      reviewRequest: json['reviewRequest'],
    );
  }

  String reviewRequest;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        reviewRequest == other.reviewRequest;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= reviewRequest?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReviewRequestLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <ReviewRequestLinksSelfIriTemplateMapping>[]
        : json
            .map((dynamic value) =>
                ReviewRequestLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, ReviewRequestLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewRequestLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewRequestLinksSelfIriTemplateMapping.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (reviewRequest != null) 'reviewRequest': reviewRequest,
    };
  }

  @override
  String toString() {
    return 'ReviewRequestLinksSelfIriTemplateMapping[reviewRequest=$reviewRequest, ]';
  }
}
