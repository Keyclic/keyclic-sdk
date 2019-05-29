part of keyclic_sdk_api.api;

class ReviewCollection {
  ReviewCollection();

  ReviewCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Review.listFromJson(json['items']);
  }

  List<Review> items;

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'ReviewCollection[items=$items, ]';
  }

  static List<ReviewCollection> listFromJson(List<dynamic> json) {
    return json == null ? List<ReviewCollection>() : json.map((value) => ReviewCollection.fromJson(value)).toList();
  }

  static Map<String, ReviewCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReviewCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReviewCollection.fromJson(value));
    }
    return map;
  }
}
