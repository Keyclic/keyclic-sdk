part of keyclic_sdk_api.api;

class ReviewCollection {
  ReviewCollection({
    this.items,
  });

  factory ReviewCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewCollection(
      items: Review.listFromJson(json['items']),
    );
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
    return json
            ?.map((dynamic value) => ReviewCollection.fromJson(value))
            ?.toList() ??
        <ReviewCollection>[];
  }

  static Map<String, ReviewCollection> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ReviewCollection>((String key, dynamic value) {
          return MapEntry(key, ReviewCollection.fromJson(value));
        }) ??
        <String, ReviewCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'ReviewCollection[items=$items, ]';
  }
}
