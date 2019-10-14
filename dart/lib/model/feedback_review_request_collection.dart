part of keyclic_sdk_api.api;

class FeedbackReviewRequestCollection {
  FeedbackReviewRequestCollection({
    this.items,
  });

  FeedbackReviewRequestCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = FeedbackReviewRequest.listFromJson(json['items']);
  }

  List<FeedbackReviewRequest> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((FeedbackReviewRequest element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<FeedbackReviewRequestCollection> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <FeedbackReviewRequestCollection>[]
        : json
            .map((dynamic value) =>
                FeedbackReviewRequestCollection.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackReviewRequestCollection.fromJson(value));
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
    return 'FeedbackReviewRequestCollection[items=$items, ]';
  }
}
