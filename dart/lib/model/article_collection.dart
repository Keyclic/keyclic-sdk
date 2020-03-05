part of keyclic_sdk_api.api;

class ArticleCollection {
  ArticleCollection({
    this.items,
  });

  factory ArticleCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ArticleCollection(
      items: Article.listFromJson(json['items']),
    );
  }

  List<Article> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Article element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<ArticleCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <ArticleCollection>[]
        : json
            .map((dynamic value) => ArticleCollection.fromJson(value))
            .toList();
  }

  static Map<String, ArticleCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArticleCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ArticleCollection.fromJson(value));
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
    return 'ArticleCollection[items=$items, ]';
  }
}