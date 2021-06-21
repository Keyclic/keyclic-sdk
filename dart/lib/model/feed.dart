// @dart=2.10
part of keyclic_sdk_api.api;

class Feed {
  Feed({
    this.id,
    this.name,
    this.type,
  });

  factory Feed.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Feed(
      id: json['id'],
      name: json['name'],
      type: json['type'],
    );
  }

  String id;

  String name;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Feed &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        name == other.name &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<Feed> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Feed.fromJson(value))?.toList() ??
        <Feed>[];
  }

  static Map<String, Feed> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Feed>((String key, dynamic value) {
          return MapEntry(key, Feed.fromJson(value));
        }) ??
        <String, Feed>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'Feed[id=$id, name=$name, type=$type, ]';
  }
}
