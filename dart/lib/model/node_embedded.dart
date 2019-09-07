part of keyclic_sdk_api.api;

class NodeEmbedded {
  NodeEmbedded({
    this.path,
    this.children,
  });

  NodeEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    path = NodePath.listFromJson(json['path']);
    children = Node.listFromJson(json['children']);
  }

  List<NodePath> path;

  List<Node> children;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NodeEmbedded &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(path, other.path) &&
        DeepCollectionEquality.unordered().equals(children, other.children);
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      path.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      children.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<NodeEmbedded> listFromJson(List<dynamic> json) {
    return json == null
        ? <NodeEmbedded>[]
        : json.map((value) => NodeEmbedded.fromJson(value)).toList();
  }

  static Map<String, NodeEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NodeEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = NodeEmbedded.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'path': path,
      'children': children,
    };
  }

  @override
  String toString() {
    return 'NodeEmbedded[path=$path, children=$children, ]';
  }
}
