part of keyclic_sdk_api.api;

class ReviewRequestCollection {
  ReviewRequestCollection({
    this.items,
  });

  ReviewRequestCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = ReviewRequest.listFromJson(json['items']);
  }

  List<ReviewRequest> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((ReviewRequest element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<ReviewRequestCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReviewRequestCollection>[]
        : json
            .map((dynamic value) => ReviewRequestCollection.fromJson(value))
            .toList();
  }

  static Map<String, ReviewRequestCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewRequestCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewRequestCollection.fromJson(value));
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
    return 'ReviewRequestCollection[items=$items, ]';
  }
}
