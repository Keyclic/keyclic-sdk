part of keyclic_sdk_api.api;

class ReviewCollection {
  ReviewCollection({
    this.items,
  });

  ReviewCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Review.listFromJson(json['items']);
  }

  List<Review> items;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewCollection && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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
    return json == null
        ? List<ReviewCollection>()
        : json.map((value) => ReviewCollection.fromJson(value)).toList();
  }

  static Map<String, ReviewCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReviewCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewCollection.fromJson(value));
    }
    return map;
  }
}
