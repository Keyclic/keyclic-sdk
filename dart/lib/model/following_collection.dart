part of keyclic_sdk_api.api;

class FollowingCollection {
  FollowingCollection({
    this.items,
  });

  FollowingCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Following.listFromJson(json['items']);
  }

  List<Following> items;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FollowingCollection && runtimeType == other.runtimeType;
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
    return 'FollowingCollection[items=$items, ]';
  }

  static List<FollowingCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FollowingCollection>()
        : json.map((value) => FollowingCollection.fromJson(value)).toList();
  }

  static Map<String, FollowingCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FollowingCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FollowingCollection.fromJson(value));
    }
    return map;
  }
}
