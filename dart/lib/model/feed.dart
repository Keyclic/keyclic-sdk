part of keyclic_sdk_api.api;

class Feed {
  Feed({
    this.id,
    this.name,
  });

  Feed.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    id = json['id'];
    name = json['name'];
  }

  String id;

  String name;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Feed &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode => 0 ^ id.hashCode ^ name.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }

  @override
  String toString() {
    return 'Feed[id=$id, name=$name, ]';
  }

  static List<Feed> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Feed>()
        : json.map((value) => Feed.fromJson(value)).toList();
  }

  static Map<String, Feed> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Feed>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Feed.fromJson(value));
    }
    return map;
  }
}
