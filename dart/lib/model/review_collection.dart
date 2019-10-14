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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Review element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<ReviewCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReviewCollection>[]
        : json
            .map((dynamic value) => ReviewCollection.fromJson(value))
            .toList();
  }

  static Map<String, ReviewCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReviewCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewCollection.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'ReviewCollection[items=$items, ]';
  }
}
