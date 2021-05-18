part of keyclic_sdk_api.api;

class BookmarkCollection {
  BookmarkCollection({
    this.items,
  });

  factory BookmarkCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkCollection(
      items: Bookmark.listFromJson(json['items']),
    );
  }

  List<Bookmark> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Bookmark element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<BookmarkCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => BookmarkCollection.fromJson(value))
            ?.toList() ??
        <BookmarkCollection>[];
  }

  static Map<String, BookmarkCollection> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, BookmarkCollection>((String key, dynamic value) {
          return MapEntry(key, BookmarkCollection.fromJson(value));
        }) ??
        <String, BookmarkCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'BookmarkCollection[items=$items, ]';
  }
}
