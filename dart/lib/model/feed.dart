part of keyclic_sdk_api.api;

class Feed {
  Feed({
    this.name,
    this.type,
    this.id,
  });

  Feed.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    name = json['name'];
    type = json['type'];
    id = json['id'];
  }

  String name;

  String type;

  String id;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Feed &&
        runtimeType == other.runtimeType &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode => 0 ^ name.hashCode ^ type.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'type': type,
      'id': id,
    };
  }

  @override
  String toString() {
    return 'Feed[name=$name, type=$type, id=$id, ]';
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
