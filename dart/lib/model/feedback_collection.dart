part of keyclic_sdk_api.api;

class FeedbackCollection {
  FeedbackCollection();

  FeedbackCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Feedback.listFromJson(json['items']);
  }

  List<Feedback> items;

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'FeedbackCollection[items=$items, ]';
  }

  static List<FeedbackCollection> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedbackCollection>() : json.map((value) => FeedbackCollection.fromJson(value)).toList();
  }

  static Map<String, FeedbackCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedbackCollection.fromJson(value));
    }
    return map;
  }
}
