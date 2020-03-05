part of keyclic_sdk_api.api;

class FeedCollection {
  FeedCollection({
    this.items,
  });

  factory FeedCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedCollection(
      items: Feed.listFromJson(json['items']),
    );
  }

  List<Feed> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Feed element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<FeedCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => FeedCollection.fromJson(value))
            ?.toList() ??
        <FeedCollection>[];
  }

  static Map<String, FeedCollection> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, FeedCollection.fromJson(value));
        }) ??
        <String, FeedCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'FeedCollection[items=$items, ]';
  }
}
