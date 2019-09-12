part of keyclic_sdk_api.api;

class FeedbackCollection {
  FeedbackCollection({
    this.items,
  });

  FeedbackCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Feedback.listFromJson(json['items']);
  }

  List<Feedback> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Feedback element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<FeedbackCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackCollection>[]
        : json
            .map((dynamic value) => FeedbackCollection.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackCollection.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'FeedbackCollection[items=$items, ]';
  }
}
