part of keyclic_sdk_api.api;

class ReviewData {
  ReviewData();

  ReviewData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    reviewBody = json['reviewBody'];
    reviewRating = json['reviewRating'];
  }

  String reviewBody;

  num reviewRating;

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

  static List<ReviewData> listFromJson(List<dynamic> json) {
    return json == null ? List<ReviewData>() : json.map((value) => ReviewData.fromJson(value)).toList();
  }

  static Map<String, ReviewData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReviewData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReviewData.fromJson(value));
    }
    return map;
  }
}
