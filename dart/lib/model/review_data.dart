part of keyclic_sdk_api.api;

class ReviewData {
  ReviewData({
    this.reviewBody,
    this.reviewRating,
    this.reviewRequest,
  });

  factory ReviewData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewData(
      reviewBody: json['reviewBody'],
      reviewRating: json['reviewRating'],
      reviewRequest: json['reviewRequest'],
    );
  }

  String reviewBody;

  num reviewRating;

  String reviewRequest;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewData &&
        runtimeType == other.runtimeType &&
        reviewBody == other.reviewBody &&
        reviewRating == other.reviewRating &&
        reviewRequest == other.reviewRequest;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= reviewBody?.hashCode ?? 0;
    hashCode ^= reviewRating?.hashCode ?? 0;
    hashCode ^= reviewRequest?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReviewData> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => ReviewData.fromJson(value))?.toList() ??
        <ReviewData>[];
  }

  static Map<String, ReviewData> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, ReviewData.fromJson(value));
        }) ??
        <String, ReviewData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (reviewBody != null) 'reviewBody': reviewBody,
      if (reviewRating != null) 'reviewRating': reviewRating,
      if (reviewRequest != null) 'reviewRequest': reviewRequest,
    };
  }

  @override
  String toString() {
    return 'ReviewData[reviewBody=$reviewBody, reviewRating=$reviewRating, reviewRequest=$reviewRequest, ]';
  }
}
