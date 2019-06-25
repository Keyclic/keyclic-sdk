part of keyclic_sdk_api.api;

class FeedCollection {
  FeedCollection({
    this.items,
  });

  FeedCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Feed.listFromJson(json['items']);
  }

  List<Feed> items;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedCollection && runtimeType == other.runtimeType;
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
    return 'FeedCollection[items=$items, ]';
  }

  static List<FeedCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedCollection>()
        : json.map((value) => FeedCollection.fromJson(value)).toList();
  }

  static Map<String, FeedCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedCollection.fromJson(value));
    }
    return map;
  }
}
