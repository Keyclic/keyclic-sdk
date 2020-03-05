part of keyclic_sdk_api.api;

class NodeEmbedded {
  NodeEmbedded({
    this.path,
    this.children,
  });

  factory NodeEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NodeEmbedded(
      path: NodePath.listFromJson(json['path']),
      children: Node.listFromJson(json['children']),
    );
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
  int get hashCode {
    int hashCode = 0;

    if (path is List && path.isNotEmpty) {
      hashCode ^= path
          .map((NodePath element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (children is List && children.isNotEmpty) {
      hashCode ^= children
          .map((Node element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<NodeEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => NodeEmbedded.fromJson(value))
            ?.toList() ??
        <NodeEmbedded>[];
  }

  static Map<String, NodeEmbedded> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, NodeEmbedded.fromJson(value));
        }) ??
        <String, NodeEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (path != null) 'path': path,
      if (children != null) 'children': children,
    };
  }

  @override
  String toString() {
    return 'NodeEmbedded[path=$path, children=$children, ]';
  }
}
