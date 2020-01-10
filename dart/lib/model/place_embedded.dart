part of keyclic_sdk_api.api;

class PlaceEmbedded {
  PlaceEmbedded({
    this.children,
    this.path,
  });

  factory PlaceEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceEmbedded(
      children: Node.listFromJson(json['children']),
      path: NodePath.listFromJson(json['path']),
    );
  }

  List<Node> children;

  List<NodePath> path;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceEmbedded &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(children, other.children) &&
        DeepCollectionEquality.unordered().equals(path, other.path);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (children is List && children.isNotEmpty) {
      hashCode ^= children
          .map((Node element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (path is List && path.isNotEmpty) {
      hashCode ^= path
          .map((NodePath element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<PlaceEmbedded> listFromJson(List<dynamic> json) {
    return json == null
        ? <PlaceEmbedded>[]
        : json.map((dynamic value) => PlaceEmbedded.fromJson(value)).toList();
  }

  static Map<String, PlaceEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlaceEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PlaceEmbedded.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (children != null) 'children': children,
      if (path != null) 'path': path,
    };
  }

  @override
  String toString() {
    return 'PlaceEmbedded[children=$children, path=$path, ]';
  }
}
