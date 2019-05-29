part of keyclic_sdk_api.api;

class FeedbackReviewRequestCollection {
  FeedbackReviewRequestCollection();

  FeedbackReviewRequestCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = FeedbackReviewRequest.listFromJson(json['items']);
  }

  List<FeedbackReviewRequest> items;

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'FeedbackReviewRequestCollection[items=$items, ]';
  }

  static List<FeedbackReviewRequestCollection> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedbackReviewRequestCollection>() : json.map((value) => FeedbackReviewRequestCollection.fromJson(value)).toList();
  }

  static Map<String, FeedbackReviewRequestCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedbackReviewRequestCollection.fromJson(value));
    }
    return map;
  }
}
