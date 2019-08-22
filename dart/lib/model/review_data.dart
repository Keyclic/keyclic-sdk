part of keyclic_sdk_api.api;

class ReviewData {
  ReviewData({
    this.reviewBody,
    this.reviewRating,
  });

  ReviewData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    reviewBody = json['reviewBody'];
    reviewRating = json['reviewRating'];
  }

  String reviewBody;

  num reviewRating;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewData &&
        runtimeType == other.runtimeType &&
        reviewBody == other.reviewBody &&
        reviewRating == other.reviewRating;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ reviewBody.hashCode ^ reviewRating.hashCode;

  static List<ReviewData> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReviewData>[]
        : json.map((value) => ReviewData.fromJson(value)).toList();
  }

  static Map<String, ReviewData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReviewData>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = ReviewData.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'reviewBody': reviewBody,
      'reviewRating': reviewRating,
    };
  }

  @override
  String toString() {
    return 'ReviewData[reviewBody=$reviewBody, reviewRating=$reviewRating, ]';
  }
}
