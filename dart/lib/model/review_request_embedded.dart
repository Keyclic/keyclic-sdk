part of keyclic_sdk_api.api;

class ReviewRequestEmbedded {
  ReviewRequestEmbedded({
    this.review,
  });

  factory ReviewRequestEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestEmbedded(
      review: Review.fromJson(json['review']),
    );
  }

  Review review;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestEmbedded &&
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

  static List<ReviewRequestEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReviewRequestEmbedded.fromJson(value))
            ?.toList() ??
        <ReviewRequestEmbedded>[];
  }

  static Map<String, ReviewRequestEmbedded> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, ReviewRequestEmbedded>((String key, dynamic value) {
          return MapEntry(key, ReviewRequestEmbedded.fromJson(value));
        }) ??
        <String, ReviewRequestEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'review': review?.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReviewRequestEmbedded[review=$review, ]';
  }
}
