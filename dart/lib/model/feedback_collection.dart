// @dart=2.10
part of keyclic_sdk_api.api;

class FeedbackCollection {
  FeedbackCollection({
    this.items,
  });

  factory FeedbackCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackCollection(
      items: Feedback.listFromJson(json['items']),
    );
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
    return json
            ?.map((dynamic value) => FeedbackCollection.fromJson(value))
            ?.toList() ??
        <FeedbackCollection>[];
  }

  static Map<String, FeedbackCollection> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, FeedbackCollection>((String key, dynamic value) {
          return MapEntry(key, FeedbackCollection.fromJson(value));
        }) ??
        <String, FeedbackCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'FeedbackCollection[items=$items, ]';
  }
}
